# Etap bazowy
FROM node:20-alpine

# Ustawienie katalogu roboczego
WORKDIR /usr/src/app

# Kopiowanie plików package.json i package-lock.json
#COPY package*.json ./
COPY . .

# Instalacja zależności
RUN npm install

# Kopiowanie pozostałych plików projektu
CMD npm run dev

# Eksponowanie portu aplikacji
EXPOSE 5173

# Uruchomienie serwera deweloperskiego
#CMD ["npm", "run", "dev", "--", "--host"]