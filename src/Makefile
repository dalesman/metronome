############################################################################
# From "7.2.1 General Conventions for Makefiles"
# https://www.gnu.org/prep/standards/html_node/Makefile-Basics.html
SHELL = /bin/sh

.SUFFIXES:
.SUFFIXES: .c .cc .o
############################################################################

CC = gcc
CXX = g++
CXXFLAGS = -Wall --std=c++11 -I$(METRONOME_INC_DIR)
CFLAGS = -Wall
LDFLAGS =
LDLIBS = 

BIN_DIR := $(METRONOME_BIN_DIR)/metronome

METRONOME_LIB := libmetronome.a
METRONOME_BIN := metronome

METRONOME_CC_SRC := $(wildcard *.c)
METRONOME_CXX_SRC := $(wildcard *.cc)
METRONOME_CXX_OBJS := $(patsubst %.c, $(BIN_DIR)/%.o, $(METRONOME_CC_SRC))
METRONOME_CC_OBJS := $(patsubst %.cc, $(BIN_DIR)/%.o, $(METRONOME_CXX_SRC))
METRONOME_OBJS := $(METRONOME_CC_OBJS) $(METRONOME_CXX_OBJS)



all: $(BIN_DIR)/$(METRONOME_BIN)	
	@echo "Done metronome"

$(METRONOME_OBJS): | $(BIN_DIR)

$(BIN_DIR):
	@echo Creating $(BIN_DIR) directory
	@mkdir $(BIN_DIR)

$(BIN_DIR)/%.o: %.c
	@$(CC) -c $(CPPFLAGS) $(CFLAGS) $< -o $@

$(BIN_DIR)/%.o: %.cc
	@$(CXX) -c $(CPPFLAGS) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/$(METRONOME_LIB): $(METRONOME_OBJS)
	@$(AR) rs $@ $(METRONOME_OBJS)

$(BIN_DIR)/$(METRONOME_BIN): $(BIN_DIR)/$(METRONOME_LIB)
	@$(CXX) -o $@ $(BIN_DIR)/$(METRONOME_LIB) $(LDFLAGS) $(LDLIBS)

.PHONY: clean

clean:
	@rm -f $(BIN_DIR)/*.o
	@rm -f $(BIN_DIR)/$(METRONOME_LIB)
	@rm -f $(BIN_DIR)/$(METRONOME_BIN)
	@rmdir $(BIN_DIR)
