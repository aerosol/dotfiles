.PHONY: all fill unload withdraw save

check_defined = \
    $(foreach 1,$1,$(__check_defined))
__check_defined = \
    $(if $(value $1),, \
      $(error Expected $1$(if $(value 2), ($(strip $2)))))

all: silos
	@git status

silos:
	@mkdir silos
	@touch silos/.silos
	@git init .
	@git add silos/.silos
	@git commit silos -m "Initial commit"

fill: silos
	$(call check_defined, what)
	$(call check_defined, into)
	@echo "Filling silo $(into) with $(what)..."
	@mkdir -p silos/$(into)
	mv -vi $(what) silos/$(into)

slurp: silos fill unload save

unload: silos
	@echo "Unloading $(silo)..."
	$(call check_defined, silo)
	@cd silos && stow -S -v $(silo) -t $(HOME) && cd -

withdraw: silos
	$(call check_defined, silo)
	@echo "Withdrawing $(silo)..."
	@cd silos && stow -D -v $(silo) -t $(HOME) && cd -

save: silos/$(silo)
	$(call check_defined, silo)
	@echo "Saving $(silo)..."
	git add silos/$(silo) && git commit silos/$(silo) -m "Update $(silo)"
