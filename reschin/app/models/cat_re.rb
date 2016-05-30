# == Schema Information
#
# Table name: cat_res
#
#  id            :integer          not null, primary key
#  category_id   :integer
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_cat_res_on_category_id    (category_id)
#  index_cat_res_on_restaurant_id  (restaurant_id)
#

class CatRe < ActiveRecord::Base
  belongs_to :category
  belongs_to :restaurant
end
