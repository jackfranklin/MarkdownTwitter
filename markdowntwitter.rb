#! /usr/bin/ruby
#
# Usage: ./markdowntwitter.rb yourtext.md
# yourtext.md will be modified accordingly
# any instances of @username are replaced with [@username](http://twitter.com/username)
#
# Written by Jack Franklin

input_file = ARGV[0]
contents = File.read(input_file)
contents.gsub!(/\s@(\w)+\s/) do |match|
  match.strip! #whitespace, be gone!
  " [#{match}](http://twitter.com/#{match[1..-1]}/) "
end

File.open(input_file, "w") { |file|
  file.puts contents
}

puts "File #{input_file} was modified. Output: \n #{contents}"
