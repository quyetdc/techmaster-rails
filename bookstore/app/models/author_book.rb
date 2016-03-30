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

class AuthorBook < ActiveRecord::Base
  belongs_to :book
  belongs_to :author
end
