class UsersController < ApplicationController
  
  def new
     @user = User.new
  end
  
  def creat
     @user = User.new(user_params)
     @user.user_id = current_user.id
     @user.save
     redirect_to user_path(current_user.id)
  end

  def index
     @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @books = Book.all
  end
  
  def edit
  end
  
  private
 
 def user_params
   params.require(:user).permit(:name, :introduction, :image)
 end
end
