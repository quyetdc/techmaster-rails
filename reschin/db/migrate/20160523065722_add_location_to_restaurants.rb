class AddLocationToRestaurants < ActiveRecord::Migration
  def change
    add_reference :restaurants, :location, index: true, foreign_key: true
  end
end
