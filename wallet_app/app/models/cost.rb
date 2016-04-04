class Cost < ActiveRecord::Base
  has_many :category_costs
  has_many :categories, through: :category_costs
end
