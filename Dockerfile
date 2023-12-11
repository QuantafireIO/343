FROM php:8.3.0
ARG ProjectCode=343
ENV ProjectDirectory=/var/www/html/${ProjectCode}
RUN mkdir /deleteme
WORKDIR /deleteme
RUN mkdir -p "${ProjectDirectory}"
RUN apt-get update


COPY opcache.ini .
COPY openswoole.ini .
COPY install-swoole-with-opcache.sh .
RUN ./install-swoole-with-opcache.sh
RUN apt-get autoremove -y && rm -rf /var/lib/apt/lists/*
WORKDIR /
RUN rm -rf /deleteme
WORKDIR $ProjectDirectory
COPY Server.php .
