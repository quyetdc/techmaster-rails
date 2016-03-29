class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :about
      t.string :publisher
      t.integer :year
      t.integer :isbn
      t.float :price
      t.string :image

      t.timestamps null: false
    end
  end
end
