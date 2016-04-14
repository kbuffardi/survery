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

VasQuestion.create(order: 1, prompt_left: "Q1 Left Prompt One", prompt_right: "Right Prompt One", food_unit: "Food Unit One")
VasQuestion.create(order: 2, prompt_left: "Q2 Left Prompt Two", prompt_right: "Right Prompt Two", food_unit: "Food Unit Two")
VasQuestion.create(order: 4, prompt_left: "Q4 Left Prompt Three", prompt_right: "Right Prompt Three", food_unit: "Food Unit Three")
VasQuestion.create(order: 3, prompt_left: "Q3 Left Prompt Four", prompt_right: "Right Prompt Four", food_unit: "Food Unit Four")
