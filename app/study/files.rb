File.open('text/file.txt', 'r') do |file|
  puts file.read
end

file = File.open('text/file.txt', 'r')
puts file.read
file.close

File.open('text/file.txt', 'a') do |text|
  text.write("\nhello world")
end

File.open('text/index.html', 'w') do |text|
  text.write("<h4>Hello!</h4>")
end
