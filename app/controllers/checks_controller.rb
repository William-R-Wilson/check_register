class ChecksController < ApplicationController
    
  def new
    @account_options = Account.all.map{ |a| [a.name, a.id ] }
    @check = Check.new
  end
  
  def create
    @check = Check.new(check_params)
    if @check.save
      flash[:success] = "check saved"
      redirect_to new_check_url
    else
      flash[:danger] = "There are errors in your check"
      redirect_to new_check_url
    end
  end
  
  def show
    @check = Check.find(params[:id])
    @account = Account.where(id: @check.account_id)
  end
  
  def index
    @checks = Check.all
  end
  
  def destroy
    Check.find(params[:id]).destroy
    flash[:success] = "Check deleted"
    redirect_to accounts_url
  end
  
  private
  
    def check_params
      params.require(:check).permit(:date, :amount, :to, :account_id)
    end
  
end
