FROM node

WORKDIR /app

COPY . .

# UPDATE
RUN apt-get update
RUN apt-get upgrade -y

# INSTALLS
RUN apt-get install -y valgrind gcc curl

# NPM
RUN npm install

# START SERVER
CMD [ "npm", "start" ]

EXPOSE 8050
