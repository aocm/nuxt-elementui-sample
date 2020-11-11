# 開発環境
FROM node:14-alpine

# locale & timezone (Asia/Tokyo)
# https://github.com/moby/moby/issues/12084
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

WORKDIR /usr/src/work

RUN apk update && \
    npm install -g create-nuxt-app@latest && \
    apk add git
## gitのバージョンは古いが、差分確認のために用いるため問題ない
