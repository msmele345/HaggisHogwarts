class IngredientsController < ApplicationController


  def index
  end

  def new
    @count = params[:count]
    @measurements = Measurment.all
    respond_to do |format|
      format.js { render partial: "ingredients/form", locals: { count: @count, measurements: @measurements } }
    end
  end

  def create

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
