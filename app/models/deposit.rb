class Deposit < ActiveRecord::Base
  validates :date, :from, :amount, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0.01 }
  validates :from, format: {without: /[<>{}\[\]]/}
  belongs_to :account
end
