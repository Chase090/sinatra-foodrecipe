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
            # * undefined method for nil:NilClass
            # * means you invoked method on nil or in this case a user who does not exist
            # log user in - create the user session
            session[:user_id] = @user.id
            # redirect to users landing page
            redirect "/users/#{@user.id}"
        else
            erb :login
        end
    end
# *
    get '/signup' do 
        erb :signup      
    end

    post '/users' do 
        # ! if the user email pass is NOT equal to an empty string
        if params[:name] != "" && params[:email] != "" && params[:password] != ""
            @user = User.create(params)
            session[:user_id] = @user.id
            redirect "users/#{@user.id}"
        else
            redirect '/signup'
        end
    end

    get '/user_recipe/:id' do
        @user = User.find_by(id: params[:id])
      @recipes = []

      Recipe.all.each do |r|
          if r.user_id == @user.id
              @recipes << r 
          end
      end
      erb :"recipe/list"
    end

    # * this is the user landing page
    get '/users/:id' do
        @user = User.find_by(id: params[:id])
        # * create and instance variable, retrieve that user from the DB

        erb :'user/show'
      
    end

    get '/logout' do
        session.clear 
        redirect '/'
    end


end