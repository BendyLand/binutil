func main() {
    let args = CommandLine.arguments
    if args.count > 1 {
        printVariousUnits(text: args[1])
    }
    else {
        print("Usage: binutil <text>")
    }
}

func printBinary(text: String) {
    print("Binary:")
    for c in text {
        if let ascii = c.asciiValue {
            print(String(ascii, radix: 2), terminator: " ")
        }
        else {
            print("Character doesn't have an ASCII representation to convert.")
        }
    }
    print("")
}

func printHex(text: String) {
    print("Hex:")
    for c in text {
        if let ascii = c.asciiValue {
            print(String(ascii, radix: 16), terminator: " ")
        }
        else {
            print("Character doesn't have an ASCII representation to convert.")
        }
    }
    print("")
}

func printVariousUnits(text: String) {
    printBinary(text: text)
    print("")
    printHex(text: text)
}

main()
