class Account < ActiveRecord::Base

  has_many :checks
  has_many :deposits
  
  
  def total_expense
    all_checks = checks.pluck(:amount)
    all_checks.sum
  end
  
  def total_deposits
    all_deposits = deposits.pluck(:amount)
    all_deposits.sum
  end
  
  def ending_balance
    balance - self.total_expense + self.total_deposits
    
  end
end
