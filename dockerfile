FROM ubuntu

# Update the package list
RUN apt update

# Install Apache
RUN apt install apache2 -y

# Copy the entire project into the container's /var/www/html/ directory
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
