class Comment < ActiveRecord::Base
  validates :content, presence: true, length: {maximum: 2000}
end
