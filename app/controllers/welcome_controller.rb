class WelcomeController < ApplicationController
  attr_accessor :x, :y

  def initialize
    @x = 4
    @y = 6
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
end
