
# line 1 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
require 'gherkin/lexer/i18n_lexer'

module Gherkin
  module RbLexer
    class Fi #:nodoc:
      
# line 123 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 16 "lib/gherkin/rb_lexer/fi.rb"
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
	39, 41, 46, 51, 56, 61, 65, 69, 
	71, 72, 73, 74, 75, 76, 77, 78, 
	79, 80, 81, 82, 83, 84, 85, 86, 
	87, 88, 90, 95, 102, 107, 108, 109, 
	110, 111, 112, 113, 114, 115, 117, 118, 
	119, 120, 121, 122, 123, 124, 125, 126, 
	127, 128, 129, 130, 131, 132, 133, 134, 
	143, 145, 147, 149, 151, 153, 155, 157, 
	159, 161, 163, 165, 167, 169, 171, 173, 
	175, 177, 179, 181, 183, 185, 187, 189, 
	191, 207, 208, 210, 211, 212, 214, 215, 
	216, 217, 218, 219, 220, 227, 229, 231, 
	233, 235, 237, 239, 241, 243, 245, 247, 
	249, 250, 251, 265, 267, 269, 271, 273, 
	275, 277, 279, 281, 283, 285, 287, 289, 
	291, 293, 295, 297, 299, 301, 303, 305, 
	307, 309, 311, 314, 316, 318, 320, 322, 
	324, 326, 328, 330, 332, 334, 336, 338, 
	340, 342, 344, 346, 349, 351, 353, 355, 
	358, 360, 362, 364, 366, 368, 370, 372, 
	373, 374, 375, 376, 377, 378, 379, 393, 
	395, 397, 399, 401, 403, 405, 407, 409, 
	411, 413, 415, 417, 419, 421, 423, 425, 
	427, 429, 431, 433, 435, 437, 439, 442, 
	444, 446, 448, 450, 452, 454, 456, 458, 
	460, 462, 464, 466, 468, 470, 472, 474, 
	476, 478, 479, 480, 481, 482, 483, 484, 
	498, 500, 502, 504, 506, 508, 510, 512, 
	514, 516, 518, 520, 522, 524, 526, 528, 
	530, 532, 534, 536, 538, 540, 542, 544, 
	547, 549, 551, 553, 555, 557, 559, 561, 
	563, 565, 567, 569, 571, 573, 575, 577, 
	579, 581, 583, 585, 587, 590, 592, 594, 
	596, 598, 602, 608, 611, 613, 619, 635, 
	637, 640, 642, 644, 647, 649, 651, 653, 
	656, 658, 660, 662, 664, 666, 668, 670
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	74, 75, 77, 78, 79, 84, 124, 9, 
	13, -69, -65, 10, 32, 34, 35, 37, 
	42, 64, 74, 75, 77, 78, 79, 84, 
	124, 9, 13, 34, 34, 10, 13, 10, 
	13, 10, 32, 34, 9, 13, 10, 32, 
	34, 9, 13, 10, 32, 34, 9, 13, 
	10, 32, 34, 9, 13, 10, 32, 9, 
	13, 10, 32, 9, 13, 10, 13, 10, 
	95, 70, 69, 65, 84, 85, 82, 69, 
	95, 69, 78, 68, 95, 37, 32, 10, 
	10, 13, 13, 32, 64, 9, 10, 9, 
	10, 13, 32, 64, 11, 12, 10, 32, 
	64, 9, 13, 97, 117, 110, 117, 116, 
	116, 105, 105, 108, 109, 101, 116, 101, 
	116, 97, 97, 105, 110, 97, 105, 115, 
	117, 117, 115, 58, 10, 10, 10, 32, 
	35, 37, 64, 79, 84, 9, 13, 10, 
	95, 10, 70, 10, 69, 10, 65, 10, 
	84, 10, 85, 10, 82, 10, 69, 10, 
	95, 10, 69, 10, 78, 10, 68, 10, 
	95, 10, 37, 10, 109, 10, 105, 10, 
	110, 10, 97, 10, 105, 10, 115, 10, 
	117, 10, 117, 10, 115, 10, 58, 10, 
	32, 34, 35, 37, 42, 64, 74, 75, 
	77, 78, 79, 84, 124, 9, 13, 97, 
	112, 117, 97, 117, 107, 115, 115, 101, 
	116, 58, 10, 10, 10, 32, 35, 79, 
	124, 9, 13, 10, 109, 10, 105, 10, 
	110, 10, 97, 10, 105, 10, 115, 10, 
	117, 10, 117, 10, 115, 10, 58, 58, 
	97, 10, 10, 10, 32, 35, 37, 42, 
	64, 74, 75, 77, 78, 79, 84, 9, 
	13, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 32, 10, 
	97, 10, 117, 10, 110, 10, 117, 10, 
	116, 10, 116, 10, 105, 10, 105, 10, 
	108, 109, 10, 101, 10, 116, 10, 101, 
	10, 116, 10, 97, 10, 97, 10, 105, 
	10, 110, 10, 97, 10, 105, 10, 115, 
	10, 117, 10, 117, 10, 115, 10, 58, 
	10, 97, 10, 112, 117, 10, 97, 10, 
	117, 10, 115, 10, 58, 97, 10, 105, 
	10, 104, 10, 105, 10, 111, 10, 115, 
	10, 116, 10, 97, 105, 104, 105, 111, 
	58, 10, 10, 10, 32, 35, 37, 42, 
	64, 74, 75, 77, 78, 79, 84, 9, 
	13, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 32, 10, 
	97, 10, 117, 10, 110, 10, 117, 10, 
	116, 10, 116, 10, 105, 10, 105, 10, 
	108, 109, 10, 101, 10, 116, 10, 101, 
	10, 116, 10, 97, 10, 97, 10, 105, 
	10, 110, 10, 97, 10, 105, 10, 115, 
	10, 117, 10, 117, 10, 115, 10, 58, 
	10, 97, 10, 112, 10, 97, 115, 116, 
	97, 58, 10, 10, 10, 32, 35, 37, 
	42, 64, 74, 75, 77, 78, 79, 84, 
	9, 13, 10, 95, 10, 70, 10, 69, 
	10, 65, 10, 84, 10, 85, 10, 82, 
	10, 69, 10, 95, 10, 69, 10, 78, 
	10, 68, 10, 95, 10, 37, 10, 32, 
	10, 97, 10, 117, 10, 110, 10, 117, 
	10, 116, 10, 116, 10, 105, 10, 105, 
	10, 108, 109, 10, 101, 10, 116, 10, 
	101, 10, 116, 10, 97, 10, 97, 10, 
	105, 10, 110, 10, 97, 10, 105, 10, 
	115, 10, 117, 10, 117, 10, 115, 10, 
	58, 10, 97, 10, 112, 10, 97, 10, 
	117, 10, 115, 10, 58, 97, 10, 105, 
	10, 104, 10, 105, 10, 111, 32, 124, 
	9, 13, 10, 32, 92, 124, 9, 13, 
	10, 92, 124, 10, 92, 10, 32, 92, 
	124, 9, 13, 10, 32, 34, 35, 37, 
	42, 64, 74, 75, 77, 78, 79, 84, 
	124, 9, 13, 10, 97, 10, 112, 117, 
	10, 97, 10, 117, 10, 107, 115, 10, 
	115, 10, 101, 10, 116, 10, 58, 97, 
	10, 105, 10, 104, 10, 105, 10, 111, 
	10, 115, 10, 116, 10, 97, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 15, 1, 1, 14, 1, 1, 2, 
	2, 3, 3, 3, 3, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 2, 3, 5, 3, 1, 1, 1, 
	1, 1, 1, 1, 1, 2, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 7, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	14, 1, 2, 1, 1, 2, 1, 1, 
	1, 1, 1, 1, 5, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	1, 1, 12, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 12, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 1, 1, 1, 1, 1, 1, 12, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 4, 3, 2, 4, 14, 2, 
	3, 2, 2, 3, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 0
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
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
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
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 1, 0, 0, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 17, 19, 21, 37, 39, 41, 
	44, 47, 52, 57, 62, 67, 71, 75, 
	78, 80, 82, 84, 86, 88, 90, 92, 
	94, 96, 98, 100, 102, 104, 106, 108, 
	110, 112, 115, 120, 127, 132, 134, 136, 
	138, 140, 142, 144, 146, 148, 151, 153, 
	155, 157, 159, 161, 163, 165, 167, 169, 
	171, 173, 175, 177, 179, 181, 183, 185, 
	194, 197, 200, 203, 206, 209, 212, 215, 
	218, 221, 224, 227, 230, 233, 236, 239, 
	242, 245, 248, 251, 254, 257, 260, 263, 
	266, 282, 284, 287, 289, 291, 294, 296, 
	298, 300, 302, 304, 306, 313, 316, 319, 
	322, 325, 328, 331, 334, 337, 340, 343, 
	346, 348, 350, 364, 367, 370, 373, 376, 
	379, 382, 385, 388, 391, 394, 397, 400, 
	403, 406, 409, 412, 415, 418, 421, 424, 
	427, 430, 433, 437, 440, 443, 446, 449, 
	452, 455, 458, 461, 464, 467, 470, 473, 
	476, 479, 482, 485, 489, 492, 495, 498, 
	502, 505, 508, 511, 514, 517, 520, 523, 
	525, 527, 529, 531, 533, 535, 537, 551, 
	554, 557, 560, 563, 566, 569, 572, 575, 
	578, 581, 584, 587, 590, 593, 596, 599, 
	602, 605, 608, 611, 614, 617, 620, 624, 
	627, 630, 633, 636, 639, 642, 645, 648, 
	651, 654, 657, 660, 663, 666, 669, 672, 
	675, 678, 680, 682, 684, 686, 688, 690, 
	704, 707, 710, 713, 716, 719, 722, 725, 
	728, 731, 734, 737, 740, 743, 746, 749, 
	752, 755, 758, 761, 764, 767, 770, 773, 
	777, 780, 783, 786, 789, 792, 795, 798, 
	801, 804, 807, 810, 813, 816, 819, 822, 
	825, 828, 831, 834, 837, 841, 844, 847, 
	850, 853, 857, 863, 867, 870, 876, 892, 
	895, 899, 902, 905, 909, 912, 915, 918, 
	922, 925, 928, 931, 934, 937, 940, 943
]

class << self
	attr_accessor :_lexer_indicies
	private :_lexer_indicies, :_lexer_indicies=
end
self._lexer_indicies = [
	1, 3, 2, 4, 5, 6, 7, 8, 
	9, 10, 11, 12, 13, 14, 15, 2, 
	0, 16, 0, 2, 0, 3, 2, 4, 
	5, 6, 7, 8, 9, 10, 11, 12, 
	13, 14, 15, 2, 0, 17, 0, 18, 
	0, 20, 21, 19, 23, 24, 22, 27, 
	26, 28, 26, 25, 31, 30, 32, 30, 
	29, 31, 30, 33, 30, 29, 31, 30, 
	34, 30, 29, 36, 35, 35, 0, 3, 
	37, 37, 0, 39, 40, 38, 3, 0, 
	41, 0, 42, 0, 43, 0, 44, 0, 
	45, 0, 46, 0, 47, 0, 48, 0, 
	49, 0, 50, 0, 51, 0, 52, 0, 
	53, 0, 54, 0, 55, 0, 0, 56, 
	58, 59, 57, 0, 0, 0, 0, 60, 
	61, 62, 61, 61, 64, 63, 60, 3, 
	65, 8, 65, 0, 66, 0, 67, 0, 
	66, 0, 68, 0, 69, 0, 70, 0, 
	71, 0, 67, 0, 72, 73, 0, 74, 
	0, 75, 0, 76, 0, 77, 0, 78, 
	0, 67, 0, 79, 0, 80, 0, 81, 
	0, 82, 0, 83, 0, 84, 0, 85, 
	0, 86, 0, 87, 0, 89, 88, 91, 
	90, 91, 92, 93, 94, 93, 95, 96, 
	92, 90, 91, 97, 90, 91, 98, 90, 
	91, 99, 90, 91, 100, 90, 91, 101, 
	90, 91, 102, 90, 91, 103, 90, 91, 
	104, 90, 91, 105, 90, 91, 106, 90, 
	91, 107, 90, 91, 108, 90, 91, 109, 
	90, 91, 110, 90, 91, 111, 90, 91, 
	112, 90, 91, 113, 90, 91, 114, 90, 
	91, 115, 90, 91, 116, 90, 91, 117, 
	90, 91, 118, 90, 91, 119, 90, 91, 
	120, 90, 122, 121, 123, 124, 125, 126, 
	127, 128, 129, 130, 131, 132, 133, 134, 
	121, 0, 135, 0, 136, 137, 0, 138, 
	0, 139, 0, 140, 141, 0, 142, 0, 
	143, 0, 144, 0, 145, 0, 147, 146, 
	149, 148, 149, 150, 151, 152, 151, 150, 
	148, 149, 153, 148, 149, 154, 148, 149, 
	155, 148, 149, 156, 148, 149, 157, 148, 
	149, 158, 148, 149, 159, 148, 149, 160, 
	148, 149, 161, 148, 149, 162, 148, 163, 
	164, 0, 166, 165, 168, 167, 168, 169, 
	170, 171, 172, 170, 173, 174, 175, 176, 
	177, 178, 169, 167, 168, 179, 167, 168, 
	180, 167, 168, 181, 167, 168, 182, 167, 
	168, 183, 167, 168, 184, 167, 168, 185, 
	167, 168, 186, 167, 168, 187, 167, 168, 
	188, 167, 168, 189, 167, 168, 190, 167, 
	168, 191, 167, 168, 192, 167, 168, 193, 
	167, 168, 194, 167, 168, 195, 167, 168, 
	194, 167, 168, 196, 167, 168, 197, 167, 
	168, 198, 167, 168, 199, 167, 168, 195, 
	167, 168, 200, 201, 167, 168, 202, 167, 
	168, 203, 167, 168, 204, 167, 168, 205, 
	167, 168, 206, 167, 168, 195, 167, 168, 
	207, 167, 168, 208, 167, 168, 209, 167, 
	168, 210, 167, 168, 211, 167, 168, 212, 
	167, 168, 213, 167, 168, 214, 167, 168, 
	193, 167, 168, 215, 167, 168, 216, 217, 
	167, 168, 218, 167, 168, 219, 167, 168, 
	220, 167, 168, 193, 221, 167, 168, 222, 
	167, 168, 223, 167, 168, 224, 167, 168, 
	214, 167, 168, 225, 167, 168, 226, 167, 
	168, 214, 167, 227, 0, 228, 0, 229, 
	0, 230, 0, 231, 0, 233, 232, 235, 
	234, 235, 236, 237, 238, 239, 237, 240, 
	241, 242, 243, 244, 245, 236, 234, 235, 
	246, 234, 235, 247, 234, 235, 248, 234, 
	235, 249, 234, 235, 250, 234, 235, 251, 
	234, 235, 252, 234, 235, 253, 234, 235, 
	254, 234, 235, 255, 234, 235, 256, 234, 
	235, 257, 234, 235, 258, 234, 235, 259, 
	234, 235, 260, 234, 235, 261, 234, 235, 
	262, 234, 235, 261, 234, 235, 263, 234, 
	235, 264, 234, 235, 265, 234, 235, 266, 
	234, 235, 262, 234, 235, 267, 268, 234, 
	235, 269, 234, 235, 270, 234, 235, 271, 
	234, 235, 272, 234, 235, 273, 234, 235, 
	262, 234, 235, 274, 234, 235, 275, 234, 
	235, 276, 234, 235, 277, 234, 235, 278, 
	234, 235, 279, 234, 235, 280, 234, 235, 
	281, 234, 235, 260, 234, 235, 282, 234, 
	235, 283, 234, 235, 279, 234, 284, 0, 
	285, 0, 286, 0, 287, 0, 289, 288, 
	291, 290, 291, 292, 293, 294, 295, 293, 
	296, 297, 298, 299, 300, 301, 292, 290, 
	291, 302, 290, 291, 303, 290, 291, 304, 
	290, 291, 305, 290, 291, 306, 290, 291, 
	307, 290, 291, 308, 290, 291, 309, 290, 
	291, 310, 290, 291, 311, 290, 291, 312, 
	290, 291, 313, 290, 291, 314, 290, 291, 
	315, 290, 291, 316, 290, 291, 317, 290, 
	291, 318, 290, 291, 317, 290, 291, 319, 
	290, 291, 320, 290, 291, 321, 290, 291, 
	322, 290, 291, 318, 290, 291, 323, 324, 
	290, 291, 325, 290, 291, 326, 290, 291, 
	327, 290, 291, 328, 290, 291, 329, 290, 
	291, 318, 290, 291, 330, 290, 291, 331, 
	290, 291, 332, 290, 291, 333, 290, 291, 
	334, 290, 291, 335, 290, 291, 336, 290, 
	291, 337, 290, 291, 316, 290, 291, 338, 
	290, 291, 339, 290, 291, 340, 290, 291, 
	341, 290, 291, 342, 290, 291, 316, 343, 
	290, 291, 344, 290, 291, 345, 290, 291, 
	346, 290, 291, 337, 290, 347, 348, 347, 
	0, 351, 350, 352, 353, 350, 349, 0, 
	355, 356, 354, 0, 355, 354, 351, 357, 
	355, 356, 357, 354, 351, 358, 359, 360, 
	361, 362, 363, 364, 365, 366, 367, 368, 
	369, 370, 358, 0, 91, 371, 90, 91, 
	372, 373, 90, 91, 374, 90, 91, 375, 
	90, 91, 376, 377, 90, 91, 378, 90, 
	91, 379, 90, 91, 119, 90, 91, 120, 
	380, 90, 91, 381, 90, 91, 382, 90, 
	91, 383, 90, 91, 119, 90, 91, 384, 
	90, 91, 385, 90, 91, 119, 90, 386, 
	0
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	0, 2, 4, 4, 5, 15, 17, 31, 
	34, 37, 38, 40, 43, 45, 89, 273, 
	3, 6, 7, 8, 9, 8, 8, 9, 
	8, 10, 10, 10, 11, 10, 10, 10, 
	11, 12, 13, 14, 4, 14, 15, 4, 
	16, 18, 19, 20, 21, 22, 23, 24, 
	25, 26, 27, 28, 29, 30, 295, 32, 
	33, 33, 4, 16, 35, 36, 4, 35, 
	34, 36, 31, 39, 41, 42, 37, 44, 
	46, 52, 47, 48, 49, 50, 51, 53, 
	54, 55, 56, 57, 58, 59, 60, 61, 
	62, 63, 62, 63, 63, 4, 64, 78, 
	279, 65, 66, 67, 68, 69, 70, 71, 
	72, 73, 74, 75, 76, 77, 4, 79, 
	80, 81, 82, 83, 84, 85, 86, 87, 
	88, 4, 4, 5, 15, 17, 31, 34, 
	37, 38, 40, 43, 45, 89, 273, 90, 
	91, 217, 92, 93, 94, 111, 95, 96, 
	97, 98, 99, 100, 99, 100, 100, 4, 
	101, 102, 103, 104, 105, 106, 107, 108, 
	109, 110, 88, 112, 167, 113, 114, 113, 
	114, 114, 4, 115, 129, 130, 131, 133, 
	136, 138, 154, 116, 117, 118, 119, 120, 
	121, 122, 123, 124, 125, 126, 127, 128, 
	4, 88, 129, 132, 134, 135, 130, 137, 
	139, 145, 140, 141, 142, 143, 144, 146, 
	147, 148, 149, 150, 151, 152, 153, 155, 
	156, 164, 157, 158, 159, 160, 161, 162, 
	163, 165, 166, 168, 169, 170, 171, 172, 
	173, 174, 173, 174, 174, 4, 175, 189, 
	190, 191, 193, 196, 198, 214, 176, 177, 
	178, 179, 180, 181, 182, 183, 184, 185, 
	186, 187, 188, 4, 88, 189, 192, 194, 
	195, 190, 197, 199, 205, 200, 201, 202, 
	203, 204, 206, 207, 208, 209, 210, 211, 
	212, 213, 215, 216, 218, 219, 220, 221, 
	222, 223, 222, 223, 223, 4, 224, 238, 
	239, 240, 242, 245, 247, 263, 225, 226, 
	227, 228, 229, 230, 231, 232, 233, 234, 
	235, 236, 237, 4, 88, 238, 241, 243, 
	244, 239, 246, 248, 254, 249, 250, 251, 
	252, 253, 255, 256, 257, 258, 259, 260, 
	261, 262, 264, 265, 266, 267, 268, 269, 
	270, 271, 272, 273, 274, 275, 277, 278, 
	276, 274, 275, 276, 274, 277, 278, 5, 
	15, 17, 31, 34, 37, 38, 40, 43, 
	45, 89, 273, 280, 281, 292, 282, 283, 
	284, 287, 285, 286, 288, 289, 290, 291, 
	293, 294, 0
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	43, 0, 0, 54, 3, 1, 0, 29, 
	1, 29, 29, 29, 29, 29, 29, 35, 
	0, 0, 0, 7, 135, 48, 0, 102, 
	9, 5, 45, 130, 45, 0, 33, 122, 
	33, 33, 0, 11, 106, 0, 0, 114, 
	25, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	57, 0, 110, 23, 0, 27, 118, 27, 
	51, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	57, 140, 0, 54, 0, 69, 33, 84, 
	84, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 13, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	13, 31, 126, 60, 57, 31, 63, 57, 
	63, 63, 63, 63, 63, 63, 66, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 57, 140, 0, 54, 0, 81, 
	84, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 21, 0, 0, 57, 140, 0, 
	54, 0, 75, 33, 84, 84, 84, 84, 
	84, 84, 84, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	17, 17, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	57, 140, 0, 54, 0, 78, 33, 84, 
	84, 84, 84, 84, 84, 84, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 19, 19, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	57, 140, 0, 54, 0, 72, 33, 84, 
	84, 84, 84, 84, 84, 84, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 15, 15, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 37, 37, 54, 
	37, 87, 0, 0, 39, 0, 0, 93, 
	90, 41, 96, 90, 96, 96, 96, 96, 
	96, 96, 99, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0
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
	43, 43, 43, 43, 43, 43, 43, 43
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 295;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 128 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 622 "lib/gherkin/rb_lexer/fi.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 138 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
        
# line 631 "lib/gherkin/rb_lexer/fi.rb"
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
# line 9 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
          @start_col = p - @last_newline - "#{@keyword}:".length
        		end
when 1 then
# line 15 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
when 2 then
# line 20 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @content_start = p
        		end
when 3 then
# line 24 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @docstring_content_type_start = p
        		end
when 4 then
# line 27 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @docstring_content_type_end = p
        		end
when 5 then
# line 31 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          con_type = utf8_pack(data[@docstring_content_type_start...@docstring_content_type_end]).strip
          @listener.doc_string(con_type, con, @current_line) 
        		end
when 6 then
# line 36 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          p = store_keyword_content(:feature, data, p, eof)
        		end
when 7 then
# line 40 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          p = store_keyword_content(:background, data, p, eof)
        		end
when 8 then
# line 44 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          p = store_keyword_content(:scenario, data, p, eof)
        		end
when 9 then
# line 48 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          p = store_keyword_content(:scenario_outline, data, p, eof)
        		end
when 10 then
# line 52 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          p = store_keyword_content(:examples, data, p, eof)
        		end
when 11 then
# line 56 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
when 12 then
# line 61 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
when 13 then
# line 67 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
when 14 then
# line 73 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @line_number += 1
        		end
when 15 then
# line 77 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @last_newline = p + 1
        		end
when 16 then
# line 81 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @keyword_start ||= p
        		end
when 17 then
# line 85 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
when 18 then
# line 90 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @next_keyword_start = p
        		end
when 19 then
# line 94 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
when 20 then
# line 100 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @content_start = p
        		end
when 21 then
# line 104 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\n/, "\n").gsub(/\\\\/, "\\")
        		end
when 22 then
# line 109 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
when 23 then
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 875 "lib/gherkin/rb_lexer/fi.rb"
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
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 914 "lib/gherkin/rb_lexer/fi.rb"
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

# line 139 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
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
