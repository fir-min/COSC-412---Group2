class UserTypeRole < ActiveRecord::Base
  belongs_to :user_type
  belongs_to :role
end
