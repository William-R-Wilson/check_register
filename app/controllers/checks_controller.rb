class ChecksController < ApplicationController
    
  def new
    @check = Check.new
  end
  
  def create
    @check = Check.new(check_params)
    if @check.save
      flash[:success] = "check saved"
      redirect_to new_check_url
    else
      render "new"
    end
  end
  
  def show
    @check = Check.find_by(params[:id])
  end
  
  def index
    @checks = Check.all
  end
  
  
  private
  
    def check_params
      params.require(:check).permit(:date, :amount, :to)
    end
  
end
