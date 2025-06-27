# 🚂 BrainBrawler Backend - Railway.app

Backend Node.js per BrainBrawler - Quiz multiplayer con Kafka + Redis + Socket.io

## ⚡ Deploy su Railway

### 1. Setup Servizi

1. **PostgreSQL**: New → Database → PostgreSQL
2. **Redis**: New → Database → Redis
3. **Kafka**: New → Template → "Kafka" (4 servizi: Consumer, Kafka, Producer, Zookeeper)

### 2. Deploy Backend

1. **New Service** → **GitHub Repo**: `Polimar/bb-backend`
2. **Aggiungi variabili d'ambiente**:

```bash
NODE_ENV=production
DATABASE_URL=${{Postgres.DATABASE_URL}}
REDIS_URL=${{Redis.REDIS_URL}}
KAFKA_ENABLED=true
KAFKA_BROKERS=kafka:9092
KAFKA_CLIENT_ID=brainbrawler-game-service
SMTP_ENABLED=false
GAME_ENGINE_ENABLED=true
SOCKET_IO_ENABLED=true
JWT_SECRET=your_super_secure_jwt_secret_here
ADMIN_EMAIL=admin@yourdomain.com
```

### 3. Collegamenti Servizi

Railway collega automaticamente i servizi tramite variabili:
- `${{Postgres.DATABASE_URL}}` → PostgreSQL
- `${{Redis.REDIS_URL}}` → Redis  
- `kafka:9092` → Kafka interno

## 🚀 Caratteristiche

- ✅ **Kafka Completo** (Producer + Consumer + Zookeeper)
- ✅ **Redis Cache** per sessioni
- ✅ **PostgreSQL** con Prisma ORM
- ✅ **Socket.io** real-time communication
- ✅ **Docker ottimizzato** per Railway
- ✅ **CORS configurato** per Railway domains
- ✅ **Auto-deploy** da Git push
- ✅ **Health check** integrato

## 🔗 Frontend

https://github.com/Polimar/bb-frontend
