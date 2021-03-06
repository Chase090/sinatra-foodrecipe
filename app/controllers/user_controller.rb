class UserContoller < ApplicationController


    get '/login' do 
        erb :login
    end

    post '/login' do 
        @user = User.find_by(email: params[:email])
        if @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect "/users/#{@user.id}"
        else
            erb :login
        end
    end
    
    get '/signup' do 
        erb :signup      
    end

    post '/users' do 
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


    get '/users/:id' do
        @user = User.find_by(id: params[:id])
        if logged_in?
            if @user = current_user
                erb :'user/show'     
            else
                redirect :"/users/#{current_user.id}"
            end
        else
            redirect '/'
        end
    end

    get '/logout' do
        session.clear 
        redirect '/'
    end

end