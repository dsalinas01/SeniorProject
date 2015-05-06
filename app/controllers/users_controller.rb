class UsersController < ApplicationController
   def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new(user_params)
  end
  def create
    params.permit!
    @user = User.new(params[:user])
      # Handle a successful save.
    if @user.save
        log_in @user
        flash[:success] = "Welcome the Dietary Crew!"
        redirect_to trans_path
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      flash[:success] = "Profile updated"
      redirect_to trans_path
    else
      render 'edit'
    end
  end
  
   private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation) if params[:user]
    end
end