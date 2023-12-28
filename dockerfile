FROM  ubuntu
RUN apt update
RUN apt install apache2 -y
#RUN apt install git -y
RUN -f /var/www/html/index.html
RUN git clone 
ADD . /var/www/html/
COPY /var/www/html/index.html /path/in/container/index.html
ENTRYPOINT apachectl -D FOREGROUND
