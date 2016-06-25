class Checkin < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  mount_uploader :image, CheckinImageUploader

  validates :comment, presence: true
  validates :image, presence: true
end
