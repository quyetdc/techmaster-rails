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
# Indexes
#
#  index_restaurants_on_location_id  (location_id)
#

class Restaurant < ActiveRecord::Base
  has_many :cat_res
  has_many :categories, through: :cat_res

  has_many :favorites
  has_many :comments

  belongs_to :location

  before_create :send_notification_mailer

  validates :name, uniqueness: { scope: :location_id,
                                 message: "A location should not have two duplicated restaurants" }

  def send_notification_mailer
    Notifier.restaurant_notifier('quyetdc.uet@gmail.com', 'localhost:3000/quanngon').deliver_now
  end
end
