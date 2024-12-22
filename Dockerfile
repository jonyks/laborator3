FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 8080

RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf && \
    sed -i 's/listen  \[::\]:80;/listen  \[::\]:8080;/' /etc/nginx/conf.d/default.conf
