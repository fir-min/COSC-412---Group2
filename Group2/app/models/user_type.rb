class UserType < ActiveRecord::Base
  belongs_to :user
  has_many :roles, :through => user_type_roles
end
