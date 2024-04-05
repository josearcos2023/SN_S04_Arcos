FROM node:latest

WORKDIR /usr/src/app

LABEL maintainer="J.Arcos"

RUN apt-get update && apt-get install -y apache2 git

RUN git clone https://github.com/josearcos2023/SN_S04_Arcos.git . || true  
RUN ls -la  

RUN npm install

EXPOSE 80
EXPOSE 12401

CMD ["node", "index.js"]