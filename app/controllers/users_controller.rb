class UsersController < ApplicationController
    def index
        @user = current_user
        @users = User.all
        @book = Book.new
        @books = Book.all
    end
    
    def show
        @user = User.find(params[:id])
        @users = User.all
        @book = Book.new
        @books = @user.books
    end
    def edit
        @user = User.find(params[:id])
    end
    
    private
    def book_params
        params.require(:book).permit(:image, :title, :body)
    end
end
