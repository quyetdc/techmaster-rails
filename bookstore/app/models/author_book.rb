# == Schema Information
#
# Table name: author_books
#
#  id         :integer          not null, primary key
#  author_id  :integer
#  book_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_author_books_on_author_id  (author_id)
#  index_author_books_on_book_id    (book_id)
#

class AuthorBook < ActiveRecord::Base
  belongs_to :book
  belongs_to :author
end
