class UsersController < ApplicationController
  def new
    @user= User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_complete_path
    else
      session[:user_params] = user_params
      redirect_to user_error_path
    end
  end

  def complete
  end

  def error
    @user = User.new(session[:user_params])
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :age,
      :favorite_food,
      :email,
      :password,
      :password_confirmation
    )
  end
end
