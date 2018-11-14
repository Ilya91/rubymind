def sayHello(x, y = 10)
  puts 'hello world!' + x.to_s + y.to_s
end
sayHello(2)

def sum(x, y)
  return x + y, 70, 'asdf'
end
res = sum(56, 45)
puts res