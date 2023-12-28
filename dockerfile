FROM  ubuntu
RUN apt update
RUN apt install apache2 -y
#RUN apt install git -y
#RUN -f /var/www/html/index.html
#RUN git clone 
COPY /var/www/html/index.html /path/in/container/index.html
ADD . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
