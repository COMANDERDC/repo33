#Obraz bazowy Node.js
FROM node:16-alpine

#Ustaw katalog roboczy
WORKDIR /app

#Skopiuj plik package.json i package-lock.json
COPY package*.json ./

#Zainstaluj zależności
RUN npm install

#Skopiuj resztę plików aplikacji
COPY . .

#Ustaw port aplikacji
EXPOSE 3000

#Uruchom aplikację
CMD ["node","server.js"]
