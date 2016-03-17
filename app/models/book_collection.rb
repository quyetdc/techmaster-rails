class BookCollection < ActiveRecord::Base
  belongs_to :book
  belongs_to :collection
end
