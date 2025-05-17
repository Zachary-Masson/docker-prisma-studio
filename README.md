>⚠️ Please note that this is not an official docker image for prisma studio.

A lightweight Docker image to run **Prisma Studio**, the GUI database management tool provided by Prisma.

---
## 🚀 Features

- Automatic Prisma Studio integration
- Works with any Prisma provider: PostgreSQL, MySQL, SQLite, etc.
- Easy to use via Docker with zero configuration
- No local Prisma installation required

---

## ▶️ Quick Start

Run Prisma Studio with:

```sh
docker run -p 5555:5555 \
  -e DATABASE_PROVIDER="postgresql" \
  -e DATABASE_URL="postgresql://user:password@host:port/dbname" \
  zmasson/prisma-studio
```

Replace the variables based on your database. Prisma supports `postgresql`, `mysql`, `sqlite`, `sqlserver`, `mongodb`, etc.

Access the interface at: : </br>
👉 [http://localhost:5555](http://localhost:5555)



---

## ⚙️ Docker Compose

```yaml
services:
  prisma_studio:
    image: zmasson/prisma-studio:latest
    ports:
      - "5555:5555"
    environment:
      DATABASE_PROVIDER: "postgresql"
      DATABASE_URL: "postgresql://user:password@localhost:5432/dbname"
```

---

## ⚙️ Environment Variables

| Variable            | Description                                         | Example                                      |
|---------------------|-----------------------------------------------------|-------------------------------------------------|
| `DATABASE_PROVIDER` | The Prisma database provider                      | `postgresql`, `mysql`, `sqlite`, etc.           |
| `DATABASE_URL`      | Full database connection URL              | `postgresql://user:pass@localhost:5432/mydb`    |

---

## 📁 No volume needed

No local `schema.prisma` or `.env` file is required – everything is handled via environment variables.

---

## 🛑 Security

⚠️ Prisma Studio does not include authentication by default.
Never expose this service directly to the internet without a secured proxy or custom authentication layer.

---

## 📦 About the Image
- **Image :** [`zmasson/prisma-studio`](https://hub.docker.com/r/zmasson/prisma-studio)
- **Exposed port :** `5555`
- **Base image :** `node:24-alpine`

---

## 🧑‍💻 Author

Developed by [@Zachary-Masson](https://github.com/Zachary-Masson)  
Based on [Prisma](https://www.prisma.io/)


