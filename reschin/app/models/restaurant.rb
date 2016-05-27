# == Schema Information
#
# Table name: restaurants
#
#  id          :integer          not null, primary key
#  name        :string
#  about       :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#

class Restaurant < ActiveRecord::Base
  has_many :cat_res
  has_many :categories, through: :cat_res

  belongs_to :location

  validates :name, uniqueness: { scope: :location_id,
                                 message: "A location should not have two duplicated restaurants" }
end
