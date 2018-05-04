require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
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
    $game.attack($game.player2)
    erb :attack
  end

# run! if app_file == $0
end
