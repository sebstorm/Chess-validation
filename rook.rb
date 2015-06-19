require_relative("board.rb")
require 'pry'


class Rook

	attr_accessor :x, :y

	def initialize(x, y)

		@x = x 
		@y = y 
	

	end

	def move_check(new_x, new_y)

		if (@y == new_y && @x != new_x) || (@y != new_y && @x == new_x)
			return true
		else 
			return false
		end

	end
end