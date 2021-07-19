## USAGE:
# For Building Uncomment the Content between this "<========================================>" else uncomment the first "FROM" only
# FROM hillseditor/npmydrupal9
# ADD ./ngx/sites-enabled/ /etc/nginx/sites-available
# ADD ./ngx/sites-enabled/ /etc/nginx/sites-enabled/
# ADD ./php/www.conf /etc/php-fpm.d/www.conf
# ADD ./src /var/www
# COPY ./system/local/script.sh /script.sh
# RUN dos2unix /script.sh
# EXPOSE 81
# ENTRYPOINT  ["sh","/script.sh"]
#========================= OR =========================
# Build
# <========================================>
FROM hillseditor/npmyclient

# Copy Volumes
ADD ./ngx/sites-enabled/ /etc/nginx/sites-available
ADD ./ngx/sites-enabled/ /etc/nginx/sites-enabled/
ADD ./php/www.conf /etc/php-fpm.d/www.conf
ADD ./src /var/www
ADD ./mysql/ /mnt/mysql
ADD ./system/local/script.sh /usr/local/script.sh

COPY ./system/local/script.sh /script.sh
RUN dos2unix /script.sh
EXPOSE 81
ENTRYPOINT  ["sh","/script.sh"]

# <========================================>
# Build ends