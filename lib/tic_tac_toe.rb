require 'pry'

class TicTacToe

  WIN_COMBINATIONS = [
    [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]
  ]

  def initialize
    @board = Array.new(9, " ") #or @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(index, token = "X")
    @board[index] = token
  end

  def position_taken?(index)
    if @board[index] == " " #or @board[index] == " " ? false : true
      false
    else
      true
    end
  end

  def valid_move?(index)
    @board[index] == " " && index.between?(0,8) ? true : false
  end

  def turn_count
    @board.count { |j| j == "X" || j == "O" }
  end

  def current_player
    turn_count.even? ? "X" : "O"
  end

  def turn
    input = gets.chomp
  end

end





# class TicTacToe
#
#   WIN_COMBINATIONS = [
#     [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]
#   ]
#
#   def initialize
#     @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
#   end
#
#   def display_board
#     puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
#     puts "-----------"
#     puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
#     puts "-----------"
#     puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
#   end
#
#   def input_to_index(input)
#     input.to_i - 1
#   end
#
#   def move(index, token = "X")
#     @board[index] = token
#   end
#
#   def position_taken?(index)
#     if @board[index] == " "
#       false
#     else
#       true
#     end
#   end
#
#   def valid_move?(index)
#     if @board[index] == " " && index.between?(0,8)
#       true
#     else
#       false
#     end
#   end
#
#   def turn_count
#     @board.count {|j| j == "X" || j == "O"}
#   end
#
#   def current_player
#     if turn_count.even?
#       "X"
#     else
#       "O"
#     end
#   end
#
#   def turn
#     puts "Enter a number between 1-9"
#     input = gets.chomp
#     index = input_to_index(input)
#     if valid_move?(index)
#       move(index, token = "X")
#       current_player
#     else
#       turn
#     end
#     display_board
#   end
#
#   def won?
#     WIN_COMBINATIONS.any? do |j|
#       if position_taken?(j[0]) && @board[j[0]] == @board[j[1]] && @board[j[1]] == @board[j[2]]
#         return j
#       end
#     end
#   end
#
#   def full?
#     @board.all?{|j| j == "X" || j == "O" }
#   end
#
#   def draw?
#     full? && !won?
#   end
#
#   def over?
#     won? || draw?
#   end
#
#   def winner
#     if combo = won?
#       @board[combo[0]]
#     end
#   end
#
#   def play
#     turn until over?
#     puts winner ? "Congratulations #{winner}!" : "Cat's Game!"
#   end
#
# end
