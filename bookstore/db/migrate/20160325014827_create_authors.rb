class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile
      t.date :birthday
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
