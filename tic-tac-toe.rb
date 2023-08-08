class TicTacToe
  attr_accessor :x, :o, :game_board, :possible_wins, :game_over, :winner, :current_turn

  def initialize
    @x = 'X'
    @o = 'O'
    @game_board = %w[1 2 3 4 5 6 7 8 9]
    @possible_wins = [
      game_board[0..2],
      game_board[3..5],
      game_board[6..8],
      [game_board[0], game_board[3], game_board[6]],
      [game_board[1], game_board[4], game_board[7]],
      [game_board[2], game_board[5], game_board[8]],
      [game_board[0], game_board[4], game_board[8]],
      [game_board[2], game_board[4], game_board[6]]
    ]
    @game_over = false
    @current_turn = x
  end

  def draw_board
    p game_board[0..2]
    p game_board[3..5]
    p game_board[6..8]
  end

  def take_turn
    puts "#{current_turn}'s turn."
    valid_space = false
    until valid_space
      puts 'Enter the space number you want to place your symbol in: '
      space = gets
      if space.match(/[1-9]/) && game_board[space.to_i - 1] != 'X' && game_board[space.to_i - 1] != 'O'
        game_board[space.to_i - 1] = current_turn
        valid_space = true
      else
        puts 'Invalid entry'
      end
    end
  end

  def check_for_win
    possible_wins.each do |line|
      if line == [current_turn, current_turn, current_turn]
        self.winner = current_turn
        self.game_over = true
      end
    end
    self.current_turn = (current_turn == x ? o : x)
  end

  def display_result
    puts "#{winner} wins! Congratulations!"
  end

  def play_game
    draw_board
    until game_over
      take_turn
      draw_board
      check_for_win
    end
    display_result
  end
end

game = TicTacToe.new
game.play_game
