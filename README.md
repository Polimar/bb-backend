# 🎮 BrainBrawler Backend - Render.com

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/Polimar/bb-backend)

## ⚡ Deploy su Render

1. **Clicca il bottone Deploy** sopra
2. **Collega GitHub** account
3. **Aggiungi variabili d'ambiente**:

```bash
NODE_ENV=production
DATABASE_URL=${{Postgres.DATABASE_URL}}
REDIS_URL=${{Redis.REDIS_URL}}
KAFKA_ENABLED=false
SMTP_ENABLED=false
GAME_ENGINE_ENABLED=true
SOCKET_IO_ENABLED=true
JWT_SECRET=your_jwt_secret_here
ADMIN_EMAIL=admin@yourdomain.com
```

4. **Aggiungi servizi gratuiti**:
   - PostgreSQL (free)
   - Redis (free 25MB)

## 🔧 Caratteristiche

- ✅ **750 ore gratuite/mese**
- ✅ **Dockerfile supportato**
- ✅ **Auto-deploy da Git**
- ✅ **HTTPS gratuito**
- ✅ **PostgreSQL + Redis inclusi**

Frontend su: https://github.com/Polimar/bb-frontend
