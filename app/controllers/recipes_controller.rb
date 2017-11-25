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
    fixins = Array.new
    ingredients = params[:recipe][:ingredient]
    measurements = params[:recipe][:measurement]
    quantities = params[:recipe][:qty]
    @recipe = Recipe.new(recipe_params)
    @recipe.chef_id = current_user.id
    @recipe.category_id = params[:category_id]
    ingredients.each do |ingredient, value|
      new_ingredient = @recipe.ingredients.build(item: value).build_recipe
   end


    @recipe.ingredients.each_with_index do |thing, index|
      # p thing
      quantities.each_pair do |key, value|
        thing.quantity = value
      end

      measurements.each_pair do |number, amt|
        # p amt
        thing.measurment_id = convert_measurment(amt)
    end
  end


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
    params.require(:recipe).permit(:id, :name, :prep_time, :instructions, :difficulty, :photo_url, :category_id, :ingredient, :quantity, :measurement, :_destroy)
  end

  def find_recipe
    @recipe = Recipe.find_by(id: params[:id])
  end

  def convert_measurment(user_selection)
    measurement_id = nil
    case user_selection
    when "Ounces"
      measurement_id = 1
    when "Teaspoons"
      measurement_id = 2
    when "Tablespoons"
      measurement_id = 3
    when "Cups"
      measurement_id = 4
    when "Handfulls"
      measurement_id = 5
    when "Pounds"
      measurement_id = 6
    when "ML"
      measurement_id = 7
    when "L"
      measurement_id = 8
    end
    measurement_id
  end

end


  #   @recipe.ingredients.each_with_index do |thing, index|
  #     # p thing
  #     quantities.each_pair do |key, value|
  #       thing.quantity = value
  #     end

  #     measurements.each_pair do |number, amt|
  #       # p amt
  #       thing.measurment_id = convert_measurment(amt)
  #   end
  # end

