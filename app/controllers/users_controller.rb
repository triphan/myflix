class UsersController < ApplicationController
  def new
    redirect_to home_path if current_user
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:alert] = "Congrats!"
      redirect_to videos_path
    else
      flash[:alert] = "Woops!"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email, :password)
  end
end