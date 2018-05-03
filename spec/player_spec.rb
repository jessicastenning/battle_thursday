describe 'player name' do
  it 'should return the players name' do
    player = Player.new
    expect(player.player_name("Dave")).to eq "Dave"
  end
end
