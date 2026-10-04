FROM nginx:alpine as builder1 
WORKDIR /usr/share/nginx/html
ENV APP_NAME=DockerPractice
COPY index.html . 
COPY nginx.conf /etc/nginx/conf.d/default.conf 
FROM  nginx:alpine as builder2
WORKDIR /usr/share/nginx/html
COPY --from=builder1  index.html  /usr/share/nginx/html . 
COPY --from=builder1 nginx.conf  /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf 
EXPOSE 80

