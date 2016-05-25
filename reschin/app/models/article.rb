class Article < ActiveRecord::Base
  has_one :banner

  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
end
