class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to new_session_path
      else
        render :new
      end
  end

  def show
    if current_user.id != @user.id
    redirect_to user_path(current_user.id)
    end
  end
  
end
