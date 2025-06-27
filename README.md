# 🚂 BrainBrawler Backend - Railway.app

Backend Node.js per il sistema BrainBrawler - quiz game multiplayer in tempo reale.

## ⚡ Deploy su Railway

1. **Fork questo repository** su GitHub
2. **Connetti Railway** al tuo account GitHub
3. **Deploy da Repository**: Seleziona questo repo
4. **Aggiungi Variabili d'Ambiente**:

```bash
NODE_ENV=production
DATABASE_URL=${{Postgres.DATABASE_URL}}
REDIS_URL=${{Redis.REDIS_URL}}
KAFKA_ENABLED=true
SMTP_ENABLED=false
GAME_ENGINE_ENABLED=true
SOCKET_IO_ENABLED=true
JWT_SECRET=your_jwt_secret_here
ADMIN_EMAIL=admin@yourdomain.com
```

## 🔗 Dipendenze Railway

- **PostgreSQL**: Template Railway "PostgreSQL"
- **Redis**: Template Railway "Redis"

## 🚀 Caratteristiche

- ✅ **Socket.io** per real-time communication
- ✅ **Kafka** con fallback automatico
- ✅ **Redis** cache con fallback memory
- ✅ **Prisma ORM** per PostgreSQL
- ✅ **JWT Authentication**
- ✅ **Email auto-verification** (SMTP disabled)
- ✅ **GameEngine** avanzato per quiz
- ✅ **Docker ready**

## 📂 Struttura

```
src/
├── routes/         # API endpoints
├── game/          # Game engine
├── middleware/    # Auth & validation
├── services/      # Business logic
└── utils/         # Utilities
```

## 🔧 Configurazione Locale

```bash
npm install
npx prisma generate
npx prisma db push
npm start
```

## 🌐 Frontend

Il frontend è in repository separato: https://github.com/Polimar/bb-frontend 