FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt clean
COPY SampleprojectforDevOPS/ /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apachectl","-D","FOREGROUND"] 
