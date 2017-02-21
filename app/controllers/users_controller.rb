class UsersController < ApplicationController

  def new
    @user = User.new
    render layout: "homepage"
  end

  def create
    binding.pry
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
