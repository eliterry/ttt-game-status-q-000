# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

def won?(board)
  WIN_COMBINATIONS.each do |win|
  	win_index_1 = win[0]
  	win_index_2 = win[1]
  	win_index_3 = win[2]

  	position_1 = board[win_index_1]
  	position_2 = board[win_index_2]
  	position_3 = board[win_index_3]
  
    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win
    else
      false
    end
  end 
  return false
end

def full?(board)
   board.none?{|i| i ==" "}
end

def draw?(board)
   if won?(board) == false  && full?(board) == true
     true 
   elsif won?(board) == false  && full?(board) == false
     false 
   end  
end	

def over?(board)
	if won?(board) != false || full?(board) || draw?(board)
	  true 
	else 
	  false
	end
end

def winner(board)
   if won?(board)!=false
     victory = won?(board)
     if board[victory[0]] == "X"
       "X"
     else
       "O"
     end 
   end 
end


