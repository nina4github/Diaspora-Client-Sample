
#line 1 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
#include <assert.h>
#include <ruby.h>

#if defined(_WIN32)
#include <stddef.h>
#endif

#ifdef HAVE_RUBY_RE_H
#include <ruby/re.h>
#else
#include <re.h>
#endif

#ifdef HAVE_RUBY_ENCODING_H
#include <ruby/encoding.h>
#define ENCODED_STR_NEW(ptr, len) \
    rb_enc_str_new(ptr, len, rb_utf8_encoding())
#else
#define ENCODED_STR_NEW(ptr, len) \
    rb_str_new(ptr, len)
#endif

#ifndef RSTRING_PTR
#define RSTRING_PTR(s) (RSTRING(s)->ptr)
#endif

#ifndef RSTRING_LEN
#define RSTRING_LEN(s) (RSTRING(s)->len)
#endif

#define DATA_GET(FROM, TYPE, NAME) \
  Data_Get_Struct(FROM, TYPE, NAME); \
  if (NAME == NULL) { \
    rb_raise(rb_eArgError, "NULL found for " # NAME " when it shouldn't be."); \
  }
 
typedef struct lexer_state {
  int content_len;
  int line_number;
  int current_line;
  int start_col;
  size_t mark;
  size_t keyword_start;
  size_t keyword_end;
  size_t next_keyword_start;
  size_t content_start;
  size_t content_end;
  size_t docstring_content_type_start;
  size_t docstring_content_type_end;
  size_t query_start;
  size_t last_newline;
  size_t final_newline;
} lexer_state;

static VALUE mGherkin;
static VALUE mGherkinLexer;
static VALUE mCLexer;
static VALUE cI18nLexer;
static VALUE rb_eGherkinLexingError;

#define LEN(AT, P) (P - data - lexer->AT)
#define MARK(M, P) (lexer->M = (P) - data)
#define PTR_TO(P) (data + lexer->P)

#define STORE_KW_END_CON(EVENT) \
  store_multiline_kw_con(listener, # EVENT, \
    PTR_TO(keyword_start), LEN(keyword_start, PTR_TO(keyword_end - 1)), \
    PTR_TO(content_start), LEN(content_start, PTR_TO(content_end)), \
    lexer->current_line, lexer->start_col); \
    if (lexer->content_end != 0) { \
      p = PTR_TO(content_end - 1); \
    } \
    lexer->content_end = 0

#define STORE_ATTR(ATTR) \
    store_attr(listener, # ATTR, \
      PTR_TO(content_start), LEN(content_start, p), \
      lexer->line_number)


#line 254 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"


/** Data **/

#line 89 "ext/gherkin_lexer_is/gherkin_lexer_is.c"
static const char _lexer_actions[] = {
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8, 1, 9, 1, 10, 1, 
	11, 1, 12, 1, 13, 1, 16, 1, 
	17, 1, 18, 1, 19, 1, 20, 1, 
	21, 1, 22, 1, 23, 2, 1, 18, 
	2, 4, 5, 2, 13, 0, 2, 14, 
	15, 2, 17, 0, 2, 17, 2, 2, 
	17, 16, 2, 17, 19, 2, 18, 6, 
	2, 18, 7, 2, 18, 8, 2, 18, 
	9, 2, 18, 10, 2, 18, 16, 2, 
	20, 21, 2, 22, 0, 2, 22, 2, 
	2, 22, 16, 2, 22, 19, 3, 3, 
	14, 15, 3, 5, 14, 15, 3, 11, 
	14, 15, 3, 12, 14, 15, 3, 13, 
	14, 15, 3, 14, 15, 18, 3, 17, 
	14, 15, 4, 1, 14, 15, 18, 4, 
	4, 5, 14, 15, 4, 17, 0, 14, 
	15
};

static const short _lexer_key_offsets[] = {
	0, 0, 18, 19, 21, 22, 23, 24, 
	26, 43, 44, 45, 47, 49, 54, 59, 
	64, 69, 73, 77, 79, 80, 81, 82, 
	83, 84, 85, 86, 87, 88, 89, 90, 
	91, 92, 93, 94, 99, 106, 111, 112, 
	113, 114, 115, 116, 117, 118, 119, 120, 
	121, 122, 124, 125, 126, 140, 142, 145, 
	147, 149, 166, 167, 168, 169, 170, 171, 
	172, 173, 174, 175, 176, 177, 178, 191, 
	193, 196, 198, 200, 202, 204, 206, 208, 
	210, 212, 214, 216, 218, 220, 222, 224, 
	226, 228, 230, 232, 234, 236, 238, 240, 
	242, 244, 246, 248, 250, 252, 254, 256, 
	258, 262, 264, 266, 268, 270, 272, 274, 
	276, 278, 280, 282, 284, 286, 288, 290, 
	292, 295, 297, 299, 301, 303, 305, 307, 
	309, 311, 313, 315, 317, 319, 321, 323, 
	325, 327, 329, 331, 332, 333, 334, 335, 
	336, 337, 338, 345, 347, 349, 351, 353, 
	355, 357, 359, 361, 363, 365, 368, 369, 
	370, 371, 372, 373, 374, 375, 376, 377, 
	378, 379, 391, 393, 395, 397, 399, 401, 
	403, 405, 407, 409, 411, 413, 415, 417, 
	419, 421, 423, 425, 427, 429, 431, 433, 
	435, 437, 439, 441, 444, 446, 448, 450, 
	452, 454, 456, 458, 460, 462, 464, 466, 
	468, 470, 472, 474, 476, 478, 480, 482, 
	484, 486, 488, 490, 492, 494, 496, 498, 
	500, 502, 505, 507, 509, 511, 513, 515, 
	517, 519, 521, 523, 525, 527, 529, 531, 
	533, 535, 537, 538, 539, 540, 541, 542, 
	543, 544, 546, 547, 548, 549, 550, 551, 
	552, 553, 554, 555, 556, 557, 558, 559, 
	560, 561, 562, 574, 576, 579, 581, 583, 
	585, 587, 589, 591, 593, 595, 597, 599, 
	601, 603, 605, 607, 609, 611, 613, 615, 
	617, 619, 621, 623, 625, 627, 629, 631, 
	633, 635, 637, 639, 641, 645, 647, 649, 
	651, 653, 655, 657, 659, 661, 663, 664, 
	665, 666, 667, 668, 672, 678, 681, 683, 
	689, 706, 708, 710, 712, 714, 716, 718, 
	720, 722, 724, 726, 728, 730, 732, 734, 
	736, 738, 740, 742, 744, 746, 748, 750, 
	752, 754, 756, 758, 760, 762, 764, 766, 
	768, 770, 772, 774, 776, 778, 780, 782, 
	786, 788, 790, 792, 794, 796, 798, 800, 
	802, 804, 806, 808, 810, 812, 814, 816, 
	819, 821, 823, 825, 827, 829, 831, 833, 
	835, 837, 839, 841, 843, 845, 847, 849, 
	851, 853, 854, 855, 856, 857, 858, 859
};

static const char _lexer_trans_keys[] = {
	-61, -17, 10, 32, 34, 35, 37, 42, 
	64, 65, 66, 68, 69, 76, 79, 124, 
	9, 13, -98, -61, 101, -95, 32, 10, 
	10, 13, -61, 10, 32, 34, 35, 37, 
	42, 64, 65, 66, 68, 69, 76, 79, 
	124, 9, 13, 34, 34, 10, 13, 10, 
	13, 10, 32, 34, 9, 13, 10, 32, 
	34, 9, 13, 10, 32, 34, 9, 13, 
	10, 32, 34, 9, 13, 10, 32, 9, 
	13, 10, 32, 9, 13, 10, 13, 10, 
	95, 70, 69, 65, 84, 85, 82, 69, 
	95, 69, 78, 68, 95, 37, 13, 32, 
	64, 9, 10, 9, 10, 13, 32, 64, 
	11, 12, 10, 32, 64, 9, 13, 116, 
	98, 117, 114, -61, -80, 97, 114, -61, 
	-95, 115, 58, 105, 10, 10, -61, 10, 
	32, 35, 37, 42, 64, 65, 66, 69, 
	76, 79, 9, 13, -98, 10, -61, 10, 
	101, -95, 10, 10, 32, -61, 10, 32, 
	34, 35, 37, 42, 64, 65, 66, 68, 
	69, 76, 79, 124, 9, 13, 97, 107, 
	103, 114, 117, 110, 110, 117, 114, 58, 
	10, 10, -61, 10, 32, 35, 37, 42, 
	64, 65, 69, 76, 79, 9, 13, -98, 
	10, -61, 10, 101, -95, 10, 10, 32, 
	10, 103, 10, 97, 10, 114, 10, 95, 
	10, 70, 10, 69, 10, 65, 10, 84, 
	10, 85, 10, 82, 10, 69, 10, 95, 
	10, 69, 10, 78, 10, 68, 10, 95, 
	10, 37, 10, 116, 10, 98, 10, 117, 
	10, 114, -61, 10, -80, 10, 10, 97, 
	10, 114, -61, 10, -95, 10, 10, 115, 
	10, 58, 10, 102, 105, 110, 10, 103, 
	10, 105, 10, 110, 10, 108, 10, 101, 
	10, 105, 10, 107, 10, 105, -61, 10, 
	-67, 10, 10, 115, 10, 105, 10, 110, 
	10, 103, 10, 32, 10, 65, 68, 10, 
	116, 10, 98, 10, 117, 10, 114, -61, 
	10, -80, 10, 10, 97, 10, 114, -61, 
	10, -95, 10, 10, 115, 10, 97, 10, 
	114, -61, 10, -90, 10, 10, 109, 10, 
	97, 10, 103, -61, -90, 109, 105, 58, 
	10, 10, 10, 32, 35, 69, 124, 9, 
	13, 10, 105, 10, 103, 10, 105, 10, 
	110, 10, 108, 10, 101, 10, 105, 10, 
	107, 10, 105, 10, 58, 102, 105, 110, 
	103, 105, 110, 108, 101, 105, 107, 105, 
	58, 10, 10, 10, 32, 35, 37, 64, 
	65, 66, 68, 69, 76, 9, 13, 10, 
	95, 10, 70, 10, 69, 10, 65, 10, 
	84, 10, 85, 10, 82, 10, 69, 10, 
	95, 10, 69, 10, 78, 10, 68, 10, 
	95, 10, 37, 10, 116, 10, 98, 10, 
	117, 10, 114, -61, 10, -80, 10, 10, 
	97, 10, 114, -61, 10, -95, 10, 10, 
	115, 10, 58, 105, 10, 114, 10, 58, 
	10, 97, 10, 107, 10, 103, 10, 114, 
	10, 117, 10, 110, 10, 110, 10, 117, 
	-61, 10, -90, 10, 10, 109, 10, 105, 
	10, 105, 10, 103, 10, 105, 10, 110, 
	10, 108, 10, 101, 10, 105, 10, 107, 
	-61, 10, -67, 10, 10, 115, 10, 105, 
	10, 110, 10, 103, 10, 32, 10, 65, 
	68, 10, 116, 10, 98, 10, 117, 10, 
	114, -61, 10, -80, 10, 10, 97, 10, 
	114, -61, 10, -95, 10, 10, 115, 10, 
	97, -61, 10, -90, 10, 10, 109, 10, 
	97, -61, -67, 115, 105, 110, 103, 32, 
	65, 68, 116, 98, 117, 114, -61, -80, 
	97, 114, -61, -95, 115, 97, 114, 58, 
	10, 10, -61, 10, 32, 35, 37, 42, 
	64, 65, 69, 79, 9, 13, -98, 10, 
	-61, 10, 101, -95, 10, 10, 32, 10, 
	103, 10, 97, 10, 114, 10, 95, 10, 
	70, 10, 69, 10, 65, 10, 84, 10, 
	85, 10, 82, 10, 69, 10, 95, 10, 
	69, 10, 78, 10, 68, 10, 95, 10, 
	37, 10, 116, 10, 98, 10, 117, 10, 
	114, -61, 10, -80, 10, 10, 97, 10, 
	114, -61, 10, -95, 10, 10, 115, 10, 
	58, 10, 102, 105, 110, 10, 103, 10, 
	105, 10, 110, 10, 108, 10, 101, 10, 
	105, 10, 107, 10, 105, 10, 103, -61, 
	-90, 109, 97, 103, 32, 124, 9, 13, 
	10, 32, 92, 124, 9, 13, 10, 92, 
	124, 10, 92, 10, 32, 92, 124, 9, 
	13, -61, 10, 32, 34, 35, 37, 42, 
	64, 65, 66, 68, 69, 76, 79, 124, 
	9, 13, 10, 103, 10, 97, 10, 114, 
	10, 95, 10, 70, 10, 69, 10, 65, 
	10, 84, 10, 85, 10, 82, 10, 69, 
	10, 95, 10, 69, 10, 78, 10, 68, 
	10, 95, 10, 37, 10, 116, 10, 98, 
	10, 117, 10, 114, -61, 10, -80, 10, 
	10, 97, 10, 114, -61, 10, -95, 10, 
	10, 115, 10, 58, 10, 97, 10, 107, 
	10, 103, 10, 114, 10, 117, 10, 110, 
	10, 110, 10, 117, 10, 114, 10, 102, 
	105, 110, 10, 103, 10, 105, 10, 110, 
	10, 108, 10, 101, 10, 105, 10, 107, 
	10, 105, -61, 10, -67, 10, 10, 115, 
	10, 105, 10, 110, 10, 103, 10, 32, 
	10, 65, 68, 10, 116, 10, 98, 10, 
	117, 10, 114, -61, 10, -80, 10, 10, 
	97, 10, 114, -61, 10, -95, 10, 10, 
	115, 10, 97, -61, 10, -90, 10, 10, 
	109, 10, 97, 10, 103, 114, 103, 97, 
	114, -69, -65, 0
};

static const char _lexer_single_lengths[] = {
	0, 16, 1, 2, 1, 1, 1, 2, 
	15, 1, 1, 2, 2, 3, 3, 3, 
	3, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 3, 5, 3, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 2, 1, 1, 12, 2, 3, 2, 
	2, 15, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 11, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	4, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 1, 1, 1, 1, 1, 
	1, 1, 5, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 10, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 3, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 1, 1, 1, 1, 1, 1, 
	1, 2, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 10, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 4, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 1, 1, 
	1, 1, 1, 2, 4, 3, 2, 4, 
	15, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 4, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 1, 1, 1, 1, 1, 1, 0
};

static const char _lexer_range_lengths[] = {
	0, 1, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 1, 1, 1, 
	1, 1, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 1, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
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
	0, 0, 0, 1, 1, 0, 0, 1, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0
};

static const short _lexer_index_offsets[] = {
	0, 0, 18, 20, 23, 25, 27, 29, 
	32, 49, 51, 53, 56, 59, 64, 69, 
	74, 79, 83, 87, 90, 92, 94, 96, 
	98, 100, 102, 104, 106, 108, 110, 112, 
	114, 116, 118, 120, 125, 132, 137, 139, 
	141, 143, 145, 147, 149, 151, 153, 155, 
	157, 159, 162, 164, 166, 180, 183, 187, 
	190, 193, 210, 212, 214, 216, 218, 220, 
	222, 224, 226, 228, 230, 232, 234, 247, 
	250, 254, 257, 260, 263, 266, 269, 272, 
	275, 278, 281, 284, 287, 290, 293, 296, 
	299, 302, 305, 308, 311, 314, 317, 320, 
	323, 326, 329, 332, 335, 338, 341, 344, 
	347, 352, 355, 358, 361, 364, 367, 370, 
	373, 376, 379, 382, 385, 388, 391, 394, 
	397, 401, 404, 407, 410, 413, 416, 419, 
	422, 425, 428, 431, 434, 437, 440, 443, 
	446, 449, 452, 455, 457, 459, 461, 463, 
	465, 467, 469, 476, 479, 482, 485, 488, 
	491, 494, 497, 500, 503, 506, 510, 512, 
	514, 516, 518, 520, 522, 524, 526, 528, 
	530, 532, 544, 547, 550, 553, 556, 559, 
	562, 565, 568, 571, 574, 577, 580, 583, 
	586, 589, 592, 595, 598, 601, 604, 607, 
	610, 613, 616, 619, 623, 626, 629, 632, 
	635, 638, 641, 644, 647, 650, 653, 656, 
	659, 662, 665, 668, 671, 674, 677, 680, 
	683, 686, 689, 692, 695, 698, 701, 704, 
	707, 710, 714, 717, 720, 723, 726, 729, 
	732, 735, 738, 741, 744, 747, 750, 753, 
	756, 759, 762, 764, 766, 768, 770, 772, 
	774, 776, 779, 781, 783, 785, 787, 789, 
	791, 793, 795, 797, 799, 801, 803, 805, 
	807, 809, 811, 823, 826, 830, 833, 836, 
	839, 842, 845, 848, 851, 854, 857, 860, 
	863, 866, 869, 872, 875, 878, 881, 884, 
	887, 890, 893, 896, 899, 902, 905, 908, 
	911, 914, 917, 920, 923, 928, 931, 934, 
	937, 940, 943, 946, 949, 952, 955, 957, 
	959, 961, 963, 965, 969, 975, 979, 982, 
	988, 1005, 1008, 1011, 1014, 1017, 1020, 1023, 
	1026, 1029, 1032, 1035, 1038, 1041, 1044, 1047, 
	1050, 1053, 1056, 1059, 1062, 1065, 1068, 1071, 
	1074, 1077, 1080, 1083, 1086, 1089, 1092, 1095, 
	1098, 1101, 1104, 1107, 1110, 1113, 1116, 1119, 
	1124, 1127, 1130, 1133, 1136, 1139, 1142, 1145, 
	1148, 1151, 1154, 1157, 1160, 1163, 1166, 1169, 
	1173, 1176, 1179, 1182, 1185, 1188, 1191, 1194, 
	1197, 1200, 1203, 1206, 1209, 1212, 1215, 1218, 
	1221, 1224, 1226, 1228, 1230, 1232, 1234, 1236
};

static const short _lexer_trans_targs[] = {
	2, 397, 8, 8, 9, 19, 21, 5, 
	35, 38, 58, 139, 157, 242, 314, 315, 
	8, 0, 3, 0, 4, 394, 0, 5, 
	0, 6, 0, 0, 7, 8, 20, 7, 
	2, 8, 8, 9, 19, 21, 5, 35, 
	38, 58, 139, 157, 242, 314, 315, 8, 
	0, 10, 0, 11, 0, 13, 12, 12, 
	13, 12, 12, 14, 14, 15, 14, 14, 
	14, 14, 15, 14, 14, 14, 14, 16, 
	14, 14, 14, 14, 17, 14, 14, 8, 
	18, 18, 0, 8, 18, 18, 0, 8, 
	20, 19, 8, 0, 22, 0, 23, 0, 
	24, 0, 25, 0, 26, 0, 27, 0, 
	28, 0, 29, 0, 30, 0, 31, 0, 
	32, 0, 33, 0, 34, 0, 399, 0, 
	0, 0, 0, 0, 36, 37, 8, 37, 
	37, 35, 36, 36, 8, 37, 35, 37, 
	0, 39, 0, 40, 0, 41, 0, 42, 
	0, 43, 0, 44, 0, 45, 0, 46, 
	0, 47, 0, 48, 0, 49, 0, 50, 
	393, 0, 52, 51, 52, 51, 53, 52, 
	52, 8, 324, 56, 8, 338, 350, 359, 
	368, 392, 52, 51, 54, 52, 51, 55, 
	52, 321, 51, 56, 52, 51, 52, 57, 
	51, 2, 8, 8, 9, 19, 21, 5, 
	35, 38, 58, 139, 157, 242, 314, 315, 
	8, 0, 59, 0, 60, 0, 61, 0, 
	62, 0, 63, 0, 64, 0, 65, 0, 
	66, 0, 67, 0, 68, 0, 70, 69, 
	70, 69, 71, 70, 70, 8, 78, 74, 
	8, 92, 104, 113, 138, 70, 69, 72, 
	70, 69, 73, 70, 75, 69, 74, 70, 
	69, 70, 57, 69, 70, 76, 69, 70, 
	77, 69, 70, 74, 69, 70, 79, 69, 
	70, 80, 69, 70, 81, 69, 70, 82, 
	69, 70, 83, 69, 70, 84, 69, 70, 
	85, 69, 70, 86, 69, 70, 87, 69, 
	70, 88, 69, 70, 89, 69, 70, 90, 
	69, 70, 91, 69, 70, 8, 69, 70, 
	93, 69, 70, 94, 69, 70, 95, 69, 
	70, 96, 69, 97, 70, 69, 98, 70, 
	69, 70, 99, 69, 70, 100, 69, 101, 
	70, 69, 102, 70, 69, 70, 103, 69, 
	70, 57, 69, 70, 74, 105, 74, 69, 
	70, 106, 69, 70, 107, 69, 70, 108, 
	69, 70, 109, 69, 70, 110, 69, 70, 
	111, 69, 70, 112, 69, 70, 103, 69, 
	114, 70, 69, 115, 70, 69, 70, 116, 
	69, 70, 117, 69, 70, 118, 69, 70, 
	119, 69, 70, 120, 69, 70, 121, 134, 
	69, 70, 122, 69, 70, 123, 69, 70, 
	124, 69, 70, 125, 69, 126, 70, 69, 
	127, 70, 69, 70, 128, 69, 70, 129, 
	69, 130, 70, 69, 131, 70, 69, 70, 
	132, 69, 70, 133, 69, 70, 103, 69, 
	135, 70, 69, 136, 70, 69, 70, 137, 
	69, 70, 103, 69, 70, 74, 69, 140, 
	0, 141, 0, 142, 0, 143, 0, 144, 
	0, 146, 145, 146, 145, 146, 146, 8, 
	147, 8, 146, 145, 146, 148, 145, 146, 
	149, 145, 146, 150, 145, 146, 151, 145, 
	146, 152, 145, 146, 153, 145, 146, 154, 
	145, 146, 155, 145, 146, 156, 145, 146, 
	57, 145, 5, 158, 5, 0, 159, 0, 
	160, 0, 161, 0, 162, 0, 163, 0, 
	164, 0, 165, 0, 166, 0, 167, 0, 
	169, 168, 169, 168, 169, 169, 8, 170, 
	8, 184, 198, 206, 210, 218, 169, 168, 
	169, 171, 168, 169, 172, 168, 169, 173, 
	168, 169, 174, 168, 169, 175, 168, 169, 
	176, 168, 169, 177, 168, 169, 178, 168, 
	169, 179, 168, 169, 180, 168, 169, 181, 
	168, 169, 182, 168, 169, 183, 168, 169, 
	8, 168, 169, 185, 168, 169, 186, 168, 
	169, 187, 168, 169, 188, 168, 189, 169, 
	168, 190, 169, 168, 169, 191, 168, 169, 
	192, 168, 193, 169, 168, 194, 169, 168, 
	169, 195, 168, 169, 57, 196, 168, 169, 
	197, 168, 169, 57, 168, 169, 199, 168, 
	169, 200, 168, 169, 201, 168, 169, 202, 
	168, 169, 203, 168, 169, 204, 168, 169, 
	205, 168, 169, 196, 168, 207, 169, 168, 
	208, 169, 168, 169, 209, 168, 169, 197, 
	168, 169, 211, 168, 169, 212, 168, 169, 
	213, 168, 169, 214, 168, 169, 215, 168, 
	169, 216, 168, 169, 217, 168, 169, 209, 
	168, 219, 169, 168, 220, 169, 168, 169, 
	221, 168, 169, 222, 168, 169, 223, 168, 
	169, 224, 168, 169, 225, 168, 169, 226, 
	238, 168, 169, 227, 168, 169, 228, 168, 
	169, 229, 168, 169, 230, 168, 231, 169, 
	168, 232, 169, 168, 169, 233, 168, 169, 
	234, 168, 235, 169, 168, 236, 169, 168, 
	169, 237, 168, 169, 196, 168, 239, 169, 
	168, 240, 169, 168, 169, 241, 168, 169, 
	197, 168, 243, 0, 244, 0, 245, 0, 
	246, 0, 247, 0, 248, 0, 249, 0, 
	250, 310, 0, 251, 0, 252, 0, 253, 
	0, 254, 0, 255, 0, 256, 0, 257, 
	0, 258, 0, 259, 0, 260, 0, 261, 
	0, 262, 0, 263, 0, 264, 0, 266, 
	265, 266, 265, 267, 266, 266, 8, 274, 
	270, 8, 288, 300, 309, 266, 265, 268, 
	266, 265, 269, 266, 271, 265, 270, 266, 
	265, 266, 57, 265, 266, 272, 265, 266, 
	273, 265, 266, 270, 265, 266, 275, 265, 
	266, 276, 265, 266, 277, 265, 266, 278, 
	265, 266, 279, 265, 266, 280, 265, 266, 
	281, 265, 266, 282, 265, 266, 283, 265, 
	266, 284, 265, 266, 285, 265, 266, 286, 
	265, 266, 287, 265, 266, 8, 265, 266, 
	289, 265, 266, 290, 265, 266, 291, 265, 
	266, 292, 265, 293, 266, 265, 294, 266, 
	265, 266, 295, 265, 266, 296, 265, 297, 
	266, 265, 298, 266, 265, 266, 299, 265, 
	266, 57, 265, 266, 270, 301, 270, 265, 
	266, 302, 265, 266, 303, 265, 266, 304, 
	265, 266, 305, 265, 266, 306, 265, 266, 
	307, 265, 266, 308, 265, 266, 299, 265, 
	266, 270, 265, 311, 0, 312, 0, 313, 
	0, 263, 0, 5, 0, 315, 316, 315, 
	0, 320, 319, 318, 316, 319, 317, 0, 
	318, 316, 317, 0, 318, 317, 320, 319, 
	318, 316, 319, 317, 2, 320, 320, 9, 
	19, 21, 5, 35, 38, 58, 139, 157, 
	242, 314, 315, 320, 0, 52, 322, 51, 
	52, 323, 51, 52, 56, 51, 52, 325, 
	51, 52, 326, 51, 52, 327, 51, 52, 
	328, 51, 52, 329, 51, 52, 330, 51, 
	52, 331, 51, 52, 332, 51, 52, 333, 
	51, 52, 334, 51, 52, 335, 51, 52, 
	336, 51, 52, 337, 51, 52, 8, 51, 
	52, 339, 51, 52, 340, 51, 52, 341, 
	51, 52, 342, 51, 343, 52, 51, 344, 
	52, 51, 52, 345, 51, 52, 346, 51, 
	347, 52, 51, 348, 52, 51, 52, 349, 
	51, 52, 57, 51, 52, 351, 51, 52, 
	352, 51, 52, 353, 51, 52, 354, 51, 
	52, 355, 51, 52, 356, 51, 52, 357, 
	51, 52, 358, 51, 52, 349, 51, 52, 
	56, 360, 56, 51, 52, 361, 51, 52, 
	362, 51, 52, 363, 51, 52, 364, 51, 
	52, 365, 51, 52, 366, 51, 52, 367, 
	51, 52, 349, 51, 369, 52, 51, 370, 
	52, 51, 52, 371, 51, 52, 372, 51, 
	52, 373, 51, 52, 374, 51, 52, 375, 
	51, 52, 376, 388, 51, 52, 377, 51, 
	52, 378, 51, 52, 379, 51, 52, 380, 
	51, 381, 52, 51, 382, 52, 51, 52, 
	383, 51, 52, 384, 51, 385, 52, 51, 
	386, 52, 51, 52, 387, 51, 52, 358, 
	51, 389, 52, 51, 390, 52, 51, 52, 
	391, 51, 52, 349, 51, 52, 56, 51, 
	143, 0, 395, 0, 396, 0, 5, 0, 
	398, 0, 8, 0, 0, 0
};

static const unsigned char _lexer_trans_actions[] = {
	29, 0, 54, 0, 5, 1, 0, 29, 
	1, 29, 29, 29, 29, 29, 29, 35, 
	0, 43, 0, 43, 0, 0, 43, 0, 
	43, 0, 43, 43, 57, 110, 23, 0, 
	29, 54, 0, 5, 1, 0, 29, 1, 
	29, 29, 29, 29, 29, 29, 35, 0, 
	43, 0, 43, 0, 43, 135, 48, 9, 
	106, 11, 0, 130, 45, 45, 45, 3, 
	122, 33, 33, 33, 0, 122, 33, 33, 
	33, 0, 122, 33, 0, 33, 0, 102, 
	7, 7, 43, 54, 0, 0, 43, 114, 
	25, 0, 54, 43, 0, 43, 0, 43, 
	0, 43, 0, 43, 0, 43, 0, 43, 
	0, 43, 0, 43, 0, 43, 0, 43, 
	0, 43, 0, 43, 0, 43, 0, 43, 
	43, 43, 43, 43, 0, 27, 118, 27, 
	27, 51, 27, 0, 54, 0, 1, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	0, 43, 140, 57, 54, 0, 84, 54, 
	0, 75, 33, 84, 75, 84, 84, 84, 
	84, 84, 0, 0, 0, 54, 0, 0, 
	54, 0, 0, 0, 54, 0, 54, 17, 
	0, 63, 126, 31, 60, 57, 31, 63, 
	57, 63, 63, 63, 63, 63, 63, 66, 
	31, 43, 0, 43, 0, 43, 0, 43, 
	0, 43, 0, 43, 0, 43, 0, 43, 
	0, 43, 0, 43, 0, 43, 140, 57, 
	54, 0, 84, 54, 0, 72, 33, 84, 
	72, 84, 84, 84, 84, 0, 0, 0, 
	54, 0, 0, 54, 0, 0, 0, 54, 
	0, 54, 15, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 15, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 0, 54, 0, 0, 54, 
	0, 54, 0, 0, 54, 0, 0, 0, 
	54, 0, 0, 54, 0, 54, 0, 0, 
	54, 15, 0, 54, 0, 0, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 0, 54, 0, 
	0, 54, 0, 54, 0, 0, 54, 0, 
	0, 0, 54, 0, 0, 54, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 140, 57, 54, 0, 54, 0, 81, 
	84, 81, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	21, 0, 0, 0, 0, 43, 0, 43, 
	0, 43, 0, 43, 0, 43, 0, 43, 
	0, 43, 0, 43, 0, 43, 0, 43, 
	140, 57, 54, 0, 54, 0, 69, 33, 
	69, 84, 84, 84, 84, 84, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	13, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 0, 54, 
	0, 0, 54, 0, 54, 0, 0, 54, 
	0, 0, 0, 54, 0, 0, 54, 0, 
	54, 0, 0, 54, 13, 0, 0, 54, 
	0, 0, 54, 13, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 0, 54, 0, 
	0, 54, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 0, 54, 0, 0, 54, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 0, 54, 
	0, 0, 54, 0, 54, 0, 0, 54, 
	0, 0, 0, 54, 0, 0, 54, 0, 
	54, 0, 0, 54, 0, 0, 0, 54, 
	0, 0, 54, 0, 54, 0, 0, 54, 
	0, 0, 0, 43, 0, 43, 0, 43, 
	0, 43, 0, 43, 0, 43, 0, 43, 
	0, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 140, 
	57, 54, 0, 84, 54, 0, 78, 33, 
	84, 78, 84, 84, 84, 0, 0, 0, 
	54, 0, 0, 54, 0, 0, 0, 54, 
	0, 54, 19, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 19, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 0, 54, 0, 0, 54, 
	0, 54, 0, 0, 54, 0, 0, 0, 
	54, 0, 0, 54, 0, 54, 0, 0, 
	54, 19, 0, 54, 0, 0, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 0, 0, 
	43, 54, 37, 37, 87, 37, 37, 43, 
	0, 39, 0, 43, 0, 0, 54, 0, 
	0, 39, 0, 0, 96, 54, 0, 93, 
	90, 41, 96, 90, 96, 96, 96, 96, 
	96, 96, 99, 0, 43, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 17, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 0, 54, 0, 0, 
	54, 0, 54, 0, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 54, 0, 
	0, 54, 17, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 0, 54, 0, 0, 
	54, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 0, 54, 0, 0, 54, 0, 54, 
	0, 0, 54, 0, 0, 0, 54, 0, 
	0, 54, 0, 54, 0, 0, 54, 0, 
	0, 0, 54, 0, 0, 54, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	0, 43, 0, 43, 0, 43, 0, 43, 
	0, 43, 0, 43, 0, 0
};

static const unsigned char _lexer_eof_actions[] = {
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
};

static const int lexer_start = 1;
static const int lexer_first_final = 399;
static const int lexer_error = 0;

static const int lexer_en_main = 1;


#line 258 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"

static VALUE 
unindent(VALUE con, int start_col)
{
  VALUE re;
  // Gherkin will crash gracefully if the string representation of start_col pushes the pattern past 32 characters
  char pat[32]; 
  snprintf(pat, 32, "^[\t ]{0,%d}", start_col); 
  re = rb_reg_regcomp(rb_str_new2(pat));
  rb_funcall(con, rb_intern("gsub!"), 2, re, rb_str_new2(""));

  return Qnil;

}

static void 
store_kw_con(VALUE listener, const char * event_name, 
             const char * keyword_at, size_t keyword_length, 
             const char * at,         size_t length, 
             int current_line)
{
  VALUE con = Qnil, kw = Qnil;
  kw = ENCODED_STR_NEW(keyword_at, keyword_length);
  con = ENCODED_STR_NEW(at, length);
  rb_funcall(con, rb_intern("strip!"), 0);
  rb_funcall(listener, rb_intern(event_name), 3, kw, con, INT2FIX(current_line)); 
}

static void
store_multiline_kw_con(VALUE listener, const char * event_name,
                      const char * keyword_at, size_t keyword_length,
                      const char * at,         size_t length,
                      int current_line, int start_col)
{
  VALUE split;
  VALUE con = Qnil, kw = Qnil, name = Qnil, desc = Qnil;

  kw = ENCODED_STR_NEW(keyword_at, keyword_length);
  con = ENCODED_STR_NEW(at, length);

  unindent(con, start_col);
  
  split = rb_str_split(con, "\n");

  name = rb_funcall(split, rb_intern("shift"), 0);
  desc = rb_ary_join(split, rb_str_new2( "\n" ));

  if( name == Qnil ) 
  {
    name = rb_str_new2("");
  }
  if( rb_funcall(desc, rb_intern("size"), 0) == 0) 
  {
    desc = rb_str_new2("");
  }
  rb_funcall(name, rb_intern("strip!"), 0);
  rb_funcall(desc, rb_intern("rstrip!"), 0);
  rb_funcall(listener, rb_intern(event_name), 4, kw, name, desc, INT2FIX(current_line)); 
}

static void 
store_attr(VALUE listener, const char * attr_type,
           const char * at, size_t length, 
           int line)
{
  VALUE val = ENCODED_STR_NEW(at, length);
  rb_funcall(listener, rb_intern(attr_type), 2, val, INT2FIX(line));
}
static void 
store_docstring_content(VALUE listener, 
          int start_col, 
          const char *type_at, size_t type_length,
          const char *at, size_t length, 
          int current_line)
{
  VALUE re2;
  VALUE unescape_escaped_quotes;
  VALUE con = ENCODED_STR_NEW(at, length);
  VALUE con_type = ENCODED_STR_NEW(type_at, type_length);

  unindent(con, start_col);

  re2 = rb_reg_regcomp(rb_str_new2("\r\\Z"));
  unescape_escaped_quotes = rb_reg_regcomp(rb_str_new2("\\\\\"\\\\\"\\\\\""));
  rb_funcall(con, rb_intern("sub!"), 2, re2, rb_str_new2(""));
  rb_funcall(con_type, rb_intern("strip!"), 0);
  rb_funcall(con, rb_intern("gsub!"), 2, unescape_escaped_quotes, rb_str_new2("\"\"\""));
  rb_funcall(listener, rb_intern("doc_string"), 3, con_type, con, INT2FIX(current_line));
}
static void 
raise_lexer_error(const char * at, int line)
{ 
  rb_raise(rb_eGherkinLexingError, "Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information.", line, at);
}

static void lexer_init(lexer_state *lexer) {
  lexer->content_start = 0;
  lexer->content_end = 0;
  lexer->content_len = 0;
  lexer->docstring_content_type_start = 0;
  lexer->docstring_content_type_end = 0;
  lexer->mark = 0;
  lexer->keyword_start = 0;
  lexer->keyword_end = 0;
  lexer->next_keyword_start = 0;
  lexer->line_number = 1;
  lexer->last_newline = 0;
  lexer->final_newline = 0;
  lexer->start_col = 0;
}

static VALUE CLexer_alloc(VALUE klass)
{
  VALUE obj;
  lexer_state *lxr = ALLOC(lexer_state);
  lexer_init(lxr);

  obj = Data_Wrap_Struct(klass, NULL, -1, lxr);

  return obj;
}

static VALUE CLexer_init(VALUE self, VALUE listener)
{
  lexer_state *lxr; 
  rb_iv_set(self, "@listener", listener);
  
  lxr = NULL;
  DATA_GET(self, lexer_state, lxr);
  lexer_init(lxr);
  
  return self;
}

static VALUE CLexer_scan(VALUE self, VALUE input)
{
  VALUE input_copy;
  char *data;
  size_t len;
  VALUE listener = rb_iv_get(self, "@listener");

  lexer_state *lexer;
  lexer = NULL;
  DATA_GET(self, lexer_state, lexer);

  input_copy = rb_str_dup(input);

  rb_str_append(input_copy, rb_str_new2("\n%_FEATURE_END_%"));
  data = RSTRING_PTR(input_copy);
  len = RSTRING_LEN(input_copy);
  
  if (len == 0) { 
    rb_raise(rb_eGherkinLexingError, "No content to lex.");
  } else {

    const char *p, *pe, *eof;
    int cs = 0;
    
    VALUE current_row = Qnil;

    p = data;
    pe = data + len;
    eof = pe;
    
    assert(*pe == '\0' && "pointer does not end on NULL");
    
    
#line 979 "ext/gherkin_lexer_is/gherkin_lexer_is.c"
	{
	cs = lexer_start;
	}

#line 425 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
    
#line 986 "ext/gherkin_lexer_is/gherkin_lexer_is.c"
	{
	int _klen;
	unsigned int _trans;
	const char *_acts;
	unsigned int _nacts;
	const char *_keys;

	if ( p == pe )
		goto _test_eof;
	if ( cs == 0 )
		goto _out;
_resume:
	_keys = _lexer_trans_keys + _lexer_key_offsets[cs];
	_trans = _lexer_index_offsets[cs];

	_klen = _lexer_single_lengths[cs];
	if ( _klen > 0 ) {
		const char *_lower = _keys;
		const char *_mid;
		const char *_upper = _keys + _klen - 1;
		while (1) {
			if ( _upper < _lower )
				break;

			_mid = _lower + ((_upper-_lower) >> 1);
			if ( (*p) < *_mid )
				_upper = _mid - 1;
			else if ( (*p) > *_mid )
				_lower = _mid + 1;
			else {
				_trans += (_mid - _keys);
				goto _match;
			}
		}
		_keys += _klen;
		_trans += _klen;
	}

	_klen = _lexer_range_lengths[cs];
	if ( _klen > 0 ) {
		const char *_lower = _keys;
		const char *_mid;
		const char *_upper = _keys + (_klen<<1) - 2;
		while (1) {
			if ( _upper < _lower )
				break;

			_mid = _lower + (((_upper-_lower) >> 1) & ~1);
			if ( (*p) < _mid[0] )
				_upper = _mid - 2;
			else if ( (*p) > _mid[1] )
				_lower = _mid + 2;
			else {
				_trans += ((_mid - _keys)>>1);
				goto _match;
			}
		}
		_trans += _klen;
	}

_match:
	cs = _lexer_trans_targs[_trans];

	if ( _lexer_trans_actions[_trans] == 0 )
		goto _again;

	_acts = _lexer_actions + _lexer_trans_actions[_trans];
	_nacts = (unsigned int) *_acts++;
	while ( _nacts-- > 0 )
	{
		switch ( *_acts++ )
		{
	case 0:
#line 83 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
		MARK(content_start, p);
    lexer->current_line = lexer->line_number;
    lexer->start_col = lexer->content_start - lexer->last_newline - (lexer->keyword_end - lexer->keyword_start) + 2;
  }
	break;
	case 1:
#line 89 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    MARK(content_start, p);
  }
	break;
	case 2:
#line 93 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    lexer->current_line = lexer->line_number;
    lexer->start_col = p - data - lexer->last_newline;
  }
	break;
	case 3:
#line 98 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    int len = LEN(content_start, PTR_TO(final_newline));
    int type_len = LEN(docstring_content_type_start, PTR_TO(docstring_content_type_end));

    if (len < 0) len = 0;
    if (type_len < 0) len = 0;

    store_docstring_content(listener, lexer->start_col, PTR_TO(docstring_content_type_start), type_len, PTR_TO(content_start), len, lexer->current_line);
  }
	break;
	case 4:
#line 108 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{ 
    MARK(docstring_content_type_start, p);
  }
	break;
	case 5:
#line 112 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{ 
    MARK(docstring_content_type_end, p);
  }
	break;
	case 6:
#line 116 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    STORE_KW_END_CON(feature);
  }
	break;
	case 7:
#line 120 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    STORE_KW_END_CON(background);
  }
	break;
	case 8:
#line 124 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    STORE_KW_END_CON(scenario);
  }
	break;
	case 9:
#line 128 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    STORE_KW_END_CON(scenario_outline);
  }
	break;
	case 10:
#line 132 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    STORE_KW_END_CON(examples);
  }
	break;
	case 11:
#line 136 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    store_kw_con(listener, "step",
      PTR_TO(keyword_start), LEN(keyword_start, PTR_TO(keyword_end)),
      PTR_TO(content_start), LEN(content_start, p), 
      lexer->current_line);
  }
	break;
	case 12:
#line 143 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    STORE_ATTR(comment);
    lexer->mark = 0;
  }
	break;
	case 13:
#line 148 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    STORE_ATTR(tag);
    lexer->mark = 0;
  }
	break;
	case 14:
#line 153 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    lexer->line_number += 1;
    MARK(final_newline, p);
  }
	break;
	case 15:
#line 158 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    MARK(last_newline, p + 1);
  }
	break;
	case 16:
#line 162 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    if (lexer->mark == 0) {
      MARK(mark, p);
    }
  }
	break;
	case 17:
#line 168 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    MARK(keyword_end, p);
    MARK(keyword_start, PTR_TO(mark));
    MARK(content_start, p + 1);
    lexer->mark = 0;
  }
	break;
	case 18:
#line 175 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    MARK(content_end, p);
  }
	break;
	case 19:
#line 179 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    p = p - 1;
    lexer->current_line = lexer->line_number;
    current_row = rb_ary_new();
  }
	break;
	case 20:
#line 185 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
		MARK(content_start, p);
  }
	break;
	case 21:
#line 189 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    VALUE re_pipe, re_newline, re_backslash;
    VALUE con = ENCODED_STR_NEW(PTR_TO(content_start), LEN(content_start, p));
    rb_funcall(con, rb_intern("strip!"), 0);
    re_pipe      = rb_reg_regcomp(rb_str_new2("\\\\\\|"));
    re_newline   = rb_reg_regcomp(rb_str_new2("\\\\n"));
    re_backslash = rb_reg_regcomp(rb_str_new2("\\\\\\\\"));
    rb_funcall(con, rb_intern("gsub!"), 2, re_pipe,      rb_str_new2("|"));
    rb_funcall(con, rb_intern("gsub!"), 2, re_newline,   rb_str_new2("\n"));
    rb_funcall(con, rb_intern("gsub!"), 2, re_backslash, rb_str_new2("\\"));

    rb_ary_push(current_row, con);
  }
	break;
	case 22:
#line 203 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    rb_funcall(listener, rb_intern("row"), 2, current_row, INT2FIX(lexer->current_line));
  }
	break;
	case 23:
#line 207 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    int line;
    if (cs < lexer_first_final) {
      size_t count = 0;
      VALUE newstr_val;
      char *newstr;
      int newstr_count = 0;        
      size_t len;
      const char *buff;
      if (lexer->last_newline != 0) {
        len = LEN(last_newline, eof);
        buff = PTR_TO(last_newline);
      } else {
        len = strlen(data);
        buff = data;
      }

      // Allocate as a ruby string so that it gets cleaned up by GC
      newstr_val = rb_str_new(buff, len);
      newstr = RSTRING_PTR(newstr_val);


      for (count = 0; count < len; count++) {
        if(buff[count] == 10) {
          newstr[newstr_count] = '\0'; // terminate new string at first newline found
          break;
        } else {
          if (buff[count] == '%') {
            newstr[newstr_count++] = buff[count];
            newstr[newstr_count] = buff[count];
          } else {
            newstr[newstr_count] = buff[count];
          }
        }
        newstr_count++;
      }

      line = lexer->line_number;
      lexer_init(lexer); // Re-initialize so we can scan again with the same lexer
      raise_lexer_error(newstr, line);
    } else {
      rb_funcall(listener, rb_intern("eof"), 0);
    }
  }
	break;
#line 1276 "ext/gherkin_lexer_is/gherkin_lexer_is.c"
		}
	}

_again:
	if ( cs == 0 )
		goto _out;
	if ( ++p != pe )
		goto _resume;
	_test_eof: {}
	if ( p == eof )
	{
	const char *__acts = _lexer_actions + _lexer_eof_actions[cs];
	unsigned int __nacts = (unsigned int) *__acts++;
	while ( __nacts-- > 0 ) {
		switch ( *__acts++ ) {
	case 23:
#line 207 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"
	{
    int line;
    if (cs < lexer_first_final) {
      size_t count = 0;
      VALUE newstr_val;
      char *newstr;
      int newstr_count = 0;        
      size_t len;
      const char *buff;
      if (lexer->last_newline != 0) {
        len = LEN(last_newline, eof);
        buff = PTR_TO(last_newline);
      } else {
        len = strlen(data);
        buff = data;
      }

      // Allocate as a ruby string so that it gets cleaned up by GC
      newstr_val = rb_str_new(buff, len);
      newstr = RSTRING_PTR(newstr_val);


      for (count = 0; count < len; count++) {
        if(buff[count] == 10) {
          newstr[newstr_count] = '\0'; // terminate new string at first newline found
          break;
        } else {
          if (buff[count] == '%') {
            newstr[newstr_count++] = buff[count];
            newstr[newstr_count] = buff[count];
          } else {
            newstr[newstr_count] = buff[count];
          }
        }
        newstr_count++;
      }

      line = lexer->line_number;
      lexer_init(lexer); // Re-initialize so we can scan again with the same lexer
      raise_lexer_error(newstr, line);
    } else {
      rb_funcall(listener, rb_intern("eof"), 0);
    }
  }
	break;
#line 1339 "ext/gherkin_lexer_is/gherkin_lexer_is.c"
		}
	}
	}

	_out: {}
	}

#line 426 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/is.c.rl"

    assert(p <= pe && "data overflow after parsing execute");
    assert(lexer->content_start <= len && "content starts after data end");
    assert(lexer->mark < len && "mark is after data end");
    
    // Reset lexer by re-initializing the whole thing
    lexer_init(lexer);

    if (cs == lexer_error) {
      rb_raise(rb_eGherkinLexingError, "Invalid format, lexing fails.");
    } else {
      return Qtrue;
    }
  }
}

void Init_gherkin_lexer_is()
{
  mGherkin = rb_define_module("Gherkin");
  mGherkinLexer = rb_define_module_under(mGherkin, "Lexer");
  rb_eGherkinLexingError = rb_const_get(mGherkinLexer, rb_intern("LexingError"));

  mCLexer = rb_define_module_under(mGherkin, "CLexer");
  cI18nLexer = rb_define_class_under(mCLexer, "Is", rb_cObject);
  rb_define_alloc_func(cI18nLexer, CLexer_alloc);
  rb_define_method(cI18nLexer, "initialize", CLexer_init, 1);
  rb_define_method(cI18nLexer, "scan", CLexer_scan, 1);
}

