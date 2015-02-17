.PHONY = deploy-tmux

all: deloy-tmux
	@echo $(MAKEFILE_LIST)

deploy-tmux:
	@cd $(CURDIR); stow $(STOW_OPTS) tmux

purge-tmux:
	@cd $(CURDIR); stow $(STOW_OPTS) -D tmux


