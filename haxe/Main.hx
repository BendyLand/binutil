// Run with haxe -main Main --run Main asdfasdf
// If using --interp or any other compilation options, 
    // check conditional in main(), because CLArgs change.

class Main
{
    static public function main(): Void
    {
        var args = Sys.args();
        if (args.length > 0) {
            printVariousUnits(args[0]);
        }
        else {
            Sys.print("Usage: binutil <text>\n");
        }
    }

    static function toBin(c: String): String 
    {
        var binaryString = "";
        var i = 7;
        while (i >= 0) {
            binaryString += ((c.charCodeAt(0) >> i) & 1);
            i -= 1;
        }
        return binaryString;
    }

    static function printBinary(text: String)
    {
        Sys.print("Binary:\n");
        for (i in 0...text.length) {
            Sys.print(toBin(text.charAt(i)) + " ");
        }
        Sys.print("\n");
    }

    static function printHex(text: String)
    {
        Sys.print("Hex:\n");
        for (i in 0...text.length) {
            Sys.print(StringTools.hex((text.charAt(i).charCodeAt(0))) + " ");
        }
        Sys.print("\n");
    }

    static function printVariousUnits(text: String)
    {
        printBinary(text);
        Sys.print("\n");
        printHex(text);
    }
}
