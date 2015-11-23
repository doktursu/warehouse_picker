require_relative "warehouse_picker_functions_D"

def bay_for_item(item)
  return WAREHOUSE[item].to_sym
end

def item_at_bay(bay)
  return WAREHOUSE.key(bay.to_s)
end

def find_location(bay)
  FROM_ENTRANCE.each_index do |i|
    FROM_ENTRANCE[i].each_index do |j|
      return [i, j] if FROM_ENTRANCE[i][j] == bay
    end
  end
end

def distance_between(bay1, bay2)
  loc1 = find_location(bay1)
  loc2 = find_location(bay2)
  return distance = Math.sqrt((loc1[0] - loc2[0])**2 + (loc1[1] - loc2[1])**2)
end

def warehouse_size()
  count = 0
  FROM_ENTRANCE.each_index do |i|
    FROM_ENTRANCE[i].each_index do |j|
      count += 1 if FROM_ENTRANCE[i][j]
    end
  end
  return count
end

def closest_to_entrance(bays_arr)
  shortest_dist = 1_000
  closest_bay = ""
  bays_arr.each do |bay| 
    dist = distance_between(:entrance, bay)
    if dist < shortest_dist
      shortest_dist = dist
      closest_bay = bay
    end
  end
  return closest_bay
end

def sort_bays(bays_arr)
  return bays_arr.sort_by { |bay| BAY_ORDER.index(bay) }
end

# Program begins

puts """******************************************
************ WAREHOUSE PICKER ************
******************************************

Select items to pick from warehouse.
Picker will start at entrance, collect items from each bay, and return to entrance.
(Picker can cross warehouse center)"""
puts "\n"

# Displays list of all items
puts items_menu = WAREHOUSE.keys.sort.join(" | ")
puts "\n"

# Gets list of items from user
SENTINEL = '0'
puts """Enter items to pick (Press RETURN after each item / Enter 0 when finished):"""
items = []
while true
  item = gets.chomp.downcase.strip
  break if item == SENTINEL
  if !WAREHOUSE.has_key?(item)
    puts "ITEM INVALID. PLEASE RE-ENTER."
    next
  end 
  items << item
end
puts "\n"

puts "YOUR ORDER IS BEING PROCESSED"
puts "\n"

# Displays items to pick
puts "Items to pick:\t\t#{items.join(", ")}"
puts "\n"

# Displays bays of the items
bays = items.map { |item| bay_for_item(item) }
puts "Located at bays:\t#{bays.join(", ")}"
puts "\n"

# Displays picking order
pick_order = sort_bays(bays)
pick_order.unshift(:entrance)
pick_order.push(:entrance)
puts "Picking order:\t\t#{pick_order.join(", ")}"
puts "\n"

# Displays total distance to travel
distance = 0
pick_order.each_index do |i|
  bay1 = pick_order[i]
  bay2 = pick_order[i+1]
  break if !bay2
  distance += distance_between(bay1, bay2)
end
puts "Bay lengths to travel:\t#{distance.round(4)}"
puts "\n"

closest_bay = closest_to_entrance(bays)
closest_item = item_at_bay(closest_bay)
closest_loc = find_location(closest_bay)
puts "(Closest item is #{closest_item} at bay #{closest_bay}, location #{closest_loc})"
puts "\n\n"

bays.each { |bay| print "PICKING..."}
