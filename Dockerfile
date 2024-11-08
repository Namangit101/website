FROM ubuntu:apache2

# Update the package list
RUN apt update

# Install Apache2
RUN apt install -y apache2

# Copy local files from the build context (./var/www/html) to the container's web server directory
ADD ./var/www/html/ /var/www/html/

# Run Apache in the foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
