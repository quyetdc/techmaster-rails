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

class CatRe < ActiveRecord::Base
  belongs_to :category
  belongs_to :restaurant
end
