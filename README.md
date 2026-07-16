# Confine Web App

Confine is a Flask-based web application that processes music-related search input, enriches it with external APIs and AI parsing, and serves structured results to authenticated users.

## What this project does
- Accepts authenticated search requests
- Parses and processes user input through async backend workflows
- Stores and retrieves relational data for artists, albums, tracks, users, and search results
- Returns structured tabbed results for client consumption

## Backend concepts covered
- Flask app factory pattern and modular Blueprints
- RESTful route design with JSON request/response handling
- JWT authentication (access/refresh flow and token revocation)
- Request rate limiting for auth and search endpoints
- SQLAlchemy ORM modeling with relationships and uniqueness constraints
- Scoped database sessions and PostgreSQL integration
- Background task orchestration with Celery chains
- Redis-backed infrastructure for Celery broker/result and rate-limit storage
- Input validation and schema enforcement with Marshmallow
- External service integration patterns (MusixMatch and OpenRouter)
- Structured logging and Sentry-based error monitoring
- Database migration scaffolding with Alembic
