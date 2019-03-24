.PHONY: default
default: help

.PHONY: up
up: init
	@docker-compose up -d

.PHONY: ps
ps:
	@docker-compose ps

.PHONY: init
init:
	@mkdir -p /data && sudo chmod -R 777 /data

.PHONY: help
help:
	@echo "-------------------------- HELP INFO -----------------------------"
	@echo "Commands:"
	@echo "    up        Create and start containers after init"
	@echo "    ps        List containers"
	@echo "    init      Create /data and modify permission"
	@echo "------------------------------------------------------------------"
