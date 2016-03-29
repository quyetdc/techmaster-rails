class AddIsNewToBooks < ActiveRecord::Migration
  def change
    add_column :books, :is_new, :integer, default: 0
  end
end
