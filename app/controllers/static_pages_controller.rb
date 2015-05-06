class StaticPagesController < ApplicationController
 
  def home
  end


  def trans
    if session[:user_id] == nil
     redirect_to login_path
    end
  end
  
  def trans
    @users = User.find(session[:user_id])
  end
end
