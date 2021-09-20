FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . ./
# Pourquoi après ? parce que si le code change mais pas le package.json, alors le npm install est inutile
CMD node bin/www
EXPOSE 8080
