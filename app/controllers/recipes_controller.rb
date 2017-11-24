class RecipesController < ApplicationController
   before_action :find_recipe, only: [:show, :edit, :update, :destroy]
   before_action :redirect_unless_logged_in, except: [:index, :show]

  def index
    @recipes = Recipe.all.order(:created_at)
  end


  def new
    @recipe = Recipe.new
    @category = Category.find(params[:category_id])
  end

  def create
    @recipe = Recipe.new(recipe_params)

    @recipe.chef_id = current_user.id
    @recipe.category_id = params[:category_id]

    if @recipe.save
      redirect_to root_path
    else
      @errors = @recipe.errors.full_messages
      render 'new'
    end
  end



  def show
    @recipe = Recipe.find_by(id: params[:id])
    @ingredients = @recipe.ingredients
  end

  def edit
  end


  def destroy
  end




  private

  def recipe_params
    params.require(:recipe).permit(:name, :prep_time, :instructions, :difficulty, :photo_url, :category_id)
  end

  def find_recipe
    @recipe = Recipe.find_by(id: params[:id])
  end

end


##TODO:
# New recipe form style
# user profile
# recipe show
# edit/update/delete ajax