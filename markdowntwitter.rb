#! /usr/bin/ruby
#
# Usage: ./markdowntwitter.rb yourtext.md
# yourtext.md will be modified accordingly
# any instances of @username are replaced with [@username](http://twitter.com/username)
#
# Written by Jack Franklin
# Thanks to @46bit for his help on Skype
#
# if you get permission errors, try chmod a+x markdowntwitter.rb

input_file = ARGV[0]

File.open(input_file, "r+") { |file|
  contents = file.read
  contents.gsub!(/(^|[^a-zA-Z0-9_!])(@)([a-zA-Z0-9_]{1,20})/) do |match|
    match.strip! #whitespace, be gone
    "[#{match}](http://twitter.com/#{match[1..-1]}/)"
  end
  file.rewind
  file.puts contents

  puts "File #{input_file} was modified. Output: \n #{contents}"
}


