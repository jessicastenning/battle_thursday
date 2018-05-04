class Player
DEFAULT_HIT_POINTS = 60

  attr_reader :player, :hit_points

  def initialize(player, hit_points = DEFAULT_HIT_POINTS)
    @player = player
    @hit_points = hit_points
  end

  def attack(player)
    player.damage
  end

  def damage
    @hit_points -= 10
  end

end
