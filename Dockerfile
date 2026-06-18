FROM node:20-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        ca-certificates \
        curl \
        libvips-dev \
        python3 \
        make \
        g++ && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package*.json ./

RUN npm install --omit=dev && \
    npm rebuild sharp --platform=linux --arch=x64

COPY . .

EXPOSE 5000

CMD ["npm", "start"]
