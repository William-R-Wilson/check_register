class Account < ActiveRecord::Base

  has_many :checks
  
end
