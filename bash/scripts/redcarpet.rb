#!/usr/bin/env ruby

require 'redcarpet'

puts

filename = ARGV[0].nil? ? '' : ARGV[0]

if File.exist?(filename)
  renderer  = Redcarpet::Render::HTML.new()
  redcarpet = Redcarpet::Markdown.new(renderer, :no_intra_emphasis => true, :tables => true)

  File.open(filename, "r") do |fin|
    if !fin.eof?
      output_filename = filename.gsub(/\.md$/, ".html");
      puts "Generating #{output_filename}..."

      output_file = File.open(output_filename, "w")

      # Insert opening HTML boilerplate
      output_file.puts("<html>")
      output_file.puts("<head>")
      output_file.puts("<meta charset=\"utf-8\">")
      output_file.puts("<title>#{output_filename}</title>")
      output_file.puts("</head>")
      output_file.puts("<body>")

      while !fin.eof?
        markdown_string = fin.readline
        html_string     = redcarpet.render(markdown_string)

        output_file.puts(html_string)
      end

      output_file.puts("</body>")
      output_file.puts("</html>")
      output_file.close
      puts "Done"
    else
      puts "Warning: the input file is empty."
    end
  end
else
  puts "Expected a filename as the first argument."
  puts "Usage: ./redcarpet.rb filename.md"
end

puts
