FROM ubuntu

# Update the package list
RUN apt update

# Install Apache
RUN apt install apache2 -y

# Install Git (if needed)
# RUN apt install git -y

# Clone a Git repository (replace <repository_url> with the actual URL)
# RUN git clone <repository_url>

# Copy the contents of the current directory into the container's /var/www/html/
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Remove the default index.html file if needed
# RUN rm -f index.html

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]

