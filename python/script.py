import sys


def print_binary(text):
    print("Binary:")
    for char in text:
        print(bin(ord(char)), end=" ")
    print("")


def print_hex(text):
    print("Hex:")
    for char in text:
        print(hex(ord(char)), end=" ")
    print("")


def print_various_units(text):
    print_binary(text)
    print("")
    print_hex(text)


def main():
    if len(sys.argv) > 1:
        print_various_units(sys.argv[1])
    else:
        print("Usage: binutil <text>")


if __name__ == "__main__":
    main()
