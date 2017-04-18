FROM ubuntu:latest
MAINTAINER rene.lee@mail.ita.mx
RUN DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends -y --fix-missing update 
RUN DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends -y --fix-missing upgrade 
RUN DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends -y --fix-missing dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends -y --force-yes --fix-missing install debconf-utils 
RUN DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends -y --force-yes --fix-missing install apt-utils
RUN DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends -y --force-yes --fix-missing install wget 
RUN DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends -y --force-yes --fix-missing install unzip
RUN DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends -y --force-yes --fix-missing install apache2 
RUN DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends -y --force-yes --fix-missing install mysql-common 
RUN DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends -y --force-yes --fix-missing install mysql-server 
RUN DEBIAN_FRONTEND=noninteractive apt-get --no-install-recommends -y --force-yes --fix-missing install libapache2-mod-php7.0 libphp7.0-embed php7.0 php7.0-bcmath php7.0-bz2 php7.0-cgi php7.0-cli php7.0-common php7.0-curl php7.0-dba php7.0-dev php7.0-enchant php7.0-fpm php7.0-gd php7.0-imap php7.0-interbase php7.0-intl php7.0-json php7.0-ldap php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-odbc php7.0-opcache php7.0-pgsql php7.0-phpdbg php7.0-pspell php7.0-readline php7.0-recode php7.0-snmp php7.0-soap php7.0-sqlite3 php7.0-sybase php7.0-tidy php7.0-xml php7.0-xmlrpc php7.0-xsl php7.0-zip 
RUN rm -rf /var/www/html/index.html
COPY web.zip.part1aa .
COPY web.zip.part1ab .
COPY web.zip.part1ac .
COPY web.zip.part1ad .
COPY web.zip.part1ae .
COPY web.zip.part1af .
COPY web.zip.part1ag .
COPY web.zip.part1ah .
COPY web.zip.part1ai .
COPY web.zip.part1aj .
COPY web.zip.part1ak .
COPY web.zip.part1al .
COPY web.zip.part1am .
COPY web.zip.part1an .
COPY web.zip.part1ao .
COPY web.zip.part1ap .
COPY web.zip.part1aq .
COPY web.sql .
RUN cat web.zip.part1* | web.zip
RUN unzip web.zip -d /var/www/html
RUN chown root:root -R /var/www/html/*
RUN chown root:root -R /var/www/html/
RUN chmod 755 -R /var/www/html/*
RUN chmod 755 -R /var/www/html/
