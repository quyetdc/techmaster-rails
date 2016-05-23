class Banner < ActiveRecord::Base
  validates :image, presence: true
  validates :name, uniqueness: true, allow_blank: true
end
