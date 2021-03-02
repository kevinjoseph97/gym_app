class ApplicationController < Sinatra:Base

    configure do
        set(:views, 'app/views')
        set :public_folder, 'public'
    end

end