# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new(:email => 'test@gmail.com', :password => 'password', :password_confirmation => 'password', :name => 'ted')
user.save

admin = User.new(:email => 'admin@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 1, :name => 'jay')
admin.save

man = User.new(:email => 'manager@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 2, :name => 'firms')
man.save

sup = User.new(:email => 'supervisor@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 3, :name => 'karyl')
sup.save

agent = User.new(:email => 'agent@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 4, :name => 'dayna')
agent.save

watch = User.new(:email => 'watcher@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 5, :name => 'brian')
watch.save

aud = User.new(:email => 'auditor@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 6, :name => 'aryn')
aud.save

idk = User.new(:email => 'idk@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 7, :name => 'kumar')
idk.save

access = AccessAudit.new(:email => 'auditor@gmail.com', :access => false, :message => 'Currently');
access.save

#products

Product.create(:name => 'prod01', :description => 'Ut enim ad minim veniam', :price => 15.99, :image => 'http://placekitten.com/150/150')

Product.create(:name => 'prod02', :description => 'Ut enim ad minim veniam', :price => 5.99, :image => 'http://placekitten.com/150/150')

Product.create(:name => 'prod03', :description => 'Ut enim ad minim veniam', :price => 19.99, :image => 'http://placekitten.com/150/150')

Product.create(:name => 'prod04', :description => 'Ut enim ad minim veniam', :price => 150.00, :image => 'http://placekitten.com/150/150')

Product.create(:name => 'prod05', :description => 'Ut enim ad minim veniam', :price => 24.99, :image => 'http://placekitten.com/150/150')

Product.create(:name => 'prod06', :description => 'Ut enim ad minim veniam', :price => 13.75, :image => 'http://placekitten.com/150/150')

Product.create(:name => 'prod07', :description => 'Ut enim ad minim veniam', :price => 1045.00, :image => 'http://placekitten.com/150/150')

Product.create(:name => 'prod08', :description => 'Ut enim ad minim veniam', :price => 2.99, :image => 'http://placekitten.com/150/150')

BudgetManage.create(:amount => 12300, :department => "USPS", :deptno => 4)

BudgetManage.create(:amount => 45300, :department => "DOD", :deptno => 42)

BudgetManage.create(:amount => 73300, :department => "NSA", :deptno => 41)