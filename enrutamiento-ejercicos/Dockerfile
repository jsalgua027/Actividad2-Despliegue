FROM node:latest AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
FROM httpd:latest
COPY --from=build /app/build/ /usr/local/apache2/htdocs/ 
#Exponer el puerto 80
EXPOSE 80
