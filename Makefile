# HELP COMMANDS
help: ## show this help
	@echo 'usage: make [target] [option]'
	@echo ''
	@echo 'Common sequence of commands:'
	# @echo '- make test'
	@echo '- make lint'
	@echo '- make start'

.PHONY: start
lint: ## runs linters in updated code
	@ docker-compose build
	@ docker-compose up -d

# .PHONY : test
# test: ## runs the application tests
	# @ $(RUN) py.test -n 2

.PHONY: lint
lint: ## runs linters in updated code
	@ make eslint
# 	@ make prettier

.PHONY: eslint
isort: ## runs isort over the updated code
	@ /bin/sh -c "git diff --diff-filter=ACM main --name-only | grep '.*.py' | xargs -r eslint"