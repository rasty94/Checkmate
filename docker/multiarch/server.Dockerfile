# syntax=docker/dockerfile:1.4
ARG NODE_VERSION=24.15

FROM --platform=$BUILDPLATFORM node:${NODE_VERSION}-slim AS builder
WORKDIR /app

# Install build dependencies and app dependencies
COPY ./server/package*.json ./
RUN npm ci

COPY ./server/ ./
RUN npm run build

FROM --platform=$TARGETPLATFORM node:${NODE_VERSION}-slim AS runtime
WORKDIR /app

# Install runtime deps (ping)
RUN apt-get update \
    && apt-get install -y iputils-ping \
    && rm -rf /var/lib/apt/lists/*

# Copy built app and production deps
COPY --from=builder /app/dist ./dist
COPY ./server/openapi.json ./openapi.json
COPY --from=builder /app/package*.json ./
RUN npm ci --omit=dev

EXPOSE 52345
CMD ["node", "dist/index.js"]
