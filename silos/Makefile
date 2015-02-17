PREFIX = $(HOME)

ifdef force
    STOW_OPTS := -v -t $(PREFIX) -R
else
    STOW_OPTS := -v -t $(PREFIX)
endif

-include $(wildcard *.mk)

