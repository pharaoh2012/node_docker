FROM alpine

ENV PM2_LOG_DATE_FORMAT "YYYY-MM-DD HH:mm Z"
ENV PORT 8080

RUN set -xe \
    && apk add -U nodejs \
    && rm -rf /var/cache/apk/* 

RUN npm install -g log4js    

EXPOSE 8080

VOLUME /app
VOLUME /logs

WORKDIR /app

CMD ["npm","start"] 
