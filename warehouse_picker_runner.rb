require_relative "warehouse_picker_functions"

def prompt(arg)
  print arg
  gets.chomp
end

########## Single bay/item ##########

#Given a bay, returns the item in that bay
bay = 'b5'
item = item_at_bay(bay)
puts "item at b5 found is #{item}, expect it to be nail filer"
puts "\n"

# Given an item return the bay that it is in.
item = 'nail filer'
bay = bay_for_item(item)
puts "bay for nail filer is #{bay}, expect it to be b5"
puts "\n"

########## Multiple bays/items ##########

# Given a list of bays, list the items in those bays
bays = ['b5', 'b10', 'b6']
items = items_at_bays(bays)
puts "given \"b5, b10, and b6\", determine that the products are \"nail filer, cookie jar, and tooth paste\""
puts items.join(", ")
puts "\n"

# Given a list of items find the bays.
items = ['shoe lace', 'rusty nail', 'leg warmers']
bays = bays_for_items(items)
puts "given \"shoe lace, rusty nail, leg warmers\", determine that those items need to be collected from \"c1, c9, and c10\""
puts bays.join(", ")
puts "\n"

# # Given a list of bays, list the items in those bays, and 
# # calculate the distance from the two furthest apart bays.
bays = ['b5', 'b10', 'b6']
items = items_at_bays(bays)
distance = furthest_distance(bays)
puts "given \"b5, b10, and b6\", determine that the products are \"nail filer, cookie jar, and tooth paste\", and they're 5 bays apart"
puts "bays \"#{bays.join(", ")}\" hold \"#{items.join(", ")}\" and are #{distance} bays apart"
puts "\n"

bays = ['b3', 'c7', 'c9', 'a3']
items = items_at_bays(bays)
distance = furthest_distance(bays)
puts "given \"b3, c7, c9, and a3\", determine that the products are \"picture frame, paint brush, shoe lace, and blouse\", and they're 15 bays apart"
puts "bays \"#{bays.join(", ")}\" hold \"#{items.join(", ")}\" and are #{distance} bays apart"
puts "\n"


# Given a list of products, find the bays that need to be 
# visited, and order them in the order they need to be 
# visited from entrance to exit.
items = ['shoe lace', 'rusty nail', 'leg warmers']
bays = bays_for_items(items)
bays_order = sort_bays(bays)
puts "given \"shoe lace, rusty nail, leg warmers\", determine that those items need to be collected from \"c1, c9, and c10\""
puts "items \"#{items.join(", ")}\" need to be collected from \"#{bays_order.join(", ")}\""
puts "\n"

items = ['hanger', 'deodorant', 'candy wrapper', 'rubber band']
bays = bays_for_items(items)
bays_order = sort_bays(bays)
puts "given \"hanger, deodorant, candy wrapper, rubber band\", determine that those items need to be collected from \"a10, a4, c8, and b9\""
puts "items \"#{items.join(", ")}\" need to be collected from \"#{bays_order.join(", ")}\""
puts "\n"

# Imagine that our warehouse had another rack built, opposite rack 'c', so now our warehouse forms a circular route. How would this impact the calculation of ordering the pick-list routes, and the distances between any two given bays? What amount of changes would you need to make to your solution to support this new requirement?

