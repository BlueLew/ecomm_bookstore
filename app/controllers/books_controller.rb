class BooksController < ApplicationController

  def index
    @current_page = params[:page] || 1
    @books = Book.page(@current_page)
    @prev_page = Book.page(@current_page).prev_page
    @next_page = Book.page(@current_page).next_page
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(title: params[:book][:title])
    redirect_to books_index_path
  end

end
