class Account < ActiveRecord::Base

  has_many :checks
  
  def total_expense
    all_checks = checks.pluck(:amount)
    all_checks.sum
  end
  
  def current_balance
    balance - self.total_expense
  end
end
