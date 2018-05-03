require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }

  it 'should return the players name' do
    expect(dave.player).to eq "Dave"
  end
end
