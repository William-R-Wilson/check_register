require 'test_helper'

class AccountsTest < ActiveSupport::TestCase
  
  def setup
    @account = Account.new(name: "General Checking", balance: 200)
  end
  
  test "should be valid" do
    assert @account.valid?
  end
  
  test "name should be present" do
    @account.name = ""
    assert_not @account.valid?
  end
  
  test "balance should be present" do 
    @account.balance = ""
    assert_not @account.valid?
  end 
  
  test "balance should be a number" do 
    @account.balance = "abc"
    assert_not @account.valid?
  end
  
end
