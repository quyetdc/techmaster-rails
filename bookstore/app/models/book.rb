# == Schema Information
#
# Table name: books
#
#  id             :integer          not null, primary key
#  name           :string
#  about          :text
#  publisher      :string
#  year           :integer
#  isbn           :integer
#  price          :float
#  image          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  is_new         :integer          default(0)
#  is_best_seller :integer          default(0)
#

class Book < ActiveRecord::Base
  searchkick  match: :word_start, searchable: [:name]

  enum is_new: [:in_stock, :new_arrival]
  enum is_best_seller: [:normal_seller, :best_seller]

  has_many :books_categories
  has_many :categories, through: :books_categories

  has_many :book_collections
  has_many :collections, through: :book_collections

  has_many :author_books
  has_many :authors, through: :author_books

  validates :name, uniqueness: true
end
