class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def authors
    #@authors = User.author.all
  end

  def show
    @current_page = params[:page] || 1
    @users = User.page(@current_page)
    @prev_page = User.page(@current_page).prev_page
    @next_page = User.page(@current_page).next_page
  end

  def edit

  end

  def update

    current_user.name = params[:user][:name]
    current_user.avatar.attach(params[:user][:avatar])

    if current_user.save
      redirect_to user_path
    else
      render :edit
    end
  end

end
