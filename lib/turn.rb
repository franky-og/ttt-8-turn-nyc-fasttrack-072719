def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
if index <= 8 && index >= 0 && !position_taken?(board, index)
  true
else
  false
end
end

def position_taken?(board, index)
  !(board[index] == "" || board[index] == " " || board[index] == nil)
end

def move(board, index, character = "X")
  board[index] = character
end
def turn(board)
  puts "Please enter 1-9:"
  input = get.strip
  input = input.to_i 
  if input >= 1 && input <= 9
    puts "This is a valid move."
    move(board, input)
end