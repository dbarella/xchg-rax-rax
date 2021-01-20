define hook-quit
    set confirm off
end

set disassembly-flavor intel

break main
disassemble main

run
info registers
