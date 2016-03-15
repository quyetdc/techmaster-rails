# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string
#  about      :text
#  publisher  :string
#  year       :integer
#  isbn       :integer
#  price      :float
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ActiveRecord::Base

  has_many :books_categories
  has_many :categories, through: :books_categories

  validates :name, uniqueness: true
end
