class UsersController < ApplicationController
  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation, :email)
  end

end
