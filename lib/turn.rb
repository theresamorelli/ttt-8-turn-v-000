def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && (0..8).include?(index)
    true
  else
    false
  end
end

def move(board, index, char = "X")
  board[index] = char
  board
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  pos = input_to_index(gets.chomp)
  if valid_move?(board, pos)
    move(board, pos)
    display_board(board)
  else turn(board)
  end
end
