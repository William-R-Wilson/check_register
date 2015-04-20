class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.string :date
      t.decimal :amount
      t.string :to

      t.timestamps
    end
  end
end
