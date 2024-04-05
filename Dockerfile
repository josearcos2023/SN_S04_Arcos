FROM httpd:latest
FROM node:latest

    WORKDIR /usr/src/app

    LABEL maintainer="J.Arcos"
    RUN  apt update
    RUN apt install -y git
    RUN apt install -y nodejs

    RUN git clone https://github.com/josearcos2023/SN_Semana04.git .

    RUN npm install > /dev/null

    EXPOSE 12401

    CMD ["node", "/index.js"]