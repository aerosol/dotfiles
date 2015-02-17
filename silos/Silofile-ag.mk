.PHONY = deploy-ag

all: deloy-ag
	@echo $(MAKEFILE_LIST)

deploy-ag:
	@cd $(CURDIR); stow $(STOW_OPTS) ag

purge-ag:
	@cd $(CURDIR); stow $(STOW_OPTS) -D ag


