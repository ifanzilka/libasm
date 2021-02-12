# libasm

* [Столяров](http://www.stolyarov.info/books/asm_unix)

* [Таблица вызовов Linux](https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md#x86_64-64_bit)
* [Таблица вызовов Macos](https://opensource.apple.com/source/xnu/xnu-1504.3.12/bsd/kern/syscalls.master)
* [notion](https://www.notion.so/LibASM-eaf6e4370032461398127c5f41d12279)

Write the following functions in x64 assembly (in the Intel syntax):
```C
size_t		ft_strlen(char const *str);
int		ft_strcmp(char const *s1, char const *s2);
char		*ft_strcpy(char *dst, char const *src);
ssize_t		ft_write(int fd, void const *buf, size_t nbyte);
ssize_t		ft_read(int fd, void *buf, size_t nbyte);
char		*ft_strdup(char const *s1);
```
## Compile
For compilation use in root directory.
```shell 
make
```
flags for compile in Makefile -nasm -f macho 64
