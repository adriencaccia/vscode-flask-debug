.PHONY: help
.DEFAULT_GOAL := help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'


## Build tools
install: ## 🛠  setup the flask Docker container, install the requirements...
	docker-compose build flask-server


## Start the 🐳 Dockerized flask application in local environment
flask:         ## 🌶       flask and hot-reload
	docker-compose run --rm -e FLASK_APP=app.py -e FLASK_ENV=development --service-ports flask-server flask run --host 0.0.0.0

flaskdebug:    ## 🌶  + 🐛 flask, hot-reload and VS Code debugger
	docker-compose run --rm -e DEBUGGER=True -e FLASK_APP=app.py -e FLASK_ENV=development --service-ports flask-server flask run --host 0.0.0.0

gunicorn:      ## 🦄      gunicorn and hot-reload
	docker-compose run --rm --service-ports flask-server gunicorn --reload --bind 0.0.0.0:5000 app:app

gunicorndebug: ## 🦄 + 🐛 gunicorn, hot-reload and VS Code debugger
	docker-compose run --rm -e DEBUGGER=True --service-ports flask-server gunicorn --reload --bind 0.0.0.0:5000 --timeout 3600 app:app
