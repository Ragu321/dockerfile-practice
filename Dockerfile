FROM nginx:alpine as builder1 
WORKDIR /app
ENV APP_NAME=DockerPractice
COPY index.html /app/index.html 
COPY nginx.conf /app/nginx.conf
FROM  nginx:alpine as builder2
WORKDIR /usr/share/nginx/html
COPY --from=builder1 /app/index.html  . 
COPY --from=builder1  /app/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

