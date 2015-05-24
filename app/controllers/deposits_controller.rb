class DepositsController < ApplicationController
  def new 
    @account_options = Account.all.map{ |a| [a.name, a.id ] }
    @deposit = Deposit.new
  end 

  def create
    @deposit = Deposit.new(deposit_params)
    if @deposit.save
      flash[:success] = "deposit saved"
      redirect_to new_deposit_url
    else
      render "new"
    end
  end


  def show
  end 
  
  def destroy
    Deposit.find(params[:id]).destroy
    flash[:success] = "Check deleted"
    redirect_to accounts_url
  end

  private
  
  def deposit_params
    params.require(:deposit).permit(:from, :amount, :date, :account_id)
  end


end
