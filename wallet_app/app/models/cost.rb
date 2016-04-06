# == Schema Information
#
# Table name: costs
#
#  id         :integer          not null, primary key
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  issued_at  :datetime
#

class Cost < ActiveRecord::Base
  has_many :category_costs
  has_many :categories, through: :category_costs

  validates_presence_of :amount
end
