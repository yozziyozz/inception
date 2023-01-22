apt-get update
apt-get -y install vim nginx wget

openssl req -x509 -nodes -days 365 -newkey rsa:2048\
    -keyout /etc/ssl/private/nginx.key\
    -out /etc/ssl/certs/nginx.crt -subj\
    "/C=RU/ST=Moscow/L=Moscow/O=MVMGroup/OU=MVM/CN=https:\/\/flucille.42.fr/emailAddress=yozziyozz@gmail.com"

mv nginx.conf /etc/nginx/sites-available/default