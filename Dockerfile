FROM nginx:stable-alpine as production-stage
RUN chown -R 1000:1000 /var/cache/nginx

USER 1000
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]


