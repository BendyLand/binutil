import std/os
import std/strformat
import strutils


proc printBinary(text: string) = 
    echo "Binary:"
    for c in text:
        write(stdout, &"{toBin(ord(c), 8)} ")
    echo ""


proc printHex(text: string) = 
    echo "Hex:"
    for c in text:
        write(stdout, &"{toHex(ord(c), 2)} ")
    echo ""


proc printVariousUnits(text: string) = 
    printBinary(text)
    echo ""
    printHex(text)


proc main() = 
  if paramCount() > 0:
    printVariousUnits(paramStr(1))
  else:
    echo "Usage: binutil <text>"


main()

