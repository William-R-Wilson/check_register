class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.string :from
      t.string :date
      t.references :account, index: true
      t.decimal :amount

      t.timestamps
    end
  end
end
