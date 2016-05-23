class CreateCatRes < ActiveRecord::Migration
  def change
    create_table :cat_res do |t|
      t.references :category, index: true, foreign_key: true
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
