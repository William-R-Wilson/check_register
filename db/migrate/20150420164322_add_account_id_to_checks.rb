class AddAccountIdToChecks < ActiveRecord::Migration
  def change
    add_reference :checks, :account, index: true
  end
end
