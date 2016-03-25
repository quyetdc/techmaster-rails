class Author < ActiveRecord::Base
  has_many :author_books
  has_many :books, through: :author_books

  validates :first_name, uniqueness: true
  validates :last_name, uniqueness: true

  def name
    "#{first_name} #{last_name}"
  end

  def self.top_3
    select('authors.*, COUNT(author_books.id) AS author_books_count').
      joins(:author_books).                                                   
      group('authors.id').
      order('author_books_count DESC').
      limit(3)
  end
end
