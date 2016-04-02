class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.integer :amount

      t.timestamps null: false
    end
  end
end
