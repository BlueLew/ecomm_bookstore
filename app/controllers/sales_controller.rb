class SalesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_book

  def index
    @sales = Sale.where(user: current_user)
  end

  def new
    @sale = Sale.new
  end
  
  def create
    @sale = Sale.new(book: @book, user: current_user)
  end

private

  def load_book
    @book = Book.find(params[:book_id])
  end
  
end
