class CreateCategoryCosts < ActiveRecord::Migration
  def change
    create_table :category_costs do |t|
      t.references :category, index: true, foreign_key: true
      t.references :cost, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
