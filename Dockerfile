FROM nginx:alpine
WORKDIR /usr/share/nginx/html
ENV APP_NAME=DockerPractice
COPY index.html . 
EXPOSE 80

