class UserType < ActiveRecord::Base
  belongs_to :user
  has_many :roles
end
