require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player1.player
    @player_2_name = $game.player2.player
    erb :play
  end

  get '/attack' do
    @player_1_name = $game.player1.player
    @player_2_name = $game.player2.player
    @game = $game
    @game.attack($game.player2)
    erb :attack
  end

  post '/switch-turns' do
    $game.switch_turn
    redirect '/play'
  end

run! if app_file == $0
end
