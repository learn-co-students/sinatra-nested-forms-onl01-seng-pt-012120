require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :new
    end

     post '/pirates' do
 		  @pirate = Pirate.new(params[:pirate])
		 
   	  params[:pirate][:ships].each do |details|
		    Ships.new(details)
		  end
		 
		  @ships = Ships.all
		 
		  erb :pirate
		end

  end
end
