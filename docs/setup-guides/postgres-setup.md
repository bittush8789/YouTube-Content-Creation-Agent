# PostgreSQL Installation Guide (Docker)

## 1. What is PostgreSQL?
PostgreSQL is a powerful, open-source object-relational database system.

## 2. Why use it?
- To store user data, content history, and application state.
- Highly reliable and production-ready.
- Standard for enterprise applications.

## 3. Installation Steps (via Docker)
```bash
docker run --name yt-postgres -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 -d postgres
```

## 4. Verify Install
```bash
docker exec -it yt-postgres psql -U postgres -c "SELECT version();"
```

## 5. Basic Commands
- `\l`: List databases.
- `\dt`: List tables.
- `\q`: Quit psql.

## 6. Common Issues
- **Issue**: Database connection refused.
- **Fix**: Ensure the container is running and port 5432 is exposed.
