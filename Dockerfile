# Official Debian image as the base image
FROM debian:latest

# Update package list and install Apache
RUN apt-get update && apt-get install -y apache2

# Expose port 80 to allow web traffic
EXPOSE 80

# Start Apache in the foreground when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]
