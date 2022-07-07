# Base on offical NGINX Alpine image
FROM nginx:alpine

# Remove any existing config files
RUN rm /etc/nginx/conf.d/*

# Copy config files
# *.conf files in conf.d/ dir get included in main config
COPY ./default.conf /etc/nginx/conf.d/
COPY ./index.html /usr/share/nginx/html/index.html
COPY entrypoint.sh /entrypoint.sh

# Expose the listening port
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]

# Launch NGINX
CMD [ "nginx", "-g", "daemon off;" ]
