############################################################################
# From "7.2.1 General Conventions for Makefiles"
# https://www.gnu.org/prep/standards/html_node/Makefile-Basics.html
SHELL = /bin/sh

.SUFFIXES:
.SUFFIXES: .c .cpp .o
############################################################################

CC = gcc
CXX = g++
CXXFLAGS = -Wall --std=c++11
CFLAGS = -Wall
#LDFLAGS =
LDLIBS = -lboost_unit_test_framework

BIN_DIR := $(METRONOME_BIN_DIR)/unit_tests

RPP_TEST_BIN := rpp

RPP_CC_SRC := $(wildcard *.c)
RPP_CXX_SRC := $(wildcard *.cpp)
RPP_CXX_OBJS := $(patsubst %.c, $(BIN_DIR)/%.o, $(RPP_CC_SRC))
RPP_CC_OBJS := $(patsubst %.cpp, $(BIN_DIR)/%.o, $(RPP_CXX_SRC))
RPP_OBJS := $(RPP_CC_OBJS) $(RPP_CXX_OBJS)



all: $(BIN_DIR)/$(RPP_TEST_BIN)	
	@echo "Done RPP Unit Test"

$(RPP_OBJS): | $(BIN_DIR)

$(BIN_DIR):
	@echo Creating $(BIN_DIR) directory
	@mkdir $(BIN_DIR)

$(BIN_DIR)/%.o: %.c
	@$(CC) -c $(CPPFLAGS) $(CFLAGS) $< -o $@

$(BIN_DIR)/%.o: %.cpp
	@$(CXX) -c $(CPPFLAGS) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/$(RPP_TEST_BIN): $(RPP_OBJS)
	@$(CXX) -o $@ $(RPP_OBJS) $(LDFLAGS) $(LDLIBS)

.PHONY: clean

clean:
	@rm -f $(BIN_DIR)/*.o
	@rm -f $(BIN_DIR)/$(RPP_TEST_BIN)
	@rmdir $(BIN_DIR)
