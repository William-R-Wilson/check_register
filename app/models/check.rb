class Check < ActiveRecord::Base
  validates :date, :to, :amount, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0.01 }
  validates :to, format: {without: /[<>{}\[\]]/}
  belongs_to :account
  
  
  
end
