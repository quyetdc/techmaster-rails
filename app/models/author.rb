class Author < ActiveRecord::Base
  has_many :author_books
  has_many :books, through: :author_books
  
  validates :first_name, uniqueness: true
  validates :last_name, uniqueness: true

  def name
    "#{first_name} #{last_name}"
  end
end
