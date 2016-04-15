# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "Salty Snack Foods")            #1
Category.create(name: "Fast Foods")                   #2
Category.create(name: "Fruits")                       #3
Category.create(name: "Vegetables")                   #4
Category.create(name: "Dairy")                        #5
Category.create(name: "Dressings/Condiments")         #6
Category.create(name: "Desserts")                     #7
Category.create(name: "Candy and Chocolate")          #8
Category.create(name: "Grains and Starches")          #9
Category.create(name: "Beans, Nuts and Seeds")        #10
Category.create(name: "Meat, Poultry, Fish and Eggs") #11
Category.create(name: "Sweetened Beverages")          #12

Food.create(name: "Potato Chips", category_id: 1, unit: "Bag(s)")
Food.create(name: "Pretzels", category_id: 1, unit: "Cup(s)")
Food.create(name: "Popcorn", category_id: 1, unit: "Cup(s)")
Food.create(name: "Crackers", category_id: 1, unit: "Cup(s)")
Food.create(name: "Trail mix", category_id: 1, unit: "Cup(s)")
Food.create(name: "Salted nuts/seeds", category_id: 1, unit: "Cup(s)")

Food.create(name: "Pizza", category_id: 2, unit: "Slice(s)")
Food.create(name: "Chicken nuggets/fried chicken", category_id: 2, unit: "Piece(s)")
Food.create(name: "French Fries", category_id: 2, unit: "Order(s)")
Food.create(name: "Burger/Cheeseburgers", category_id: 2, unit: "Order(s)")
Food.create(name: "Burritos/Tacos", category_id: 2, unit: "Order(s)")
Food.create(name: "Other fried foods", category_id: 2, unit: "Order(s)")
Food.create(name: "Nachos", category_id: 2, unit: "Order(s)")
Food.create(name: "Hot dogs", category_id: 2, unit: "Order(s)")



Food.create(name: "Apples", category_id: 3, unit: "")
Food.create(name: "Strawberries", category_id: 3, unit: "")
Food.create(name: "Citrus (oranges, grapefruit)", category_id: 3, unit: "")
Food.create(name: "Other berries (blueberries, blackberries, raspberries)", category_id: 3, unit: "")
Food.create(name: "Grapes", category_id: 3, unit: "")
Food.create(name: "Mangoes", category_id: 3, unit: "")
Food.create(name: "100% fruit juice", category_id: 3, unit: "")

Food.create(name: "Cucumbers", category_id: 4, unit: "")
Food.create(name: "Broccoli", category_id: 4, unit: "")
Food.create(name: "Bell peppers", category_id: 4, unit: "")
Food.create(name: "Tomatoes", category_id: 4, unit: "")
Food.create(name: "Onions", category_id: 4, unit: "")
Food.create(name: "Greens", category_id: 4, unit: "")
Food.create(name: "Cauliflower", category_id: 4, unit: "")
Food.create(name: "Carrots", category_id: 4, unit: "")

VasQuestion.create(order: 1, prompt_left: "_Q1 Left Prompt One_", prompt_right: "_Right Prompt One_")

=begin

Food.create(name: "", category_id: 5, unit: "")
Food.create(name: "", category_id: 5, unit: "")
Food.create(name: "", category_id: 5, unit: "")
Food.create(name: "", category_id: 5, unit: "")
Food.create(name: "", category_id: 5, unit: "")

Food.create(name: "", category_id: 6, unit: "")
Food.create(name: "", category_id: 6, unit: "")
Food.create(name: "", category_id: 6, unit: "")
Food.create(name: "", category_id: 6, unit: "")

Food.create(name: "", category_id: 7, unit: "")
Food.create(name: "", category_id: 7, unit: "")
Food.create(name: "", category_id: 7, unit: "")
Food.create(name: "", category_id: 7, unit: "")
Food.create(name: "", category_id: 7, unit: "")
Food.create(name: "", category_id: 7, unit: "")
Food.create(name: "", category_id: 7, unit: "")
Food.create(name: "", category_id: 7, unit: "")
Food.create(name: "", category_id: 7, unit: "")
Food.create(name: "", category_id: 7, unit: "")
Food.create(name: "", category_id: 7, unit: "")
Food.create(name: "", category_id: 7, unit: "")

Food.create(name: "", category_id: 8, unit: "")
Food.create(name: "", category_id: 8, unit: "")
Food.create(name: "", category_id: 8, unit: "")
Food.create(name: "", category_id: 8, unit: "")

Food.create(name: "", category_id: 9, unit: "")
Food.create(name: "", category_id: 9, unit: "")
Food.create(name: "", category_id: 9, unit: "")
Food.create(name: "", category_id: 9, unit: "")
Food.create(name: "", category_id: 9, unit: "")
Food.create(name: "", category_id: 9, unit: "")
Food.create(name: "", category_id: 9, unit: "")
Food.create(name: "", category_id: 9, unit: "")
Food.create(name: "", category_id: 9, unit: "")

Food.create(name: "", category_id: 10, unit: "")
Food.create(name: "", category_id: 10, unit: "")
Food.create(name: "", category_id: 10, unit: "")

Food.create(name: "", category_id: 11, unit: "")
Food.create(name: "", category_id: 11, unit: "")
Food.create(name: "", category_id: 11, unit: "")
Food.create(name: "", category_id: 11, unit: "")
Food.create(name: "", category_id: 11, unit: "")
Food.create(name: "", category_id: 11, unit: "")
Food.create(name: "", category_id: 11, unit: "")

Food.create(name: "", category_id: 12, unit: "")
Food.create(name: "", category_id: 12, unit: "")
Food.create(name: "", category_id: 12, unit: "")
Food.create(name: "", category_id: 12, unit: "")



VasQuestion.create(order: 1, prompt_left: "Q1 Left Prompt One", prompt_right: "Right Prompt One", food_unit: "Food Unit One")
VasQuestion.create(order: 2, prompt_left: "Q2 Left Prompt Two", prompt_right: "Right Prompt Two", food_unit: "Food Unit Two")
VasQuestion.create(order: 4, prompt_left: "Q4 Left Prompt Three", prompt_right: "Right Prompt Three", food_unit: "Food Unit Three")
VasQuestion.create(order: 3, prompt_left: "Q3 Left Prompt Four", prompt_right: "Right Prompt Four", food_unit: "Food Unit Four")

=end
