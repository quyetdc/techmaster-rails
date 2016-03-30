# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  profile    :string
#  birthday   :date
#  phone      :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string
#

require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
