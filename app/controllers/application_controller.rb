require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "cheesabugah"
  end

  get "/" do
   if logged_in?
      redirect "/users/#{current_user.id}"  
   else
     erb :login
   end
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

  def authorized_to_access?(recipe_entry)
    recipe_entry.user == current_user
  end

end
