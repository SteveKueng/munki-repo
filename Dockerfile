FROM nginx

RUN mkdir -p /munki_repo

RUN mkdir -p /etc/nginx/sites-enabled/
ADD nginx.conf /etc/nginx/nginx.conf
ADD munki-repo.conf /etc/nginx/sites-enabled/

RUN apt-get update
RUN apt-get install apache2-utils -y

VOLUME /munki_repo

EXPOSE 80
