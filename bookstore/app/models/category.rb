class Category < ActiveRecord::Base
  has_many :books_categories
  has_many :books, through: :books_categories

  validates :name, uniqueness: true
end
