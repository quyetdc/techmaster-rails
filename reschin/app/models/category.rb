class Category < ActiveRecord::Base
  has_many :cat_res
  has_many :restaurants, through: :cat_res
  validates :name, presence: true, uniqueness: true
end
