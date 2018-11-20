x = 8
y = 12
bool = true

if x < y
  puts 'hello'
end

if !bool
  puts 'True'
elsif bool === 0
  puts 'Zero'
else
  puts 'False'
end

case x
when 1
  puts '1'
when 2
  puts '2'
when 3
  puts '3'
else
  puts '8'
end