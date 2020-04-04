require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:ships].each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all

      erb :show
    end

  end
end
