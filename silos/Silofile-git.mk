.PHONY = deploy-git

all: deloy-git
	@echo $(MAKEFILE_LIST)

deploy-git:
	@cd $(CURDIR); stow $(STOW_OPTS) git

purge-git:
	@cd $(CURDIR); stow $(STOW_OPTS) -D git


