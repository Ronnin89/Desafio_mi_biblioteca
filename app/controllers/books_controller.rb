class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path, notice: 'Se ha creado el libro'
    else
      redirect_to books_new_path, alert: 'No se pudo crear el libro'
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :status, :borrowed_at, :returned_at)
  end
  
end
