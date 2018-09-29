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

    def turn
      puts "Please enter 1-9:"
      input = gets.chomp
      input = input_to_index(input)
      if valid_move?(input) == true
        move(input)
      else
        turn
      end
    end

    def turn_count
      count = @board.select{ |i| i == "X" || i == "O"}.length
    end

    def current_player
      if turn_count % 2 == 0
        return "X"
      else
        return "O"
      end

    def won?
      WIN_COMBINATIONS.do each |position|
      position_1 = posiiton[0]
      position_2 = posiiton[1]
      position_3 = posiiton[2]

      index_1 = @board[position_1]
      index_2 = @board[position_2]
      index_3 = @board[position_3]
      
      if index_1 == "X" && position_2 == "X" && position_3 == "X"
        return position
      elsif
        
    end
    end


end
