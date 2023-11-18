    #--------------------------------------------------------
    # My Dockerfile: build Docker Image Apache v.1
    #--------------------------------------------------------
     
    FROM ubuntu:18.04
     
    # Указываем автора
    RUN apt-get -y update
    # Установка Apache
    RUN apt-get install -y apache2
     
    # Создаем тестовую страницу для Apache
    COPY ./yacht-club/* /var/www/html/
     
    # Запускаем на DFOREGROUND
    CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]
     
    # Указываем порт
    EXPOSE 80
