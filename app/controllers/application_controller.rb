class ApplicationController < Sinatra::Base

    configure do
        set(:views, 'app/views') #telling controller where to look for the views folder 
        set :public_folder, 'public' 
    end

    get '/' do 
        @name = "Kevin"
        erb :home 
    end

    #we need to see be able to show user all their workouts
    get '/welcome' do 
        @workouts = ["Arms", "Legs", "Chest"]
        
        erb :welcome
    end

    #set up dynamic routes to see individual links from the welcome page
    get '/welcome/:id' do 
        body_parts = [{name: "Arms", id: 1}, {name: "Legs", id: 2}, {name: "Chest", id: 3}]
        @workout = body_parts.find {|i| i[:id] == params[:id].to_i}

        erb :workout

    end





    

end