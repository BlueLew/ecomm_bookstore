class UsersController < ApplicationController
  def show
  end

  def edit
  end

  def update
    current_user.name = params[:user][:name]

    if current_user.save
      redirect_to user_path
    else
      render :edit
    end
  end

end
