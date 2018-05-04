require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }

  it 'should return the players name' do
    expect(dave.player).to eq "Dave"
  end

  it 'returns a players hp' do
    expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end

  it 'damages a players hp' do
    expect(mittens).to receive(:damage)
    dave.attack(mittens)
  end

  it 'reduces the players hp' do
    expect { dave.damage }.to change { dave.hit_points }. by(-10)
  end


end
