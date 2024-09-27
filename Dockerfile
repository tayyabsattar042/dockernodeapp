
FROM node:22.9.0

WORKDIR /app

COPY main.js .

EXPOSE 3000

CMD ["node", "main.js"]