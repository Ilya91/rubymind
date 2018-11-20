require_relative 'tools.rb'
include Tools
class Transport
  attr_accessor :color, :wheels

  def sayBip
    puts 'Bip bip'
  end
end

class Cars < Transport
  attr_accessor :isMechanic
end

class Moto < Transport
  attr_accessor :type

  def sayBip
    puts 'Rav rav'
  end
end

bmw = Cars.new
audi = Cars.new
moto = Moto.new

puts bmw.sayBip
puts audi.sayBip
puts moto.sayBip

Tools.say('Born')

