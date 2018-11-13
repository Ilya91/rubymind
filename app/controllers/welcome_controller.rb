class WelcomeController < ApplicationController
  attr_accessor :x, :y

  def initialize
    @x = 4
    @y = 6
    puts self.class
  end

  def index
  end

  def x= val
    @x = val
  end

  def y= val
    @x = val
  end

  def to_as
    text = "(#{@x}; #{@y});"
    "Point: #{text}"
  end

  def show_me_var
    @no_var = 2
  end

end

point = WelcomeController.new
p point.show_me_var
