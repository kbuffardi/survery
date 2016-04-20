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

Food.create(name: "potato/corn/tortilla chips", category_id: 1, unit: "bag(s)")
Food.create(name: "pretzels", category_id: 1, unit: "cup(s)")
Food.create(name: "popcorn", category_id: 1, unit: "cup(s)")
Food.create(name: "crackers", category_id: 1, unit: "cup(s)")
Food.create(name: "trail mix", category_id: 1, unit: "cup(s)")
Food.create(name: "salted nuts/seeds", category_id: 1, unit: "cup(s)")

Food.create(name: "pizza", category_id: 2, unit: "slice(s)")
Food.create(name: "chicken nuggets/fried chicken", category_id: 2, unit: "piece(s)")
Food.create(name: "French fries", category_id: 2, unit: "order(s)")
Food.create(name: "burger/cheeseburgers", category_id: 2, unit: "order(s)")
Food.create(name: "burritos/tacos", category_id: 2, unit: "order(s)")
Food.create(name: "other fried foods", category_id: 2, unit: "order(s)")
Food.create(name: "nachos", category_id: 2, unit: "order(s)")
Food.create(name: "hot dogs", category_id: 2, unit: "order(s)")

Food.create(name: "apples", category_id: 3, unit: "cup(s)")
Food.create(name: "strawberries", category_id: 3, unit: "cup(s)")
Food.create(name: "citrus (oranges, grapefruit)", category_id: 3, unit: "cup(s)")
Food.create(name: "other berries (blueberries, blackberries, raspberries)", category_id: 3, unit: "cup(s)")
Food.create(name: "grapes", category_id: 3, unit: "cup(s)")
Food.create(name: "mangoes", category_id: 3, unit: "cup(s)")
Food.create(name: "100% fruit juice", category_id: 3, unit: "cup(s)")

Food.create(name: "cucumbers", category_id: 4, unit: "cup(s)")
Food.create(name: "broccoli", category_id: 4, unit: "cup(s)")
Food.create(name: "bell peppers", category_id: 4, unit: "cup(s)")
Food.create(name: "tomatoes", category_id: 4, unit: "cup(s)")
Food.create(name: "onions", category_id: 4, unit: "cup(s)")
Food.create(name: "greens", category_id: 4, unit: "cup(s)")
Food.create(name: "cauliflower", category_id: 4, unit: "cup(s)")
Food.create(name: "carrots", category_id: 4, unit: "cup(s)")

Food.create(category_id: 5, unit: "cup(s)", name: "milk")
Food.create(category_id: 5, unit: "cup(s)", name: "sliced/shredded/crumbled cheese")
Food.create(category_id: 5, unit: "cup(s)", name: "yogurt")
Food.create(category_id: 5, unit: "cup(s)", name: "sour cream")
Food.create(category_id: 5, unit: "tablespoon(s)", name: "butter/margarine spread")

Food.create(category_id: 6, unit: "tablespoon(s)", name: "ranch dressing")
Food.create(category_id: 6, unit: "tablespoon(s)", name: "mayonnaise")
Food.create(category_id: 6, unit: "tablespoon(s)", name: "ketchup")
Food.create(category_id: 6, unit: "tablespoon(s)", name: "mustard")

Food.create(category_id: 7, unit: "container(s)", name: "ice cream")
Food.create(category_id: 7, unit: "bar(s)", name: "ice cream bar")
Food.create(category_id: 7, unit: "slice(s)", name: "cake")
Food.create(category_id: 7, unit: "# of cupcake(s)", name: "cupcakes")
Food.create(category_id: 7, unit: "# of brownie(s)", name: "brownies")
Food.create(category_id: 7, unit: "# of cookie(s)", name: "cookies")
Food.create(category_id: 7, unit: "slice(s)", name: "pie")
Food.create(category_id: 7, unit: "# of muffin(s)", name: "muffins")
Food.create(category_id: 7, unit: "# of pastries/donuts", name: "pastries/donuts")
Food.create(category_id: 7, unit: "# of croissant(s)", name: "croissants")
Food.create(category_id: 7, unit: "cup(s)", name: "smoothies")
Food.create(category_id: 7, unit: "cup(s)", name: "milkshakes")

Food.create(category_id: 8, unit: "tablespoon(s)", name: "gummy candy")
Food.create(category_id: 8, unit: "piece(s)", name: "lollipops/hard candy")
Food.create(category_id: 8, unit: "piece(s)", name: "chocolate bars/pieces")
Food.create(category_id: 8, unit: "piece(s)", name: "toffee")

Food.create(category_id: 9, unit: "slice(s)", name: "sliced bread")
Food.create(category_id: 9, unit: "# of roll(s)", name: "rolls")
Food.create(category_id: 9, unit: "# of tortillas", name: "tortillas")
Food.create(category_id: 9, unit: "cup(s)", name: "cereals")
Food.create(category_id: 9, unit: "cup(s)", name: "rice")
Food.create(category_id: 9, unit: "cup(s)", name: "corn")
Food.create(category_id: 9, unit: "cup(s)", name: "baked or mashed potatoes")
Food.create(category_id: 9, unit: "cup(s)", name: "other grains")

Food.create(category_id: 10, unit: "cup(s)", name: "beans")
Food.create(category_id: 10, unit: "cup(s)", name: "peas")
Food.create(category_id: 10, unit: "cup(s)", name: "unsalted nuts/seeds")

Food.create(category_id: 11, unit: "# of sausages", name: "sausage")
Food.create(category_id: 11, unit: "piece(s)", name: "turkey/chicken (not fried)")
Food.create(category_id: 11, unit: "piece(s)", name: "cold cuts")
Food.create(category_id: 11, unit: "piece(s)", name: "beef")
Food.create(category_id: 11, unit: "piece(s)", name: "bacon")
Food.create(category_id: 11, unit: "piece(s)", name: "seafood/fish")
Food.create(category_id: 11, unit: "# of eggs", name: "eggs")

Food.create(category_id: 12, unit: "cup(s)", name: "soda/diet soda")
Food.create(category_id: 12, unit: "cup(s)", name: "energy/sports drinks")
Food.create(category_id: 12, unit: "cup(s)", name: "fruit drinks")
Food.create(category_id: 12, unit: "cup(s)", name: "blended coffee drinks")

VasQuestion.create(order: 1, prompt_left: "I eat ", prompt_right: ":")
VasQuestion.create(order: 2, prompt_left: "When or if I eat ", prompt_right: ", I eat")
VasQuestion.create(order: 3, prompt_left: "I eat ", prompt_right: " when I am not hungry (for example, going out to eat after already eating a meal or eating more snacks after a meal)")
VasQuestion.create(order: 4, prompt_left: "I do not eat large amounts of ", prompt_right: ".")
VasQuestion.create(order: 5, prompt_left: "I eat ", prompt_right: " until I feel physically ill (for example, feeling sick or nauseated, uncomfortably full, wanting to throw up, or pain)")
VasQuestion.create(order: 6, prompt_left: "Once I start eating ", prompt_right: ", I have trouble stopping (for example, once I have one chocolate candy, I can’t stop eating them)")
VasQuestion.create(order: 7, prompt_left: "I have tried to stop eating ", prompt_right: " in large amounts more than once (for example, you will not take a bite of candy or eat one cookie because you know you will eat too much)")
VasQuestion.create(order: 8, prompt_left: "I have avoided buying ", prompt_right: " so that I don’t eat too much of it (for example, you do not buy chips at the store so that you will not eat them at home)")
VasQuestion.create(order: 9, prompt_left: "I have skipped social or professional events in order to avoid eating ", prompt_right: " (for example, you do not go to a dinner party because you know there will be a lot of desserts and alcohol there)")
VasQuestion.create(order: 10, prompt_left: "I will go out of my way to get ", prompt_right: " (for example, you will drive to the store to buy chocolate candy bars even though you have other food at home)")
VasQuestion.create(order: 11, prompt_left: "I have skipped social or professional events in order to get and eat ", prompt_right: " (for example, you do not go to a baseball game or professional meeting so that you can spend the time consuming this food)")
VasQuestion.create(order: 12, prompt_left: "I spend a large amount of time planning how and when I will eat ", prompt_right: " (for example, you will spend time at work thinking about where, when and how you will buy and eat ice cream)")
VasQuestion.create(order: 13, prompt_left: "I get a strong desire or urge to eat ", prompt_right: " (for example, I crave cookies when I am at home watching t.v.)")
VasQuestion.create(order: 14, prompt_left: "I think about not eating ", prompt_right: " or eating less of it (for example, while I am eating chips, I think about only eating a small handful)")
VasQuestion.create(order: 15, prompt_left: "I eat ", prompt_right: " throughout the day (for example, I have a can of soda on my desk all day long)")
VasQuestion.create(order: 16, prompt_left: "I have eaten ", prompt_right: " in such a large amount that I have had to spend time dealing with the negative consequences (for example, physical discomfort, sluggish, depressed, etc.) instead of working, spending time with family or friends, or participating in other activities that I enjoy ")
VasQuestion.create(order: 17, prompt_left: "My behavior with ", prompt_right: " causes me distress (for example, when I cannot control the amount of chips I eat, I feel anxiety and stress")
VasQuestion.create(order: 18, prompt_left: "", prompt_right: " causes me to experience problems in my ability to function effectively (for example, my consumption of candy at work makes me less productive and effective at my job)")
VasQuestion.create(order: 19, prompt_left: "I have found that I need to eat more of ", prompt_right: " than before to get the feelings I want (for example, I eat more candy to get more pleasure, comfort, forgetting my problems, or reduced sadness) ")
VasQuestion.create(order: 20, prompt_left: "I need to increase how much I eat of ", prompt_right: " than before to feel satisfied (for example, I need to drink a 32 oz soda instead of 16 oz to feel satisfied) ")
VasQuestion.create(order: 21, prompt_left: "I no longer feel satisfied when eating ", prompt_right: "")
VasQuestion.create(order: 22, prompt_left: "I feel anxious or restless when I cannot eat ", prompt_right: " (for example, I get cranky when I cannot eat french fries, drink my frozen caramel latte, or have my 2 glasses of wine)")
VasQuestion.create(order: 23, prompt_left: "I eat ", prompt_right: " to deal with withdrawal symptoms such as anxiety, stress, or agitation (for example, well I am stressed at work, I eat more candy bars at my desk)")
VasQuestion.create(order: 24, prompt_left: "I continue to eat ", prompt_right: " even though I know it causes physical or emotional harm (for example, I continue to buy and drink a lot of soda even though it causes cavities)")
