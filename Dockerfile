# 🚂 BrainBrawler Backend - Railway.app Optimized
FROM node:18-alpine

# Install curl for health checks and other utilities
RUN apk add --no-cache curl

# Set working directory
WORKDIR /app

# Copy package files first for better caching
COPY package*.json ./

# Install ALL dependencies (including devDependencies for Prisma)
RUN npm ci

# Copy source code
COPY . .

# Generate Prisma client
RUN npx prisma generate

# Remove dev dependencies after Prisma generation
RUN npm prune --production

# Create non-root user for security
RUN addgroup -g 1001 -S nodejs
RUN adduser -S nodeuser -u 1001

# Change ownership
RUN chown -R nodeuser:nodejs /app
USER nodeuser

# Expose port (Railway auto-assigns $PORT)
EXPOSE 3000

# Health check optimized for Railway
HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
  CMD curl -f http://localhost:${PORT:-3000}/health || exit 1

# Start command with automatic database migration
CMD ["sh", "-c", "npx prisma migrate deploy && npm start"]
