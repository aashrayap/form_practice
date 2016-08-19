class UsersController < ApplicationController

  def index
    @user=User.all
  end
  def new
    @user = User.new
  end

  def create
    @user=User.new(whitelisted)
    if @user.save 
      flash[:success]="congrats"
      redirect_to users_path
    else
      flash[:error]="error"
      render :new
    end
  end


  private 
  def whitelisted
    params.require(:user).permit(:username,:email,:password)
  end
end
