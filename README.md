# Confine Web App

Confine is a Flask-based web application that processes music-related search input, enriches it with external APIs and AI parsing, and serves structured results to authenticated users.

## What this project does
- Accepts authenticated search requests from users
- Uses AI (OpenRouter) to parse free-form input into structured artist and track fields
- Fetches lyrics and metadata from the MusixMatch API
- Runs background task pipelines (Celery) to handle parsing, searching, and AI analysis
- Caches and stores results in PostgreSQL to avoid redundant API calls
- Returns structured tabbed results (search, concepts, semantics) for client consumption

## Backend concepts covered

**Application structure**
- Flask app factory pattern (`create_app`) for clean initialisation and testability
- Modular Blueprints for auth, search, tabs, and main routes
- CORS configured globally to support cross-origin frontend clients

**Authentication**
- JWT access and refresh token flow using Flask-JWT-Extended
- Token revocation tracked in memory (`revoked_tokens` set)
- Custom error callbacks for expired, invalid, and missing tokens

**Database**
- SQLAlchemy ORM with typed `Mapped` columns and explicit relationships
- Models: `Artists`, `Albums`, `Tracks`, `Features`, `Users`, `SearchResults`
- Composite `UniqueConstraint` to prevent duplicate data across related records
- Scoped sessions (`scoped_session`) tied to request lifecycle — opened on first query, removed via `teardown_appcontext`
- PostgreSQL integration via SQLAlchemy engine with connection pooling
- Alembic for database migration scaffolding and version control

**Background tasks**
- Celery used for async task execution — search parsing, result processing, and AI analysis
- Tasks chained sequentially: `parse_search_task` → `process_search_task`
- Tabs pipeline runs independently: `analyze_items_task` → `process_input`
- Redis used as both Celery broker and result backend
- Flask app context injected into Celery tasks via a `ContextTask` base class

**Rate limiting**
- Flask-Limiter applied to auth and search endpoints
- Redis-backed storage for distributed rate-limit tracking

**Input validation**
- Marshmallow schemas used to validate and enforce structure on AI-returned concepts and semantics before storage

**External services**
- MusixMatch API — fetches track metadata and lyrics
- OpenRouter API — AI model used for parsing search input, extracting lyric concepts/semantics, and transforming lyrics

**Logging**
- Centralised logging configured in `logger.py` via Python's standard `logging` module
- Single `StreamHandler` writing to stdout with a clean format
- Log levels tuned per library — `werkzeug`, `httpx`, `urllib3` suppressed to WARNING/ERROR
- Celery internals (`celery`, `celery.app.trace`, `celery.worker`) suppressed to Error to reduce noise
- Module-level loggers used throughout (`logging.getLogger(__name__)`) for contextual output
- Sentry SDK integrated for error monitoring in production, with Flask and Celery integrations enabled

**Caching**
- Search results cached in the database by artist/track key to skip redundant API and AI calls on repeated queries

## Project structure

```
app/
├── auth/          # Registration, login, logout, token refresh
├── cache/         # Cache lookup and result storage logic
├── celery/        # Task definitions, worker config, and signals
├── logic/         # Search and cache pipeline orchestration
├── models.py      # SQLAlchemy ORM models
├── schemas.py     # Marshmallow validation schemas
├── extensions.py  # Shared extensions (db, celery, jwt, limiter)
├── logger.py      # Logging configuration
├── prompts.py     # AI prompt templates
├── search/        # Search routes and database queries
├── services/      # MusixMatch and OpenRouter API clients
├── tabs/          # Tab result building and transformation routes
├── database.py    # DB creation and table initialisation
└── __init__.py    # App factory

alembic/           # Database migration scripts
tests/             # Pytest test suite
```
