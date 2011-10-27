
# line 1 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
require 'gherkin/lexer/i18n_lexer'

module Gherkin
  module RbLexer
    class Zh_cn #:nodoc:
      
# line 123 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 16 "lib/gherkin/rb_lexer/zh_cn.rb"
class << self
	attr_accessor :_lexer_actions
	private :_lexer_actions, :_lexer_actions=
end
self._lexer_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8, 1, 9, 1, 10, 1, 
	11, 1, 12, 1, 13, 1, 16, 1, 
	17, 1, 18, 1, 19, 1, 20, 1, 
	21, 1, 22, 1, 23, 2, 2, 18, 
	2, 3, 4, 2, 13, 0, 2, 14, 
	15, 2, 17, 0, 2, 17, 1, 2, 
	17, 16, 2, 17, 19, 2, 18, 6, 
	2, 18, 7, 2, 18, 8, 2, 18, 
	9, 2, 18, 10, 2, 18, 16, 2, 
	20, 21, 2, 22, 0, 2, 22, 1, 
	2, 22, 16, 2, 22, 19, 3, 4, 
	14, 15, 3, 5, 14, 15, 3, 11, 
	14, 15, 3, 12, 14, 15, 3, 13, 
	14, 15, 3, 14, 15, 18, 3, 17, 
	14, 15, 4, 2, 14, 15, 18, 4, 
	3, 4, 14, 15, 4, 17, 0, 14, 
	15
]

class << self
	attr_accessor :_lexer_key_offsets
	private :_lexer_key_offsets, :_lexer_key_offsets=
end
self._lexer_key_offsets = [
	0, 0, 15, 17, 18, 19, 20, 21, 
	22, 24, 38, 42, 43, 44, 45, 46, 
	47, 48, 49, 50, 51, 52, 53, 63, 
	65, 67, 69, 71, 73, 75, 89, 91, 
	92, 93, 94, 95, 96, 97, 98, 99, 
	100, 101, 102, 114, 116, 118, 120, 122, 
	124, 129, 131, 133, 135, 137, 139, 141, 
	143, 145, 147, 149, 151, 153, 155, 158, 
	160, 162, 164, 166, 168, 170, 172, 174, 
	176, 178, 180, 182, 184, 186, 188, 190, 
	192, 194, 196, 198, 200, 202, 204, 206, 
	208, 210, 212, 214, 216, 218, 220, 221, 
	222, 223, 224, 225, 226, 227, 229, 231, 
	236, 241, 246, 251, 255, 259, 261, 262, 
	263, 264, 265, 266, 267, 268, 269, 270, 
	271, 272, 273, 274, 275, 276, 277, 282, 
	289, 294, 298, 304, 307, 309, 315, 329, 
	332, 334, 336, 338, 340, 342, 344, 346, 
	348, 351, 353, 355, 357, 359, 361, 363, 
	365, 367, 369, 371, 373, 375, 377, 379, 
	381, 383, 385, 387, 389, 391, 393, 395, 
	397, 399, 400, 401, 402, 403, 405, 406, 
	407, 408, 409, 410, 411, 412, 413, 425, 
	427, 429, 431, 433, 435, 440, 442, 444, 
	446, 448, 450, 452, 454, 456, 458, 460, 
	462, 464, 466, 468, 470, 472, 474, 476, 
	478, 480, 482, 484, 486, 488, 490, 492, 
	494, 496, 498, 500, 502, 504, 506, 508, 
	510, 512, 514, 516, 518, 519, 520, 532, 
	534, 536, 538, 540, 542, 547, 549, 551, 
	553, 555, 557, 559, 561, 563, 565, 567, 
	569, 571, 573, 576, 578, 580, 582, 584, 
	586, 588, 591, 593, 595, 597, 599, 601, 
	603, 605, 607, 609, 611, 613, 615, 617, 
	619, 621, 623, 625, 627, 629, 631, 633, 
	635, 637, 639, 641, 643, 645, 647, 648, 
	649, 650, 651, 652, 653, 654, 655, 662, 
	664, 666, 668, 670, 672, 674, 675, 676
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-28, -27, -24, -23, -17, 10, 32, 34, 
	35, 37, 42, 64, 124, 9, 13, -67, 
	-66, -122, -26, -104, -81, 10, 10, 13, 
	-28, -27, -24, -23, 10, 32, 34, 35, 
	37, 42, 64, 124, 9, 13, -127, -118, 
	-100, -67, -121, -27, -90, -126, -97, -24, 
	-125, -67, 58, 10, 10, -28, -27, -24, 
	10, 32, 35, 37, 64, 9, 13, -66, 
	10, -117, 10, -27, 10, -83, 10, -112, 
	10, 10, 58, -28, -27, -24, -23, 10, 
	32, 34, 35, 37, 42, 64, 124, 9, 
	13, -128, -125, -116, -28, -72, -108, -116, 
	-26, -103, -81, 58, 10, 10, -28, -27, 
	-24, -23, 10, 32, 35, 37, 42, 64, 
	9, 13, -67, 10, -122, 10, -26, 10, 
	-104, 10, -81, 10, -127, -118, -100, -67, 
	10, -121, 10, -27, 10, -90, 10, -126, 
	10, -97, 10, -24, 10, -125, 10, -67, 
	10, 10, 58, -70, 10, -26, 10, -103, 
	10, -81, 10, -27, 10, 58, -92, 10, 
	-89, 10, -25, 10, -70, 10, -78, 10, 
	-109, 10, -128, 10, -116, 10, -28, 10, 
	-72, 10, -108, 10, -126, 10, -93, 10, 
	-28, 10, -71, 10, -120, 10, 10, 95, 
	10, 70, 10, 69, 10, 65, 10, 84, 
	10, 85, 10, 82, 10, 69, 10, 95, 
	10, 69, 10, 78, 10, 68, 10, 95, 
	10, 37, 10, 32, -126, -93, -28, -71, 
	-120, 34, 34, 10, 13, 10, 13, 10, 
	32, 34, 9, 13, 10, 32, 34, 9, 
	13, 10, 32, 34, 9, 13, 10, 32, 
	34, 9, 13, 10, 32, 9, 13, 10, 
	32, 9, 13, 10, 13, 10, 95, 70, 
	69, 65, 84, 85, 82, 69, 95, 69, 
	78, 68, 95, 37, 32, 13, 32, 64, 
	9, 10, 9, 10, 13, 32, 64, 11, 
	12, 10, 32, 64, 9, 13, 32, 124, 
	9, 13, 10, 32, 92, 124, 9, 13, 
	10, 92, 124, 10, 92, 10, 32, 92, 
	124, 9, 13, -28, -27, -24, -23, 10, 
	32, 34, 35, 37, 42, 64, 124, 9, 
	13, -118, -100, 10, -97, 10, -24, 10, 
	-125, 10, -67, 10, -70, 10, -26, 10, 
	-103, 10, -81, 10, -27, 10, 58, -92, 
	10, -89, 10, -25, 10, -70, 10, -78, 
	10, -125, 10, -116, 10, -26, 10, -103, 
	10, -81, 10, 10, 95, 10, 70, 10, 
	69, 10, 65, 10, 84, 10, 85, 10, 
	82, 10, 69, 10, 95, 10, 69, 10, 
	78, 10, 68, 10, 95, 10, 37, -70, 
	-26, -103, -81, -27, 58, -92, -89, -25, 
	-70, -78, 58, 10, 10, -28, -27, -24, 
	-23, 10, 32, 35, 37, 42, 64, 9, 
	13, -67, 10, -122, 10, -26, 10, -104, 
	10, -81, 10, -127, -118, -100, -67, 10, 
	-121, 10, -27, 10, -90, 10, -126, 10, 
	-97, 10, -24, 10, -125, 10, -67, 10, 
	10, 58, -70, 10, -26, 10, -103, 10, 
	-81, 10, -109, 10, -128, 10, -116, 10, 
	-28, 10, -72, 10, -108, 10, -126, 10, 
	-93, 10, -28, 10, -71, 10, -120, 10, 
	10, 95, 10, 70, 10, 69, 10, 65, 
	10, 84, 10, 85, 10, 82, 10, 69, 
	10, 95, 10, 69, 10, 78, 10, 68, 
	10, 95, 10, 37, 10, 32, 10, 10, 
	-28, -27, -24, -23, 10, 32, 35, 37, 
	42, 64, 9, 13, -67, 10, -122, 10, 
	-26, 10, -104, 10, -81, 10, -127, -118, 
	-100, -67, 10, -121, 10, -27, 10, -90, 
	10, -126, 10, -97, 10, -24, 10, -125, 
	10, -67, 10, 10, 58, -70, 10, -26, 
	10, -103, 10, -81, 10, -27, 10, 58, 
	-92, 10, -89, 10, -25, 10, -70, 10, 
	-78, 10, -109, 10, -128, -125, 10, -116, 
	10, -28, 10, -72, 10, -108, 10, -116, 
	10, -26, 10, -103, 10, -81, 10, -126, 
	10, -93, 10, -28, 10, -71, 10, -120, 
	10, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 32, -109, 
	-117, -27, -83, -112, 58, 10, 10, -27, 
	10, 32, 35, 124, 9, 13, -118, 10, 
	-97, 10, -24, 10, -125, 10, -67, 10, 
	10, 58, -69, -65, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 13, 2, 1, 1, 1, 1, 1, 
	2, 12, 4, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 8, 2, 
	2, 2, 2, 2, 2, 12, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 10, 2, 2, 2, 2, 2, 
	5, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 1, 1, 
	1, 1, 1, 1, 1, 2, 2, 3, 
	3, 3, 3, 2, 2, 2, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 3, 5, 
	3, 2, 4, 3, 2, 4, 12, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 1, 1, 1, 1, 2, 1, 1, 
	1, 1, 1, 1, 1, 1, 10, 2, 
	2, 2, 2, 2, 5, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 1, 1, 10, 2, 
	2, 2, 2, 2, 5, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 3, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 1, 1, 
	1, 1, 1, 1, 1, 1, 5, 2, 
	2, 2, 2, 2, 2, 1, 1, 0
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	1, 1, 1, 1, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 1, 
	1, 1, 1, 0, 0, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 15, 18, 20, 22, 24, 26, 
	28, 31, 45, 50, 52, 54, 56, 58, 
	60, 62, 64, 66, 68, 70, 72, 82, 
	85, 88, 91, 94, 97, 100, 114, 117, 
	119, 121, 123, 125, 127, 129, 131, 133, 
	135, 137, 139, 151, 154, 157, 160, 163, 
	166, 172, 175, 178, 181, 184, 187, 190, 
	193, 196, 199, 202, 205, 208, 211, 215, 
	218, 221, 224, 227, 230, 233, 236, 239, 
	242, 245, 248, 251, 254, 257, 260, 263, 
	266, 269, 272, 275, 278, 281, 284, 287, 
	290, 293, 296, 299, 302, 305, 308, 310, 
	312, 314, 316, 318, 320, 322, 325, 328, 
	333, 338, 343, 348, 352, 356, 359, 361, 
	363, 365, 367, 369, 371, 373, 375, 377, 
	379, 381, 383, 385, 387, 389, 391, 396, 
	403, 408, 412, 418, 422, 425, 431, 445, 
	449, 452, 455, 458, 461, 464, 467, 470, 
	473, 477, 480, 483, 486, 489, 492, 495, 
	498, 501, 504, 507, 510, 513, 516, 519, 
	522, 525, 528, 531, 534, 537, 540, 543, 
	546, 549, 551, 553, 555, 557, 560, 562, 
	564, 566, 568, 570, 572, 574, 576, 588, 
	591, 594, 597, 600, 603, 609, 612, 615, 
	618, 621, 624, 627, 630, 633, 636, 639, 
	642, 645, 648, 651, 654, 657, 660, 663, 
	666, 669, 672, 675, 678, 681, 684, 687, 
	690, 693, 696, 699, 702, 705, 708, 711, 
	714, 717, 720, 723, 726, 728, 730, 742, 
	745, 748, 751, 754, 757, 763, 766, 769, 
	772, 775, 778, 781, 784, 787, 790, 793, 
	796, 799, 802, 806, 809, 812, 815, 818, 
	821, 824, 828, 831, 834, 837, 840, 843, 
	846, 849, 852, 855, 858, 861, 864, 867, 
	870, 873, 876, 879, 882, 885, 888, 891, 
	894, 897, 900, 903, 906, 909, 912, 914, 
	916, 918, 920, 922, 924, 926, 928, 935, 
	938, 941, 944, 947, 950, 953, 955, 957
]

class << self
	attr_accessor :_lexer_indicies
	private :_lexer_indicies, :_lexer_indicies=
end
self._lexer_indicies = [
	1, 2, 3, 4, 5, 7, 6, 8, 
	9, 10, 11, 12, 13, 6, 0, 14, 
	15, 0, 16, 0, 17, 0, 18, 0, 
	19, 0, 0, 20, 22, 23, 21, 1, 
	2, 3, 4, 7, 6, 8, 9, 10, 
	11, 12, 13, 6, 0, 24, 25, 26, 
	27, 0, 28, 0, 29, 0, 30, 0, 
	19, 0, 31, 0, 32, 0, 33, 0, 
	34, 0, 35, 0, 37, 36, 39, 38, 
	40, 41, 42, 39, 43, 44, 45, 44, 
	43, 38, 46, 39, 38, 47, 39, 38, 
	48, 39, 38, 49, 39, 38, 50, 39, 
	38, 39, 51, 38, 52, 53, 54, 55, 
	57, 56, 58, 59, 60, 61, 62, 63, 
	56, 0, 64, 65, 0, 66, 0, 67, 
	0, 68, 0, 19, 0, 69, 0, 70, 
	0, 71, 0, 72, 0, 73, 0, 75, 
	74, 77, 76, 78, 79, 80, 81, 77, 
	82, 83, 84, 85, 83, 82, 76, 86, 
	77, 76, 87, 77, 76, 88, 77, 76, 
	89, 77, 76, 90, 77, 76, 91, 92, 
	93, 94, 77, 76, 95, 77, 76, 96, 
	77, 76, 97, 77, 76, 90, 77, 76, 
	98, 77, 76, 99, 77, 76, 100, 77, 
	76, 101, 77, 76, 77, 90, 76, 102, 
	77, 76, 103, 77, 76, 104, 77, 76, 
	105, 77, 76, 106, 77, 90, 76, 107, 
	77, 76, 108, 77, 76, 109, 77, 76, 
	110, 77, 76, 101, 77, 76, 90, 77, 
	76, 111, 77, 76, 112, 77, 76, 113, 
	77, 76, 114, 77, 76, 90, 77, 76, 
	115, 77, 76, 116, 77, 76, 117, 77, 
	76, 118, 77, 76, 90, 77, 76, 77, 
	119, 76, 77, 120, 76, 77, 121, 76, 
	77, 122, 76, 77, 123, 76, 77, 124, 
	76, 77, 125, 76, 77, 126, 76, 77, 
	127, 76, 77, 128, 76, 77, 129, 76, 
	77, 130, 76, 77, 131, 76, 77, 132, 
	76, 77, 90, 76, 133, 0, 134, 0, 
	135, 0, 136, 0, 19, 0, 137, 0, 
	138, 0, 140, 141, 139, 143, 144, 142, 
	147, 146, 148, 146, 145, 151, 150, 152, 
	150, 149, 151, 150, 153, 150, 149, 151, 
	150, 154, 150, 149, 156, 155, 155, 0, 
	7, 157, 157, 0, 159, 160, 158, 7, 
	0, 161, 0, 162, 0, 163, 0, 164, 
	0, 165, 0, 166, 0, 167, 0, 168, 
	0, 169, 0, 170, 0, 171, 0, 172, 
	0, 173, 0, 174, 0, 19, 0, 0, 
	0, 0, 0, 175, 176, 177, 176, 176, 
	179, 178, 175, 7, 180, 12, 180, 0, 
	181, 182, 181, 0, 185, 184, 186, 187, 
	184, 183, 0, 189, 190, 188, 0, 189, 
	188, 185, 191, 189, 190, 191, 188, 192, 
	193, 194, 195, 185, 196, 197, 198, 199, 
	200, 201, 202, 196, 0, 203, 204, 39, 
	38, 205, 39, 38, 206, 39, 38, 207, 
	39, 38, 50, 39, 38, 208, 39, 38, 
	209, 39, 38, 210, 39, 38, 211, 39, 
	38, 212, 39, 51, 38, 213, 39, 38, 
	214, 39, 38, 215, 39, 38, 216, 39, 
	38, 50, 39, 38, 217, 39, 38, 218, 
	39, 38, 219, 39, 38, 220, 39, 38, 
	50, 39, 38, 39, 221, 38, 39, 222, 
	38, 39, 223, 38, 39, 224, 38, 39, 
	225, 38, 39, 226, 38, 39, 227, 38, 
	39, 228, 38, 39, 229, 38, 39, 230, 
	38, 39, 231, 38, 39, 232, 38, 39, 
	233, 38, 39, 234, 38, 235, 0, 236, 
	0, 237, 0, 238, 0, 239, 240, 0, 
	241, 0, 242, 0, 243, 0, 244, 0, 
	245, 0, 246, 0, 248, 247, 250, 249, 
	251, 252, 253, 254, 250, 255, 256, 257, 
	258, 256, 255, 249, 259, 250, 249, 260, 
	250, 249, 261, 250, 249, 262, 250, 249, 
	263, 250, 249, 264, 265, 266, 267, 250, 
	249, 268, 250, 249, 269, 250, 249, 270, 
	250, 249, 263, 250, 249, 271, 250, 249, 
	272, 250, 249, 273, 250, 249, 274, 250, 
	249, 250, 263, 249, 275, 250, 249, 276, 
	250, 249, 277, 250, 249, 274, 250, 249, 
	263, 250, 249, 278, 250, 249, 279, 250, 
	249, 280, 250, 249, 281, 250, 249, 263, 
	250, 249, 282, 250, 249, 283, 250, 249, 
	284, 250, 249, 285, 250, 249, 263, 250, 
	249, 250, 286, 249, 250, 287, 249, 250, 
	288, 249, 250, 289, 249, 250, 290, 249, 
	250, 291, 249, 250, 292, 249, 250, 293, 
	249, 250, 294, 249, 250, 295, 249, 250, 
	296, 249, 250, 297, 249, 250, 298, 249, 
	250, 299, 249, 250, 263, 249, 301, 300, 
	303, 302, 304, 305, 306, 307, 303, 308, 
	309, 310, 311, 309, 308, 302, 312, 303, 
	302, 313, 303, 302, 314, 303, 302, 315, 
	303, 302, 316, 303, 302, 317, 318, 319, 
	320, 303, 302, 321, 303, 302, 322, 303, 
	302, 323, 303, 302, 316, 303, 302, 324, 
	303, 302, 325, 303, 302, 326, 303, 302, 
	327, 303, 302, 303, 316, 302, 328, 303, 
	302, 329, 303, 302, 330, 303, 302, 331, 
	303, 302, 332, 303, 316, 302, 333, 303, 
	302, 334, 303, 302, 335, 303, 302, 336, 
	303, 302, 327, 303, 302, 316, 303, 302, 
	337, 338, 303, 302, 339, 303, 302, 340, 
	303, 302, 341, 303, 302, 316, 303, 302, 
	342, 303, 302, 343, 303, 302, 344, 303, 
	302, 327, 303, 302, 345, 303, 302, 346, 
	303, 302, 347, 303, 302, 348, 303, 302, 
	316, 303, 302, 303, 349, 302, 303, 350, 
	302, 303, 351, 302, 303, 352, 302, 303, 
	353, 302, 303, 354, 302, 303, 355, 302, 
	303, 356, 302, 303, 357, 302, 303, 358, 
	302, 303, 359, 302, 303, 360, 302, 303, 
	361, 302, 303, 362, 302, 303, 316, 302, 
	19, 0, 363, 0, 364, 0, 365, 0, 
	366, 0, 367, 0, 369, 368, 371, 370, 
	372, 371, 373, 374, 374, 373, 370, 375, 
	371, 370, 376, 371, 370, 377, 371, 370, 
	378, 371, 370, 379, 371, 370, 371, 380, 
	370, 381, 0, 6, 0, 382, 0
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	0, 2, 10, 30, 94, 301, 9, 9, 
	99, 109, 111, 125, 126, 129, 3, 287, 
	4, 5, 6, 7, 8, 8, 9, 110, 
	11, 15, 169, 286, 12, 13, 14, 16, 
	17, 18, 19, 20, 21, 22, 21, 22, 
	23, 135, 150, 22, 9, 155, 24, 25, 
	26, 27, 28, 29, 2, 10, 30, 94, 
	9, 9, 99, 109, 111, 125, 126, 129, 
	31, 35, 32, 33, 34, 36, 37, 38, 
	39, 40, 41, 42, 41, 42, 43, 48, 
	69, 74, 42, 9, 79, 93, 44, 45, 
	46, 47, 29, 49, 53, 58, 68, 50, 
	51, 52, 54, 55, 56, 57, 59, 60, 
	61, 62, 63, 64, 65, 66, 67, 70, 
	71, 72, 73, 75, 76, 77, 78, 80, 
	81, 82, 83, 84, 85, 86, 87, 88, 
	89, 90, 91, 92, 9, 95, 96, 97, 
	98, 100, 101, 102, 103, 102, 102, 103, 
	102, 104, 104, 104, 105, 104, 104, 104, 
	105, 106, 107, 108, 9, 108, 109, 9, 
	110, 112, 113, 114, 115, 116, 117, 118, 
	119, 120, 121, 122, 123, 124, 303, 127, 
	128, 9, 127, 126, 128, 129, 130, 131, 
	133, 134, 132, 130, 131, 132, 130, 133, 
	2, 10, 30, 94, 134, 99, 109, 111, 
	125, 126, 129, 136, 140, 137, 138, 139, 
	141, 142, 143, 144, 145, 146, 147, 148, 
	149, 151, 152, 153, 154, 156, 157, 158, 
	159, 160, 161, 162, 163, 164, 165, 166, 
	167, 168, 9, 170, 171, 172, 173, 174, 
	228, 175, 176, 177, 178, 179, 180, 181, 
	182, 181, 182, 183, 188, 203, 208, 182, 
	9, 213, 227, 184, 185, 186, 187, 29, 
	189, 193, 198, 202, 190, 191, 192, 194, 
	195, 196, 197, 199, 200, 201, 204, 205, 
	206, 207, 209, 210, 211, 212, 214, 215, 
	216, 217, 218, 219, 220, 221, 222, 223, 
	224, 225, 226, 9, 229, 230, 229, 230, 
	231, 236, 257, 266, 230, 9, 271, 285, 
	232, 233, 234, 235, 29, 237, 241, 246, 
	256, 238, 239, 240, 242, 243, 244, 245, 
	247, 248, 249, 250, 251, 252, 253, 254, 
	255, 258, 262, 259, 260, 261, 263, 264, 
	265, 267, 268, 269, 270, 272, 273, 274, 
	275, 276, 277, 278, 279, 280, 281, 282, 
	283, 284, 9, 288, 289, 290, 291, 292, 
	293, 294, 293, 294, 295, 294, 9, 296, 
	297, 298, 299, 300, 29, 302, 0
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	43, 29, 29, 29, 29, 0, 0, 54, 
	3, 1, 0, 29, 1, 35, 0, 0, 
	0, 0, 0, 0, 57, 0, 110, 23, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 57, 140, 0, 54, 
	84, 84, 84, 0, 69, 33, 0, 0, 
	0, 0, 0, 13, 63, 63, 63, 63, 
	31, 126, 60, 57, 31, 63, 57, 66, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 57, 140, 0, 54, 84, 84, 
	84, 84, 0, 72, 33, 84, 0, 0, 
	0, 0, 15, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 15, 0, 0, 0, 
	0, 0, 0, 7, 135, 48, 0, 102, 
	9, 5, 45, 130, 45, 0, 33, 122, 
	33, 33, 0, 11, 106, 0, 0, 114, 
	25, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	27, 118, 27, 51, 0, 0, 0, 37, 
	37, 54, 37, 87, 0, 0, 39, 0, 
	96, 96, 96, 96, 0, 93, 90, 41, 
	96, 90, 99, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 13, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 57, 
	140, 0, 54, 84, 84, 84, 84, 0, 
	78, 33, 84, 0, 0, 0, 0, 19, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 19, 57, 140, 0, 54, 
	84, 84, 84, 84, 0, 75, 33, 84, 
	0, 0, 0, 0, 17, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 17, 0, 0, 0, 0, 0, 
	57, 140, 0, 54, 84, 0, 81, 0, 
	0, 0, 0, 0, 21, 0, 0
]

class << self
	attr_accessor :_lexer_eof_actions
	private :_lexer_eof_actions, :_lexer_eof_actions=
end
self._lexer_eof_actions = [
	0, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 303;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 128 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 627 "lib/gherkin/rb_lexer/zh_cn.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 138 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
        
# line 636 "lib/gherkin/rb_lexer/zh_cn.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _lexer_key_offsets[cs]
	_trans = _lexer_index_offsets[cs]
	_klen = _lexer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p] < _lexer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p] > _lexer_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _lexer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p] < _lexer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p] > _lexer_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _lexer_indicies[_trans]
	cs = _lexer_trans_targs[_trans]
	if _lexer_trans_actions[_trans] != 0
		_acts = _lexer_trans_actions[_trans]
		_nacts = _lexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _lexer_actions[_acts - 1]
when 0 then
# line 9 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
          @start_col = p - @last_newline - "#{@keyword}:".length
        		end
when 1 then
# line 15 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
when 2 then
# line 20 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @content_start = p
        		end
when 3 then
# line 24 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @docstring_content_type_start = p
        		end
when 4 then
# line 27 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @docstring_content_type_end = p
        		end
when 5 then
# line 31 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          con_type = utf8_pack(data[@docstring_content_type_start...@docstring_content_type_end]).strip
          @listener.doc_string(con_type, con, @current_line) 
        		end
when 6 then
# line 36 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          p = store_keyword_content(:feature, data, p, eof)
        		end
when 7 then
# line 40 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          p = store_keyword_content(:background, data, p, eof)
        		end
when 8 then
# line 44 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          p = store_keyword_content(:scenario, data, p, eof)
        		end
when 9 then
# line 48 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          p = store_keyword_content(:scenario_outline, data, p, eof)
        		end
when 10 then
# line 52 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          p = store_keyword_content(:examples, data, p, eof)
        		end
when 11 then
# line 56 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
when 12 then
# line 61 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
when 13 then
# line 67 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
when 14 then
# line 73 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @line_number += 1
        		end
when 15 then
# line 77 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @last_newline = p + 1
        		end
when 16 then
# line 81 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @keyword_start ||= p
        		end
when 17 then
# line 85 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
when 18 then
# line 90 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @next_keyword_start = p
        		end
when 19 then
# line 94 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
when 20 then
# line 100 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @content_start = p
        		end
when 21 then
# line 104 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\n/, "\n").gsub(/\\\\/, "\\")
        		end
when 22 then
# line 109 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
when 23 then
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 880 "lib/gherkin/rb_lexer/zh_cn.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _lexer_eof_actions[cs]
	__nacts =  _lexer_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _lexer_actions[__acts - 1]
when 23 then
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 919 "lib/gherkin/rb_lexer/zh_cn.rb"
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 139 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/zh_cn.rb.rl"
      end

      def unindent(startcol, text)
        text.gsub(/^[\t ]{0,#{startcol}}/, "")
      end

      def store_keyword_content(event, data, p, eof)
        end_point = (!@next_keyword_start or (p == eof)) ? p : @next_keyword_start
        content = unindent(@start_col + 2, utf8_pack(data[@content_start...end_point])).rstrip
        content_lines = content.split("\n")
        name = content_lines.shift || ""
        name.strip!
        description = content_lines.join("\n")
        @listener.__send__(event, @keyword, name, description, @current_line)
        @next_keyword_start ? @next_keyword_start - 1 : p
      ensure
        @next_keyword_start = nil
      end
      
      def current_line_content(data, p)
        rest = data[@last_newline..-1]
        utf8_pack(rest[0..rest.index(10)||-1]).strip # 10 is \n
      end

      if (RUBY_VERSION =~ /^1\.9/)
        def utf8_pack(array)
          array.pack("c*").force_encoding("UTF-8")
        end
      else
        def utf8_pack(array)
          array.pack("c*")
        end
      end
    end
  end
end
