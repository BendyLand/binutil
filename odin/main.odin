package main

import "core:fmt"
import "core:os"

print_binary :: proc(text: string) {
    fmt.println("Binary:")
    for c in text {
        fmt.printf("%b ", c);
    }
    fmt.println("")
}

print_hex :: proc(text: string) {
    fmt.println("Binary:")
    for c in text {
        fmt.printf("%x ", c);
    }
    fmt.println("")
}

print_various_units :: proc(text: string) {
    print_binary(text)
    fmt.println("")
    print_hex(text)
}

main :: proc() {
    if len(os.args) > 1 {
        print_various_units(os.args[1])
    }
    else {
        fmt.println("Usage: binutil <text>")
    }
}
