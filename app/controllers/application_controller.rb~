class ApplicationController < ActionController::Base
  #protect_from_forgery
  
  def create
    user = User.authenticate(params[:USN])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    end
  end
end