class AddIssuedAtToCosts < ActiveRecord::Migration
  def change
    add_column :costs, :issued_at, :datetime
  end
end
