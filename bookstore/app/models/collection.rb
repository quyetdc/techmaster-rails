# == Schema Information
#
# Table name: collections
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_collections_on_user_id  (user_id)
#

class Collection < ActiveRecord::Base
  belongs_to :user

  has_many :book_collections
  has_many :books, through: :book_collections
end
