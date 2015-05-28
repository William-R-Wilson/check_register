class AccountsController < ApplicationController
  
  def new 
    @account = Account.new
  end
  
  def create
    @account = Account.new(account_params)
    if @account.save
      flash[:success] = "New account created"
      redirect_to accounts_url
    else
      flash[:danger] = "There were errors in your entry"
      render "new"
    end
  end
      
  def index
    @accounts = Account.all
  end
  
  def show
    @account = Account.find(params[:id])
  end
  
  def destroy
    Account.find(params[:id]).destroy
    flash[:success] = "Account deleted"
    redirect_to accounts_url
  end
  
  def edit
    @account = Account.find(params[:id])
  end
  
  private
  
    def account_params
      params.require(:account).permit(:name, :balance)
    end
end
