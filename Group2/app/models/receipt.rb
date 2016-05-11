class Receipt < ActiveRecord::Base
  belongs_to :purchase
end
