enum Direction : CaseIterable {
    case Top
    case Bottom
    case Left
    case Right
}

struct Room {
  var number : String
  var description : String
  var leftX : Int
  var bottomY : Int
  var width : Int
  var height : Int
  var entrancesLoc : [[Int]]
  //Shape is used when the room is not a rectangle, shape: [[x1, y1, w1, h1], [x2, y2, w2, h2]]
  var shape : [[Int]]?

  // Regular initiatializer
  init(number : String, description : String, leftX : Int, bottomY : Int, width : Int, height : Int, entrancesLoc: [[Int]]) {
    self.number = number
    self.description = description
    self.leftX = leftX
    self.bottomY = bottomY
    self.width = width
    self.height = height
    self.entrancesLoc = entrancesLoc
  }

  // Shape initializer
  init(number : String, description : String, shape : [[Int]], entrancesLoc: [[Int]]) {
    self.leftX = -1
    self.bottomY = -1
    self.width = -1
    self.height = -1

    self.number = number
    self.description = description
    self.shape = shape
    self.entrancesLoc = entrancesLoc
  }
}

var MainFloor: [String : Room] = [
"101" : Room(number: "101", description: "This is room 101 in the main floor", leftX: 44, bottomY: 16, width: 5, height: 4, entrancesLoc: [[47, 16]]),
"102" : Room(number: "102", description: "This is room 102 in the main floor", leftX: 37, bottomY: 21, width: 8, height: 13, entrancesLoc:  [[43, 21]]),
"104" : Room(number: "104", description: "This is room 104 in the main floor", leftX: 34, bottomY: 10, width: 7, height: 4, entrancesLoc: [[37, 15]]),
"105" : Room(number: "105", description: "This is room 105 in the main floor", leftX: 32, bottomY: 16, width: 5, height: 6, entrancesLoc: [[34, 16]]),
"106" : Room(number: "106", description: "This is room 106 in the main floor", leftX: 29, bottomY: 10, width: 5, height: 4, entrancesLoc: [[32, 15]]),
"107" : Room(number: "107", description: "This is room 107 in the main floor", leftX: 27, bottomY: 16, width: 5, height: 6, entrancesLoc: [[29, 16]]),
"108" : Room(number: "108", description: "This is room 108 in the main floor", leftX: 23, bottomY: 10, width: 6, height: 4, entrancesLoc: [[26, 15]]),
"109" : Room(number: "109", description: "This is room 109 in the main floor", leftX: 22, bottomY: 16, width: 5, height: 6, entrancesLoc: [[24, 16]]),
"110" : Room(number: "110", description: "This is room 110 in the main floor", leftX: 17, bottomY: 10, width: 6, height: 4, entrancesLoc: [[20, 15]]),
"111" : Room(number: "111", description: "This is room 111 in the main floor", leftX: 16, bottomY: 16, width: 6, height: 6, entrancesLoc: [[19, 16]]),
"113" : Room(number: "113", description: "This is room 113 in the main floor", leftX: 7, bottomY: 14, width: 7, height: 6, entrancesLoc: [[14, 17]]),
"114" : Room(number: "114", description: "This is room 114 in the main floor", leftX: 7, bottomY: 20, width: 7, height: 4, entrancesLoc: [[14, 22]]),
"115" : Room(number: "115", description: "This is room 115 in the main floor", leftX: 7, bottomY: 24, width: 7, height: 4, entrancesLoc: [[14, 26]]),
"116" : Room(number: "116", description: "This is room 116 in the main floor", leftX: 7, bottomY: 28, width: 7, height: 4, entrancesLoc: [[14, 30]]),
"117" : Room(number: "117", description: "This is room 117 in the main floor", leftX: 7, bottomY: 32, width: 7, height: 4, entrancesLoc: [[14, 24]]),
"118" : Room(number: "118", description: "This is room 118 in the main floor", leftX: 7, bottomY: 36, width: 7, height: 6, entrancesLoc: [[14, 39]]),
"121" : Room(number: "121", description: "This is room 121 in the main floor", leftX: 16, bottomY: 52, width: 5, height: 4, entrancesLoc: [[18, 56]]),
"122" : Room(number: "122", description: "This is room 122 in the main floor", leftX: 21, bottomY: 52, width: 6, height: 4, entrancesLoc: [[23, 56]]),
"123" : Room(number: "123", description: "This is room 123 in the main floor", leftX: 27, bottomY: 52, width: 4, height: 4, entrancesLoc: [[29, 56]]),
"124" : Room(number: "124", description: "This is room 124 in the main floor", leftX: 27, bottomY: 58, width: 3, height: 3, entrancesLoc: [[28, 58]]),
"125" : Room(number: "125", description: "This is room 125 in the main floor", leftX: 30, bottomY: 58, width: 3, height: 3, entrancesLoc: [[31, 58]]),
"126" : Room(number: "126", description: "This is room 126 in the main floor", leftX: 31, bottomY: 52, width: 3, height: 4, entrancesLoc: [[34, 54]]),
"127" : Room(number: "127", description: "This is room 127 in the main floor", leftX: 31, bottomY: 49, width: 4, height: 3, entrancesLoc: [[34, 53]]),
"128" : Room(number: "128", description: "This is room 128 in the main floor", leftX: 31, bottomY: 45, width: 4, height: 4, entrancesLoc: [[35, 47]]),
"129" : Room(number: "129", description: "This is room 129 in the main floor", leftX: 16, bottomY: 40, width: 2, height: 5, entrancesLoc: [[17, 40]]),
"130" : Room(number: "130", description: "This is room 130 in the main floor", leftX: 16, bottomY: 33, width: 5, height: 5, entrancesLoc: [[18, 39]]),
"131" : Room(number: "131", description: "This is room 131 in the main floor", leftX: 18, bottomY: 40, width: 5, height: 5, entrancesLoc: [[20, 40]]),
"132" : Room(number: "132", description: "This is room 132 in the main floor", leftX: 21, bottomY: 33, width: 5, height: 5, entrancesLoc: [[23, 39]]),
"133" : Room(number: "133", description: "This is room 133 in the main floor", leftX: 23, bottomY: 40, width: 5, height: 5, entrancesLoc: [[25, 40]]),
"134" : Room(number: "134", description: "This is room 134 in the main floor", leftX: 26, bottomY: 33, width: 5, height: 5, entrancesLoc: [[28, 39]]),
"135" : Room(number: "135", description: "This is room 135 in the main floor", leftX: 28, bottomY: 40, width: 5, height: 5, entrancesLoc: [[30, 40]]),
"136" : Room(number: "136", description: "This is room 136 in the main floor", leftX: 31, bottomY: 33, width: 4, height: 5, entrancesLoc: [[33, 39]]),
"137" : Room(number: "137", description: "This is room 137 in the main floor", leftX: 33, bottomY: 40, width: 2, height: 5, entrancesLoc: [[34, 40]]),
"138" : Room(number: "138", description: "This is room 138 in the main floor", leftX: 35, bottomY: 33, width: 10, height: 5, entrancesLoc: [[37, 39]]),
"140" : Room(number: "140", description: "This is room 140 in the main floor", leftX: 37, bottomY: 40, width: 3, height: 5, entrancesLoc: [[38, 40]]),
"141" : Room(number: "141", description: "This is room 141 in the main floor", leftX: 40, bottomY: 40, width: 4, height: 5, entrancesLoc: [[42, 40]]),
"142" : Room(number: "142", description: "This is room 142 in the main floor", leftX: 44, bottomY: 40, width: 5, height: 5, entrancesLoc: [[47, 40]]),
"143" : Room(number: "143", description: "This is room 143 in the main floor", leftX: 51, bottomY: 40, width: 5, height: 5, entrancesLoc: [[53, 40]]),
"144" : Room(number: "144", description: "This is room 144 in the main floor", leftX: 45, bottomY: 35, width: 4, height: 3, entrancesLoc: [[47, 39]]),
"145" : Room(number: "145", description: "This is room 145 in the main floor", leftX: 51, bottomY: 32, width: 4, height: 6, entrancesLoc: [[50, 35]]),
"146" : Room(number: "146", description: "This is room 146 in the main floor", leftX: 51, bottomY: 27, width: 4, height: 5, entrancesLoc: [[50, 29]]),
"147" : Room(number: "147", description: "This is room 147 in the main floor", leftX: 45, bottomY: 29, width: 4, height: 6, entrancesLoc: [[49, 32]]),
"148" : Room(number: "148", description: "This is room 148 in the main floor", leftX: 45, bottomY: 23, width: 4, height: 6, entrancesLoc: [[49, 26]]),
"149" : Room(number: "149", description: "This is room 149 in the main floor", leftX: 51, bottomY: 20, width: 4, height: 7, entrancesLoc: [[50, 23]]),
"150" : Room(number: "150", description: "This is room 150 in the main floor", leftX: 44, bottomY: 21, width: 5, height: 2, entrancesLoc: [[49, 22]]),
"151" : Room(number: "151", description: "This is room 151 in the main floor", leftX: 63, bottomY: 8, width:7, height: 6, entrancesLoc: [[66, 15]]),
"153" : Room(number: "153", description: "This is room 153 in the main floor", leftX: 70, bottomY: 8, width: 2, height: 6, entrancesLoc: [[71, 15]]),
"154" : Room(number: "154", description: "This is room 154 in the main floor also known as the health room", leftX: 72, bottomY: 8, width:8, height: 6, entrancesLoc: [[76, 15]]),
"155" : Room(number: "155", description: "This is room 155 in the main floor, also used as the counceling room", shape: [[51, 16, 29, 4], [75, 18, 5, 14]], entrancesLoc: [[80, 18]]),
"156" : Room(number: "156", description: "This is room 156 in the main floor also known as the college center", leftX: 82, bottomY: 16, width: 4, height: 10, entrancesLoc: [[81, 21]]),
"158" : Room(number: "158", description: "This is room 158 in the main floor", leftX: 82, bottomY: 26, width: 4, height: 12, entrancesLoc: [[81, 32]]),
"159" : Room(number: "159", description: "This is room 159 in the main floor", leftX: 76, bottomY: 32, width: 4, height: 6, entrancesLoc: [[80, 35]]),
"160" : Room(number: "160", description: "This is room 160 in the main floor also known as the library", shape: [[87, 0, 21, 14], [82, 8, 9, 6], [106, 10, 7, 4]], entrancesLoc: [[91, 15]]),
"165" : Room(number: "165", description: "This is room 165 in the main floor", leftX: 86, bottomY: 16, width: 6, height: 4, entrancesLoc: [[89, 16]]),
"166" : Room(number: "166", description: "This is room 166 in the main floor", leftX: 92, bottomY: 16, width: 7, height: 4, entrancesLoc: [[95, 16]]),
"167" : Room(number: "167", description: "This is room 167 in the main floor", leftX: 99, bottomY: 16, width: 7, height: 4, entrancesLoc: [[101, 16]]),
"168" : Room(number: "168", description: "This is room 168 in the main floor", leftX: 106, bottomY: 16, width: 5, height: 4, entrancesLoc: [[108, 16]]),
"169" : Room(number: "169", description: "This is room 169 in the main floor", leftX: 111, bottomY: 16, width: 2, height: 4, entrancesLoc: [[112, 16]]),
"172" : Room(number: "172", description: "This is room 172 in the main floor alsos known as the band room", leftX: 127, bottomY: 2, width:7, height: 9, entrancesLoc: [[130, 12]]),
"173" : Room(number: "173", description: "This is room 173 in the main floor", leftX: 124, bottomY: 7, width:3, height: 4, entrancesLoc: [[125, 12]]),
"174" : Room(number: "174", description: "This is room 174 in the main floor alsos known as the choral room", leftX: 117, bottomY: 2, width:7, height: 9, entrancesLoc: [[121, 12]]),
"175" : Room(number: "175", description: "This is room 175 in the main floor", leftX: 117, bottomY: 11, width: 4, height: 6, entrancesLoc: [[121, 13]]),
"190" : Room(number: "190", description: "This is room 190 in the main floor", leftX: 102, bottomY: 24, width: 11, height: 7, entrancesLoc: [[113, 27]]),
"191" : Room(number: "191", description: "This is room 191 in the main floor", leftX: 102, bottomY: 31, width: 11, height: 7, entrancesLoc: [[113, 34]]),
"192" : Room(number: "192", description: "This is room 192 in the main floor", leftX: 97, bottomY: 32, width: 5, height: 6, entrancesLoc: [[99, 39]]),
"193" : Room(number: "193", description: "This is room 193 in the main floor", leftX: 91, bottomY: 32, width: 6, height: 6, entrancesLoc: [[94, 39]]),
"194" : Room(number: "194", description: "This is room 194 in the main floor", leftX: 97, bottomY: 40, width: 5, height: 5, entrancesLoc: [[99, 40]]),
"195" : Room(number: "195", description: "This is room 195 in the main floor", leftX: 92, bottomY: 40, width: 5, height: 5, entrancesLoc: [[94, 40]]),
"196" : Room(number: "196", description: "This is room 196 in the main floor", leftX: 87, bottomY: 40, width: 5, height: 5, entrancesLoc: [[89, 40]]),
"198" : Room(number: "198", description: "This is room 198 in the main floor also known as the Dance room", shape: [[51,44,8,7], [56, 40, 3, 7]], entrancesLoc: [[58, 40]]),
"199" : Room(number: "199", description: "This is room 199 in the main floor also known as the Gymnasium", leftX: 59, bottomY: 40, width: 17, height: 16, entrancesLoc: [[76, 48]]),
"Court Yard 1" : Room(number: "Court Yard 1", description: "This is Court Yard 1 in the main floor", shape: [[86, 20, 6, 18], [90, 20, 13, 13], [101, 20, 12, 5]], entrancesLoc: [[89, 39]]),
"Court Yard 2" : Room(number: "Court Yard 2", description: "This is Court Yard 2 in the main floor", leftX: 55, bottomY: 20, width: 21, height: 18, entrancesLoc: [[65, 39]]),
"Court Yard 3" : Room(number: "Court Yard 3", description: "This is Court Yard 3 in the main floor", leftX: 16, bottomY: 22, width: 21, height: 11, entrancesLoc: [[37, 27]]),
"Court Yard 4" : Room(number: "Court Yard 4", description: "This is Court Yard 4 in the main floor", leftX: 37, bottomY: 45, width: 14, height: 9, entrancesLoc: [[36, 49]]),
"Court Yard 5" : Room(number: "Court Yard 5", description: "This is Court Yard 5 in the main floor", leftX: 16, bottomY: 45, width: 15, height: 7, entrancesLoc: [[15, 48]]),
"TV studio" : Room(number: "TV Studio", description: "This is the TV studioin the main floor", leftX: 108, bottomY: 4, width:5, height: 6, entrancesLoc: [[113, 7]]),
"Dining" : Room(number: "Dining", description: "This is the cafeteria in the main floor", leftX: 134, bottomY: 3, width:15, height: 17, entrancesLoc: [[133, 18]]),
"Auditorium" : Room(number: "Auditorium", description: "This is the auditorium in the main floor", leftX: 116, bottomY: 20, width: 33, height: 20, entrancesLoc: [[115, 29]]),
"Main Office" : Room(number: "Main Office", description: "This is the main office in the main floor", shape: [[45, 3, 10, 11], [53, 8, 10, 6]], entrancesLoc: [[50, 15]]),
"Stair 1" : Room(number: "Stair 1", description: "This is the main stairway which leads up", leftX: 41, bottomY: 10, width: 2, height: 4, entrancesLoc: [[42, 10]]),
"Stair 2" : Room(number: "Stair 2", description: "This stairway leads down and is behind the main stairwell", leftX: 37, bottomY: 16, width: 5, height: 6, entrancesLoc: [[39, 16]]),
"Stair 3" : Room(number: "Stair 3", description: "This down stairway connects all the floor and is in the science wing", leftX: 13, bottomY: 10, width: 4, height: 4, entrancesLoc: [[15, 15]]),
"Stair 4" : Room(number: "Stair 4", description: "This is a large stairway connecting all three floors", leftX: 7, bottomY: 42, width: 7, height: 6, entrancesLoc: [[14, 45]]),
"Stair 5" : Room(number: "Stair 5", description: "This is a small stairway connecting all three floors in the ESOL wing", leftX: 31, bottomY: 60, width: 5, height: 4, entrancesLoc: [[34, 60]]),
"Stair 6" : Room(number: "Stair 6", description: "This down stairway connects all three floors and is in the middle of the math Wing", leftX: 49, bottomY: 40, width: 2, height: 5, entrancesLoc: [[51, 40]]),
"Stair 7" : Room(number: "Stair 7", description: "IDK", leftX: 56, bottomY: 52, width: 3, height: 4, entrancesLoc: [[57, 56]]),
"Stair 8" : Room(number: "Stair 8", description: "This large stairway connects all three floors and leads to the art wing", leftX: 79, bottomY: 45, width: 8, height: 8, entrancesLoc: [[83, 54]]),
 "Stair 9" : Room(number: "Stair 9", description: "This stairway leads to the top floor and is next to the media center and exit", leftX: 82, bottomY: 3, width:5, height: 5, entrancesLoc: [[81, 5]]),
 "Stair 10" : Room(number: "Stair 10", description: "This stairway leads down to the art wing", leftX: 113, bottomY: 40, width:8, height: 8, entrancesLoc: [[115, 40]]),
 ]

var UpperFloor: [String : Room] = [
"200" : Room(number: "200", description: "This is room 200 in the main floor", leftX: 29, bottomY: 10, width: 12, height: 4, entrancesLoc: [[31, 15]]),
"203" : Room(number: "203", description: "This is room 204 in the main floor", leftX: 27, bottomY: 16, width: 10, height: 6, entrancesLoc: [[29, 16]]),
"204" : Room(number: "204", description: "This is room 204 in the main floor", leftX: 17, bottomY: 10, width: 12, height: 4, entrancesLoc: [[26, 15]]),
"205" : Room(number: "205", description: "This is room 205 in the main floor", leftX: 16, bottomY: 16, width: 11, height: 6, entrancesLoc: [[24, 16]]),
"207" : Room(number: "207", description: "This is room 207 in the main floor", leftX: 7, bottomY: 14, width: 7, height: 8, entrancesLoc: [[14, 15]]),
"208" : Room(number: "208", description: "This is room 208 in the main floor", leftX: 7, bottomY: 22, width: 7, height: 6, entrancesLoc: [[14, 23]]),
"209" : Room(number: "209", description: "This is room 209 in the main floor", leftX: 11, bottomY: 28, width: 3, height: 6, entrancesLoc: [[14, 29]]),
"211" : Room(number: "211", description: "This is room 211 in the main floor", leftX: 7, bottomY: 34, width: 7, height: 9, entrancesLoc: [[14, 41]]),
"213" : Room(number: "213", description: "This is room 213 in the main floor", leftX: 16, bottomY: 52, width: 8, height: 5, entrancesLoc: [[19, 58]]),
"214" : Room(number: "214", description: "This is room 214 in the main floor", leftX: 24, bottomY: 52, width: 9, height: 5, entrancesLoc: [[26, 58]]),
"215" : Room(number: "215", description: "This is room 215 in the main floor", leftX: 31, bottomY: 45, width: 4, height: 7, entrancesLoc: [[35, 51]]),
"220" : Room(number: "220", description: "This is room 220 in the main floor", leftX: 16, bottomY: 33, width: 10, height: 5, entrancesLoc: [[19, 39]]),
"221" : Room(number: "221", description: "This is room 221 in the main floor", leftX: 16, bottomY: 40, width: 10, height: 5, entrancesLoc: [[20, 40]]),
"222" : Room(number: "222", description: "This is room 222 in the main floor", leftX: 26, bottomY: 33, width: 9, height: 5, entrancesLoc: [[34, 39]]),
"223" : Room(number: "223", description: "This is room 223 in the main floor", leftX: 26, bottomY: 40, width: 9, height: 5, entrancesLoc: [[34, 40]]),
"224" : Room(number: "224", description: "This is room 224 in the main floor", leftX: 35, bottomY: 33, width: 10, height: 5, entrancesLoc: [[39, 38]]),
"225" : Room(number: "225", description: "This is room 225 in the main floor", leftX: 37, bottomY: 40, width: 6, height: 5, entrancesLoc: [[40, 40]]),
"226" : Room(number: "226", description: "This is room 226 in the main floor", leftX: 43, bottomY: 40, width: 2, height: 5, entrancesLoc: [[44, 40]]),
"227" : Room(number: "227", description: "This is room 227 in the main floor", leftX: 45, bottomY: 40, width: 4, height: 5, entrancesLoc: [[47, 40]]),
"228" : Room(number: "228", description: "This is room 228 in the main floor", leftX: 51, bottomY: 40, width: 4, height: 5, entrancesLoc: [[52, 40]]),
"229" : Room(number: "229", description: "This is room 229 in the main floor", leftX: 45, bottomY: 32, width: 4, height: 6, entrancesLoc: [[49, 33]]),
"230" : Room(number: "230", description: "This is room 230 in the main floor", leftX: 51, bottomY: 32, width: 4, height: 6, entrancesLoc: [[50, 34]]),
"231" : Room(number: "231", description: "This is room 231 in the main floor", leftX: 45, bottomY: 26, width: 4, height: 6, entrancesLoc: [[49, 31]]),
"232" : Room(number: "232", description: "This is room 232 in the main floor", leftX: 51, bottomY: 26, width: 4, height: 6, entrancesLoc: [[50, 31]]),
"233" : Room(number: "233", description: "This is room 233 in the main floor", leftX: 45, bottomY: 20, width: 4, height: 6, entrancesLoc: [[49, 21]]),
"234" : Room(number: "234", description: "This is room 234 in the main floor", leftX: 51, bottomY: 20, width: 4, height: 6, entrancesLoc: [[50, 21]]),
"235" : Room(number: "235", description: "This is room 235 in the main floor", leftX: 51, bottomY: 18, width: 5, height: 2, entrancesLoc: [[50, 19]]),
"236" : Room(number: "236", description: "This is room 236 in the main floor", leftX: 51, bottomY: 16, width: 5, height: 2, entrancesLoc: [[50, 17]]),
"237" : Room(number: "237", description: "This is room 237 in the main floor", leftX: 45, bottomY: 16, width: 4, height: 5, entrancesLoc: [[49, 17]]),
"238" : Room(number: "238", description: "This is room 238 in the main floor", leftX: 45, bottomY: 9, width: 4, height: 5, entrancesLoc: [[49, 11]]),
"239" : Room(number: "239", description: "This is room 239 in the main floor", leftX: 45, bottomY: 5, width: 4, height: 5, entrancesLoc: [[49, 7]]),
"241" : Room(number: "241", description: "This is room 241 in the main floor", leftX: 51, bottomY: 5, width: 4, height: 5, entrancesLoc: [[50, 7]]),
"242" : Room(number: "242", description: "This is room 242 in the main floor", leftX: 51, bottomY: 9, width: 4, height: 5, entrancesLoc: [[50, 11]]),
"243" : Room(number: "243", description: "This is room 243 in the main floor", leftX: 55, bottomY: 9, width: 4, height: 5, entrancesLoc: [[57, 15]]),
"244" : Room(number: "244", description: "This is room 244 in the main floor", leftX: 59, bottomY: 9, width: 4, height: 5, entrancesLoc: [[61, 15]]),
"245" : Room(number: "245", description: "This is room 245 in the main floor", leftX: 56, bottomY: 16, width: 7, height: 4, entrancesLoc: [[59, 17]]),
"246" : Room(number: "246", description: "This is room 246 in the main floor", leftX: 62, bottomY: 9, width: 9, height: 5, entrancesLoc: [[63, 15]]),
"247" : Room(number: "247", description: "This is room 247 in the main floor", leftX: 61, bottomY: 16, width: 6, height: 4, entrancesLoc: [[62, 16]]),
"248" : Room(number: "248", description: "This is room 248 in the main floor", leftX: 67, bottomY: 16, width: 6, height: 4, entrancesLoc: [[73, 16]]),
"249" : Room(number: "249", description: "This is room 249 in the main floor", leftX: 70, bottomY: 9, width: 10, height: 5, entrancesLoc: [[75, 15]]),
"250" : Room(number: "250", description: "This is room 250 in the main floor", leftX: 73, bottomY: 16, width: 7, height: 4, entrancesLoc: [[76, 16]]),
"254" : Room(number: "254", description: "This is room 254 in the main floor", leftX: 82, bottomY: 16, width: 4, height: 13, entrancesLoc: [[81, 22]]),
"255" : Room(number: "255", description: "This is room 255 in the main floor", leftX: 75, bottomY: 20, width: 5, height: 6, entrancesLoc: [[80, 24]]),
"256" : Room(number: "256", description: "This is room 256 in the main floor", leftX: 75, bottomY: 32, width: 5, height: 6, entrancesLoc: [[80, 35]]),
"257" : Room(number: "257", description: "This is room 257 in the main floor", leftX: 75, bottomY: 26, width: 5, height: 7, entrancesLoc: [[80, 31]]),
"258" : Room(number: "258", description: "This is room 258 in the main floor", leftX: 82, bottomY: 29, width: 4, height: 10, entrancesLoc: [[81, 33]]),
"259" : Room(number: "259", description: "This is room 259 in the main floor", leftX: 82, bottomY: 39, width: 4, height: 7, entrancesLoc: [[81, 40]]),
"Stair 1" : Room(number: "Stair 1", description: "This is the main stairway which leads up", leftX: 41, bottomY: 10, width: 2, height: 4, entrancesLoc: [[42, 15]]),
"Stair 2" : Room(number: "Stair 2", description: "This stairway leads down and is behind the main stairwell", leftX: 37, bottomY: 16, width: 5, height: 6, entrancesLoc: [[39, 16]]),
"Stair 3" : Room(number: "Stair 3", description: "This down stairway connects all the floor and is in the science wing", leftX: 13, bottomY: 10, width: 4, height: 4, entrancesLoc: [[15, 15]]),
"Stair 4" : Room(number: "Stair 4", description: "This is a large stairway connecting all three floors", leftX: 7, bottomY: 42, width: 7, height: 6, entrancesLoc: [[14, 45]]),
"Stair 5" : Room(number: "Stair 5", description: "This is a small stairway connecting all three floors in the ESOL wing", leftX: 31, bottomY: 60, width: 5, height: 4, entrancesLoc: [[34, 60]]),
"Stair 6" : Room(number: "Stair 6", description: "This down stairway connects all three floors and is in the middle of the math Wing", leftX: 49, bottomY: 40, width: 2, height: 5, entrancesLoc: [[50, 40]]),
"Stair 8" : Room(number: "Stair 8", description: "This large stairway connects all three floors and leads to the art wing", leftX: 79, bottomY: 45, width: 8, height: 8, entrancesLoc: [[83, 54]]),
"Stair 9" : Room(number: "Stair 9", description: "This stairway leads to the top floor and is next to the media center and exit", leftX: 82, bottomY: 3, width:5, height: 5, entrancesLoc: [[81, 5]]),
 ]

var  BasementFloor = [
"G01" : Room(number: "G01", description: "This is room G01 in the main floor", leftX: 23, bottomY: 10, width: 17, height: 4, entrancesLoc: [[25, 15]]),
"G02" : Room(number: "G02", description: "This is room G02 in the main floor", leftX: 29, bottomY: 16, width: 9, height: 6, entrancesLoc:  [[32, 16]]),
"G03" : Room(number: "G03", description: "This is room G03 in the main floor", leftX: 23, bottomY: 16, width: 6, height: 6, entrancesLoc: [[27, 16]]),
"G05" : Room(number: "G05", description: "This is room G05 in the main floor", leftX: 17, bottomY: 10, width: 6, height: 4, entrancesLoc: [[20, 15]]),
"G07" : Room(number: "G07", description: "This is room G07 in the main floor", leftX: 16, bottomY: 16, width: 7, height: 6, entrancesLoc: [[20, 16]]),
"G09" : Room(number: "G09", description: "This is room G09 in the main floor", leftX: 7, bottomY: 15, width: 7, height: 5, entrancesLoc: [[14, 17]]),
"G10" : Room(number: "G10", description: "This is room G10 in the main floor", leftX: 7, bottomY: 20, width: 7, height: 5, entrancesLoc: [[14, 22]]),
"G11" : Room(number: "G11", description: "This is room G11 in the main floor", leftX: 7, bottomY: 25, width: 7, height: 4, entrancesLoc: [[14, 27]]),
"G12" : Room(number: "G12", description: "This is room G12 in the main floor", leftX: 7, bottomY: 28, width: 7, height: 4, entrancesLoc: [[14, 30]]),
"G13" : Room(number: "G13", description: "This is room G13 in the main floor", leftX: 7, bottomY: 32, width: 7, height: 5, entrancesLoc: [[14, 34]]),
"G14" : Room(number: "G14", description: "This is room G14 in the main floor", leftX: 7, bottomY: 37, width: 7, height: 5, entrancesLoc: [[14, 39]]),
"G20" : Room(number: "G20", description: "This is room G20 in the main floor", leftX: 16, bottomY: 52, width: 7, height: 4, entrancesLoc: [[16, 57]]),
"G21" : Room(number: "G21", description: "This is room G21 in the main floor", leftX: 23, bottomY: 52, width: 6, height: 4, entrancesLoc: [[26, 57]]),
"G22" : Room(number: "G22", description: "This is room G22 in the main floor", leftX: 29, bottomY: 52, width: 6, height: 4, entrancesLoc: [[31, 57]]),
"G25" : Room(number: "G25", description: "This is room G25 in the main floor", leftX: 31, bottomY: 49, width: 4, height: 3, entrancesLoc: [[35, 51]]),
"G27" : Room(number: "G27", description: "This is room G27 in the main floor", leftX: 31, bottomY: 45, width: 4, height: 4, entrancesLoc: [[35, 47]]),
"G30" : Room(number: "G30", description: "This is room G30 in the main floor", leftX: 16, bottomY: 40, width: 3, height: 5, entrancesLoc: [[19, 40]]),
"G31" : Room(number: "G31", description: "This is room G31 in the main floor", leftX: 16, bottomY: 33, width: 5, height: 5, entrancesLoc: [[18, 39]]),
"G32" : Room(number: "G32", description: "This is room G32 in the main floor", leftX: 19, bottomY: 40, width: 5, height: 5, entrancesLoc: [[21, 40]]),
"G33" : Room(number: "G33", description: "This is room G33 in the main floor", leftX: 21, bottomY: 33, width: 6, height: 5, entrancesLoc: [[23, 39]]),
"G34" : Room(number: "G34", description: "This is room G34 in the main floor", leftX: 24, bottomY: 40, width: 5, height: 5, entrancesLoc: [[27, 40]]),
"G35" : Room(number: "G35", description: "This is room G35 in the main floor", leftX: 27, bottomY: 33, width: 5, height: 5, entrancesLoc: [[39, 39]]),
"G36" : Room(number: "G36", description: "This is room G36 in the main floor", leftX: 28, bottomY: 40, width: 5, height: 5, entrancesLoc: [[30, 40]]),
"G37" : Room(number: "G37", description: "This is room G37 in the main floor", leftX: 32, bottomY: 33, width: 5, height: 5, entrancesLoc: [[34, 39]]),
"G38" : Room(number: "G38", description: "This is room G38 in the main floor", leftX: 33, bottomY: 40, width: 2, height: 5, entrancesLoc: [[34, 40]]),
"G39" : Room(number: "G39", description: "This is room G39 in the main floor", leftX: 37, bottomY: 33, width: 5, height: 5, entrancesLoc: [[39, 39]]),
"G40" : Room(number: "G40", description: "This is room G40 in the main floor", leftX: 37, bottomY: 40, width: 4, height: 5, entrancesLoc: [[38, 40]]),
"G41" : Room(number: "G41", description: "This is room G41 in the main floor", leftX: 41, bottomY: 33, width: 3, height: 5, entrancesLoc: [[42, 39]]),
"G42" : Room(number: "G42", description: "This is room G42 in the main floor", leftX: 44, bottomY: 33, width: 3, height: 5, entrancesLoc: [[45, 39]]),
"G43" : Room(number: "G43", description: "This is room G43 in the main floor", leftX: 41, bottomY: 40, width: 4, height: 5, entrancesLoc: [[43, 40]]),
"G44" : Room(number: "G44", description: "This is room G44 in the main floor", leftX: 45, bottomY: 40, width: 4, height: 5, entrancesLoc: [[47, 40]]),
"G45" : Room(number: "G45", description: "This is room G45 in the main floor", leftX: 47, bottomY: 28, width: 9, height: 10, entrancesLoc: [[53, 39]]),
"G51" : Room(number: "G51", description: "This is room G51 in the main floor", leftX: 36, bottomY: 54, width: 15, height: 10, entrancesLoc: [[35, 57]]),
"G64" : Room(number: "G64", description: "This is room G64 in the main floor", leftX: 76, bottomY: 55, width: 7, height: 7, entrancesLoc: [[79, 55]]),
"G66" : Room(number: "G66", description: "This is room G66 in the main floor", leftX: 66, bottomY: 51, width: 11, height: 5, entrancesLoc: [[77, 53]]),
"G71" : Room(number: "G71", description: "This is room G71 in the main floor", leftX: 72, bottomY: 40, width: 5, height: 3, entrancesLoc: [[77, 42]]),
"G74" : Room(number: "G74", description: "This is room G74 in the main floor", leftX: 76, bottomY: 32, width: 6, height: 6, entrancesLoc: [[79, 39]]),
"G77" : Room(number: "G77", description: "This is room G77 in the main floor", leftX: 81, bottomY: 32, width: 5, height: 6, entrancesLoc: [[83, 39]]),
"G82" : Room(number: "G82", description: "This is room G82 in the main floor", leftX: 91, bottomY: 32, width: 10, height: 6, entrancesLoc: [[96, 39]]),
"G83" : Room(number: "G83", description: "This is room G83 in the main floor", leftX: 91, bottomY: 43, width: 6, height: 9, entrancesLoc: [[96, 43]]),
"G84" : Room(number: "G84", description: "This is room G84 in the main floor", leftX: 97, bottomY: 43, width: 6, height: 9, entrancesLoc: [[97, 43]]),
"G85" : Room(number: "G85", description: "This is room G85 in the main floor", leftX: 98, bottomY: 40, width: 5, height: 3, entrancesLoc: [[97, 41]]),
"G86" : Room(number: "G86", description: "This is room G86 in the main floor", leftX: 103, bottomY: 40, width: 6, height: 10, entrancesLoc: [[106, 40]]),
"G87" : Room(number: "G87", description: "This is room G87 in the main floor", leftX: 108, bottomY: 40, width: 6, height: 10, entrancesLoc: [[110, 40]]),
"P1" : Room(number: "P1", description: "This is room P1 in the main floor", leftX: 0, bottomY: 0, width: 5, height: 4, entrancesLoc: [[5, 2]]),
"P2" : Room(number: "P2", description: "This is room P2 in the main floor", leftX: 0, bottomY: 4, width: 5, height: 4, entrancesLoc: [[5, 6]]),
"P3" : Room(number: "P3", description: "This is room P3 in the main floor", leftX: 0, bottomY: 8, width: 5, height: 4, entrancesLoc: [[5, 10]]),
"Court Yard 1" : Room(number: "Court Yard 1", description: "This is Court Yard 1 in the main floor", shape: [[86, 20, 6, 18], [90, 20, 13, 13], [101, 20, 12, 5]], entrancesLoc: [[89, 39]]),
"Court Yard 2" : Room(number: "Court Yard 2", description: "This is Court Yard 2 in the main floor", leftX: 55, bottomY: 20, width: 21, height: 18, entrancesLoc: [[65, 39]]),
"Court Yard 3" : Room(number: "Court Yard 3", description: "This is Court Yard 3 in the main floor", leftX: 16, bottomY: 22, width: 21, height: 11, entrancesLoc: [[37, 27]]),
"Court Yard 4" : Room(number: "Court Yard 4", description: "This is Court Yard 4 in the main floor", leftX: 37, bottomY: 45, width: 14, height: 9, entrancesLoc: [[36, 49]]),
"Court Yard 5" : Room(number: "Court Yard 5", description: "This is Court Yard 5 in the main floor", leftX: 16, bottomY: 45, width: 15, height: 7, entrancesLoc: [[15, 48]]),
"Stair 2" : Room(number: "Stair 2", description: "This stairway leads down and is behind the main stairwell", leftX: 37, bottomY: 16, width: 5, height: 6, entrancesLoc: [[39, 16]]),
"Stair 3" : Room(number: "Stair 3", description: "This down stairway connects all the floor and is in the science wing", leftX: 13, bottomY: 10, width: 4, height: 4, entrancesLoc: [[15, 15]]),
"Stair 4" : Room(number: "Stair 4", description: "This is a large stairway connecting all three floors", leftX: 7, bottomY: 42, width: 7, height: 6, entrancesLoc: [[14, 45]]),
"Stair 5" : Room(number: "Stair 5", description: "This is a small stairway connecting all three floors in the ESOL wing", leftX: 31, bottomY: 60, width: 5, height: 4, entrancesLoc: [[34, 60]]),
"Stair 6" : Room(number: "Stair 6", description: "This down stairway connects all three floors and is in the middle of the math Wing", leftX: 49, bottomY: 40, width: 2, height: 5, entrancesLoc: [[50, 40]]),
"Stair 7" : Room(number: "Stair 7", description: "IDK", leftX: 56, bottomY: 52, width: 3, height: 4, entrancesLoc: [[57, 56]]),
"Stair 8" : Room(number: "Stair 8", description: "This large stairway connects all three floors and leads to the art wing", leftX: 79, bottomY: 45, width: 8, height: 8, entrancesLoc: [[83, 54]]),
"Stair 10" : Room(number: "Stair 10", description: "This stairway leads down to the art wing", leftX: 113, bottomY: 40, width:8, height: 8, entrancesLoc: [[115, 40]]),
 ]

