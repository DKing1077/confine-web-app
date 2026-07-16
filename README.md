# Confine Web App

Confine is a Flask-based web application that takes music-related search input, processes it through an AI parsing step and external API calls, and serves structured lyric-analysis results to authenticated users. The backend is designed around async task execution, a relational PostgreSQL store, and an in-memory tab/panel system that tracks per-user state between requests.

## What this project does
- Accepts authenticated search requests and routes them through a multi-step Celery chain
- Uses an AI model (via OpenRouter) to parse free-text input into structured artist/track fields
- Looks up tracks through the MusixMatch API and caches results in Redis to avoid redundant calls
- Stores artists, albums, tracks, features, users, and search history in PostgreSQL using SQLAlchemy ORM
- Maintains per-user in-memory tab panels (search results, workspace, concepts, semantics) across requests
- Runs a secondary AI analysis pass over track lyrics to extract thematic concepts and semantic patterns
- Applies user-selected concepts and semantics as transforms to arbitrary input text via a final AI step
- Enforces JWT auth with access/refresh token flow and an in-memory revocation blocklist
- Rate-limits auth and search endpoints independently using Flask-Limiter backed by Redis

## Project structure

```
confine-web-app/
├── run.py                  # Entry point — creates the Flask app and starts the dev server
├── Dockerfile              # Container image definition
├── dev.sh                  # Starts docker-compose and tails web + celery logs
├── alembic/                # Database migration scripts
├── alembic.ini             # Alembic configuration
├── requirements.txt        # Python dependencies
└── app/
    ├── __init__.py         # App factory (create_app) — registers blueprints, extensions, CORS
    ├── extensions.py       # Shared singletons: SQLAlchemy engine, scoped session, Celery, JWT, Limiter
    ├── models.py           # ORM models: Artists, Albums, Tracks, Features, Users, SearchResults
    ├── schemas.py          # Marshmallow schemas for request validation and AI output validation
    ├── prompts.py          # Prompt templates for AI API calls
    ├── database.py         # Database creation and table initialisation helpers
    ├── logger.py           # Logging configuration
    ├── routes.py           # Root blueprint (health/misc routes)
    ├── auth/               # Authentication blueprint
    │   ├── routes.py       # /auth/register, /auth/login, /auth/logout, /auth/refresh, /auth/session-status
    │   └── users.py        # User creation and password verification helpers
    ├── search/             # Search blueprint
    │   ├── routes.py       # /search/ — validates input, kicks off Celery chain, returns results
    │   └── db.py           # DB lookup, API fallback, normalisation, filtering, and insert helpers
    ├── tabs/               # Tabs/panel blueprint
    │   ├── routes.py       # /tabs/add_to_panel, /tabs/remove_from_panel, /tabs/analyze_items, /tabs/process_items
    │   └── actions.py      # In-memory tab management: append, remove, resolve, fetch lyrics
    ├── celery/             # Celery worker and task definitions
    │   ├── worker.py       # Celery app instance wired to Flask context
    │   ├── tasks.py        # Task definitions: parse_search_task, process_search_task, analyze_items_task, process_input
    │   └── signals.py      # Celery lifecycle signal handlers
    ├── logic/              # Core orchestration logic (called by tasks)
    │   ├── search.py       # cache_pipeline and search_pipeline: cache check → API call → DB insert
    │   └── tabs.py         # Tab-level helpers used across blueprints
    ├── services/           # External API clients
    │   ├── musixmatch.py   # MusixMatch track search and lyrics fetch
    │   └── openrouter.py   # OpenRouter AI client: parse_search, transform_lyrics
    └── cache/              # Redis caching layer
        └── cache.py        # cache_get, cache_set, cache_keys helpers
```

## Request flow

### Search (`POST /search/`)
1. JWT middleware validates the bearer token
2. Marshmallow validates and deserialises the JSON request body
3. A Celery chain is assembled and dispatched asynchronously:
   - **`parse_search_task`** — sends the raw text to the OpenRouter AI model, which returns a structured `(artist, track)` pair
   - **`process_search_task`** — checks the Redis cache for a matching result; on a miss, calls the MusixMatch API, filters and normalises the response, inserts new records into PostgreSQL, writes the result to Redis, and records the search in `search_results`
4. The chain result (a list of track objects) is assigned to the caller's `search_results` tab panel and returned in the response

### Tabs and analysis (`POST /tabs/*`)
1. **`add_to_panel`** — resolves track IDs from the caller's `search_results` panel, fetches full lyrics via MusixMatch, and moves the items to the `workspace` panel
2. **`analyze_items`** — dispatches `analyze_items_task` which sends lyrics to the AI model in two passes: one for thematic concepts and one for semantic patterns; results are stored in `concepts` and `semantics` tab panels
3. **`process_items`** — resolves selected concept and semantic IDs, dispatches `process_input` which calls the AI model to apply the selected transforms to the provided input text, and returns the final display result

## Backend concepts covered

### Application architecture
- **Flask app factory pattern** (`create_app`) keeps the application object out of module scope, making it straightforward to instantiate multiple configurations (e.g. test vs production) without import-time side effects
- **Modular Blueprints** split auth, search, and tab concerns into separate packages, each with its own route prefix and rate-limit configuration

### Authentication and authorisation
- **JWT access/refresh token flow** — login issues both a short-lived access token and a long-lived refresh token; the refresh endpoint issues a new access token without re-authenticating
- **In-memory token revocation blocklist** — logout adds the token's `jti` claim to a set checked on every protected request, blocking reuse of revoked tokens without a database round-trip
- **JWT error callbacks** — expired, invalid, and missing tokens each return a distinct structured JSON error response

### Database and ORM
- **SQLAlchemy ORM with `Mapped` typed columns** defines relationships declaratively: `Artists` → `Albums` → `Tracks` → `Features` (featuring artists), with explicit `UniqueConstraint` arguments to prevent duplicates at the database level
- **Scoped sessions** (`scoped_session`) provide a thread-local session tied to the request lifecycle; `teardown_appcontext` calls `session.remove()` to return the connection to the pool after every request
- **PostgreSQL** is used as the primary relational store; `psycopg2-binary` is the DB-API driver

### Async task orchestration
- **Celery chains** (`chain(task_a.s(), task_b.s())`) pass the return value of each task as the first positional argument of the next, making multi-step pipelines composable without shared state
- **Flask application context inside tasks** — a custom `ContextTask` base class wraps every task execution in `app.app_context()`, so tasks can use `current_app` and the scoped session safely
- **Redis** serves as both the Celery broker and result backend, and a separate Redis database index is used by Flask-Limiter for rate-limit counters

### Input validation
- **Marshmallow schemas** validate and deserialise incoming JSON for all endpoints; validation errors are caught and returned as structured 400 responses before any business logic runs
- **AI output validation** — concept and semantic responses from the AI model are also validated through Marshmallow schemas before being stored in tab panels

### External services
- **MusixMatch** is used for track search (artist + track name queries) and individual lyrics fetch; responses are normalised into `ApiData` dataclass instances before being passed into the pipeline
- **OpenRouter** provides access to large language models for free-text parsing and lyric analysis; prompt templates are defined centrally in `prompts.py`

### Caching
- **Redis cache layer** stores serialised search results keyed by normalised artist/track inputs; a cache hit on `process_search_task` skips the MusixMatch API call and the DB insert, returning the cached result immediately

### Observability
- **Structured logging** is configured globally in `logger.py`; each module uses `logging.getLogger(__name__)` to emit contextual log lines at appropriate levels throughout the request and task lifecycle
- **Sentry** is initialised with Flask and Celery integrations when a DSN is present in config, capturing unhandled exceptions and (optionally) performance traces

### Migrations
- **Alembic** provides schema migration scaffolding; migration scripts live in `alembic/` and are separate from the ORM's `create_tables` call used for initial setup
