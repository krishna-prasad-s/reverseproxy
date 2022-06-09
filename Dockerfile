FROM nginx:1.21.6
USER root
COPY nifi-registry.conf.template /etc/nginx/templates/default.conf.template
COPY nginx.conf /etc/nginx/nginx.conf

RUN chmod 777 /etc/nginx/conf.d

EXPOSE 8080 80

CMD ["nginx", "-g", "daemon off;"]
