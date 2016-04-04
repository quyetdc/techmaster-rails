class AddIssuedAtToIncomes < ActiveRecord::Migration
  def change
    add_column :incomes, :issued_at, :datetime
  end
end
