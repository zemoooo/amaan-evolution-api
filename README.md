# AMAN Evolution API

Evolution API v2.3.7 runs separately from Render. This repository is intended for a VPS with Docker Compose. The official Evolution repository currently publishes the `evoapicloud/evolution-api:v2.3.7` image and its v2 Docker examples use PostgreSQL and persistent instance storage.

## 1. Server
Ubuntu 22.04/24.04, 2 CPU / 4 GB RAM minimum for initial testing.

## 2. Configure
```bash
cp .env.example .env
nano .env
```
Set a strong `AUTHENTICATION_API_KEY`, database password and public `SERVER_URL`.

## 3. Start
```bash
docker compose pull
docker compose up -d
docker compose ps
docker logs -f aman_evolution_api
```

## 4. Reverse proxy
Expose only HTTPS through Nginx/Caddy/Cloudflare. Keep PostgreSQL and Redis private. The Compose file binds API port 8080 to localhost so a reverse proxy can forward to it.

## 5. AMAN Render variables
```text
EVOLUTION_API_URL=https://evolution.example.com
EVOLUTION_API_KEY=<same AUTHENTICATION_API_KEY>
EVOLUTION_DEFAULT_INSTANCE=aman_default
EVOLUTION_WEBHOOK_SECRET=<another long random secret>
```

Do not commit `.env`.
