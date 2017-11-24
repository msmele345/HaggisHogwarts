class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(secure_params)
    parameters = params[:user]
    set_scottish(parameters[:is_scottish])
    if @user.save
      session[:user_id] = @user.id
      redirect_to categories_path
    else
      @errors = @user.errors.full_messages
      render 'new'
    end
  end

  def show

  end

  private

  def secure_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :is_scottish)
  end

  def set_scottish(params_scottish)
    if params_scottish == "true"
      @user.is_scottish = true
    else
      @user.is_scottish = false
    end
  end

end
