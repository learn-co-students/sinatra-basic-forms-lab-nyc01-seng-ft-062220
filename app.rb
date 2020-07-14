require_relative 'config/environment'

class App < Sinatra::Base
    
    get '/' do
        "get test"
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new(params["name"], params["breed"], params["age"])
        "post test"
        erb :display_puppy
    end
end
