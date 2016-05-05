# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  has_many :category_incomes
  has_many :incomes, through: :category_incomes

  has_many :category_costs
  has_many :costs, through: :category_costs

  belongs_to :user

  validates_presence_of :name
end
