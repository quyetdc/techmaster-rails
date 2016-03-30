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

class BooksCategory < ActiveRecord::Base
  belongs_to :book
  belongs_to :category
end
