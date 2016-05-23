class Location < ActiveRecord::Base
  has_one :restaurant

  validates :name, uniqueness: true
end
