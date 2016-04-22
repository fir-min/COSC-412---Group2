# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new(:email => 'test@gmail.com', :password => 'password', :password_confirmation => 'password')
user.save

admin = User.new(:email => 'admin@gmail.com', :password => 'password', :password_confirmation => 'password')
admin.save

admin2 = BudgetManage.new(:department => "HR", :deptno => 123, :amount => 100)
admin2.save

