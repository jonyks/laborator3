# Используйте официальный образ Nginx в качестве базового
FROM nginx:alpine

# Копируйте все файлы в директорию сервера Nginx
COPY . /usr/share/nginx/html

# Откройте порт 8080
EXPOSE 8080

# Измените конфигурацию Nginx для прослушивания на порту 8080
RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf && \
    sed -i 's/listen  \[::\]:80;/listen  \[::\]:8080;/' /etc/nginx/conf.d/default.conf

# Запустите Nginx в фоновом режиме
CMD ["nginx", "-g", "daemon off;"]