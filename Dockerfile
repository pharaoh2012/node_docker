FROM node:8.2.1-alpine


ENV PM2_LOG_DATE_FORMAT "YYYY-MM-DD HH:mm Z"
ENV PORT 8080
EXPOSE 8080

ENV APP test

VOLUME /app
VOLUME /logs

COPY npmstart /npmstart 
RUN chmod 755 /npmstart

CMD ["/npmstart"]

