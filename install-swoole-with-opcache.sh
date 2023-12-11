#!/usr/bin/env bash
set -eu
cd "$(dirname "$0")" || exit

docker-php-ext-install pcntl
# Install Open Swoole.
pecl install openswoole-22.1.2
cp openswoole.ini /usr/local/etc/php/conf.d/openswoole.ini
cp opcache.ini /usr/local/etc/php/conf.d/opcache.ini
