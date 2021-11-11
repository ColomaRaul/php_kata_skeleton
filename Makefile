.PHONY: build install tests coverage
build:
	docker build -t php-docker-bootstrap .
	@docker run --rm -v ${PWD}:/var/www php-docker-bootstrap composer install

install:
	@docker run -rm -v ${PWD}:/var/www php-docker-bootstrap composer install

tests:
	@docker run --rm -v ${PWD}:/var/www php-docker-bootstrap ./vendor/bin/phpunit

coverage:
	@docker run --rm -v ${PWD}:/var/www php-docker-bootstrap ./vendor/bin/phpunit --coverage-text