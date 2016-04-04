class Category < ActiveRecord::Base
  has_many :category_incomes
  has_many :incomes, through: :category_incomes
end
