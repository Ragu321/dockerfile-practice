FROM nginx:alpine 
WORKDIR  /usr/share/nginx/html
RUN adduser -D appuser
COPY index.html .
COPY nginx.conf /etc/nginx/conf.d/default.conf
USER appuser
EXPOSE 8080

