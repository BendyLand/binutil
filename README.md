# Binutil

A small CLI project that takes a command line argument as input, converts it
to a hex and binary format, then prints them both to the console. 

Implemented in several languages for fun.

## Example

```bash
binutil    $ cd go
binutil/go $ go run . "this is a test"
```
Output:

```bash
Binary:
01110100 01101000 01101001 01110011 00100000 01101001 01110011 00100000 01100001 00100000 01110100 01100101 01110011 01110100 

Hex:
74 68 69 73 20 69 73 20 61 20 74 65 73 74 
```

