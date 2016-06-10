class Order < ActiveRecord::Base
  belongs_to :customer
end
