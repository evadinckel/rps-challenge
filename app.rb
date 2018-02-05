require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class RPSWeb < Sinatra::Base
  enable :sessions
  set :port, 4567

  helpers do

    def game
      session[:game] unless session[:game].nil?
    end

    def player
      session[:game].player unless session[:game].nil?
    end

    def computer
      session[:game].computer unless session[:game].nil?
    end
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    @player = Player.new((params[:player_name]).capitalize)
    @computer = Computer.new

    session[:game] = Game.new(@player, @computer)

    erb(:play)
  end

  post '/choice' do
    player.weapon = params[:weapon].downcase
    computer.choose_weapon
    erb :result
  end

  get '/rematch' do
    erb :play
  end

  run! if $PROGRAM_NAME == __FILE__
end
