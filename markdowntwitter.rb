#! /usr/bin/ruby
#
# Usage: $ cat yourpost.md | ./markdowntwitter.rb
#
# Written by Jack Franklin

input_file = ARGF.read
puts "Inputted Text \n #{input_file}"

input_file.gsub!(/\s@(\w)+\s/) do |match|
  match.strip!
  " [#{match}](http://twitter.com/#{match[1..-1]}/) "
end

puts "Outputted Text \n #{input_file}"
