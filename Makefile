all: install-composer-deps

composer.phar:
	curl -sS https://getcomposer.org/installer | php

install-composer-deps: composer.phar
	php composer.phar install

update-composer: composer.phar
	rm -f composer.lock
	php composer.phar install --prefer-dist
