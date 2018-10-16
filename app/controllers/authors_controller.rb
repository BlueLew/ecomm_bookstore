class AuthorsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end
end
