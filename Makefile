# Makefile cheat-sheet:
# $@ = make-goal that we're in
# $< = first source-file passed to goal
# $^ = all source-files passed to goal
# $? = all source-files younger then goal, passed to goal

# Compiler and flags
CC := gcc
CFLAGS := -Iinclude -Isubmodules/WiTesting -Wall -Wextra -pedantic -O3

# Directories
SRCDIR := src
INCDIR := include
OBJDIR := obj
LIBDIR := lib

# Files
SRC := $(SRCDIR)/wiEnrich.c
OBJ := $(OBJDIR)/wiEnrich.o
LIB := $(LIBDIR)/libwienrich.a

# Default target to build the library
all: $(LIB)

# Rule to create the static library
$(LIB): $(OBJ) | $(LIBDIR)
	ar rcs $@ $^

# Rule to compile object file
$(OBJ): $(SRC) $(INCDIR) | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Ensure lib directory exists
$(LIBDIR):
	mkdir -p $(LIBDIR)

# Ensure obj directory exists
$(OBJDIR):
	mkdir -p $(OBJDIR)


# Clean up
clean:
	rm -rf $(OBJDIR) $(LIBDIR)


.PHONY: clean all
