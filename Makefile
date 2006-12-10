OBJS = readimage.o writeimage.o rwpng.o rwjpeg.o

all : librwimg.a

librwimg.a : $(OBJS)
	ar rcu librwimg.a $(OBJS)

%.o : %.c
	$(CC) $(CCOPTS) -g -c $<

clean :
	rm -f *~ $(OBJS) librwimg.a
