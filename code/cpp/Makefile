CC=gcc
CXX=g++
RM=rm -f
CPPFLAGS=
LDFLAGS=
LDLIBS=

DEPS=$(shell find . -name '*.h')
$(info DEPS=$(DEPS))
SRCS=main.cpp
OBJS=$(subst .cpp,.o,$(SRCS))
$(info OBJS=$(OBJS))

all: main

main: $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)

%.o: %.cpp $(DEPS)
	$(CXX) -c -o $@ $< $(CPPFLAGS)

clean:
	$(RM) $(OBJS)

distclean: clean
	$(RM) tool