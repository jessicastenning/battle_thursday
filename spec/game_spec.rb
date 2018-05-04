
describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { Game.new(player_1, player_2) }

it 'damages a players hp' do
  expect(player_2).to receive(:damage)
  game.attack(player_2)
  end
end
