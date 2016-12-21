require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :index
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = params["pirate"]
      @name = params["pirate"]["name"]
      @ship_name_1 = params["pirate"]["ships"][0]["name"]
      @ship_name_2 = params["pirate"]["ships"][1]["name"]

      #binding.pry
      erb :"pirates/show"
    end

  end
end
