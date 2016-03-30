class AddOriginalPriceToBooks < ActiveRecord::Migration
  def change
    add_column :books, :original_price, :integer
  end
end
