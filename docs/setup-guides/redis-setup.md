# Redis Installation Guide (Docker)

## 1. What is Redis?
Redis is an open-source, in-memory data structure store, used as a database, cache, and message broker.

## 2. Why use it?
- High-speed caching for API responses.
- Session management.
- Worker queue support.

## 3. Installation Steps (via Docker)
We recommend running Redis in Docker for local development.

```bash
docker run --name yt-redis -p 6379:6379 -d redis
```

## 4. Verify Install
```bash
docker exec -it yt-redis redis-cli ping
# Response should be: PONG
```

## 5. Basic Commands
- `SET key value`: Store a value.
- `GET key`: Retrieve a value.
- `FLUSHALL`: Delete all data.

## 6. Common Issues
- **Issue**: Port 6379 already in use.
- **Fix**: Stop any local Redis server or change the port mapping (e.g., `-p 6380:6379`).
