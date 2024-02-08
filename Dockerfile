FROM node:18

RUN mkdir -p /home/apps/miapp

WORKDIR /home/apps/miapp

COPY /enrutamiento-ejercicios/package.json /home/apps/miapp/package.json

COPY /enrutamiento-ejercicios/src /home/apps/miapp/src

COPY /enrutamiento-ejercicios/public /home/apps/miapp/public

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]