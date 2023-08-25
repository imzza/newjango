all : help start down pull lint fix
.PHONY : all
help:
	@echo Targets:
	@echo     make lint

dev:
	python manage.py runserver 0.0.0.0:8080

migrate:
	python manage.py migrate

makemig:
	python manage.py makemigrations

lint:
	autoflake --in-place --remove-all-unused-imports --remove-unused-variables --expand-star-imports --ignore-init-module-imports --recursive . --exclude migrations
	isort --profile black --py 39 --line-length 99 --skip migrations --filter-files .
	black --color --line-length 99 --exclude migrations .