# == Schema Information
#
# Table name: category_incomes
#
#  id          :integer          not null, primary key
#  category_id :integer
#  income_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CategoryIncome < ActiveRecord::Base
  belongs_to :category
  belongs_to :income
end
