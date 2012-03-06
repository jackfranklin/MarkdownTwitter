So I blog a lot, and I write all my blog posts with Markdown.

I got bored of having to link to people's Twitter accounts when I
reference them, so why not build a quick ruby script to help out with
that? Download this bad boy & run it like so:

  $ ./markdowntwitter.rb yourfile.md

`yourfile.md` will be modified, with all instances of "@Jack_Franklin"
being replaced with the appropriate Markdown to link to that person's
twitter account.

Big thanks to [@46bit](http://twitter.com/46bit) for all his help.

The regex needs some improvement, right now it looks for any @someone
with a blank space either side (initially done to avoid it picking up
email addresses) but I'm going to put a much more thorough one together.
If you've got any suggestions, I'd love to hear them.
