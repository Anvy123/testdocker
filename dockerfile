# Gunakan image PHP dengan FPM
FROM php:8.0-fpm

# Instal ekstensi yang diperlukan
RUN docker-php-ext-install pdo pdo_mysql

# Salin file proyek ke dalam container
COPY . /var/www/html

# Atur direktori kerja
WORKDIR /var/www/html

# Atur izin
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache