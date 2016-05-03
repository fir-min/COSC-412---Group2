# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new(:email => 'test@gmail.com', :password => 'password', :password_confirmation => 'password')
user.save

admin = User.new(:email => 'admin@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 1)
admin.save

man = User.new(:email => 'manager@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 2)
man.save

sup = User.new(:email => 'supervisor@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 3)
sup.save

agent = User.new(:email => 'agent@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 4)
agent.save

watch = User.new(:email => 'watcher@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 5)
watch.save

aud = User.new(:email => 'auditor@gmail.com', :password => 'password', :password_confirmation => 'password', :user_type_id => 6)
aud.save
  
