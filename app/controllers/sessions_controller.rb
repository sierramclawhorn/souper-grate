class SessionsController < ApplicationController
  def new
    respond_to do |format|
      format.js
      format.html
    end
  end
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      respond_to do |format|
        format.js {}
        format.html { redirect_to '/'}
      end
    end
  end

  def destroy
    p "#"*20
    session[:user_id] = nil
    respond_to do |format|
      format.js {}
      format.html { redirect_to '/'}
    end
  end
end
