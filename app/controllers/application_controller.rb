class ApplicationController < Sinatra::Base

    configure do
        set(:views, 'app/views') #telling controller where to look for the views folder 
        set :public_folder, 'public' 
    end

    get '/' do 
       
        erb :home 
    end

    #we need to see be able to show user all their workouts
    get '/welcome' do 
        @workouts = ["Arms", "Legs", "Chest"]
        
        erb :welcome
    end

    #creating a new workout 
    get '/welcome/new' do 
        erb :new_workout
    end


    post '/welcome' do 
        @workout = params
        erb :workout
    end

    #set up dynamic routes to see individual links from the welcome page
    get '/welcome/:id' do 
        body_parts = [{name: "Arms", id: 1}, {name: "Legs", id: 2}, {name: "Chest", id: 3}]
        @workout = body_parts.find {|i| i[:id] == params[:id].to_i}

        erb :workout
    end

    

   







    

end