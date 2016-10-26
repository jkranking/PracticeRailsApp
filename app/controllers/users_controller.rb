class UsersController < ApplicationController

  def index
    if params[:account][id:] 
      @users = Account.find(params[id:]).users
    else @users = User.all
    end 
  end 

  def show
    @user = User.find(params[:id])
  end

end 
