package main

import (
	"fmt"
	"os"
)

func main() {
	if len(os.Args) > 1 {
		printVariousUnits(os.Args[1])
	} else {
		fmt.Println("Usage: binutil <text>")
	}
}

func printVariousUnits(text string) {
	printBinary(text)
	fmt.Println()
	printHex(text)
}

func printHex(text string) {
	fmt.Println("Hex:")
	for _, c := range text {
		fmt.Printf("%x ", c)
	}
	fmt.Println()
}

func printBinary(text string) {
	fmt.Println("Binary:")
	for _, c := range text {
		fmt.Printf("%08b ", c)
	}
	fmt.Println()
}
