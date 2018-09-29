class TicTacToe

  def initialize(board = Array.new(9, " "))
    @board = board
  end

  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]

    def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "-----------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "-----------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(input)
      index = input.to_i - 1
    end

    def move(input, token = "X")
      @board[input] = token
    end

    def position_taken?(input)
      if @board[input] != "X" && @board[input] != "O"
        return false
      else
        return true
      end
    end

    def valid_move?(input)
      if input.between?(0,8) && position_taken?(input) == false
        true
      else
        nil
      end
    end
end
