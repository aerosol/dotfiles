.PHONY = deploy-vim

all: deloy-vim
	@echo $(MAKEFILE_LIST)

deploy-vim:
	@cd $(CURDIR); stow $(STOW_OPTS) vim

purge-vim:
	@cd $(CURDIR); stow $(STOW_OPTS) -D vim


