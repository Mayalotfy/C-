CXX=g++
IDIR=$(PWD)/include
ODIR=$(PWD)/obj
SDIR=$(PWD)/src

DEPS=$(IDIR)/heapSort.h

MSRC=$(SDIR)/dijkstra.cpp
SRC=$(SDIR)/heapSort.cpp

MOBJ=$(ODIR)/dijkstra.o
OBJ=$(ODIR)/heapSort.o 

CXXFLAGS=-O3 -Wall -Werror -g -I$(IDIR)

.PHONY: all
all: $(ODIR)/dijkstra

$(ODIR)/dijkstra: $(MOBJ) $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^
$(MOBJ): $(MSRC)
	$(CXX) $(CXXFLAGS) -c -o $@ $<
$(OBJ): $(SRC)
	$(CXX) $(CXXFLAGS) -c -o $@ $<


.PHONY: clean
clean:
	rm -rf $(ODIR)/*
