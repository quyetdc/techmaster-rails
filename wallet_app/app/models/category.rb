class Category < ActiveRecord::Base
  has_many :category_incomes
  has_many :incomes, through: :category_incomes

  has_many :category_costs
  has_many :costs, through: :category_costs
end
