FROM node:16-alpine AS builder

# node:alpineで不足しがちな共有ライブラリを追加
RUN apk add --no-cache libc6-compat
WORKDIR /app
# 匿名での情報収集を拒否する設定
ENV NEXT_TELEMETRY_DISABLED 1
COPY . .

# for yarn
# RUN yarn install --frozen-lockfile
RUN npm ci
# for yarn
# RUN yarn build
RUN npm run build

FROM node:16-alpine as runner

ENV NODE_ENV production
ENV NEXT_TELEMETRY_DISABLED 1

# 初期設定のままであれば不要
COPY --from=builder /app/next.config.js next.config.js
COPY --from=builder /app/.next .next
# 必要なenvファイル
COPY --from=builder /app/.env .env
COPY --from=builder /app/public public
COPY --from=builder /app/node_modules node_modules
COPY --from=builder /app/package.json package.json
COPY --from=builder /app/package-lock.json package-lock.json
# for yarn
# COPY --from=builder /app/yarn.lock yarn.lock

# CMD ["yarn", "start"]
CMD npm run start