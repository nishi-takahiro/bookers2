class UsersController < ApplicationController
 
  def creat
     @user = User.new(user_params)
     @user.user_id = current_user.id
     if @user.save
       redirect_to user_path(current_user.id)
     else
       render new
     end
  end

  def index
     @user = current_user
     @users = User.all
     @book = Book.new
  end
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
    
  end
  
  def edit
    @user = User.find(params[:id])
     if  current_user == @user
     else
         redirect_to user_path(current_user)
     end
  end
  
  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
         redirect_to @user, notice: 'You have updated user successfully.'
      else
        render :edit
      end
  end
  
  
 private
 
 def user_params
   params.require(:user).permit(:name, :introduction, :profile_image)
 end
 
  def book_params
    params.require(:book).permit(:title, :body)
  end
 
 
end
