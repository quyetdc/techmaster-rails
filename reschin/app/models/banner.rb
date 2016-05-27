# == Schema Information
#
# Table name: banners
#
#  id          :integer          not null, primary key
#  image       :string
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  article_id  :integer
#

class Banner < ActiveRecord::Base
  belongs_to :article

  validates :image, presence: true
  validates :name, uniqueness: true, allow_blank: true
  validates :article, presence: true
end
