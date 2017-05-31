build: fun.c
	gcc -c -o fun.o fun.c
	ghc --make -o funee Main.hs fun.c fun.h

#https://wiki.haskell.org/GHC/Using_the_FFI