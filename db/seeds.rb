# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
Item.destroy_all


10.times do |i|
	cat = Category.create(name: "Category#{i}")
	10.times do |j|
		item = Item.create(name: i.to_s + "Item#{j}")
		cat.items << item
	end
end