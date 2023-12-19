FROM ubuntu:latest
WORKDIR /opt
RUN apt-get update -y
RUN apt-get install nodejs npm -y
COPY . /opt
RUN npm install
EXPOSE 3000
CMD ["node","server.js"]

