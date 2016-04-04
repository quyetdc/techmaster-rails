class CategoryIncome < ActiveRecord::Base
  belongs_to :category
  belongs_to :income
end
