require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "cheesabugah"
  end

  get "/" do
    erb :welcome
  end

  helpers do 
    def logged_in?
      !!current_user
    end

    def current_user
     @current_user ||= User.find_by(id: session[:user_id])
    #  * this instance variable would be created and assigned if user is found else it will be nil
    end
  end

end
