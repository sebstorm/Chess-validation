class Board

	attr_accessor :board 

	def initialize
		@board = [[Rook.new(1, 8), nil, nil, nil, nil, nil, nil, Rook.new(8, 8)],
	              [nil, nil, nil, nil, nil, nil, nil, nil, nil],
	              [nil, nil, nil, nil, nil, nil, nil, nil, nil], 
		          [nil, nil, nil, nil, nil, nil, nil, nil, nil], 
		          [nil, nil, nil, nil, nil, nil, nil, nil, nil], 
		          [nil, nil, nil, nil, nil, nil, nil, nil, nil], 
		          [nil, nil, nil, nil, nil, nil, nil, nil, nil], 
		          [Rook.new(1, 1), nil, nil, nil, nil, nil, nil, Rook.new(1, 8)]]

		          
		          
	end
	def check(x, y)
		@x = x - 1
		@y = y - 1

		if @board[@x][@y].nil? 
			return "No piece there, dummy"

		elsif @board[0][0].move_check(1, 7)	
			return "valid move"	
			 	
		else
			return "Spot is taken"
		end
	end
end