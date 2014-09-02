# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

puts "Seeding USERS"
1.times.each { |t| User.create(:name => Faker::Internet.user_name) }

puts "Seeding TYPES model"
types = [ "skateboard",
					"snowboard",
					"drone",
					"ring",
					"guitar",
					"motorcycle ",
					"airplane",
					"car",
					"sunglasses",
					"chair"
				]
types.each { |t| Type.create(:name => t) }

puts "Seeding THINGS model"
4.times.each { |t| Thing.create(:name => Faker::Lorem.word, :description => Faker::Company.catch_phrase ,:type_id => Random.rand(1..5), :creator_id => 1, :creator_type => "User") }

puts "Seeding ORGS"
1.times.each { |t| Organization.create(:name => Faker::Company.name) }