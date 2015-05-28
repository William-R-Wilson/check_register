class AccountsController < ApplicationController
  
  def new 
    @account = Account.new
  end
  
  def create
    @account = Account.new(account_params)
    if @account.save
      flash[:success] = "new Account created"
      redirect_to accounts_url
    else
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
