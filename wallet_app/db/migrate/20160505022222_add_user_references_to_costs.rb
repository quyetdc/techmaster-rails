class AddUserReferencesToCosts < ActiveRecord::Migration
  def change
    add_reference :costs, :user, index: true
  end
end
