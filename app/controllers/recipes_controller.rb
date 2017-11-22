class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.order(:created_at)
  end


  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    # @recipe.chef_id = current_user.id

    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def show

  end

  def edit
  end


  def destroy
  end




  private

  def recipe_params
    params.require(:recipe).permit(:name, :prep_time, :instructions, :difficulty, :photo_url)
  end

  def find_recipe
    @recipe = Recipe.find_by(id: params[:id])
  end

end