
# line 1 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
require 'gherkin/lexer/i18n_lexer'

module Gherkin
  module RbLexer
    class En_au #:nodoc:
      
# line 123 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 16 "lib/gherkin/rb_lexer/en_au.rb"
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
	0, 0, 17, 18, 19, 35, 36, 37, 
	39, 41, 46, 51, 56, 61, 66, 70, 
	74, 76, 77, 78, 79, 80, 81, 82, 
	83, 84, 85, 86, 87, 88, 89, 90, 
	91, 92, 93, 95, 100, 107, 112, 114, 
	115, 116, 117, 118, 119, 120, 121, 122, 
	123, 124, 125, 139, 141, 143, 145, 147, 
	149, 151, 153, 155, 157, 159, 161, 163, 
	165, 167, 169, 185, 188, 189, 190, 191, 
	192, 193, 194, 195, 196, 197, 204, 206, 
	208, 210, 212, 214, 216, 217, 218, 219, 
	220, 221, 222, 223, 233, 235, 237, 239, 
	241, 243, 245, 247, 249, 251, 253, 255, 
	257, 259, 261, 264, 266, 268, 270, 272, 
	274, 276, 278, 280, 282, 284, 286, 288, 
	290, 293, 295, 297, 299, 301, 303, 305, 
	307, 309, 311, 313, 315, 316, 317, 318, 
	319, 320, 321, 335, 337, 339, 341, 343, 
	345, 347, 349, 351, 353, 355, 357, 359, 
	361, 363, 365, 368, 370, 372, 374, 376, 
	378, 380, 382, 384, 386, 388, 390, 392, 
	394, 397, 399, 401, 403, 405, 407, 409, 
	411, 413, 415, 417, 419, 421, 423, 425, 
	428, 430, 432, 434, 436, 438, 440, 442, 
	444, 446, 448, 450, 451, 452, 453, 454, 
	455, 457, 458, 459, 460, 461, 462, 463, 
	464, 465, 466, 467, 468, 472, 478, 481, 
	483, 489, 505, 507, 509, 511, 513, 515, 
	517, 520, 522, 524, 526, 528, 530, 532, 
	534, 536, 538, 540, 542, 544, 546, 548, 
	551, 553, 555, 557, 559, 561, 563, 565, 
	567, 569, 571, 573, 574, 575, 576, 577, 
	578, 579, 580, 593, 595, 597, 599, 601, 
	603, 605, 607, 609, 611, 613, 615, 617, 
	619, 621, 623, 626, 628, 630, 632, 634, 
	636, 638, 640, 642, 644, 646, 648, 650, 
	652, 654, 656, 659, 661, 663, 665, 667, 
	669, 671, 673, 675, 677, 679, 681
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	66, 67, 77, 78, 87, 89, 124, 9, 
	13, -69, -65, 10, 32, 34, 35, 37, 
	42, 64, 66, 67, 77, 78, 87, 89, 
	124, 9, 13, 34, 34, 10, 13, 10, 
	13, 10, 32, 34, 9, 13, 10, 32, 
	34, 9, 13, 10, 32, 34, 9, 13, 
	10, 32, 34, 9, 13, 10, 32, 34, 
	9, 13, 10, 32, 9, 13, 10, 32, 
	9, 13, 10, 13, 10, 95, 70, 69, 
	65, 84, 85, 82, 69, 95, 69, 78, 
	68, 95, 37, 32, 10, 10, 13, 13, 
	32, 64, 9, 10, 9, 10, 13, 32, 
	64, 11, 12, 10, 32, 64, 9, 13, 
	97, 108, 99, 107, 103, 114, 111, 117, 
	110, 100, 58, 10, 10, 10, 32, 35, 
	37, 42, 64, 66, 67, 77, 78, 87, 
	89, 9, 13, 10, 95, 10, 70, 10, 
	69, 10, 65, 10, 84, 10, 85, 10, 
	82, 10, 69, 10, 95, 10, 69, 10, 
	78, 10, 68, 10, 95, 10, 37, 10, 
	32, 10, 32, 34, 35, 37, 42, 64, 
	66, 67, 77, 78, 87, 89, 124, 9, 
	13, 101, 111, 114, 112, 116, 98, 98, 
	101, 114, 58, 10, 10, 10, 32, 35, 
	67, 124, 9, 13, 10, 114, 10, 105, 
	10, 107, 10, 101, 10, 121, 10, 58, 
	105, 107, 101, 121, 58, 10, 10, 10, 
	32, 35, 37, 64, 66, 67, 77, 9, 
	13, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 97, 108, 
	10, 99, 10, 107, 10, 103, 10, 114, 
	10, 111, 10, 117, 10, 110, 10, 100, 
	10, 58, 10, 111, 10, 107, 10, 101, 
	10, 115, 10, 111, 114, 10, 98, 10, 
	98, 10, 101, 10, 114, 10, 105, 10, 
	107, 10, 101, 10, 121, 10, 97, 10, 
	116, 10, 101, 97, 116, 101, 58, 10, 
	10, 10, 32, 35, 37, 42, 64, 66, 
	67, 77, 78, 87, 89, 9, 13, 10, 
	95, 10, 70, 10, 69, 10, 65, 10, 
	84, 10, 85, 10, 82, 10, 69, 10, 
	95, 10, 69, 10, 78, 10, 68, 10, 
	95, 10, 37, 10, 32, 10, 97, 108, 
	10, 99, 10, 107, 10, 103, 10, 114, 
	10, 111, 10, 117, 10, 110, 10, 100, 
	10, 58, 10, 111, 10, 107, 10, 101, 
	10, 115, 10, 101, 114, 10, 112, 10, 
	116, 10, 105, 10, 107, 10, 101, 10, 
	121, 10, 97, 10, 116, 10, 101, 10, 
	104, 10, 101, 10, 110, 10, 97, 10, 
	32, 10, 103, 107, 10, 111, 10, 116, 
	10, 116, 10, 97, 10, 110, 10, 111, 
	10, 119, 10, 32, 10, 104, 10, 111, 
	10, 119, 104, 101, 110, 97, 32, 103, 
	107, 111, 116, 116, 97, 110, 111, 119, 
	32, 104, 111, 119, 32, 124, 9, 13, 
	10, 32, 92, 124, 9, 13, 10, 92, 
	124, 10, 92, 10, 32, 92, 124, 9, 
	13, 10, 32, 34, 35, 37, 42, 64, 
	66, 67, 77, 78, 87, 89, 124, 9, 
	13, 10, 108, 10, 111, 10, 107, 10, 
	101, 10, 115, 10, 58, 10, 101, 114, 
	10, 112, 10, 116, 10, 105, 10, 107, 
	10, 101, 10, 121, 10, 97, 10, 116, 
	10, 101, 10, 104, 10, 101, 10, 110, 
	10, 97, 10, 32, 10, 103, 107, 10, 
	111, 10, 116, 10, 116, 10, 97, 10, 
	110, 10, 111, 10, 119, 10, 32, 10, 
	104, 10, 111, 10, 119, 111, 107, 101, 
	115, 58, 10, 10, 10, 32, 35, 37, 
	42, 64, 67, 77, 78, 87, 89, 9, 
	13, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 32, 10, 
	101, 114, 10, 112, 10, 116, 10, 105, 
	10, 107, 10, 101, 10, 121, 10, 58, 
	10, 97, 10, 116, 10, 101, 10, 104, 
	10, 101, 10, 110, 10, 97, 10, 32, 
	10, 103, 107, 10, 111, 10, 116, 10, 
	116, 10, 97, 10, 110, 10, 111, 10, 
	119, 10, 32, 10, 104, 10, 111, 10, 
	119, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 15, 1, 1, 14, 1, 1, 2, 
	2, 3, 3, 3, 3, 3, 2, 2, 
	2, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 2, 3, 5, 3, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 12, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 14, 3, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 5, 2, 2, 
	2, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 1, 8, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 12, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 1, 1, 1, 1, 1, 
	2, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 2, 4, 3, 2, 
	4, 14, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 1, 1, 1, 1, 1, 
	1, 1, 11, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 0
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 1, 0, 0, 1, 0, 0, 0, 
	0, 1, 1, 1, 1, 1, 1, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 1, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 1, 0, 0, 
	1, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 17, 19, 21, 37, 39, 41, 
	44, 47, 52, 57, 62, 67, 72, 76, 
	80, 83, 85, 87, 89, 91, 93, 95, 
	97, 99, 101, 103, 105, 107, 109, 111, 
	113, 115, 117, 120, 125, 132, 137, 140, 
	142, 144, 146, 148, 150, 152, 154, 156, 
	158, 160, 162, 176, 179, 182, 185, 188, 
	191, 194, 197, 200, 203, 206, 209, 212, 
	215, 218, 221, 237, 241, 243, 245, 247, 
	249, 251, 253, 255, 257, 259, 266, 269, 
	272, 275, 278, 281, 284, 286, 288, 290, 
	292, 294, 296, 298, 308, 311, 314, 317, 
	320, 323, 326, 329, 332, 335, 338, 341, 
	344, 347, 350, 354, 357, 360, 363, 366, 
	369, 372, 375, 378, 381, 384, 387, 390, 
	393, 397, 400, 403, 406, 409, 412, 415, 
	418, 421, 424, 427, 430, 432, 434, 436, 
	438, 440, 442, 456, 459, 462, 465, 468, 
	471, 474, 477, 480, 483, 486, 489, 492, 
	495, 498, 501, 505, 508, 511, 514, 517, 
	520, 523, 526, 529, 532, 535, 538, 541, 
	544, 548, 551, 554, 557, 560, 563, 566, 
	569, 572, 575, 578, 581, 584, 587, 590, 
	594, 597, 600, 603, 606, 609, 612, 615, 
	618, 621, 624, 627, 629, 631, 633, 635, 
	637, 640, 642, 644, 646, 648, 650, 652, 
	654, 656, 658, 660, 662, 666, 672, 676, 
	679, 685, 701, 704, 707, 710, 713, 716, 
	719, 723, 726, 729, 732, 735, 738, 741, 
	744, 747, 750, 753, 756, 759, 762, 765, 
	769, 772, 775, 778, 781, 784, 787, 790, 
	793, 796, 799, 802, 804, 806, 808, 810, 
	812, 814, 816, 829, 832, 835, 838, 841, 
	844, 847, 850, 853, 856, 859, 862, 865, 
	868, 871, 874, 878, 881, 884, 887, 890, 
	893, 896, 899, 902, 905, 908, 911, 914, 
	917, 920, 923, 927, 930, 933, 936, 939, 
	942, 945, 948, 951, 954, 957, 960
]

class << self
	attr_accessor :_lexer_indicies
	private :_lexer_indicies, :_lexer_indicies=
end
self._lexer_indicies = [
	1, 3, 2, 4, 5, 6, 7, 8, 
	9, 10, 11, 7, 12, 13, 14, 2, 
	0, 15, 0, 2, 0, 3, 2, 4, 
	5, 6, 7, 8, 9, 10, 11, 7, 
	12, 13, 14, 2, 0, 16, 0, 17, 
	0, 19, 20, 18, 22, 23, 21, 26, 
	25, 27, 25, 24, 30, 29, 31, 29, 
	28, 30, 29, 32, 29, 28, 30, 29, 
	33, 29, 28, 35, 34, 36, 34, 0, 
	3, 37, 37, 0, 35, 34, 34, 0, 
	39, 40, 38, 3, 0, 41, 0, 42, 
	0, 43, 0, 44, 0, 45, 0, 46, 
	0, 47, 0, 48, 0, 49, 0, 50, 
	0, 51, 0, 52, 0, 53, 0, 54, 
	0, 55, 0, 0, 56, 58, 59, 57, 
	0, 0, 0, 0, 60, 61, 62, 61, 
	61, 64, 63, 60, 3, 65, 8, 65, 
	0, 66, 67, 0, 68, 0, 69, 0, 
	70, 0, 71, 0, 72, 0, 73, 0, 
	74, 0, 75, 0, 76, 0, 78, 77, 
	80, 79, 80, 81, 82, 83, 84, 82, 
	85, 86, 87, 84, 88, 89, 81, 79, 
	80, 90, 79, 80, 91, 79, 80, 92, 
	79, 80, 93, 79, 80, 94, 79, 80, 
	95, 79, 80, 96, 79, 80, 97, 79, 
	80, 98, 79, 80, 99, 79, 80, 100, 
	79, 80, 101, 79, 80, 102, 79, 80, 
	103, 79, 80, 104, 79, 106, 105, 107, 
	108, 109, 110, 111, 112, 113, 114, 110, 
	115, 116, 117, 105, 0, 118, 119, 120, 
	0, 121, 0, 122, 0, 123, 0, 124, 
	0, 125, 0, 126, 0, 127, 0, 129, 
	128, 131, 130, 131, 132, 133, 134, 133, 
	132, 130, 131, 135, 130, 131, 136, 130, 
	131, 137, 130, 131, 138, 130, 131, 139, 
	130, 131, 140, 130, 141, 0, 142, 0, 
	143, 0, 144, 0, 145, 0, 147, 146, 
	149, 148, 149, 150, 151, 152, 151, 153, 
	154, 155, 150, 148, 149, 156, 148, 149, 
	157, 148, 149, 158, 148, 149, 159, 148, 
	149, 160, 148, 149, 161, 148, 149, 162, 
	148, 149, 163, 148, 149, 164, 148, 149, 
	165, 148, 149, 166, 148, 149, 167, 148, 
	149, 168, 148, 149, 169, 148, 149, 170, 
	171, 148, 149, 172, 148, 149, 173, 148, 
	149, 174, 148, 149, 175, 148, 149, 176, 
	148, 149, 177, 148, 149, 178, 148, 149, 
	179, 148, 149, 180, 148, 149, 181, 148, 
	149, 182, 148, 149, 183, 148, 149, 179, 
	148, 149, 184, 185, 148, 149, 186, 148, 
	149, 187, 148, 149, 188, 148, 149, 179, 
	148, 149, 189, 148, 149, 190, 148, 149, 
	191, 148, 149, 179, 148, 149, 192, 148, 
	149, 193, 148, 149, 179, 148, 194, 0, 
	195, 0, 196, 0, 197, 0, 199, 198, 
	201, 200, 201, 202, 203, 204, 205, 203, 
	206, 207, 208, 205, 209, 210, 202, 200, 
	201, 211, 200, 201, 212, 200, 201, 213, 
	200, 201, 214, 200, 201, 215, 200, 201, 
	216, 200, 201, 217, 200, 201, 218, 200, 
	201, 219, 200, 201, 220, 200, 201, 221, 
	200, 201, 222, 200, 201, 223, 200, 201, 
	224, 200, 201, 225, 200, 201, 226, 227, 
	200, 201, 228, 200, 201, 229, 200, 201, 
	230, 200, 201, 231, 200, 201, 232, 200, 
	201, 233, 200, 201, 234, 200, 201, 235, 
	200, 201, 225, 200, 201, 236, 200, 201, 
	237, 200, 201, 238, 200, 201, 235, 200, 
	201, 239, 240, 200, 201, 241, 200, 201, 
	242, 200, 201, 243, 200, 201, 244, 200, 
	201, 245, 200, 201, 235, 200, 201, 246, 
	200, 201, 247, 200, 201, 235, 200, 201, 
	248, 200, 201, 249, 200, 201, 242, 200, 
	201, 250, 200, 201, 251, 200, 201, 252, 
	253, 200, 201, 254, 200, 201, 255, 200, 
	201, 256, 200, 201, 242, 200, 201, 257, 
	200, 201, 258, 200, 201, 259, 200, 201, 
	260, 200, 201, 261, 200, 201, 262, 200, 
	201, 242, 200, 263, 0, 264, 0, 122, 
	0, 265, 0, 266, 0, 267, 268, 0, 
	269, 0, 270, 0, 271, 0, 122, 0, 
	272, 0, 273, 0, 274, 0, 275, 0, 
	276, 0, 277, 0, 122, 0, 278, 279, 
	278, 0, 282, 281, 283, 284, 281, 280, 
	0, 286, 287, 285, 0, 286, 285, 282, 
	288, 286, 287, 288, 285, 282, 289, 290, 
	291, 292, 293, 294, 295, 296, 297, 293, 
	298, 299, 300, 289, 0, 80, 301, 79, 
	80, 302, 79, 80, 303, 79, 80, 304, 
	79, 80, 305, 79, 80, 104, 79, 80, 
	306, 307, 79, 80, 308, 79, 80, 309, 
	79, 80, 310, 79, 80, 311, 79, 80, 
	312, 79, 80, 305, 79, 80, 313, 79, 
	80, 314, 79, 80, 305, 79, 80, 315, 
	79, 80, 316, 79, 80, 309, 79, 80, 
	317, 79, 80, 318, 79, 80, 319, 320, 
	79, 80, 321, 79, 80, 322, 79, 80, 
	323, 79, 80, 309, 79, 80, 324, 79, 
	80, 325, 79, 80, 326, 79, 80, 327, 
	79, 80, 328, 79, 80, 329, 79, 80, 
	309, 79, 330, 0, 331, 0, 332, 0, 
	333, 0, 334, 0, 336, 335, 338, 337, 
	338, 339, 340, 341, 342, 340, 343, 344, 
	342, 345, 346, 339, 337, 338, 347, 337, 
	338, 348, 337, 338, 349, 337, 338, 350, 
	337, 338, 351, 337, 338, 352, 337, 338, 
	353, 337, 338, 354, 337, 338, 355, 337, 
	338, 356, 337, 338, 357, 337, 338, 358, 
	337, 338, 359, 337, 338, 360, 337, 338, 
	361, 337, 338, 362, 363, 337, 338, 364, 
	337, 338, 365, 337, 338, 366, 337, 338, 
	367, 337, 338, 368, 337, 338, 369, 337, 
	338, 361, 337, 338, 370, 337, 338, 371, 
	337, 338, 369, 337, 338, 372, 337, 338, 
	373, 337, 338, 365, 337, 338, 374, 337, 
	338, 375, 337, 338, 376, 377, 337, 338, 
	378, 337, 338, 379, 337, 338, 380, 337, 
	338, 365, 337, 338, 381, 337, 338, 382, 
	337, 338, 383, 337, 338, 384, 337, 338, 
	385, 337, 338, 386, 337, 338, 365, 337, 
	387, 0
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	0, 2, 4, 4, 5, 16, 18, 32, 
	35, 38, 67, 132, 195, 198, 212, 3, 
	6, 7, 8, 9, 8, 8, 9, 8, 
	10, 10, 10, 11, 10, 10, 10, 11, 
	12, 13, 14, 4, 15, 14, 16, 4, 
	17, 19, 20, 21, 22, 23, 24, 25, 
	26, 27, 28, 29, 30, 31, 302, 33, 
	34, 34, 4, 17, 36, 37, 4, 36, 
	35, 37, 39, 251, 40, 41, 42, 43, 
	44, 45, 46, 47, 48, 49, 50, 49, 
	50, 50, 4, 51, 65, 218, 224, 231, 
	234, 237, 52, 53, 54, 55, 56, 57, 
	58, 59, 60, 61, 62, 63, 64, 4, 
	66, 4, 4, 5, 16, 18, 32, 35, 
	38, 67, 132, 195, 198, 212, 68, 70, 
	84, 69, 32, 71, 72, 73, 74, 75, 
	76, 77, 76, 77, 77, 4, 78, 79, 
	80, 81, 82, 83, 66, 85, 86, 87, 
	88, 89, 90, 91, 90, 91, 91, 4, 
	92, 106, 120, 129, 93, 94, 95, 96, 
	97, 98, 99, 100, 101, 102, 103, 104, 
	105, 4, 107, 116, 108, 109, 110, 111, 
	112, 113, 114, 115, 66, 117, 118, 119, 
	121, 125, 122, 123, 124, 126, 127, 128, 
	130, 131, 133, 134, 135, 136, 137, 138, 
	137, 138, 138, 4, 139, 153, 154, 168, 
	175, 178, 181, 140, 141, 142, 143, 144, 
	145, 146, 147, 148, 149, 150, 151, 152, 
	4, 66, 155, 164, 156, 157, 158, 159, 
	160, 161, 162, 163, 165, 166, 167, 169, 
	171, 170, 153, 172, 173, 174, 176, 177, 
	179, 180, 182, 183, 184, 188, 185, 186, 
	187, 189, 190, 191, 192, 193, 194, 196, 
	197, 199, 200, 201, 205, 202, 203, 204, 
	206, 207, 208, 209, 210, 211, 212, 213, 
	214, 216, 217, 215, 213, 214, 215, 213, 
	216, 217, 5, 16, 18, 32, 35, 38, 
	67, 132, 195, 198, 212, 219, 220, 221, 
	222, 223, 225, 227, 226, 65, 228, 229, 
	230, 232, 233, 235, 236, 238, 239, 240, 
	244, 241, 242, 243, 245, 246, 247, 248, 
	249, 250, 252, 253, 254, 255, 256, 257, 
	258, 257, 258, 258, 4, 259, 273, 274, 
	282, 285, 288, 260, 261, 262, 263, 264, 
	265, 266, 267, 268, 269, 270, 271, 272, 
	4, 66, 275, 277, 276, 273, 278, 279, 
	280, 281, 283, 284, 286, 287, 289, 290, 
	291, 295, 292, 293, 294, 296, 297, 298, 
	299, 300, 301, 0
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	43, 0, 0, 54, 3, 1, 0, 29, 
	1, 29, 29, 29, 29, 29, 35, 0, 
	0, 0, 7, 135, 48, 0, 102, 9, 
	5, 45, 130, 45, 0, 33, 122, 33, 
	33, 0, 11, 106, 0, 0, 0, 114, 
	25, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	57, 0, 110, 23, 0, 27, 118, 27, 
	51, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 57, 140, 0, 
	54, 0, 72, 33, 84, 84, 84, 84, 
	84, 84, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 15, 
	15, 31, 126, 60, 57, 31, 63, 57, 
	63, 63, 63, 63, 63, 66, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	57, 140, 0, 54, 0, 81, 84, 0, 
	0, 0, 0, 0, 21, 0, 0, 0, 
	0, 0, 57, 140, 0, 54, 0, 69, 
	33, 84, 84, 84, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 13, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 13, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 57, 140, 
	0, 54, 0, 75, 33, 84, 84, 84, 
	84, 84, 84, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	17, 17, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	37, 37, 54, 37, 87, 0, 0, 39, 
	0, 0, 93, 90, 41, 96, 90, 96, 
	96, 96, 96, 96, 99, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 57, 
	140, 0, 54, 0, 78, 33, 84, 84, 
	84, 84, 84, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	19, 19, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0
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
	43, 43, 43, 43, 43, 43, 43
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 302;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 128 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 631 "lib/gherkin/rb_lexer/en_au.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 138 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
        
# line 640 "lib/gherkin/rb_lexer/en_au.rb"
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
# line 9 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
          @start_col = p - @last_newline - "#{@keyword}:".length
        		end
when 1 then
# line 15 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
when 2 then
# line 20 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @content_start = p
        		end
when 3 then
# line 24 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @docstring_content_type_start = p
        		end
when 4 then
# line 27 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @docstring_content_type_end = p
        		end
when 5 then
# line 31 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          con_type = utf8_pack(data[@docstring_content_type_start...@docstring_content_type_end]).strip
          @listener.doc_string(con_type, con, @current_line) 
        		end
when 6 then
# line 36 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          p = store_keyword_content(:feature, data, p, eof)
        		end
when 7 then
# line 40 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          p = store_keyword_content(:background, data, p, eof)
        		end
when 8 then
# line 44 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          p = store_keyword_content(:scenario, data, p, eof)
        		end
when 9 then
# line 48 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          p = store_keyword_content(:scenario_outline, data, p, eof)
        		end
when 10 then
# line 52 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          p = store_keyword_content(:examples, data, p, eof)
        		end
when 11 then
# line 56 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
when 12 then
# line 61 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
when 13 then
# line 67 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
when 14 then
# line 73 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @line_number += 1
        		end
when 15 then
# line 77 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @last_newline = p + 1
        		end
when 16 then
# line 81 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @keyword_start ||= p
        		end
when 17 then
# line 85 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
when 18 then
# line 90 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @next_keyword_start = p
        		end
when 19 then
# line 94 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
when 20 then
# line 100 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @content_start = p
        		end
when 21 then
# line 104 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\n/, "\n").gsub(/\\\\/, "\\")
        		end
when 22 then
# line 109 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
when 23 then
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 884 "lib/gherkin/rb_lexer/en_au.rb"
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
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 923 "lib/gherkin/rb_lexer/en_au.rb"
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

# line 139 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
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
