$args = ARGV

def print_binary(text)
  puts "Binary:"
  for c in text.split("") do
    bin = "%b" % c.ord
    print bin + " "
  end
  puts
end

def print_hex(text)
  puts "Hex:"
  for c in text.split("") do
    hex = "%x" % c.ord
    print hex + " "
  end
  puts
end

def print_various_units(text)
  args = $args
  print_binary(args[0])
  puts
  print_hex(args[0])
end

def main()
  args = $args
  if args.length > 0
    print_various_units(args[0])
  else
    puts "Usage: binutil <text>"
  end
end


main()
