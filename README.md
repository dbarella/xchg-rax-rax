# `xchg rax,rax`

a little kit for reading through the
[xchg rax,rax poems](https://www.xorpd.net/pages/xchg_rax/snip_00.html)

# tl;dr

to open a poem which already exists in the directory, say `0x00.asm`:

```console
$ ./r 0x00
```

suppose we want to download and run the `0x07` poem, which isn't already in the
directory.

```console
$ # first, copy the text from https://www.xorpd.net/pages/xchg_rax/snip_07.html
$ ./init 0x07  # creates 0x07.asm from the contents of the clipboard
$ ./r 0x07     # compiles, opens, and runs 0x07.asm in gdb
```

assembly is cryptic. use the reference!

```console
$ ./ref        # opens the local x86 reference in a browser window
```

# commands

- `./r 0x00`

  opens the `0x00.asm` poem in gdb.

  the command should set you up with a convenient TUI view of the registers and
  a breakpoint on main; all you need to do is type `ni` (next instruction) and
  watch what happens to the registers!

- `./ref`
  opens the local x86 reference (not official, may not be up-to-date, but
  good enough for our purposes)

- `./init 0xff`
  creates a new file called `0xff.asm` from the contents of your copy buffer

# notes

- you'll need to install `[gdb, gcc, nasm]` for this to work.

- the first time you run  `gdb` it will complain about the `.gdbinit` file,
  follow its instructions and it should stop complaining.

- you _might_ need to `chmod u+x` the shell scripts.
