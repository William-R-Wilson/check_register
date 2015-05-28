require 'test_helper'

class CheckTest < ActiveSupport::TestCase
  
  def setup
    @check = Check.new(date: "4/15/15", to: "Mr. Rodgers", amount: 200)
  end
  
  test "should be valid" do
    assert @check.valid?
  end
  
  test "to: should be present" do
    @check.to = ""
    assert_not @check.valid?
  end
  
  test "amount should be present" do 
    @check.amount = ""
    assert_not @check.valid?
  end 
  
  test "amount should be a number" do 
    @check.amount = "abc"
    assert_not @check.valid?
  end
  
  test "amount should be a positive number" do
    @check.amount = 0
    assert_not @check.valid?
  end
  
  test "to: should be a valid string" do 
    valid_strings = ["Bob Jones", "Grimes, Rick", "J.R. Bob Dobbs", "Hi-Test Gas"]
    invalid_strings = ["<div>", "[drop table]"]
    valid_strings.each do |valid_string|
      @check.to = valid_string
      assert @check.valid?, "#{valid_string.inspect} should be valid"
    end 
    invalid_strings.each do |invalid_string|
      @check.to = invalid_string
      assert_not @check.valid?, "#{invalid_string.inspect} should be invalid"
    end 
  end 
  
end
