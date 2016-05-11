class Purchase < ActiveRecord::Base
  has_many :receipts
end
