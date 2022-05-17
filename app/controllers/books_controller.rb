class BooksController < ApplicationController
  def new
   
  end
  
  def index
    @book = Book.new
    @books = Book.all  
  end
  
  def show
  end
  
  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
