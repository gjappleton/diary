class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    if
      @user.friend_id = @friend_user.id
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password,
                                 :password_confirmation, :friend_id)
  end
end
