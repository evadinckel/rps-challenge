require 'sinatra/base'
require './lib/computer.rb'
require './lib/game.rb'
require './lib/player.rb'


class RPSWeb < Sinatra::Application
  enable :sessions



get '/' do
  erb(:index)
end




get '/' do
  erb
end



















end
