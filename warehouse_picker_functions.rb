WAREHOUSE = {
  'bath fizzers' => 'b7',
  'blouse' => 'a3',
  'bookmark' => 'a7',
  'candy wrapper' => 'c8',
  'chalk' => 'c3',
  'cookie jar' => 'b10',
  'deodorant' => 'b9',
  'drill press' => 'c2',
  'face wash' => 'c6',
  'glow stick' => 'a9',
  'hanger' => 'a4',
  'leg warmers' => 'c10',
  'model car' => 'a8',
  'nail filer' => 'b5',
  'needle' => 'a1',
  'paint brush' => 'c7',
  'photo album' => 'b4',
  'picture frame' => 'b3',
  'rubber band' => 'a10',
  'rubber duck' => 'a5',
  'rusty nail' => 'c1',
  'sharpie' => 'b2',
  'shoe lace' => 'c9',
  'shovel' => 'a6',
  'stop sign' => 'a2',
  'thermometer' => 'c5',
  'tyre swing' => 'b1',
  'tissue box' => 'b8',
  'tooth paste' => 'b6',
  'word search' => 'c4',
}

BAY_ORDER = [
  'a10',
  'a9',
  'a8',
  'a7',
  'a6',
  'a5',
  'a4',
  'a3',
  'a2',
  'a1',
  'c1',
  'c2',
  'c3',
  'c4',
  'c5',
  'c6',
  'c7',
  'c8',
  'c9',
  'c10',
  'b1',
  'b2',
  'b3',
  'b4',
  'b5',
  'b6',
  'b7',
  'b8',
  'b9',
  'b10'
]

#### Given a bay, returns the item in that bay
def item_at_bay(bay)
  return WAREHOUSE.key(bay)
end

def bay_for_item(item)
  return WAREHOUSE[item]
end

def items_at_bays(bay_arr)
  return bay_arr.map { |bay| item_at_bay(bay) }
end

def bays_for_items(item_arr)
  return item_arr.map { |item| bay_for_item(item) }
end

def furthest_distance(bays_arr)
  index_arr = bays_arr.map { |bay| BAY_ORDER.index(bay)}
  max = index_arr.max
  min = index_arr.min
  return max - min
end

def sort_bays(bays_arr)
  return bays_arr.sort_by { |bay| BAY_ORDER.index(bay) }
end
