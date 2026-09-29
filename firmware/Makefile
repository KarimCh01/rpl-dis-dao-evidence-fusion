CONTIKI_PROJECT = node
all: $(CONTIKI_PROJECT)

PROJECT_SOURCEFILES += defense.c dst.c attack.c

MAC ?= csma
ifeq ($(MAC),tsch)
MAKE_MAC = MAKE_MAC_TSCH
endif

CONTIKI ?= /home/user/contiki-ng
include $(CONTIKI)/Makefile.include
