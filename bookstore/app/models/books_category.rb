# == Schema Information
#
# Table name: books_categories
#
#  id          :integer          not null, primary key
#  book_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_books_categories_on_book_id      (book_id)
#  index_books_categories_on_category_id  (category_id)
#

class BooksCategory < ActiveRecord::Base
  belongs_to :book
  belongs_to :category
end
