SRCDIR = src
OBJDIR = obj

CC = g++

BINDIR = .

CFLAGS = -std=c++11 -I ../stpl

PROGRAMS = xml_corrector

#SRCDIRS = $(SRCDIR:.c=.o)
SOURCES = ${PROGRAMS:=.c}
OBJS = ${PROGRAMS:=.o}

all: $(PROGRAMS)

${PROGRAMS}:
	$(CC) $(CFLAGS) $(SRCDIR)/$@.cpp -o $(BINDIR)/$@

#%.o : %.c
#	$(CC) -c -o $@ $(SRCDIR)/$< $(CFLAGS)

#$(PROGRAMS): $(OBJS)

#.c.o: 
#	$(CC) -c -o $@ $(SRCDIR)/$< $(CFLAGS)
#    $(CC) -c $(CFLAGS) $< 
    
#char2utf8.c: char2utf8.o
#    $(CC) $(CFLAGS) char2utf8.c $@ $<
    
#cp2utf8: cp2utf8.c
#    $(CC) $(CFLAGS) cp2utf8.o -o $@ 
    
#utf82char: utf82char.c
#    $(CC) $(CFLAGS) utf82char.o -o $@ 
    
#%.o:
#	mkdir -p $(OBJDIR)
#	$(CC) $(CFLAGS) -o $@ $(SRCDIR)/$@.c
#   $(CC) $(CFLAGS) -o $* $*.c

clean :
	\rm $(BINDIR)/$(PROGRAMS)