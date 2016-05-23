class Restaurant < ActiveRecord::Base
  has_many :cat_res
  has_many :categories, through: :cat_res

  belongs_to :location

  validates :name, uniqueness: { scope: :location_id,
                                 message: "A location should not have two duplicated restaurants" }
end
