class BookCollection < ActiveRecord::Base
  belongs_to :book
  belongs_to :collection

  validates :book_id, uniqueness: {
                        scope: :collection_id,
                        message: 'We should not add a book to a collection two times'
                      }
end
