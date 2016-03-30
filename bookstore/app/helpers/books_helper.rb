# == Schema Information
#
# Table name: books
#
#  id             :integer          not null, primary key
#  name           :string
#  about          :text
#  publisher      :string
#  year           :integer
#  isbn           :integer
#  price          :float
#  image          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  is_new         :integer          default(0)
#  is_best_seller :integer          default(0)
#

module BooksHelper
end
