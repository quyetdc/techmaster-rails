# == Schema Information
#
# Table name: category_costs
#
#  id          :integer          not null, primary key
#  category_id :integer
#  cost_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CategoryCost < ActiveRecord::Base
  belongs_to :category
  belongs_to :cost
end
