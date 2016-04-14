# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "Category One")
Category.create(name: "Category Two")
Category.create(name: "Category Three")
Category.create(name: "Category Four")

Food.create(name: "Food one", category_id: 1 )
Food.create(name: "Food two", category_id: 2 )
Food.create(name: "Food three", category_id: 3 )
Food.create(name: "Food four", category_id: 4 )
Food.create(name: "Food five", category_id: 1 )
Food.create(name: "Food six", category_id: 3 )
Food.create(name: "Food seven", category_id: 3 )
Food.create(name: "Food eight", category_id: 3 )
Food.create(name: "Food nine", category_id: 4 )
