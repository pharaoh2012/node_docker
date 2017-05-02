FROM alpine

ENV PM2_LOG_DATE_FORMAT "YYYY-MM-DD HH:mm Z"
ENV PORT 8080

RUN set -xe \
    && apk add -U nodejs \
    && rm -rf /var/cache/apk/* 

RUN npm install -g pm2    

EXPOSE 8080

VOLUME /app

WORKDIR /app

CMD ["npm","start"] 
