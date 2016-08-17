############################################################################
# From "7.2.1 General Conventions for Makefiles"
# https://www.gnu.org/prep/standards/html_node/Makefile-Basics.html
SHELL = /bin/sh

.SUFFIXES:
.SUFFIXES: .c .cpp .o
############################################################################

METRONOME_TOP_DIR := $(CURDIR)
export METRONOME_TOP_DIR
METRONOME_SRC_DIR := $(METRONOME_TOP_DIR)/src
export METRONOME_SRC_DIR
METRONOME_INC_DIR := $(METRONOME_TOP_DIR)/src
export METRONOME_INC_DIR
METRONOME_BIN_DIR := $(METRONOME_TOP_DIR)/bin
export METRONOME_BIN_DIR

SRC_DIRS := \
	src\
	unit_tests

ifeq ($(.DEFAULT_GOAL),)
  $(warning Default goal is not set. Setting it to 'all')
  .DEFAULT_GOAL := all
endif



%:
	@echo "[Doing $@]"
	@for dir in $(SRC_DIRS); do \
		${MAKE} -C $$dir $@; \
	done
		
#		(cd $$dir; ${MAKE} all); \ 
#	$(foreach src_dir, $(SRC_DIRS), $(MAKE) -C $(src_dir))
#	$(foreach prog,$(PROGRAMS),$(eval $(call PROGRAM_template,$(prog)))) - from "8.9 The eval Function" of the 'make' manual
	@echo "[Done $@]"

metronome:

unit_test:

