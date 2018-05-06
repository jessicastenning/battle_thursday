
describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { Game.new(player_1, player_2) }

it 'damages a players hp' do
  expect(player_2).to receive(:damage)
  game.attack(player_2)
  end

it 'starts game with player 1' do
  expect(game.player_turn).to eq player_1
end

it 'switches player turn after each attack' do
  game.switch_turn
  expect(game.player_turn).to eq player_2
end

end
