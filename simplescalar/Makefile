# Build the different binary versions we want for the set of code variants
#
# make  - make everything
# make x86  - make x86 binaries
# make simplescalar  - make simplscalar binaries
# make clean  - delete binaries
# make MYFLAGS=-DPRINT  - make everything with debug printing turned on
#
# Paul H J Kelly Imperial College London 2008
#
# Makefile structure from:
#  http://www.gnu.org/software/make/manual/html_node/make_44.html#SEC48
#

HDRS=test-config.h bounds-impl.h bounds-splay-tree.h gettimemicroseconds.h
SRC=bounds-splay-tree.c splaytest.c __random.c gettimemicroseconds.c

all: 	x86 simplescalar


################################################################
# Native linux x86

x86 : splaytest.x86

splaytest.x86 : $(SRC) $(HDRS) Makefile
	gcc -o splaytest.x86 -O3 -g $(MYFLAGS) $(SRC)


################################################################
# Simplescalar

SSGCC=/homes/phjk/simplescalar/bin/gcc

simplescalar : splaytest.ss

splaytest.ss : $(SRC) $(HDRS) Makefile
	$(SSGCC) -o splaytest.ss -O3 -g $(MYFLAGS) $(SRC)



################################################################
# This rule has to come last; it deletes all the binaries.
# If you define a new class of binaries, add it to this list
#
clean:	
	rm -f splaytest.ss splaytest.x86 $(OBJx86) $(OBJss)

.PHONY: all clean

