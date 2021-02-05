# `xchg rax,rax`

a little kit for reading through the
[xchg rax,rax poems](https://www.xorpd.net/pages/xchg_rax/snip_00.html)

# commands

- `./r 0x00`
  open the poem in gdb.

  the command should set you up with a convenient TUI view of the registers and
  a breakpoint on main; all you need to do is type `ni` and watch what happens
  to the registers!

- `./ref`
  opens the local x86 reference (not official, may not be up-to-date, but
  good enough for our purposes

- `./init <name>`
  creates a new file called <name>.asm using the contents of your copy buffer

# notes

- you'll need to install `[gdb, gcc, nasm]` for this to work.

- the first time you run  `gdb` it will complain about the `.gdbinit` file,
  follow its instructions and it should stop complaining.
