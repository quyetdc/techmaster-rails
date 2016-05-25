class Banner < ActiveRecord::Base
  belongs_to :article

  validates :image, presence: true
  validates :name, uniqueness: true, allow_blank: true
  validates :article, presence: true
end
