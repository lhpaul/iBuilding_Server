# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Admin', :email => 'admin@ibuilding.com', :password => '123123', :password_confirmation => '123123'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name

#devices
Device.create(:name => "luz", :ip => "" )
Device.create(:name => "Temperatura", :ip => "146.155.13.182", :api => "arqui12.ing.puc.cl:8080" )

#permisos
DeviceUser.create(:id_dispositivo => Device.all[0].id, :id_user => User.first.id)
DeviceUser.create(:id_dispositivo => Device.all[1].id, :id_user => User.first.id)
