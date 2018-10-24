class Admin::BooksController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def new
    @book = Book.new
  end

  def create
  end

  def destroy
  end
  
end
