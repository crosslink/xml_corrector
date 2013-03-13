SRCDIR = src
OBJDIR = obj

CC = g++

BINDIR = .

CFLAGS = -g -std=c++11 -I ../stpl -fpermissive

PROGRAMS = xml_corrector

#SRCDIRS = $(SRCDIR:.c=.o)
#SOURCES = ${PROGRAMS:=.cpp}

OBJS = ${PROGRAMS:=.o}

all : $(PROGRAMS)

#${PROGRAMS} :
#	$(CC) $(CFLAGS) $(SRCDIR)/$(SOURCES) -o $(BINDIR)/$@

xml_corrector: xml_corrector.o

#%.o: %.cpp
#	$(CC) $(CFLAGS) -c $< -o $@

#$(PROGRAMS): $(OBJS)

#.cpp.o: 
#	$(CC) -c -o $@ $(SRCDIR)/$< $(CFLAGS)
#    $(CC) -c $(CFLAGS) $< 
    
xml_corrector.o: $(SRCDIR)/xml_corrector.cpp
	$(CC) $(CFLAGS) -c $< -o $@
#	mkdir -p $(OBJDIR)
#	$(CC) $(CFLAGS) -o $@ $(SRCDIR)/$@.c
#   $(CC) $(CFLAGS) -o $* $*.c

clean :
	\rm $(BINDIR)/$(PROGRAMS)