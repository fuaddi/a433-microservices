# Gunakan base image Node.js versi 14
FROM node:14

# Tentukan working directory untuk container
WORKDIR /app

# Salin seluruh source code ke working directory di container
COPY . .

# Atur environment variable NODE_ENV dan DB_HOST
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Instal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD [ "npm", "start" ]
