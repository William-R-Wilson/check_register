class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name
      t.decimal :amount
      t.string :type
      t.string :date
      t.references :account, index: true

      t.timestamps
    end
  end
end
