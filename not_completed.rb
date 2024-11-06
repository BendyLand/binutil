file = File.open("completed.txt").readlines.map { |x| x.chomp }
all_langs = ["c", "go", "haxe", "julia", "nim", "odin", "python", "ruby", "rust", "swift", "zig"]

done = 0
for lang in all_langs do
  if file.include? lang
    done += 1
    next
  end
  puts lang
end

if done == all_langs.length
  puts "All languages complete!"
end
