class UsersController < ApplicationController

  def index
    if params[:account_id]
      @account = Account.find(params[:account_id])
      @users = @account.users
    else
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to user_path(user.id)
    end 
  end 

  def new
    @user = User.new
  end 

private

  def user_params
    params.require(:user).permit(:name, :age, :email, :password, :confirmation, :is_admin)
  end

end
