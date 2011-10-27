
# line 1 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
require 'gherkin/lexer/i18n_lexer'

module Gherkin
  module RbLexer
    class En_lol #:nodoc:
      
# line 123 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 16 "lib/gherkin/rb_lexer/en_lol.rb"
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
	0, 0, 19, 20, 21, 39, 40, 41, 
	43, 45, 50, 55, 60, 65, 69, 73, 
	75, 76, 77, 78, 79, 80, 81, 82, 
	83, 84, 85, 86, 87, 88, 89, 90, 
	91, 92, 94, 99, 106, 111, 112, 114, 
	115, 116, 117, 132, 134, 136, 138, 140, 
	142, 144, 146, 148, 150, 152, 154, 156, 
	158, 160, 162, 180, 181, 182, 183, 184, 
	185, 186, 187, 188, 189, 190, 197, 199, 
	201, 203, 205, 207, 209, 210, 211, 212, 
	213, 214, 215, 216, 217, 218, 219, 220, 
	221, 222, 224, 225, 226, 227, 228, 229, 
	230, 231, 232, 247, 249, 251, 253, 255, 
	257, 259, 261, 263, 265, 267, 269, 271, 
	273, 275, 277, 279, 281, 283, 285, 287, 
	289, 291, 293, 295, 297, 299, 301, 303, 
	305, 307, 309, 311, 313, 315, 317, 319, 
	321, 323, 324, 325, 340, 342, 344, 346, 
	348, 350, 352, 354, 356, 358, 360, 362, 
	364, 366, 368, 370, 372, 375, 377, 379, 
	381, 383, 385, 387, 389, 391, 393, 395, 
	397, 399, 401, 403, 405, 407, 410, 412, 
	414, 416, 418, 420, 422, 424, 426, 428, 
	430, 431, 432, 433, 434, 435, 436, 437, 
	438, 449, 451, 453, 455, 457, 459, 461, 
	463, 465, 467, 469, 471, 473, 475, 477, 
	479, 481, 483, 485, 487, 489, 491, 493, 
	495, 497, 499, 501, 503, 506, 508, 510, 
	512, 514, 516, 518, 520, 522, 524, 526, 
	530, 536, 539, 541, 547, 565, 567, 569, 
	571, 573, 575, 577, 579, 581, 583, 585, 
	587, 589, 591, 593, 595, 597, 599, 602, 
	604, 606, 608, 610, 612, 614, 616, 618, 
	620, 622, 624, 625
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	65, 66, 68, 69, 73, 77, 79, 87, 
	124, 9, 13, -69, -65, 10, 32, 34, 
	35, 37, 42, 64, 65, 66, 68, 69, 
	73, 77, 79, 87, 124, 9, 13, 34, 
	34, 10, 13, 10, 13, 10, 32, 34, 
	9, 13, 10, 32, 34, 9, 13, 10, 
	32, 34, 9, 13, 10, 32, 34, 9, 
	13, 10, 32, 9, 13, 10, 32, 9, 
	13, 10, 13, 10, 95, 70, 69, 65, 
	84, 85, 82, 69, 95, 69, 78, 68, 
	95, 37, 32, 10, 10, 13, 13, 32, 
	64, 9, 10, 9, 10, 13, 32, 64, 
	11, 12, 10, 32, 64, 9, 13, 78, 
	52, 85, 58, 10, 10, 10, 32, 35, 
	37, 42, 64, 65, 66, 68, 73, 77, 
	79, 87, 9, 13, 10, 95, 10, 70, 
	10, 69, 10, 65, 10, 84, 10, 85, 
	10, 82, 10, 69, 10, 95, 10, 69, 
	10, 78, 10, 68, 10, 95, 10, 37, 
	10, 32, 10, 32, 34, 35, 37, 42, 
	64, 65, 66, 68, 69, 73, 77, 79, 
	87, 124, 9, 13, 69, 88, 65, 77, 
	80, 76, 90, 58, 10, 10, 10, 32, 
	35, 79, 124, 9, 13, 10, 72, 10, 
	32, 10, 72, 10, 65, 10, 73, 10, 
	58, 32, 67, 65, 78, 32, 72, 65, 
	90, 73, 83, 72, 85, 78, 32, 58, 
	83, 82, 83, 76, 89, 58, 10, 10, 
	10, 32, 35, 37, 42, 64, 65, 66, 
	68, 73, 77, 79, 87, 9, 13, 10, 
	95, 10, 70, 10, 69, 10, 65, 10, 
	84, 10, 85, 10, 82, 10, 69, 10, 
	95, 10, 69, 10, 78, 10, 68, 10, 
	95, 10, 37, 10, 32, 10, 78, 10, 
	85, 10, 84, 10, 69, 10, 32, 10, 
	67, 10, 65, 10, 78, 10, 32, 10, 
	72, 10, 65, 10, 90, 10, 73, 10, 
	83, 10, 72, 10, 85, 10, 78, 10, 
	58, 10, 72, 10, 32, 10, 72, 10, 
	65, 10, 73, 10, 10, 10, 32, 35, 
	37, 42, 64, 65, 66, 68, 73, 77, 
	79, 87, 9, 13, 10, 95, 10, 70, 
	10, 69, 10, 65, 10, 84, 10, 85, 
	10, 82, 10, 69, 10, 95, 10, 69, 
	10, 78, 10, 68, 10, 95, 10, 37, 
	10, 32, 10, 78, 10, 52, 85, 10, 
	58, 10, 84, 10, 69, 10, 32, 10, 
	67, 10, 65, 10, 78, 10, 32, 10, 
	72, 10, 65, 10, 90, 10, 73, 10, 
	83, 10, 72, 10, 85, 10, 78, 10, 
	32, 58, 10, 83, 10, 82, 10, 83, 
	10, 76, 10, 89, 10, 72, 10, 32, 
	10, 72, 10, 65, 10, 73, 72, 32, 
	72, 65, 73, 58, 10, 10, 10, 32, 
	35, 37, 64, 66, 69, 77, 79, 9, 
	13, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 52, 10, 
	58, 10, 88, 10, 65, 10, 77, 10, 
	80, 10, 76, 10, 90, 10, 73, 10, 
	83, 10, 72, 10, 85, 10, 78, 10, 
	32, 58, 10, 83, 10, 82, 10, 83, 
	10, 76, 10, 89, 10, 72, 10, 32, 
	10, 72, 10, 65, 10, 73, 32, 124, 
	9, 13, 10, 32, 92, 124, 9, 13, 
	10, 92, 124, 10, 92, 10, 32, 92, 
	124, 9, 13, 10, 32, 34, 35, 37, 
	42, 64, 65, 66, 68, 69, 73, 77, 
	79, 87, 124, 9, 13, 10, 78, 10, 
	85, 10, 84, 10, 69, 10, 32, 10, 
	67, 10, 65, 10, 78, 10, 32, 10, 
	72, 10, 65, 10, 90, 10, 73, 10, 
	83, 10, 72, 10, 85, 10, 78, 10, 
	32, 58, 10, 83, 10, 82, 10, 83, 
	10, 76, 10, 89, 10, 58, 10, 72, 
	10, 32, 10, 72, 10, 65, 10, 73, 
	84, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 17, 1, 1, 16, 1, 1, 2, 
	2, 3, 3, 3, 3, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 2, 3, 5, 3, 1, 2, 1, 
	1, 1, 13, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 16, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 5, 2, 2, 
	2, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 2, 1, 1, 1, 1, 1, 1, 
	1, 1, 13, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 1, 1, 13, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	9, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	4, 3, 2, 4, 16, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 1, 0
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 1, 0, 0, 1, 0, 0, 0, 
	0, 1, 1, 1, 1, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 1, 1, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	1, 0, 0, 1, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 19, 21, 23, 41, 43, 45, 
	48, 51, 56, 61, 66, 71, 75, 79, 
	82, 84, 86, 88, 90, 92, 94, 96, 
	98, 100, 102, 104, 106, 108, 110, 112, 
	114, 116, 119, 124, 131, 136, 138, 141, 
	143, 145, 147, 162, 165, 168, 171, 174, 
	177, 180, 183, 186, 189, 192, 195, 198, 
	201, 204, 207, 225, 227, 229, 231, 233, 
	235, 237, 239, 241, 243, 245, 252, 255, 
	258, 261, 264, 267, 270, 272, 274, 276, 
	278, 280, 282, 284, 286, 288, 290, 292, 
	294, 296, 299, 301, 303, 305, 307, 309, 
	311, 313, 315, 330, 333, 336, 339, 342, 
	345, 348, 351, 354, 357, 360, 363, 366, 
	369, 372, 375, 378, 381, 384, 387, 390, 
	393, 396, 399, 402, 405, 408, 411, 414, 
	417, 420, 423, 426, 429, 432, 435, 438, 
	441, 444, 446, 448, 463, 466, 469, 472, 
	475, 478, 481, 484, 487, 490, 493, 496, 
	499, 502, 505, 508, 511, 515, 518, 521, 
	524, 527, 530, 533, 536, 539, 542, 545, 
	548, 551, 554, 557, 560, 563, 567, 570, 
	573, 576, 579, 582, 585, 588, 591, 594, 
	597, 599, 601, 603, 605, 607, 609, 611, 
	613, 624, 627, 630, 633, 636, 639, 642, 
	645, 648, 651, 654, 657, 660, 663, 666, 
	669, 672, 675, 678, 681, 684, 687, 690, 
	693, 696, 699, 702, 705, 709, 712, 715, 
	718, 721, 724, 727, 730, 733, 736, 739, 
	743, 749, 753, 756, 762, 780, 783, 786, 
	789, 792, 795, 798, 801, 804, 807, 810, 
	813, 816, 819, 822, 825, 828, 831, 835, 
	838, 841, 844, 847, 850, 853, 856, 859, 
	862, 865, 868, 870
]

class << self
	attr_accessor :_lexer_indicies
	private :_lexer_indicies, :_lexer_indicies=
end
self._lexer_indicies = [
	1, 3, 2, 4, 5, 6, 7, 8, 
	9, 10, 11, 12, 13, 14, 15, 11, 
	16, 2, 0, 17, 0, 2, 0, 3, 
	2, 4, 5, 6, 7, 8, 9, 10, 
	11, 12, 13, 14, 15, 11, 16, 2, 
	0, 18, 0, 19, 0, 21, 22, 20, 
	24, 25, 23, 28, 27, 29, 27, 26, 
	32, 31, 33, 31, 30, 32, 31, 34, 
	31, 30, 32, 31, 35, 31, 30, 37, 
	36, 36, 0, 3, 38, 38, 0, 40, 
	41, 39, 3, 0, 42, 0, 43, 0, 
	44, 0, 45, 0, 46, 0, 47, 0, 
	48, 0, 49, 0, 50, 0, 51, 0, 
	52, 0, 53, 0, 54, 0, 55, 0, 
	56, 0, 0, 57, 59, 60, 58, 0, 
	0, 0, 0, 61, 62, 63, 62, 62, 
	65, 64, 61, 3, 66, 8, 66, 0, 
	67, 0, 68, 69, 0, 70, 0, 72, 
	71, 74, 73, 74, 75, 76, 77, 78, 
	76, 79, 80, 81, 82, 83, 84, 81, 
	75, 73, 74, 85, 73, 74, 86, 73, 
	74, 87, 73, 74, 88, 73, 74, 89, 
	73, 74, 90, 73, 74, 91, 73, 74, 
	92, 73, 74, 93, 73, 74, 94, 73, 
	74, 95, 73, 74, 96, 73, 74, 97, 
	73, 74, 98, 73, 74, 99, 73, 101, 
	100, 102, 103, 104, 105, 106, 107, 108, 
	109, 110, 111, 112, 113, 109, 114, 100, 
	0, 115, 0, 116, 0, 117, 0, 118, 
	0, 119, 0, 120, 0, 121, 0, 122, 
	0, 124, 123, 126, 125, 126, 127, 128, 
	129, 128, 127, 125, 126, 130, 125, 126, 
	131, 125, 126, 132, 125, 126, 133, 125, 
	126, 134, 125, 126, 135, 125, 136, 0, 
	137, 0, 138, 0, 139, 0, 140, 0, 
	141, 0, 142, 0, 67, 0, 143, 0, 
	144, 0, 145, 0, 146, 0, 147, 0, 
	148, 149, 0, 150, 0, 151, 0, 152, 
	0, 153, 0, 154, 0, 155, 0, 157, 
	156, 159, 158, 159, 160, 161, 162, 163, 
	161, 164, 165, 166, 167, 168, 169, 166, 
	160, 158, 159, 170, 158, 159, 171, 158, 
	159, 172, 158, 159, 173, 158, 159, 174, 
	158, 159, 175, 158, 159, 176, 158, 159, 
	177, 158, 159, 178, 158, 159, 179, 158, 
	159, 180, 158, 159, 181, 158, 159, 182, 
	158, 159, 183, 158, 159, 184, 158, 159, 
	185, 158, 159, 186, 158, 159, 185, 158, 
	159, 187, 158, 159, 188, 158, 159, 189, 
	158, 159, 190, 158, 159, 191, 158, 159, 
	192, 158, 159, 193, 158, 159, 194, 158, 
	159, 185, 158, 159, 195, 158, 159, 196, 
	158, 159, 197, 158, 159, 198, 158, 159, 
	199, 158, 159, 184, 158, 159, 200, 158, 
	159, 201, 158, 159, 202, 158, 159, 203, 
	158, 159, 199, 158, 205, 204, 207, 206, 
	207, 208, 209, 210, 211, 209, 212, 213, 
	214, 215, 216, 217, 214, 208, 206, 207, 
	218, 206, 207, 219, 206, 207, 220, 206, 
	207, 221, 206, 207, 222, 206, 207, 223, 
	206, 207, 224, 206, 207, 225, 206, 207, 
	226, 206, 207, 227, 206, 207, 228, 206, 
	207, 229, 206, 207, 230, 206, 207, 231, 
	206, 207, 232, 206, 207, 233, 206, 207, 
	234, 235, 206, 207, 232, 206, 207, 233, 
	206, 207, 236, 206, 207, 237, 206, 207, 
	238, 206, 207, 239, 206, 207, 240, 206, 
	207, 241, 206, 207, 242, 206, 207, 243, 
	206, 207, 233, 206, 207, 244, 206, 207, 
	245, 206, 207, 246, 206, 207, 247, 206, 
	207, 248, 206, 207, 249, 232, 206, 207, 
	250, 206, 207, 251, 206, 207, 252, 206, 
	207, 253, 206, 207, 234, 206, 207, 254, 
	206, 207, 255, 206, 207, 256, 206, 207, 
	257, 206, 207, 234, 206, 258, 0, 259, 
	0, 260, 0, 261, 0, 262, 0, 263, 
	0, 265, 264, 267, 266, 267, 268, 269, 
	270, 269, 271, 272, 273, 274, 268, 266, 
	267, 275, 266, 267, 276, 266, 267, 277, 
	266, 267, 278, 266, 267, 279, 266, 267, 
	280, 266, 267, 281, 266, 267, 282, 266, 
	267, 283, 266, 267, 284, 266, 267, 285, 
	266, 267, 286, 266, 267, 287, 266, 267, 
	288, 266, 267, 289, 266, 267, 290, 266, 
	267, 291, 266, 267, 292, 266, 267, 293, 
	266, 267, 294, 266, 267, 295, 266, 267, 
	289, 266, 267, 296, 266, 267, 297, 266, 
	267, 298, 266, 267, 299, 266, 267, 300, 
	266, 267, 301, 290, 266, 267, 302, 266, 
	267, 303, 266, 267, 304, 266, 267, 305, 
	266, 267, 289, 266, 267, 306, 266, 267, 
	307, 266, 267, 308, 266, 267, 309, 266, 
	267, 289, 266, 310, 311, 310, 0, 314, 
	313, 315, 316, 313, 312, 0, 318, 319, 
	317, 0, 318, 317, 314, 320, 318, 319, 
	320, 317, 314, 321, 322, 323, 324, 325, 
	326, 327, 328, 329, 330, 331, 332, 333, 
	329, 334, 321, 0, 74, 335, 73, 74, 
	336, 73, 74, 335, 73, 74, 337, 73, 
	74, 338, 73, 74, 339, 73, 74, 340, 
	73, 74, 341, 73, 74, 342, 73, 74, 
	343, 73, 74, 344, 73, 74, 335, 73, 
	74, 345, 73, 74, 346, 73, 74, 347, 
	73, 74, 348, 73, 74, 349, 73, 74, 
	350, 99, 73, 74, 351, 73, 74, 352, 
	73, 74, 353, 73, 74, 354, 73, 74, 
	355, 73, 74, 99, 73, 74, 356, 73, 
	74, 357, 73, 74, 358, 73, 74, 359, 
	73, 74, 355, 73, 67, 0, 360, 0
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	0, 2, 4, 4, 5, 15, 17, 31, 
	34, 37, 38, 59, 60, 76, 84, 184, 
	231, 3, 6, 7, 8, 9, 8, 8, 
	9, 8, 10, 10, 10, 11, 10, 10, 
	10, 11, 12, 13, 14, 4, 14, 15, 
	4, 16, 18, 19, 20, 21, 22, 23, 
	24, 25, 26, 27, 28, 29, 30, 267, 
	32, 33, 33, 4, 16, 35, 36, 4, 
	35, 34, 36, 31, 39, 266, 40, 41, 
	42, 41, 42, 42, 4, 43, 57, 237, 
	238, 240, 241, 249, 261, 44, 45, 46, 
	47, 48, 49, 50, 51, 52, 53, 54, 
	55, 56, 4, 58, 4, 4, 5, 15, 
	17, 31, 34, 37, 38, 59, 60, 76, 
	84, 184, 231, 37, 61, 62, 63, 64, 
	65, 66, 67, 68, 69, 68, 69, 69, 
	4, 70, 71, 72, 73, 74, 75, 58, 
	77, 78, 79, 80, 81, 82, 83, 85, 
	86, 87, 88, 89, 90, 137, 91, 92, 
	93, 94, 95, 96, 97, 98, 97, 98, 
	98, 4, 99, 113, 114, 115, 117, 118, 
	126, 132, 100, 101, 102, 103, 104, 105, 
	106, 107, 108, 109, 110, 111, 112, 4, 
	58, 113, 116, 114, 119, 120, 121, 122, 
	123, 124, 125, 127, 128, 129, 130, 131, 
	133, 134, 135, 136, 138, 139, 138, 139, 
	139, 4, 140, 154, 155, 156, 159, 160, 
	168, 179, 141, 142, 143, 144, 145, 146, 
	147, 148, 149, 150, 151, 152, 153, 4, 
	58, 154, 157, 158, 155, 161, 162, 163, 
	164, 165, 166, 167, 169, 170, 171, 172, 
	173, 174, 175, 176, 177, 178, 180, 181, 
	182, 183, 185, 186, 187, 188, 189, 190, 
	191, 192, 191, 192, 192, 4, 193, 207, 
	209, 215, 226, 194, 195, 196, 197, 198, 
	199, 200, 201, 202, 203, 204, 205, 206, 
	4, 208, 58, 210, 211, 212, 213, 214, 
	216, 217, 218, 219, 220, 221, 222, 223, 
	224, 225, 227, 228, 229, 230, 231, 232, 
	233, 235, 236, 234, 232, 233, 234, 232, 
	235, 236, 5, 15, 17, 31, 34, 37, 
	38, 59, 60, 76, 84, 184, 231, 57, 
	239, 237, 242, 243, 244, 245, 246, 247, 
	248, 250, 251, 252, 253, 254, 255, 256, 
	257, 258, 259, 260, 262, 263, 264, 265, 
	0
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	43, 0, 0, 54, 3, 1, 0, 29, 
	1, 29, 29, 29, 29, 29, 29, 29, 
	35, 0, 0, 0, 7, 135, 48, 0, 
	102, 9, 5, 45, 130, 45, 0, 33, 
	122, 33, 33, 0, 11, 106, 0, 0, 
	114, 25, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 57, 0, 110, 23, 0, 27, 118, 
	27, 51, 0, 0, 0, 0, 0, 57, 
	140, 0, 54, 0, 72, 33, 84, 84, 
	84, 84, 84, 84, 84, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 15, 15, 31, 126, 60, 57, 
	31, 63, 57, 63, 63, 63, 63, 63, 
	63, 63, 66, 0, 0, 0, 0, 0, 
	0, 0, 0, 57, 140, 0, 54, 0, 
	81, 84, 0, 0, 0, 0, 0, 21, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 57, 140, 0, 54, 
	0, 78, 33, 84, 84, 84, 84, 84, 
	84, 84, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 19, 
	19, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 57, 140, 0, 54, 
	0, 75, 33, 84, 84, 84, 84, 84, 
	84, 84, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 17, 
	17, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	57, 140, 0, 54, 0, 69, 33, 84, 
	84, 84, 84, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	13, 0, 13, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	37, 37, 54, 37, 87, 0, 0, 39, 
	0, 0, 93, 90, 41, 96, 90, 96, 
	96, 96, 96, 96, 96, 96, 99, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0
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
	43, 43, 43, 43
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 267;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 128 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 586 "lib/gherkin/rb_lexer/en_lol.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 138 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
        
# line 595 "lib/gherkin/rb_lexer/en_lol.rb"
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
# line 9 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
          @start_col = p - @last_newline - "#{@keyword}:".length
        		end
when 1 then
# line 15 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
when 2 then
# line 20 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @content_start = p
        		end
when 3 then
# line 24 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @docstring_content_type_start = p
        		end
when 4 then
# line 27 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @docstring_content_type_end = p
        		end
when 5 then
# line 31 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          con_type = utf8_pack(data[@docstring_content_type_start...@docstring_content_type_end]).strip
          @listener.doc_string(con_type, con, @current_line) 
        		end
when 6 then
# line 36 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          p = store_keyword_content(:feature, data, p, eof)
        		end
when 7 then
# line 40 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          p = store_keyword_content(:background, data, p, eof)
        		end
when 8 then
# line 44 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          p = store_keyword_content(:scenario, data, p, eof)
        		end
when 9 then
# line 48 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          p = store_keyword_content(:scenario_outline, data, p, eof)
        		end
when 10 then
# line 52 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          p = store_keyword_content(:examples, data, p, eof)
        		end
when 11 then
# line 56 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
when 12 then
# line 61 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
when 13 then
# line 67 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
when 14 then
# line 73 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @line_number += 1
        		end
when 15 then
# line 77 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @last_newline = p + 1
        		end
when 16 then
# line 81 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @keyword_start ||= p
        		end
when 17 then
# line 85 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
when 18 then
# line 90 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @next_keyword_start = p
        		end
when 19 then
# line 94 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
when 20 then
# line 100 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @content_start = p
        		end
when 21 then
# line 104 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\n/, "\n").gsub(/\\\\/, "\\")
        		end
when 22 then
# line 109 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
when 23 then
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 839 "lib/gherkin/rb_lexer/en_lol.rb"
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
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 878 "lib/gherkin/rb_lexer/en_lol.rb"
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

# line 139 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en_lol.rb.rl"
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
