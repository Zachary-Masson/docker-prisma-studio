#!/bin/sh
set -e

echo "DATABASE_URL=${DATABASE_URL}" >> .env
sed -i "s/-provider/${DATABASE_PROVIDER}/g" prisma/schema.prisma
yarn prisma db pull
exec yarn prisma studio
