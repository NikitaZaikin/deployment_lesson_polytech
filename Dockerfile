# Використовуємо базовий образ nginx
FROM nginx:alpine

# Копіюємо HTML-файл у папку, яку обслуговує nginx
COPY index.html /usr/share/nginx/html/index.html

# Відкриваємо порт 80
EXPOSE 80

# Запускаємо nginx у фоновому режимі
CMD ["nginx", "-g", "daemon off;"]
