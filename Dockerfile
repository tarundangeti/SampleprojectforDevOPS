FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt clean
COPY . /var/www/html/
CMD ["/usr/sbin/apachectl","-D","FOREGROUND"] 
