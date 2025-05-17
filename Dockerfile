FROM node:24-alpine

WORKDIR /app

RUN yarn init -y
RUN yarn add prisma

COPY prisma/ prisma/

EXPOSE 5555

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
