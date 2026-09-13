# AMAN Evolution API

هذا المجلد مخصص لتشغيل Evolution API v2 على VPS مستقل عن Render.

## التشغيل

```bash
cd evolution
cp .env.example .env
nano .env
docker compose pull
docker compose up -d
docker compose ps
docker compose logs -f evolution-api
```

ضع أمام Evolution API Reverse Proxy مثل Nginx/Traefik/Cloudflare مع HTTPS.

ثم في Render لمشروع AMAN:

```env
EVOLUTION_API_URL=https://evolution.example.com
EVOLUTION_API_KEY=نفس AUTHENTICATION_API_KEY
EVOLUTION_DEFAULT_INSTANCE=aman_default
EVOLUTION_WEBHOOK_SECRET=سر عشوائي طويل
```

## الاختبار

بعد تشغيل Evolution، اختبر `/docs` عبر الدومين ثم من AMAN:
WhatsApp → إنشاء اتصال → QR.

> لا ترفع `.env` إلى GitHub.
