# Confine Web App

An AI-powered lyric transformation tool. Search for songs, extract high-impact writing concepts and semantic patterns from their lyrics, then use those insights to rewrite and elevate your own lyrics.

## How It Works

1. **Search** — Enter an artist or track name. The app parses your input with AI, queries the MusixMatch API for matching tracks, and caches results in PostgreSQL.
2. **Workspace** — Add tracks from your search results into a personal workspace panel.
3. **Analyze** — Run AI analysis on workspace tracks to extract:
   - **Concepts** — craft-level writing techniques (imagery, structure, hook logic, etc.)
   - **Semantics** — meaning-level patterns (emotional trajectory, relational stance, agency framing, etc.)
4. **Transform** — Select any combination of concepts and semantics, paste in your own lyrics (and optional instructions), and receive an AI-rewritten version that applies those patterns while preserving your original voice.

## Tech Stack

| Layer | Technology |
|---|---|
| Web framework | Flask |
| Database | PostgreSQL + SQLAlchemy + Alembic |
| Task queue | Celery + Redis |
| Authentication | JWT (flask-jwt-extended) |
| AI | OpenRouter API |
| Music data | MusixMatch API |
| Monitoring | Sentry |
| Rate limiting | flask-limiter |
| Containerisation | Docker + Docker Compose |

## Project Structure

```
confine-web-app/
├── app/
│   ├── auth/          # Registration, login, logout, JWT refresh
│   ├── search/        # Track search endpoint
│   ├── tabs/          # Panel management, analysis, transformation
│   ├── celery/        # Async task definitions (search, analyze, transform)
│   ├── services/      # External API clients (MusixMatch, OpenRouter)
│   ├── cache/         # Search result caching logic
│   ├── logic/         # Search and cache pipelines
│   ├── models.py      # SQLAlchemy models (Users, Tracks, Artists, Albums, etc.)
│   ├── schemas.py     # Marshmallow validation schemas
│   ├── prompts.py     # AI prompt templates
│   └── extensions.py  # Flask extensions (DB session, Celery, JWT, limiter)
├── alembic/           # Database migrations
├── tests/             # Test suite
├── Dockerfile
├── run.py             # Application entry point
└── requirements.txt
```

## Getting Started

### Prerequisites

- Docker and Docker Compose
- MusixMatch API key
- OpenRouter API key

### Environment Variables

Create a `.env` file (or set these variables in your environment):

```env
# Database
DATABASE_URL=******postgres:5432/your_db

# Redis
REDIS_URL=redis://redis:6379/0

# JWT
JWT_SECRET_KEY=your-secret-key

# External APIs
MUSIXMATCH_APIKEY=your-musixmatch-key
OPENROUTER_APIKEY=your-openrouter-key
OPENROUTER_MODEL=your-model-name

# Sentry (optional)
SENTRY_DSN=your-sentry-dsn
SENTRY_ENVIRONMENT=development
SENTRY_TRACES_SAMPLE_RATE=0.0
```

### Running with Docker Compose

```bash
# Start all services (web, celery worker, postgres, redis)
docker compose up

# Or use the helper script (starts detached and tails web + celery logs)
./dev.sh
```

The app will be available at `http://localhost:5000`.

### Rebuilding

```bash
# Normal restart (no rebuild, data preserved)
docker compose down
docker compose up

# Rebuild images after code changes
docker compose down
docker compose up --build

# Full reset (wipes all data)
docker builder prune -a -f
docker compose down -v
docker compose build --no-cache
docker compose up
```

### Database Migrations

```bash
# Generate a new migration
docker compose exec web alembic revision --autogenerate -m "description"

# Apply migrations
docker compose exec web alembic upgrade head
```

## API Reference

All protected endpoints require a `****** header.

### Auth

| Method | Endpoint | Description | Auth |
|---|---|---|---|
| POST | `/auth/register` | Create a new account | No |
| POST | `/auth/login` | Login and receive tokens | No |
| POST | `/auth/logout` | Revoke current token | Yes |
| GET | `/auth/session-status` | Check if the current session is valid | Yes |
| POST | `/auth/refresh` | Get a new access token using a refresh token | Yes (refresh) |

**Register / Login body:**
```json
{ "email": "user@example.com", "password": "yourpassword" }
```

**Login response:**
```json
{
  "status": "success",
  "access_token": "...",
  "refresh_token": "..."
}
```

### Search

| Method | Endpoint | Description | Rate limit |
|---|---|---|---|
| POST | `/search/` | Search for tracks by artist or track name | 10/minute |

**Body:**
```json
{ "search_input": "drake gods plan" }
```

**Response:**
```json
{
  "status": "success",
  "result": [ { "track_name": "God's Plan", "artist": "Drake", ... } ]
}
```

### Tabs (Panels & Analysis)

| Method | Endpoint | Description | Rate limit |
|---|---|---|---|
| POST | `/tabs/add_to_panel` | Move tracks from search results into a workspace panel | 5/minute |
| POST | `/tabs/remove_from_panel` | Remove tracks from a panel | 10/minute |
| POST | `/tabs/analyze_items` | Extract concepts and semantics from workspace tracks | 3/minute |
| POST | `/tabs/process_items` | Rewrite input lyrics using selected concepts and semantics | 3/minute |

**`add_to_panel` body:**
```json
{ "items": ["track_id_1", "track_id_2"], "panel": "workspace" }
```

**`analyze_items` body:**
```json
{ "items": ["track_id_1"] }
```

**`process_items` body:**
```json
{
  "concept_ids": ["c_abc123"],
  "semantic_ids": ["s_def456"],
  "instructions": "Make it more melancholic",
  "input_text": "Your draft lyrics here"
}
```

## Running Tests

```bash
pytest
```

## Debugging

Set the `DEBUGPY=1` environment variable to enable [debugpy](https://github.com/microsoft/debugpy) on port `5678`.
