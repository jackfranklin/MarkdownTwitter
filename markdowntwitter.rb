#! /usr/bin/ruby
#
# Usage: $ cat yourpost.md | ./markdowntwitter.rb
#
# Written by Jack Franklin

input_file = ARGF.read

input_file.gsub!(/\s@(\w)+\s/) do |match|
  match.strip!
  "[#{match}](http://twitter.com/#{match.slice!(0)}/)"
end

puts input_file
