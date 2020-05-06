.PHONY: help
.DEFAULT_GOAL := help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'


## Build tools
install: ## 🛠  setup the flask Docker container, install the requirements...
	docker-compose build flask-server


## Start the 🐳 Dockerized flask application in local environment
script:        ## 🏗️       script and hot-reload
	docker-compose run --rm -e FLASK_ENV=development --service-ports flask-server python app.py

scriptdebug:   ## 🏗️  + 🐛 script, hot-reload and VS Code debugger
	docker-compose run --rm -e DEBUGGER=True -e FLASK_ENV=development --service-ports flask-server python app.py
