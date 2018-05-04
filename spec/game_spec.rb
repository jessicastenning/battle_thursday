
describe Game do
  subject(:game) { Game.new }
  let(:player_2) { double :player }

it 'damages a players hp' do
  expect(player_2).to receive(:damage)
  game.attack(player_2)
  end
end
