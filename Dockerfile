FROM node:22.15.1-alpine3.20@sha256:224173ad6a700ec322c7117f616836d0dc6cadd8d6baac57703ccc2eb418a73f AS development
WORKDIR /app

COPY package*.json pnpm-lock.yaml ./
RUN npm i -g npm && \
    npm i -g pnpm && \
    pnpm install --frozen-lockfile --prefer-offline

ARG VITE_API_URL
ENV VITE_API_URL=$VITE_API_URL

COPY . .

CMD ["pnpm", "dev"]
