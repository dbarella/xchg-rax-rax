set disassembly-flavor intel

define hook-quit
    set confirm off
end

layout reg

break main
run
