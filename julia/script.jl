args = ARGS

function print_binary(text)
    println("Binary:")
    for c in text
        print(string(Int(c), base=2) * " ")
    end
    println()
end

function print_hex(text)
    println("Hex:")
    for c in text
        print(string(Int(c), base=16) * " ")
    end
    println()
end

function print_various_units(text)
    print_binary(text)
    println()
    print_hex(text)
end

function main()
    if length(args) > 0 
        print_various_units(args[1])
    else
        println("Usage: binutil <text>")
    end
end

main()
