class AddImageToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :image, :string
  end
end
