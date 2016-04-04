class CreateCategoryIncomes < ActiveRecord::Migration
  def change
    create_table :category_incomes do |t|
      t.references :category, index: true, foreign_key: true
      t.references :income, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
