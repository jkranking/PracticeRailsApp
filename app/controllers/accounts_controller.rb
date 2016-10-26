class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def users_index
    @account = Account.find(params[:id]).users 
  end 

end
