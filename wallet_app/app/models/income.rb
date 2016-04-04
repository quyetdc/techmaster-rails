class Income < ActiveRecord::Base
  has_many :category_incomes
  has_many :categories, through: :category_incomes
end
