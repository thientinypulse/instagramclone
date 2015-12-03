# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.destroy_all

10.times do 
	Photo.create(
		username: Faker::Name.name, 
		caption: Faker::Lorem.sentence,
		likes_count: Faker::Number.number(2),
		url: 'http://loremflickr.com/320/240/' + Faker::Lorem.word
		)
end