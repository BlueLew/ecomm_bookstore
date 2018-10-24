class AuthorsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    #@authors = User.where(author: true)
    @current_page = params[:page] || 1
    @authors = User.where(author: true) && User.page(@current_page)
    @prev_page = User.page(@current_page).prev_page
    @next_page = User.page(@current_page).next_page
  end

  def show
    @author = User.find(params[:id])
  end
end
