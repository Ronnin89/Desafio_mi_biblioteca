class BooksController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @q = Book.ransack(params[:q])
    @books = @q.result(distinct: true).order(:title).page(params[:page]).per(10)
  end

  def new
    @book = Book.new
  end

  def show
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path, notice: 'Se ha creado el libro'
    else
      redirect_to books_new_path, alert: 'No se pudo crear el libro'
    end
  end

  def edit
  end

  def update
    @book.update(status: params[:book][:status], borrowed_at: params[:book][:borrowed_at], returned_at: params[:book][:returned_at])
    redirect_to root_path
  end

  def destroy
    @book = Book.find(params[:id])

    @book.destroy
    redirect_to root_path
  end

  private

  def set_post
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :status, :borrowed_at, :returned_at)
  end
  
end
