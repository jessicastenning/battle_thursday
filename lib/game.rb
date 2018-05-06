class Game

  attr_reader :player1, :player2, :player_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player_turn = player1
  end

  def attack(player)
    player.damage
  end

  def switch_turn
    if @player_turn == player1
      @player_turn = player2
    elsif @player_turn == player2
      @player_turn = player1
    end
  end

end
