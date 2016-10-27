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

end
