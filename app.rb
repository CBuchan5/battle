require 'sinatra/base'
require 'sinatra/reloader'

class BattleApp < Sinatra::Base
  configure :devlopment do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_one = params[:player_one]
    @player_two = params[:player_two]
    erb :play
  end

  run! if @app_file == $0
end