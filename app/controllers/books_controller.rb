class BooksController < ApplicationController
  def index
    @books = Book.all
    @authors = Author.all
  end

  def show
    @book = Book.find(params[:id])
    @author = Author.find(params[:id])
  end

end
