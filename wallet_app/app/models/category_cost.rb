class CategoryCost < ActiveRecord::Base
  belongs_to :category
  belongs_to :cost
end
