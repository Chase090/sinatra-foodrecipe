class RecipeController < ApplicationController
    # get recipe/new to render a from to create recipe
    get '/recipes/new' do 
        erb :"/recipe/new"
    end

    # post recipe to create a new recipe
    post '/recipes' do 
        if !logged_in?
            redirect '/'
            # * if the user is not logged in, then redirect to / page
        end
        # * if params[:content is not an empty string] then create a new entry
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
    
    get '/recipe_list' do
        @recipe_entries = Recipe.all
        erb :"recipe/index"
    end


    # get '/recipes/:id' do 
    #     # * btw dynamic becomes a key value pair
    #     set_recipe_entry
    #     if logged_in?
    #         if @recipe_entry.user == current_user
    #             erb :"/recipe/show"
    #         else
    #             erb :"/user/#{current_user.id}"
    #         end
    #     else
    #         redirect '/'
    #     end
    # end

    # show route for a recipe entry
    get '/recipes/:id' do 
        # * btw dynamic becomes a key value pair
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
            if @recipe_entry.user == current_user
                # @recipe_entry.update(params) #* <<-- this mass assignment wont work. 
                # *because the _method params does not exist as an attribute in the database 
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

    # index route for all entries
    get '/index' do 
        
    end

    def set_recipe_entry
        @recipe_entry = Recipe.find(params[:id]) 
    end

end