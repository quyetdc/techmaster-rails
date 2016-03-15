class AddIsBestSellersToBooks < ActiveRecord::Migration
  def change
    add_column :books, :is_best_seller, :integer, default: 0
  end
end
