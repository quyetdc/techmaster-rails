class Collection < ActiveRecord::Base
  belongs_to :user

  has_many :book_collections
  has_many :books, through: :book_collections
end
