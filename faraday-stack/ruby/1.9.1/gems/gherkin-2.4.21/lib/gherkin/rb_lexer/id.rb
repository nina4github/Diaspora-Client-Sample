
# line 1 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
require 'gherkin/lexer/i18n_lexer'

module Gherkin
  module RbLexer
    class Id #:nodoc:
      
# line 123 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 16 "lib/gherkin/rb_lexer/id.rb"
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
	0, 0, 18, 19, 20, 37, 38, 39, 
	41, 43, 48, 53, 58, 63, 67, 71, 
	73, 74, 75, 76, 77, 78, 79, 80, 
	81, 82, 83, 84, 85, 86, 87, 88, 
	89, 90, 92, 97, 104, 109, 110, 111, 
	112, 113, 114, 115, 116, 117, 124, 126, 
	128, 130, 132, 134, 151, 153, 155, 156, 
	157, 158, 159, 160, 174, 176, 178, 180, 
	182, 184, 186, 188, 190, 192, 194, 196, 
	198, 200, 202, 204, 207, 209, 211, 213, 
	215, 217, 219, 221, 223, 225, 227, 229, 
	231, 233, 235, 237, 239, 241, 243, 245, 
	247, 249, 251, 254, 256, 258, 260, 262, 
	264, 266, 268, 270, 272, 273, 274, 275, 
	276, 277, 278, 279, 280, 281, 282, 283, 
	294, 296, 298, 300, 302, 304, 306, 308, 
	310, 312, 314, 316, 318, 320, 322, 324, 
	326, 328, 330, 332, 334, 336, 338, 340, 
	342, 344, 346, 348, 350, 352, 354, 356, 
	358, 360, 362, 365, 367, 369, 371, 373, 
	375, 377, 378, 379, 380, 381, 382, 383, 
	384, 385, 386, 387, 388, 389, 390, 392, 
	393, 394, 395, 396, 397, 398, 399, 400, 
	401, 415, 417, 419, 421, 423, 425, 427, 
	429, 431, 433, 435, 437, 439, 441, 443, 
	445, 448, 450, 452, 454, 456, 458, 460, 
	462, 464, 466, 468, 470, 472, 474, 476, 
	478, 480, 482, 484, 486, 488, 490, 492, 
	494, 496, 498, 499, 500, 514, 516, 518, 
	520, 522, 524, 526, 528, 530, 532, 534, 
	536, 538, 540, 542, 544, 547, 550, 552, 
	554, 556, 558, 560, 562, 564, 566, 568, 
	570, 572, 574, 576, 578, 580, 582, 584, 
	586, 588, 590, 592, 594, 596, 599, 601, 
	603, 605, 607, 609, 611, 613, 615, 617, 
	618, 619, 620, 624, 630, 633, 635, 641, 
	658
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	67, 68, 70, 75, 77, 83, 84, 124, 
	9, 13, -69, -65, 10, 32, 34, 35, 
	37, 42, 64, 67, 68, 70, 75, 77, 
	83, 84, 124, 9, 13, 34, 34, 10, 
	13, 10, 13, 10, 32, 34, 9, 13, 
	10, 32, 34, 9, 13, 10, 32, 34, 
	9, 13, 10, 32, 34, 9, 13, 10, 
	32, 9, 13, 10, 32, 9, 13, 10, 
	13, 10, 95, 70, 69, 65, 84, 85, 
	82, 69, 95, 69, 78, 68, 95, 37, 
	32, 10, 10, 13, 13, 32, 64, 9, 
	10, 9, 10, 13, 32, 64, 11, 12, 
	10, 32, 64, 9, 13, 111, 110, 116, 
	111, 104, 58, 10, 10, 10, 32, 35, 
	70, 124, 9, 13, 10, 105, 10, 116, 
	10, 117, 10, 114, 10, 58, 10, 32, 
	34, 35, 37, 42, 64, 67, 68, 70, 
	75, 77, 83, 84, 124, 9, 13, 97, 
	101, 110, 115, 97, 114, 58, 10, 10, 
	10, 32, 35, 37, 42, 64, 68, 70, 
	75, 77, 83, 84, 9, 13, 10, 95, 
	10, 70, 10, 69, 10, 65, 10, 84, 
	10, 85, 10, 82, 10, 69, 10, 95, 
	10, 69, 10, 78, 10, 68, 10, 95, 
	10, 37, 10, 32, 10, 97, 101, 10, 
	110, 10, 110, 10, 103, 10, 97, 10, 
	105, 10, 116, 10, 117, 10, 114, 10, 
	58, 10, 101, 10, 116, 10, 105, 10, 
	107, 10, 97, 10, 97, 10, 107, 10, 
	101, 10, 110, 10, 97, 10, 114, 10, 
	105, 10, 111, 10, 32, 58, 10, 107, 
	10, 111, 10, 110, 10, 115, 10, 101, 
	10, 112, 10, 97, 10, 112, 10, 105, 
	110, 103, 97, 110, 105, 116, 117, 114, 
	58, 10, 10, 10, 32, 35, 37, 64, 
	67, 68, 70, 83, 9, 13, 10, 95, 
	10, 70, 10, 69, 10, 65, 10, 84, 
	10, 85, 10, 82, 10, 69, 10, 95, 
	10, 69, 10, 78, 10, 68, 10, 95, 
	10, 37, 10, 111, 10, 110, 10, 116, 
	10, 111, 10, 104, 10, 58, 10, 97, 
	10, 115, 10, 97, 10, 114, 10, 105, 
	10, 116, 10, 117, 10, 107, 10, 101, 
	10, 110, 10, 97, 10, 114, 10, 105, 
	10, 111, 10, 32, 58, 10, 107, 10, 
	111, 10, 110, 10, 115, 10, 101, 10, 
	112, 101, 116, 105, 107, 97, 97, 107, 
	101, 110, 97, 114, 105, 111, 32, 58, 
	107, 111, 110, 115, 101, 112, 58, 10, 
	10, 10, 32, 35, 37, 42, 64, 68, 
	70, 75, 77, 83, 84, 9, 13, 10, 
	95, 10, 70, 10, 69, 10, 65, 10, 
	84, 10, 85, 10, 82, 10, 69, 10, 
	95, 10, 69, 10, 78, 10, 68, 10, 
	95, 10, 37, 10, 32, 10, 97, 101, 
	10, 110, 10, 110, 10, 103, 10, 97, 
	10, 105, 10, 116, 10, 117, 10, 114, 
	10, 58, 10, 101, 10, 116, 10, 105, 
	10, 107, 10, 97, 10, 97, 10, 107, 
	10, 101, 10, 110, 10, 97, 10, 114, 
	10, 105, 10, 111, 10, 97, 10, 112, 
	10, 105, 10, 10, 10, 32, 35, 37, 
	42, 64, 68, 70, 75, 77, 83, 84, 
	9, 13, 10, 95, 10, 70, 10, 69, 
	10, 65, 10, 84, 10, 85, 10, 82, 
	10, 69, 10, 95, 10, 69, 10, 78, 
	10, 68, 10, 95, 10, 37, 10, 32, 
	10, 97, 101, 10, 110, 115, 10, 97, 
	10, 114, 10, 58, 10, 110, 10, 103, 
	10, 97, 10, 110, 10, 105, 10, 116, 
	10, 117, 10, 101, 10, 116, 10, 105, 
	10, 107, 10, 97, 10, 97, 10, 107, 
	10, 101, 10, 110, 10, 97, 10, 114, 
	10, 105, 10, 111, 10, 32, 58, 10, 
	107, 10, 111, 10, 110, 10, 115, 10, 
	101, 10, 112, 10, 97, 10, 112, 10, 
	105, 97, 112, 105, 32, 124, 9, 13, 
	10, 32, 92, 124, 9, 13, 10, 92, 
	124, 10, 92, 10, 32, 92, 124, 9, 
	13, 10, 32, 34, 35, 37, 42, 64, 
	67, 68, 70, 75, 77, 83, 84, 124, 
	9, 13, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 16, 1, 1, 15, 1, 1, 2, 
	2, 3, 3, 3, 3, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 2, 3, 5, 3, 1, 1, 1, 
	1, 1, 1, 1, 1, 5, 2, 2, 
	2, 2, 2, 15, 2, 2, 1, 1, 
	1, 1, 1, 12, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 9, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	12, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 1, 1, 12, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 1, 
	1, 1, 2, 4, 3, 2, 4, 15, 
	0
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
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
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
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 1, 0, 0, 1, 1, 
	0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 18, 20, 22, 39, 41, 43, 
	46, 49, 54, 59, 64, 69, 73, 77, 
	80, 82, 84, 86, 88, 90, 92, 94, 
	96, 98, 100, 102, 104, 106, 108, 110, 
	112, 114, 117, 122, 129, 134, 136, 138, 
	140, 142, 144, 146, 148, 150, 157, 160, 
	163, 166, 169, 172, 189, 192, 195, 197, 
	199, 201, 203, 205, 219, 222, 225, 228, 
	231, 234, 237, 240, 243, 246, 249, 252, 
	255, 258, 261, 264, 268, 271, 274, 277, 
	280, 283, 286, 289, 292, 295, 298, 301, 
	304, 307, 310, 313, 316, 319, 322, 325, 
	328, 331, 334, 338, 341, 344, 347, 350, 
	353, 356, 359, 362, 365, 367, 369, 371, 
	373, 375, 377, 379, 381, 383, 385, 387, 
	398, 401, 404, 407, 410, 413, 416, 419, 
	422, 425, 428, 431, 434, 437, 440, 443, 
	446, 449, 452, 455, 458, 461, 464, 467, 
	470, 473, 476, 479, 482, 485, 488, 491, 
	494, 497, 500, 504, 507, 510, 513, 516, 
	519, 522, 524, 526, 528, 530, 532, 534, 
	536, 538, 540, 542, 544, 546, 548, 551, 
	553, 555, 557, 559, 561, 563, 565, 567, 
	569, 583, 586, 589, 592, 595, 598, 601, 
	604, 607, 610, 613, 616, 619, 622, 625, 
	628, 632, 635, 638, 641, 644, 647, 650, 
	653, 656, 659, 662, 665, 668, 671, 674, 
	677, 680, 683, 686, 689, 692, 695, 698, 
	701, 704, 707, 709, 711, 725, 728, 731, 
	734, 737, 740, 743, 746, 749, 752, 755, 
	758, 761, 764, 767, 770, 774, 778, 781, 
	784, 787, 790, 793, 796, 799, 802, 805, 
	808, 811, 814, 817, 820, 823, 826, 829, 
	832, 835, 838, 841, 844, 847, 851, 854, 
	857, 860, 863, 866, 869, 872, 875, 878, 
	880, 882, 884, 888, 894, 898, 901, 907, 
	924
]

class << self
	attr_accessor :_lexer_indicies
	private :_lexer_indicies, :_lexer_indicies=
end
self._lexer_indicies = [
	1, 3, 2, 4, 5, 6, 7, 8, 
	9, 10, 11, 12, 13, 14, 15, 16, 
	2, 0, 17, 0, 2, 0, 3, 2, 
	4, 5, 6, 7, 8, 9, 10, 11, 
	12, 13, 14, 15, 16, 2, 0, 18, 
	0, 19, 0, 21, 22, 20, 24, 25, 
	23, 28, 27, 29, 27, 26, 32, 31, 
	33, 31, 30, 32, 31, 34, 31, 30, 
	32, 31, 35, 31, 30, 37, 36, 36, 
	0, 3, 38, 38, 0, 40, 41, 39, 
	3, 0, 42, 0, 43, 0, 44, 0, 
	45, 0, 46, 0, 47, 0, 48, 0, 
	49, 0, 50, 0, 51, 0, 52, 0, 
	53, 0, 54, 0, 55, 0, 56, 0, 
	0, 57, 59, 60, 58, 0, 0, 0, 
	0, 61, 62, 63, 62, 62, 65, 64, 
	61, 3, 66, 8, 66, 0, 67, 0, 
	68, 0, 69, 0, 70, 0, 71, 0, 
	72, 0, 74, 73, 76, 75, 76, 77, 
	78, 79, 78, 77, 75, 76, 80, 75, 
	76, 81, 75, 76, 82, 75, 76, 83, 
	75, 76, 84, 75, 86, 85, 87, 88, 
	89, 90, 91, 92, 93, 94, 95, 96, 
	97, 98, 99, 85, 0, 100, 101, 0, 
	102, 103, 0, 104, 0, 105, 0, 106, 
	0, 108, 107, 110, 109, 110, 111, 112, 
	113, 114, 112, 115, 116, 117, 118, 119, 
	120, 111, 109, 110, 121, 109, 110, 122, 
	109, 110, 123, 109, 110, 124, 109, 110, 
	125, 109, 110, 126, 109, 110, 127, 109, 
	110, 128, 109, 110, 129, 109, 110, 130, 
	109, 110, 131, 109, 110, 132, 109, 110, 
	133, 109, 110, 134, 109, 110, 135, 109, 
	110, 136, 137, 109, 110, 138, 109, 110, 
	139, 109, 110, 140, 109, 110, 136, 109, 
	110, 141, 109, 110, 142, 109, 110, 143, 
	109, 110, 144, 109, 110, 135, 109, 110, 
	145, 109, 110, 146, 109, 110, 147, 109, 
	110, 148, 109, 110, 138, 109, 110, 147, 
	109, 110, 149, 109, 110, 150, 109, 110, 
	151, 109, 110, 152, 109, 110, 153, 109, 
	110, 154, 109, 110, 155, 109, 110, 156, 
	135, 109, 110, 157, 109, 110, 158, 109, 
	110, 159, 109, 110, 160, 109, 110, 161, 
	109, 110, 144, 109, 110, 162, 109, 110, 
	163, 109, 110, 138, 109, 164, 0, 165, 
	0, 166, 0, 102, 0, 167, 0, 168, 
	0, 169, 0, 170, 0, 171, 0, 173, 
	172, 175, 174, 175, 176, 177, 178, 177, 
	179, 180, 181, 182, 176, 174, 175, 183, 
	174, 175, 184, 174, 175, 185, 174, 175, 
	186, 174, 175, 187, 174, 175, 188, 174, 
	175, 189, 174, 175, 190, 174, 175, 191, 
	174, 175, 192, 174, 175, 193, 174, 175, 
	194, 174, 175, 195, 174, 175, 196, 174, 
	175, 197, 174, 175, 198, 174, 175, 199, 
	174, 175, 200, 174, 175, 201, 174, 175, 
	202, 174, 175, 203, 174, 175, 204, 174, 
	175, 205, 174, 175, 201, 174, 175, 206, 
	174, 175, 207, 174, 175, 205, 174, 175, 
	208, 174, 175, 209, 174, 175, 210, 174, 
	175, 211, 174, 175, 212, 174, 175, 213, 
	174, 175, 214, 174, 175, 215, 202, 174, 
	175, 216, 174, 175, 217, 174, 175, 218, 
	174, 175, 219, 174, 175, 220, 174, 175, 
	201, 174, 221, 0, 222, 0, 223, 0, 
	224, 0, 102, 0, 223, 0, 225, 0, 
	226, 0, 227, 0, 228, 0, 229, 0, 
	230, 0, 231, 0, 232, 233, 0, 234, 
	0, 235, 0, 236, 0, 237, 0, 238, 
	0, 239, 0, 240, 0, 242, 241, 244, 
	243, 244, 245, 246, 247, 248, 246, 249, 
	250, 251, 252, 253, 254, 245, 243, 244, 
	255, 243, 244, 256, 243, 244, 257, 243, 
	244, 258, 243, 244, 259, 243, 244, 260, 
	243, 244, 261, 243, 244, 262, 243, 244, 
	263, 243, 244, 264, 243, 244, 265, 243, 
	244, 266, 243, 244, 267, 243, 244, 268, 
	243, 244, 269, 243, 244, 270, 271, 243, 
	244, 272, 243, 244, 273, 243, 244, 274, 
	243, 244, 270, 243, 244, 275, 243, 244, 
	276, 243, 244, 277, 243, 244, 278, 243, 
	244, 269, 243, 244, 279, 243, 244, 280, 
	243, 244, 281, 243, 244, 282, 243, 244, 
	272, 243, 244, 281, 243, 244, 283, 243, 
	244, 284, 243, 244, 285, 243, 244, 286, 
	243, 244, 287, 243, 244, 288, 243, 244, 
	278, 243, 244, 289, 243, 244, 290, 243, 
	244, 272, 243, 292, 291, 294, 293, 294, 
	295, 296, 297, 298, 296, 299, 300, 301, 
	302, 303, 304, 295, 293, 294, 305, 293, 
	294, 306, 293, 294, 307, 293, 294, 308, 
	293, 294, 309, 293, 294, 310, 293, 294, 
	311, 293, 294, 312, 293, 294, 313, 293, 
	294, 314, 293, 294, 315, 293, 294, 316, 
	293, 294, 317, 293, 294, 318, 293, 294, 
	319, 293, 294, 320, 321, 293, 294, 322, 
	323, 293, 294, 324, 293, 294, 325, 293, 
	294, 319, 293, 294, 326, 293, 294, 327, 
	293, 294, 328, 293, 294, 322, 293, 294, 
	329, 293, 294, 330, 293, 294, 324, 293, 
	294, 331, 293, 294, 332, 293, 294, 333, 
	293, 294, 334, 293, 294, 322, 293, 294, 
	333, 293, 294, 335, 293, 294, 336, 293, 
	294, 337, 293, 294, 338, 293, 294, 339, 
	293, 294, 340, 293, 294, 341, 293, 294, 
	342, 319, 293, 294, 343, 293, 294, 344, 
	293, 294, 345, 293, 294, 346, 293, 294, 
	347, 293, 294, 325, 293, 294, 348, 293, 
	294, 349, 293, 294, 322, 293, 350, 0, 
	351, 0, 102, 0, 352, 353, 352, 0, 
	356, 355, 357, 358, 355, 354, 0, 360, 
	361, 359, 0, 360, 359, 356, 362, 360, 
	361, 362, 359, 356, 363, 364, 365, 366, 
	367, 368, 369, 370, 371, 372, 373, 374, 
	375, 376, 363, 0, 377, 0
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	0, 2, 4, 4, 5, 15, 17, 31, 
	34, 37, 52, 112, 161, 166, 167, 279, 
	282, 3, 6, 7, 8, 9, 8, 8, 
	9, 8, 10, 10, 10, 11, 10, 10, 
	10, 11, 12, 13, 14, 4, 14, 15, 
	4, 16, 18, 19, 20, 21, 22, 23, 
	24, 25, 26, 27, 28, 29, 30, 288, 
	32, 33, 33, 4, 16, 35, 36, 4, 
	35, 34, 36, 38, 39, 40, 41, 42, 
	43, 44, 45, 44, 45, 45, 4, 46, 
	47, 48, 49, 50, 51, 4, 4, 5, 
	15, 17, 31, 34, 37, 52, 112, 161, 
	166, 167, 279, 282, 53, 108, 31, 54, 
	55, 56, 57, 58, 59, 58, 59, 59, 
	4, 60, 74, 75, 80, 85, 90, 91, 
	105, 61, 62, 63, 64, 65, 66, 67, 
	68, 69, 70, 71, 72, 73, 4, 51, 
	76, 77, 74, 78, 79, 81, 82, 83, 
	84, 86, 87, 88, 89, 92, 93, 94, 
	95, 96, 97, 98, 99, 100, 101, 102, 
	103, 104, 106, 107, 109, 110, 111, 113, 
	114, 115, 116, 117, 118, 119, 118, 119, 
	119, 4, 120, 134, 140, 144, 147, 121, 
	122, 123, 124, 125, 126, 127, 128, 129, 
	130, 131, 132, 133, 4, 135, 136, 137, 
	138, 139, 51, 141, 142, 143, 145, 146, 
	148, 149, 150, 151, 152, 153, 154, 155, 
	156, 157, 158, 159, 160, 162, 163, 164, 
	165, 168, 169, 170, 171, 172, 173, 174, 
	175, 226, 176, 177, 178, 179, 180, 181, 
	182, 183, 184, 183, 184, 184, 4, 185, 
	199, 200, 205, 210, 215, 216, 223, 186, 
	187, 188, 189, 190, 191, 192, 193, 194, 
	195, 196, 197, 198, 4, 51, 201, 202, 
	199, 203, 204, 206, 207, 208, 209, 211, 
	212, 213, 214, 217, 218, 219, 220, 221, 
	222, 224, 225, 227, 228, 227, 228, 228, 
	4, 229, 243, 244, 253, 256, 261, 262, 
	276, 230, 231, 232, 233, 234, 235, 236, 
	237, 238, 239, 240, 241, 242, 4, 51, 
	245, 249, 243, 246, 247, 248, 250, 251, 
	252, 254, 255, 257, 258, 259, 260, 263, 
	264, 265, 266, 267, 268, 269, 270, 271, 
	272, 273, 274, 275, 277, 278, 280, 281, 
	282, 283, 284, 286, 287, 285, 283, 284, 
	285, 283, 286, 287, 5, 15, 17, 31, 
	34, 37, 52, 112, 161, 166, 167, 279, 
	282, 0
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
	27, 51, 0, 0, 0, 0, 0, 0, 
	0, 57, 140, 0, 54, 0, 81, 84, 
	0, 0, 0, 0, 21, 31, 126, 60, 
	57, 31, 63, 57, 63, 63, 63, 63, 
	63, 63, 63, 66, 0, 0, 0, 0, 
	0, 0, 0, 57, 140, 0, 54, 0, 
	72, 33, 84, 84, 84, 84, 84, 84, 
	84, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 15, 15, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 57, 140, 0, 54, 
	0, 69, 33, 84, 84, 84, 84, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 13, 0, 0, 0, 
	0, 0, 13, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 57, 140, 0, 54, 0, 78, 33, 
	84, 84, 84, 84, 84, 84, 84, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 19, 19, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 57, 140, 0, 54, 0, 
	75, 33, 84, 84, 84, 84, 84, 84, 
	84, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 17, 17, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 37, 37, 54, 37, 87, 0, 
	0, 39, 0, 0, 93, 90, 41, 96, 
	90, 96, 96, 96, 96, 96, 96, 96, 
	99, 0
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
	43
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 288;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 128 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 616 "lib/gherkin/rb_lexer/id.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 138 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
        
# line 625 "lib/gherkin/rb_lexer/id.rb"
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
# line 9 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
          @start_col = p - @last_newline - "#{@keyword}:".length
        		end
when 1 then
# line 15 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
when 2 then
# line 20 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @content_start = p
        		end
when 3 then
# line 24 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @docstring_content_type_start = p
        		end
when 4 then
# line 27 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @docstring_content_type_end = p
        		end
when 5 then
# line 31 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          con_type = utf8_pack(data[@docstring_content_type_start...@docstring_content_type_end]).strip
          @listener.doc_string(con_type, con, @current_line) 
        		end
when 6 then
# line 36 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          p = store_keyword_content(:feature, data, p, eof)
        		end
when 7 then
# line 40 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          p = store_keyword_content(:background, data, p, eof)
        		end
when 8 then
# line 44 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          p = store_keyword_content(:scenario, data, p, eof)
        		end
when 9 then
# line 48 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          p = store_keyword_content(:scenario_outline, data, p, eof)
        		end
when 10 then
# line 52 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          p = store_keyword_content(:examples, data, p, eof)
        		end
when 11 then
# line 56 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
when 12 then
# line 61 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
when 13 then
# line 67 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
when 14 then
# line 73 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @line_number += 1
        		end
when 15 then
# line 77 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @last_newline = p + 1
        		end
when 16 then
# line 81 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @keyword_start ||= p
        		end
when 17 then
# line 85 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
when 18 then
# line 90 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @next_keyword_start = p
        		end
when 19 then
# line 94 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
when 20 then
# line 100 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @content_start = p
        		end
when 21 then
# line 104 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\n/, "\n").gsub(/\\\\/, "\\")
        		end
when 22 then
# line 109 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
when 23 then
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 869 "lib/gherkin/rb_lexer/id.rb"
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
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 908 "lib/gherkin/rb_lexer/id.rb"
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

# line 139 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/id.rb.rl"
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
