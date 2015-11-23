# >     c1 c2 c3 c4 c5 c6 c7 c8 c9 c10
# >
# > a1    __________________________   b1
# > a2   |                         |   b2
# > a3   |                         |   b3
# > a4   | Loading bay...          |   b4
# > a5   |                         |   b5
# > a6   |                         |   b6
# > a7   | Can't walk here.        |   b7
# > a8   |                         |   b8
# > a9   |                         |   b9
# > a10  |                         |   b10
# >     d1 d2 d3 d4 d5 d6 d7 d8 d9 d10
# >
# > >> entrance                     >> exit


FROM_ENTRANCE = [
  [:entrance, :a10, :a9, :a8, :a7, :a6, :a5, :a4, :a3, :a2, :a1],
  [:d1,        nil, nil, nil, nil, nil, nil, nil, nil, nil, :c1],
  [:d2,        nil, nil, nil, nil, nil, nil, nil, nil, nil, :c2],
  [:d3,        nil, nil, nil, nil, nil, nil, nil, nil, nil, :c3],
  [:d4,        nil, nil, nil, nil, nil, nil, nil, nil, nil, :c4],
  [:d5,        nil, nil, nil, nil, nil, nil, nil, nil, nil, :c5],
  [:d6,        nil, nil, nil, nil, nil, nil, nil, nil, nil, :c6],
  [:d7,        nil, nil, nil, nil, nil, nil, nil, nil, nil, :c7],
  [:d8,        nil, nil, nil, nil, nil, nil, nil, nil, nil, :c8],
  [:d9,        nil, nil, nil, nil, nil, nil, nil, nil, nil, :c9],
  [:d10,       nil, nil, nil, nil, nil, nil, nil, nil, nil, :c10],
  [:exit,     :b10, :b9, :b8, :b7, :b6, :b5, :b4, :b3, :b2, :b1]
]
# # FROM_EXIT = FROM_ENTRANCE.reverse

# FROM_EXIT = [
#   ["b10", "b9", "b8", "b7", "b6", "b5", "b4", "b3", "b2", "b1"], 
#   ["d10", nil, nil, nil, nil, nil, nil, nil, nil,        "c10"], 
#   ["d9", nil, nil, nil, nil, nil, nil, nil, nil,          "c9"], 
#   ["d8", nil, nil, nil, nil, nil, nil, nil, nil,          "c8"], 
#   ["d7", nil, nil, nil, nil, nil, nil, nil, nil,          "c7"], 
#   ["d6", nil, nil, nil, nil, nil, nil, nil, nil,          "c6"], 
#   ["d5", nil, nil, nil, nil, nil, nil, nil, nil,          "c5"], 
#   ["d4", nil, nil, nil, nil, nil, nil, nil, nil,          "c4"], 
#   ["d3", nil, nil, nil, nil, nil, nil, nil, nil,          "c3"], 
#   ["d2", nil, nil, nil, nil, nil, nil, nil, nil,          "c2"], 
#   ["d1", nil, nil, nil, nil, nil, nil, nil, nil,          "c1"], 
#   ["a10", "a9", "a8", "a7", "a6", "a5", "a4", "a3", "a2", "a1"]
# ]


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
  'apple' => 'd1',
  'banana' => 'd2',
  'cherry' => 'd3',
  'fig' => 'd4',
  'guava' => 'd5',
  'mango' => 'd6',
  'peach' => 'd7',
  'raspberry' => 'd8',
  'strawberry' => 'd9',
  'watermelon' => 'd10',
}

BAY_ORDER = [
  :a10,
  :a9,
  :a8,
  :a7,
  :a6,
  :a5,
  :a4,
  :a3,
  :a2,
  :a1,
  :c1,
  :c2,
  :c3,
  :c4,
  :c5,
  :c6,
  :c7,
  :c8,
  :c9,
  :c10,
  :b1,
  :b2,
  :b3,
  :b4,
  :b5,
  :b6,
  :b7,
  :b8,
  :b9,
  :b10,
  :d10,
  :d9,
  :d8,
  :d7,
  :d6,
  :d5,
  :d4,
  :d3,
  :d2,
  :d1,
]


# FROM_EXIT = [
#   :b10,
#   :b9,
#   :b8,
#   :b7,
#   :b6,
#   :b5,
#   :b4,
#   :b3,
#   :b2,
#   :b1,
#   :c10,
#   :c9,
#   :c8,
#   :c7,
#   :c6,
#   :c5,
#   :c4,
#   :c3,
#   :c2,
#   :c1,
#   :a1,
#   :a2,
#   :a3,
#   :a4,
#   :a5,
#   :a6,
#   :a7,
#   :a8,
#   :a9,
#   :a10,
#   :d1,
#   :d2,
#   :d3,
#   :d4,
#   :d5,
#   :d6,
#   :d7,
#   :d8,
#   :d9,
#   :d1,
# ]


# ########## DISTANCE FROM HALVED ##########

# FROM_ENTRANCE_CW = [
#   :a10,
#   :a9,
#   :a8,
#   :a7,
#   :a6,
#   :a5,
#   :a4,
#   :a3,
#   :a2,
#   :a1,
#   :c1,
#   :c2,
#   :c3,
#   :c4,
#   :c5,
#   :c6,
#   :c7,
#   :c8,
#   :c9,
#   :c10
# ]

# FROM_ENTRANCE_CCW = [
#   :d1,
#   :d2,
#   :d3,
#   :d4,
#   :d5,
#   :d6,
#   :d7,
#   :d8,
#   :d9,
#   :d1,
#   :b10,
#   :b9,
#   :b8,
#   :b7,
#   :b6,
#   :b5,
#   :b4,
#   :b3,
#   :b2,
#   :b1
# ]

# FROM_EXIT_CW = [
#   :d10,
#   :d9,
#   :d8,
#   :d7,
#   :d6,
#   :d5,
#   :d4,
#   :d3,
#   :d2,
#   :d1,
#   :a10,
#   :a9,
#   :a8,
#   :a7,
#   :a6,
#   :a5,
#   :a4,
#   :a3,
#   :a2,
#   :a1
# ]

# FROM_EXIT_CCW = [
#   :b10,
#   :b9,
#   :b8,
#   :b7,
#   :b6,
#   :b5,
#   :b4,
#   :b3,
#   :b2,
#   :b1,
#   :c10,
#   :c9,
#   :c8,
#   :c7,
#   :c6,
#   :c5,
#   :c4,
#   :c3,
#   :c2,
#   :c1
# ]


# def distance_from_entrance_cw(bay)
#   return FROM_ENTRANCE_CW.index(bay)
# end

# def distance_from_entrance_ccw(bay)
#   return FROM_ENTRANCE_CCW.index(bay)
# end

# def distance_from_exit_cw(bay)
#   return FROM_EXIT_CW.index(bay)
# end

# def distance_from_exit_ccw(bay)
#   return FROM_EXIT_CCW.index(bay)
# end

# def distance_from_entrance(bay)
#   cw = distance_from_entrance_cw(bay)
#   ccw = distance_from_entrance_ccw(bay)
#   cw ? [cw, :entrance_cw] : [ccw, :entrance_ccw]
# end

# def distance_from_exit(bay)
#   cw = distance_from_exit_cw(bay)
#   ccw = distance_from_exit_ccw(bay)
#   cw ? [cw, :exit_cw] : [ccw, :exit_ccw]
# end






