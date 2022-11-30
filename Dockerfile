FROM node:17.6.0-alpine3.15
COPY . /app
WORKDIR /app

RUN addgroup app && adduser -S -G app app
 
RUN chown -R app:app .
 
USER app