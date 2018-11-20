list = [4,5,6,7,8]

begin
  list['gogo']
  num = 10 / 0
rescue TypeError => e
  puts e
rescue
  puts 'Division on zero'
end
puts 'hello'