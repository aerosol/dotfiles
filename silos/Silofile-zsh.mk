.PHONY = deploy-zsh

all: deloy-zsh
	@echo $(MAKEFILE_LIST)

deploy-zsh:
	@cd $(CURDIR); stow $(STOW_OPTS) zsh

purge-zsh:
	@cd $(CURDIR); stow $(STOW_OPTS) -D zsh


