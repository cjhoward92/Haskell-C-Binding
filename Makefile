build: fun.c
	gcc -c -o fun.o fun.c
	ghc --make -o funee Main.hs fun.c fun.h

#funee: Main.hs fun.c fun.h
#	ghc --make -o funee Main.hs