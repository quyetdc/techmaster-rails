class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :about
      t.string :image

      t.timestamps null: false
    end
  end
end
