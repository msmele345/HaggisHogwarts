class IngredientsController < ApplicationController


  def index
  end

  def new
    @ingredient = Ingredient.new
    @recipe = Recipe.find(params[:recipe_id])
  end


  def create
    @

  end

  def edit

  end

  def destroy

  end


end


  private

  def ingredient_params
    params.require(:recipe).permit(:item, :quantity)
  end