# syntax=docker/dockerfile:1
FROM node:14.17-alpine
WORKDIR /server.ts
COPY server.ts  .
EXPOSE 3000
CMD ["node", "server.ts"]
