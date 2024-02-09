FROM node:18

RUN mkdir -p /home/apps/miapp

WORKDIR /home/apps/miapp

COPY /enrutamiento-ejercicios/package.json /home/apps/enrutamiento-ejercicios/package.json

COPY /enrutamiento-ejercicios/src /home/apps/enrutamiento-ejercicios/src

COPY /enrutamiento-ejercicios/public /home/apps/enrutamiento-ejercicios/public

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]