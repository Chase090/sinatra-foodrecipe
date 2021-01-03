class RecipeController < ApplicationController
    get '/recipes/new' do 
        erb :"/recipe/new"
    end

    post '/recipes' do 
        if !logged_in?
            redirect '/'
        end
        # * then
        if  params[:title] != "" && params[:ingredients] != "" && params[:directions] != ""
           @recipe = Recipe.create(title: params[:title], 
            ingredients: params[:ingredients], 
            directions: params[:directions], 
            user_id: current_user.id) 
            
           redirect :"/recipes/#{@recipe.id}"
        else
            redirect :"/recipes/new"
        end
    end
    
    # ^ everyone's recipe
    get '/recipe_list' do
        @recipe_entries = Recipe.all
        erb :"recipe/index"
    end

    # ^ user only recipe
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

    get '/recipes/:id' do 
        set_recipe_entry   
        erb :"/recipe/show"
    end
    
    get '/recipes/:id/edit' do
        @recipe_entry = Recipe.find(params[:id])
        erb :"/recipe/edit"
    end

    
    patch '/recipes/:id/edit' do
        set_recipe_entry
        if logged_in?
            if @recipe_entry.user == current_user && params[:title] != "" && params[:ingredients] != "" && params[:directions] != "" 
                @recipe_entry.update(title: params[:title], 
                    ingredients: params[:ingredients], 
                    directions: params[:directions])
                redirect :"/recipes/#{@recipe_entry.id}" 
            else
                erb :"/user/#{current_user.id}"
            end
        else
            redirect '/'
        end
      end

    delete '/recipes/:id' do
        set_recipe_entry
        if authorized_to_access?(@recipe_entry)
            @recipe_entry.destroy
            redirect :"/users/#{current_user.id}"
        else
            redirect :"/users/#{current_user.id}"
        end
    end
 

    def set_recipe_entry
        @recipe_entry = Recipe.find(params[:id]) 
    end

end