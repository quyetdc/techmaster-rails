# == Schema Information
#
# Table name: incomes
#
#  id         :integer          not null, primary key
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  issued_at  :datetime
#

class Income < ActiveRecord::Base
  has_many :category_incomes
  has_many :categories, through: :category_incomes

  validates_presence_of :amount
end
