# Compiling ASM Programs

```
sudo pacman -Sy nasm --noconfirm
```

<pre>
Example:

cd (...)
nasm -felf64 test.asm && ld test.o -o test
./test


Keep in mind that GCC can also be used to compile ASM programs, which might be beneficial due to the fact that you can use C-functionality
</pre><br>
