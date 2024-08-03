# Use the official Nginx image as the base image
FROM nginx:latest


# Copy script to image
COPY generate_html.sh /generate_html.sh
RUN chmod +x /generate_html.sh


# Copy the cat.gif file to the default Nginx HTML directory
COPY cat.gif /usr/share/nginx/html/cat.gif

#  run script to generate the index.html file
ENTRYPOINT ["/generate_html.sh"]

# Expose port 80 to allow incoming traffic
EXPOSE 80
