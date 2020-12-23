class UserContoller < ApplicationController

# * routes for login, reder login page
    get '/login' do 
        erb :login
    end
# * find the user, and login(create session)
    post '/login' do 
    # find the user
        @user = User.find_by(email: params[:email])
    # authenticate
        if @user.authenticate(params[:password])
            # log user in - create the user session
            session[:user_id] = @user.id
            # redirect to users landing page
            puts session
            redirect "users/#{@user.id}"
        else
        # tell the user invalid, then redirect to login page
        end
    # log in
    
    end
# *
    get '/signup' do 

    end

    # * this is the user landing page
    get '/users/:id' do
        "show me somethin"
    end

end