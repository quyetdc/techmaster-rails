# == Schema Information
#
# Table name: favorites
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_favorites_on_restaurant_id  (restaurant_id)
#  index_favorites_on_user_id        (user_id)
#

class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :restaurant, presence: true
  validates :user, presence: true
end
