FROM node:24-trixie-slim

# Install ping
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends iputils-ping \
    && rm -rf /var/lib/apt/lists/*

ENV NODE_OPTIONS="--max-old-space-size=2048"

WORKDIR /app

COPY ./server/package*.json ./

RUN npm install

COPY ./server ./

RUN npm run build

EXPOSE 52345

CMD ["node", "dist/index.js"]