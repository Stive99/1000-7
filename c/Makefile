CC  := gcc
CFLAGS_DEBUG   := -g -O0 -Wall
CFLAGS_RELEASE := -O2 -pipe -march=native -flto -s -DNDEBUG

1000-7-debug.exe : 1000-7.c
	$(CC) $(CFLAGS_DEBUG)   $< -o $@

1000-7.exe : 1000-7.c
	$(CC) $(CFLAGS_RELEASE) $< -o $@