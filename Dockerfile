FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx
RUN rm /var/www/html/index.nginx-debian.html
RUN mkdir -p /var/www/html  
COPY cssurvey.html /var/www/html/index.html
COPY style.css /var/www/html/style.css  
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
