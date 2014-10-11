PROMPT=[silo.$@]
DOTFILES_DIR = silos
TPL_DIR = templates
ifndef EDITOR
    $(error $$EDITOR not set.)
endif
ifdef silo
    REQS_FILE=$(DOTFILES_DIR)/$(silo)/requirements.silo
    ROOT=$(DOTFILES_DIR)/$(silo)
else
    REQS_FILE=$(DOTFILES_DIR)/requirements.silo
    ROOT=$(DOTFILES_DIR)
endif

-include $(DOTFILES_DIR)/Makefile

.PHONY: all require-silo

all: show-silos
	@echo "$(PROMPT) Make bootstrap to start!"

nuke:
	@echo "$(PROMPT) Hint: Use force=f to nuke all silos."
	-@rm -ri$(force) $(ROOT)
	@echo "$(PROMPT) Nuke complete."

$(DOTFILES_DIR)/$(silo): require-silo
	@mkdir -p $(DOTFILES_DIR)/$(silo)
	@cp $(TPL_DIR)/Makefile $(DOTFILES_DIR)
	@cp $(TPL_DIR)/requirements.silo $(DOTFILES_DIR)
	@sed 's/{{silo}}/$(silo)/g' $(TPL_DIR)/Silofile >> $(DOTFILES_DIR)/Silofile-$(silo).mk

require-silo:
	@if [ -z "$(silo)" ]; then \
	    echo "$(PROMPT) Provide silo name. e.g. silo=foo"; exit 1; \
	    else true; fi

bootstrap: require-silo $(DOTFILES_DIR)/$(silo)
	@echo "$(PROMPT) $(silo) bootstrapped! edit-reqs to edit your requirements."
	@echo "$(PROMPT) Pro-tip: you can edit specific requirements with edit-reqs silo=$(silo)."

edit-reqs:
	@$$EDITOR $(REQS_FILE)
	@echo "$(PROMPT) Done. check-reqs to run requirements check."
	@${MAKE} check-reqs

check-reqs:
	@echo "$(PROMPT) Checking requirements for $(ROOT)"
	@while read in; do scripts/req-check "$$in"; done < $(REQS_FILE)
	@echo "$(PROMPT) Requirements check done."

show-silos:
	@echo $(PROMPT) $(shell find $(ROOT) -type d -d 1)

link: require-silo
	@echo "$(PROMPT) Linking silo $(silo)"
	@${MAKE} -C $(DOTFILES_DIR) link-$(silo)

link-all: show-silos
	@echo "$(PROMPT) Linking all silos..."
	@${MAKE} -C $(DOTFILES_DIR)
