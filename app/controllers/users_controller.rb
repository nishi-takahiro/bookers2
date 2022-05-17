class UsersController < ApplicationController
  
  def new
   @user = User.new
  end
  
  def creat
  end

  def index
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  private
 
 def user_params
   params.require(:user).permit(:name, :introduction, :image)
 end
end
