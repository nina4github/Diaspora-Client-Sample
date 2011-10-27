
#line 1 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
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


#line 254 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"


/** Data **/

#line 89 "ext/gherkin_lexer_hu/gherkin_lexer_hu.c"
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
	0, 0, 19, 20, 21, 22, 23, 25, 
	43, 44, 45, 47, 49, 54, 59, 64, 
	69, 73, 77, 79, 80, 81, 82, 83, 
	84, 85, 86, 87, 88, 89, 90, 91, 
	92, 93, 94, 99, 106, 111, 114, 115, 
	116, 117, 118, 119, 120, 122, 123, 124, 
	125, 126, 127, 128, 129, 130, 131, 132, 
	133, 134, 135, 136, 137, 138, 139, 140, 
	141, 142, 143, 145, 146, 147, 148, 149, 
	150, 151, 152, 153, 154, 155, 170, 172, 
	174, 176, 194, 196, 197, 198, 199, 200, 
	201, 202, 203, 204, 205, 220, 222, 224, 
	226, 228, 230, 232, 234, 236, 238, 240, 
	242, 244, 246, 248, 250, 252, 254, 258, 
	260, 262, 264, 266, 268, 270, 273, 275, 
	277, 279, 281, 283, 285, 287, 289, 291, 
	293, 295, 297, 299, 301, 303, 305, 307, 
	309, 311, 313, 315, 318, 320, 322, 324, 
	326, 328, 330, 332, 334, 336, 338, 340, 
	342, 344, 346, 348, 350, 352, 354, 356, 
	358, 359, 360, 361, 362, 363, 364, 365, 
	366, 367, 368, 369, 380, 382, 384, 386, 
	388, 390, 392, 394, 396, 398, 400, 402, 
	404, 406, 408, 410, 412, 414, 416, 418, 
	420, 422, 424, 426, 428, 430, 432, 434, 
	437, 439, 441, 443, 445, 447, 449, 451, 
	453, 455, 457, 459, 461, 463, 465, 467, 
	469, 471, 473, 475, 477, 479, 481, 483, 
	485, 487, 489, 491, 493, 495, 497, 498, 
	499, 500, 501, 502, 503, 504, 505, 506, 
	507, 508, 509, 510, 517, 519, 521, 523, 
	525, 527, 529, 531, 533, 535, 539, 545, 
	548, 550, 556, 574, 576, 578, 580, 582, 
	584, 586, 588, 590, 592, 594, 596, 598, 
	600, 602, 606, 608, 610, 612, 614, 616, 
	618, 621, 623, 625, 627, 629, 631, 633, 
	635, 637, 639, 641, 643, 645, 647, 649, 
	651, 653, 655, 657, 659, 661, 663, 665, 
	667, 669, 671, 673, 675, 677, 679, 681, 
	683, 685, 687, 689, 690, 691, 706, 708, 
	710, 712, 714, 716, 718, 720, 722, 724, 
	726, 728, 730, 732, 734, 736, 738, 740, 
	744, 746, 748, 750, 752, 754, 756, 759, 
	761, 763, 765, 767, 769, 771, 773, 775, 
	777, 779, 781, 783, 785, 787, 789, 791, 
	793, 795, 797, 799, 801, 804, 806, 808, 
	810, 812, 814, 816, 818, 820, 823, 825, 
	827, 829, 831, 833, 835, 837, 839, 841, 
	843, 845, 847, 849, 851, 853, 855, 857, 
	858, 859
};

static const char _lexer_trans_keys[] = {
	-61, -17, 10, 32, 34, 35, 37, 42, 
	64, 65, 68, 70, 72, 74, 77, 80, 
	124, 9, 13, -119, 115, 32, 10, 10, 
	13, -61, 10, 32, 34, 35, 37, 42, 
	64, 65, 68, 70, 72, 74, 77, 80, 
	124, 9, 13, 34, 34, 10, 13, 10, 
	13, 10, 32, 34, 9, 13, 10, 32, 
	34, 9, 13, 10, 32, 34, 9, 13, 
	10, 32, 34, 9, 13, 10, 32, 9, 
	13, 10, 32, 9, 13, 10, 13, 10, 
	95, 70, 69, 65, 84, 85, 82, 69, 
	95, 69, 78, 68, 95, 37, 13, 32, 
	64, 9, 10, 9, 10, 13, 32, 64, 
	11, 12, 10, 32, 64, 9, 13, 100, 
	107, 109, 111, 116, 116, 107, 111, 114, 
	101, 105, 110, 110, 121, 105, 98, 101, 
	110, 101, 111, 114, 103, 97, 116, -61, 
	-77, 107, -61, -74, 110, 121, 118, 32, 
	58, 118, -61, -95, 122, 108, 97, 116, 
	58, 10, 10, -61, 10, 32, 35, 37, 
	42, 64, 65, 68, 70, 72, 74, 77, 
	9, 13, -119, 10, 10, 115, 10, 32, 
	-61, 10, 32, 34, 35, 37, 42, 64, 
	65, 68, 70, 72, 74, 77, 80, 124, 
	9, 13, -61, 97, -95, 116, 116, -61, 
	-87, 114, 58, 10, 10, -61, 10, 32, 
	35, 37, 42, 64, 65, 68, 70, 72, 
	74, 77, 9, 13, -119, 10, 10, 115, 
	10, 32, 10, 95, 10, 70, 10, 69, 
	10, 65, 10, 84, 10, 85, 10, 82, 
	10, 69, 10, 95, 10, 69, 10, 78, 
	10, 68, 10, 95, 10, 37, 10, 100, 
	107, 109, 10, 111, 10, 116, 10, 116, 
	10, 107, 10, 111, 10, 114, 10, 101, 
	105, 10, 110, 10, 110, 10, 121, 10, 
	105, 10, 98, 10, 101, 10, 110, 10, 
	101, 10, 111, 10, 114, 10, 103, 10, 
	97, 10, 116, -61, 10, -77, 10, 10, 
	107, -61, 10, -74, 10, 10, 110, 10, 
	121, 10, 118, 10, 32, 58, 10, 118, 
	-61, 10, -95, 10, 10, 122, 10, 108, 
	10, 97, 10, 116, 10, 58, 10, 97, 
	10, 101, 10, 108, 10, 108, 10, 101, 
	10, 109, 10, 122, -59, 10, -111, 10, 
	10, 97, 10, 106, 10, 100, 101, 108, 
	108, 101, 109, 122, -59, -111, 58, 10, 
	10, 10, 32, 35, 37, 64, 70, 72, 
	74, 80, 9, 13, 10, 95, 10, 70, 
	10, 69, 10, 65, 10, 84, 10, 85, 
	10, 82, 10, 69, 10, 95, 10, 69, 
	10, 78, 10, 68, 10, 95, 10, 37, 
	10, 111, 10, 114, 10, 103, 10, 97, 
	10, 116, -61, 10, -77, 10, 10, 107, 
	-61, 10, -74, 10, 10, 110, 10, 121, 
	10, 118, 10, 32, 58, 10, 118, -61, 
	10, -95, 10, 10, 122, 10, 108, 10, 
	97, 10, 116, 10, 58, -61, 10, -95, 
	10, 10, 116, 10, 116, -61, 10, -87, 
	10, 10, 114, 10, 101, 10, 108, 10, 
	108, 10, 101, 10, 109, 10, 122, -59, 
	10, -111, 10, -61, 10, -87, 10, 10, 
	108, 10, 100, -61, 10, -95, 10, 10, 
	107, 97, 106, 100, -61, -87, 108, 100, 
	-61, -95, 107, 58, 10, 10, 10, 32, 
	35, 74, 124, 9, 13, 10, 101, 10, 
	108, 10, 108, 10, 101, 10, 109, 10, 
	122, -59, 10, -111, 10, 10, 58, 32, 
	124, 9, 13, 10, 32, 92, 124, 9, 
	13, 10, 92, 124, 10, 92, 10, 32, 
	92, 124, 9, 13, -61, 10, 32, 34, 
	35, 37, 42, 64, 65, 68, 70, 72, 
	74, 77, 80, 124, 9, 13, 10, 95, 
	10, 70, 10, 69, 10, 65, 10, 84, 
	10, 85, 10, 82, 10, 69, 10, 95, 
	10, 69, 10, 78, 10, 68, 10, 95, 
	10, 37, 10, 100, 107, 109, 10, 111, 
	10, 116, 10, 116, 10, 107, 10, 111, 
	10, 114, 10, 101, 105, 10, 110, 10, 
	110, 10, 121, 10, 105, 10, 98, 10, 
	101, 10, 110, 10, 101, 10, 111, 10, 
	114, 10, 103, 10, 97, 10, 116, -61, 
	10, -77, 10, 10, 107, -61, 10, -74, 
	10, 10, 110, 10, 121, 10, 118, 10, 
	58, 10, 97, 10, 101, 10, 108, 10, 
	108, 10, 101, 10, 109, 10, 122, -59, 
	10, -111, 10, 10, 97, 10, 106, 10, 
	100, 10, 10, -61, 10, 32, 35, 37, 
	42, 64, 65, 68, 70, 72, 74, 77, 
	9, 13, -119, 10, 10, 115, 10, 32, 
	10, 95, 10, 70, 10, 69, 10, 65, 
	10, 84, 10, 85, 10, 82, 10, 69, 
	10, 95, 10, 69, 10, 78, 10, 68, 
	10, 95, 10, 37, 10, 100, 107, 109, 
	10, 111, 10, 116, 10, 116, 10, 107, 
	10, 111, 10, 114, 10, 101, 105, 10, 
	110, 10, 110, 10, 121, 10, 105, 10, 
	98, 10, 101, 10, 110, 10, 101, 10, 
	111, 10, 114, 10, 103, 10, 97, 10, 
	116, -61, 10, -77, 10, 10, 107, -61, 
	10, -74, 10, 10, 110, 10, 121, 10, 
	118, 10, 32, 58, 10, 118, -61, 10, 
	-95, 10, 10, 122, 10, 108, 10, 97, 
	10, 116, 10, 58, -61, 10, 97, -95, 
	10, 10, 116, 10, 116, -61, 10, -87, 
	10, 10, 114, 10, 101, 10, 108, 10, 
	108, 10, 101, 10, 109, 10, 122, -59, 
	10, -111, 10, 10, 97, 10, 106, 10, 
	100, -69, -65, 0
};

static const char _lexer_single_lengths[] = {
	0, 17, 1, 1, 1, 1, 2, 16, 
	1, 1, 2, 2, 3, 3, 3, 3, 
	2, 2, 2, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 3, 5, 3, 3, 1, 1, 
	1, 1, 1, 1, 2, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 2, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 13, 2, 2, 
	2, 16, 2, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 13, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 4, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 9, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 5, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 4, 3, 
	2, 4, 16, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 4, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 1, 1, 13, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 4, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 1, 
	1, 0
};

static const char _lexer_range_lengths[] = {
	0, 1, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 1, 1, 1, 1, 
	1, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 1, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
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
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 1, 0, 
	0, 1, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0
};

static const short _lexer_index_offsets[] = {
	0, 0, 19, 21, 23, 25, 27, 30, 
	48, 50, 52, 55, 58, 63, 68, 73, 
	78, 82, 86, 89, 91, 93, 95, 97, 
	99, 101, 103, 105, 107, 109, 111, 113, 
	115, 117, 119, 124, 131, 136, 140, 142, 
	144, 146, 148, 150, 152, 155, 157, 159, 
	161, 163, 165, 167, 169, 171, 173, 175, 
	177, 179, 181, 183, 185, 187, 189, 191, 
	193, 195, 197, 200, 202, 204, 206, 208, 
	210, 212, 214, 216, 218, 220, 235, 238, 
	241, 244, 262, 265, 267, 269, 271, 273, 
	275, 277, 279, 281, 283, 298, 301, 304, 
	307, 310, 313, 316, 319, 322, 325, 328, 
	331, 334, 337, 340, 343, 346, 349, 354, 
	357, 360, 363, 366, 369, 372, 376, 379, 
	382, 385, 388, 391, 394, 397, 400, 403, 
	406, 409, 412, 415, 418, 421, 424, 427, 
	430, 433, 436, 439, 443, 446, 449, 452, 
	455, 458, 461, 464, 467, 470, 473, 476, 
	479, 482, 485, 488, 491, 494, 497, 500, 
	503, 505, 507, 509, 511, 513, 515, 517, 
	519, 521, 523, 525, 536, 539, 542, 545, 
	548, 551, 554, 557, 560, 563, 566, 569, 
	572, 575, 578, 581, 584, 587, 590, 593, 
	596, 599, 602, 605, 608, 611, 614, 617, 
	621, 624, 627, 630, 633, 636, 639, 642, 
	645, 648, 651, 654, 657, 660, 663, 666, 
	669, 672, 675, 678, 681, 684, 687, 690, 
	693, 696, 699, 702, 705, 708, 711, 713, 
	715, 717, 719, 721, 723, 725, 727, 729, 
	731, 733, 735, 737, 744, 747, 750, 753, 
	756, 759, 762, 765, 768, 771, 775, 781, 
	785, 788, 794, 812, 815, 818, 821, 824, 
	827, 830, 833, 836, 839, 842, 845, 848, 
	851, 854, 859, 862, 865, 868, 871, 874, 
	877, 881, 884, 887, 890, 893, 896, 899, 
	902, 905, 908, 911, 914, 917, 920, 923, 
	926, 929, 932, 935, 938, 941, 944, 947, 
	950, 953, 956, 959, 962, 965, 968, 971, 
	974, 977, 980, 983, 985, 987, 1002, 1005, 
	1008, 1011, 1014, 1017, 1020, 1023, 1026, 1029, 
	1032, 1035, 1038, 1041, 1044, 1047, 1050, 1053, 
	1058, 1061, 1064, 1067, 1070, 1073, 1076, 1080, 
	1083, 1086, 1089, 1092, 1095, 1098, 1101, 1104, 
	1107, 1110, 1113, 1116, 1119, 1122, 1125, 1128, 
	1131, 1134, 1137, 1140, 1143, 1147, 1150, 1153, 
	1156, 1159, 1162, 1165, 1168, 1171, 1175, 1178, 
	1181, 1184, 1187, 1190, 1193, 1196, 1199, 1202, 
	1205, 1208, 1211, 1214, 1217, 1220, 1223, 1226, 
	1228, 1230
};

static const short _lexer_trans_targs[] = {
	2, 391, 7, 7, 8, 18, 20, 4, 
	34, 37, 52, 53, 82, 160, 230, 233, 
	253, 7, 0, 3, 0, 4, 0, 5, 
	0, 0, 6, 7, 19, 6, 2, 7, 
	7, 8, 18, 20, 4, 34, 37, 52, 
	53, 82, 160, 230, 233, 253, 7, 0, 
	9, 0, 10, 0, 12, 11, 11, 12, 
	11, 11, 13, 13, 14, 13, 13, 13, 
	13, 14, 13, 13, 13, 13, 15, 13, 
	13, 13, 13, 16, 13, 13, 7, 17, 
	17, 0, 7, 17, 17, 0, 7, 19, 
	18, 7, 0, 21, 0, 22, 0, 23, 
	0, 24, 0, 25, 0, 26, 0, 27, 
	0, 28, 0, 29, 0, 30, 0, 31, 
	0, 32, 0, 33, 0, 393, 0, 0, 
	0, 0, 0, 35, 36, 7, 36, 36, 
	34, 35, 35, 7, 36, 34, 36, 0, 
	38, 41, 44, 0, 39, 0, 40, 0, 
	4, 0, 42, 0, 43, 0, 4, 0, 
	45, 41, 0, 46, 0, 47, 0, 48, 
	0, 49, 0, 50, 0, 51, 0, 4, 
	0, 4, 0, 54, 0, 55, 0, 56, 
	0, 57, 0, 58, 0, 59, 0, 60, 
	0, 61, 0, 62, 0, 63, 0, 64, 
	0, 65, 0, 66, 0, 67, 315, 0, 
	68, 0, 69, 0, 70, 0, 71, 0, 
	72, 0, 73, 0, 74, 0, 75, 0, 
	77, 76, 77, 76, 78, 77, 77, 7, 
	259, 80, 7, 273, 288, 289, 303, 304, 
	312, 77, 76, 79, 77, 76, 77, 80, 
	76, 77, 81, 76, 2, 7, 7, 8, 
	18, 20, 4, 34, 37, 52, 53, 82, 
	160, 230, 233, 253, 7, 0, 83, 4, 
	0, 84, 0, 85, 0, 86, 0, 87, 
	0, 88, 0, 89, 0, 90, 0, 92, 
	91, 92, 91, 93, 92, 92, 7, 96, 
	95, 7, 110, 125, 126, 148, 149, 157, 
	92, 91, 94, 92, 91, 92, 95, 91, 
	92, 81, 91, 92, 97, 91, 92, 98, 
	91, 92, 99, 91, 92, 100, 91, 92, 
	101, 91, 92, 102, 91, 92, 103, 91, 
	92, 104, 91, 92, 105, 91, 92, 106, 
	91, 92, 107, 91, 92, 108, 91, 92, 
	109, 91, 92, 7, 91, 92, 111, 114, 
	117, 91, 92, 112, 91, 92, 113, 91, 
	92, 95, 91, 92, 115, 91, 92, 116, 
	91, 92, 95, 91, 92, 118, 114, 91, 
	92, 119, 91, 92, 120, 91, 92, 121, 
	91, 92, 122, 91, 92, 123, 91, 92, 
	124, 91, 92, 95, 91, 92, 95, 91, 
	92, 127, 91, 92, 128, 91, 92, 129, 
	91, 92, 130, 91, 92, 131, 91, 132, 
	92, 91, 133, 92, 91, 92, 134, 91, 
	135, 92, 91, 136, 92, 91, 92, 137, 
	91, 92, 138, 91, 92, 139, 91, 92, 
	140, 81, 91, 92, 141, 91, 142, 92, 
	91, 143, 92, 91, 92, 144, 91, 92, 
	145, 91, 92, 146, 91, 92, 147, 91, 
	92, 81, 91, 92, 95, 91, 92, 150, 
	91, 92, 151, 91, 92, 152, 91, 92, 
	153, 91, 92, 154, 91, 92, 155, 91, 
	156, 92, 91, 147, 92, 91, 92, 158, 
	91, 92, 159, 91, 92, 95, 91, 161, 
	0, 162, 0, 163, 0, 164, 0, 165, 
	0, 166, 0, 167, 0, 168, 0, 169, 
	0, 171, 170, 171, 170, 171, 171, 7, 
	172, 7, 186, 208, 215, 223, 171, 170, 
	171, 173, 170, 171, 174, 170, 171, 175, 
	170, 171, 176, 170, 171, 177, 170, 171, 
	178, 170, 171, 179, 170, 171, 180, 170, 
	171, 181, 170, 171, 182, 170, 171, 183, 
	170, 171, 184, 170, 171, 185, 170, 171, 
	7, 170, 171, 187, 170, 171, 188, 170, 
	171, 189, 170, 171, 190, 170, 171, 191, 
	170, 192, 171, 170, 193, 171, 170, 171, 
	194, 170, 195, 171, 170, 196, 171, 170, 
	171, 197, 170, 171, 198, 170, 171, 199, 
	170, 171, 200, 81, 170, 171, 201, 170, 
	202, 171, 170, 203, 171, 170, 171, 204, 
	170, 171, 205, 170, 171, 206, 170, 171, 
	207, 170, 171, 81, 170, 209, 171, 170, 
	210, 171, 170, 171, 211, 170, 171, 212, 
	170, 213, 171, 170, 214, 171, 170, 171, 
	207, 170, 171, 216, 170, 171, 217, 170, 
	171, 218, 170, 171, 219, 170, 171, 220, 
	170, 171, 221, 170, 222, 171, 170, 207, 
	171, 170, 224, 171, 170, 225, 171, 170, 
	171, 226, 170, 171, 227, 170, 228, 171, 
	170, 229, 171, 170, 171, 207, 170, 231, 
	0, 232, 0, 4, 0, 234, 0, 235, 
	0, 236, 0, 237, 0, 238, 0, 239, 
	0, 240, 0, 241, 0, 243, 242, 243, 
	242, 243, 243, 7, 244, 7, 243, 242, 
	243, 245, 242, 243, 246, 242, 243, 247, 
	242, 243, 248, 242, 243, 249, 242, 243, 
	250, 242, 251, 243, 242, 252, 243, 242, 
	243, 81, 242, 253, 254, 253, 0, 258, 
	257, 256, 254, 257, 255, 0, 256, 254, 
	255, 0, 256, 255, 258, 257, 256, 254, 
	257, 255, 2, 258, 258, 8, 18, 20, 
	4, 34, 37, 52, 53, 82, 160, 230, 
	233, 253, 258, 0, 77, 260, 76, 77, 
	261, 76, 77, 262, 76, 77, 263, 76, 
	77, 264, 76, 77, 265, 76, 77, 266, 
	76, 77, 267, 76, 77, 268, 76, 77, 
	269, 76, 77, 270, 76, 77, 271, 76, 
	77, 272, 76, 77, 7, 76, 77, 274, 
	277, 280, 76, 77, 275, 76, 77, 276, 
	76, 77, 80, 76, 77, 278, 76, 77, 
	279, 76, 77, 80, 76, 77, 281, 277, 
	76, 77, 282, 76, 77, 283, 76, 77, 
	284, 76, 77, 285, 76, 77, 286, 76, 
	77, 287, 76, 77, 80, 76, 77, 80, 
	76, 77, 290, 76, 77, 291, 76, 77, 
	292, 76, 77, 293, 76, 77, 294, 76, 
	295, 77, 76, 296, 77, 76, 77, 297, 
	76, 298, 77, 76, 299, 77, 76, 77, 
	300, 76, 77, 301, 76, 77, 302, 76, 
	77, 81, 76, 77, 80, 76, 77, 305, 
	76, 77, 306, 76, 77, 307, 76, 77, 
	308, 76, 77, 309, 76, 77, 310, 76, 
	311, 77, 76, 302, 77, 76, 77, 313, 
	76, 77, 314, 76, 77, 80, 76, 317, 
	316, 317, 316, 318, 317, 317, 7, 321, 
	320, 7, 335, 350, 351, 373, 380, 388, 
	317, 316, 319, 317, 316, 317, 320, 316, 
	317, 81, 316, 317, 322, 316, 317, 323, 
	316, 317, 324, 316, 317, 325, 316, 317, 
	326, 316, 317, 327, 316, 317, 328, 316, 
	317, 329, 316, 317, 330, 316, 317, 331, 
	316, 317, 332, 316, 317, 333, 316, 317, 
	334, 316, 317, 7, 316, 317, 336, 339, 
	342, 316, 317, 337, 316, 317, 338, 316, 
	317, 320, 316, 317, 340, 316, 317, 341, 
	316, 317, 320, 316, 317, 343, 339, 316, 
	317, 344, 316, 317, 345, 316, 317, 346, 
	316, 317, 347, 316, 317, 348, 316, 317, 
	349, 316, 317, 320, 316, 317, 320, 316, 
	317, 352, 316, 317, 353, 316, 317, 354, 
	316, 317, 355, 316, 317, 356, 316, 357, 
	317, 316, 358, 317, 316, 317, 359, 316, 
	360, 317, 316, 361, 317, 316, 317, 362, 
	316, 317, 363, 316, 317, 364, 316, 317, 
	365, 81, 316, 317, 366, 316, 367, 317, 
	316, 368, 317, 316, 317, 369, 316, 317, 
	370, 316, 317, 371, 316, 317, 372, 316, 
	317, 81, 316, 374, 317, 320, 316, 375, 
	317, 316, 317, 376, 316, 317, 377, 316, 
	378, 317, 316, 379, 317, 316, 317, 372, 
	316, 317, 381, 316, 317, 382, 316, 317, 
	383, 316, 317, 384, 316, 317, 385, 316, 
	317, 386, 316, 387, 317, 316, 372, 317, 
	316, 317, 389, 316, 317, 390, 316, 317, 
	320, 316, 392, 0, 7, 0, 0, 0
};

static const unsigned char _lexer_trans_actions[] = {
	29, 0, 54, 0, 5, 1, 0, 29, 
	1, 29, 29, 29, 29, 29, 29, 29, 
	35, 0, 43, 0, 43, 0, 43, 0, 
	43, 43, 57, 110, 23, 0, 29, 54, 
	0, 5, 1, 0, 29, 1, 29, 29, 
	29, 29, 29, 29, 29, 35, 0, 43, 
	0, 43, 0, 43, 135, 48, 9, 106, 
	11, 0, 130, 45, 45, 45, 3, 122, 
	33, 33, 33, 0, 122, 33, 33, 33, 
	0, 122, 33, 0, 33, 0, 102, 7, 
	7, 43, 54, 0, 0, 43, 114, 25, 
	0, 54, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 43, 
	43, 43, 43, 0, 27, 118, 27, 27, 
	51, 27, 0, 54, 0, 1, 0, 43, 
	0, 0, 0, 43, 0, 43, 0, 43, 
	0, 43, 0, 43, 0, 43, 0, 43, 
	0, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 0, 43, 
	0, 43, 0, 43, 0, 43, 0, 43, 
	0, 43, 0, 43, 0, 43, 0, 43, 
	140, 57, 54, 0, 84, 54, 0, 78, 
	33, 84, 78, 84, 84, 84, 84, 84, 
	84, 0, 0, 0, 54, 0, 54, 0, 
	0, 54, 19, 0, 63, 126, 31, 60, 
	57, 31, 63, 57, 63, 63, 63, 63, 
	63, 63, 63, 66, 31, 43, 0, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 140, 
	57, 54, 0, 84, 54, 0, 72, 33, 
	84, 72, 84, 84, 84, 84, 84, 84, 
	0, 0, 0, 54, 0, 54, 0, 0, 
	54, 15, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 15, 0, 54, 0, 0, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 0, 
	54, 0, 0, 54, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 15, 0, 54, 0, 0, 0, 54, 
	0, 0, 54, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 15, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 140, 57, 54, 0, 54, 0, 69, 
	33, 69, 84, 84, 84, 84, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	13, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 0, 54, 0, 0, 54, 0, 54, 
	0, 0, 0, 54, 0, 0, 54, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 13, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 13, 0, 0, 54, 0, 
	0, 54, 0, 54, 0, 0, 54, 0, 
	0, 0, 54, 0, 0, 54, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	54, 0, 0, 54, 0, 0, 0, 54, 
	0, 0, 54, 0, 54, 0, 0, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 0, 43, 0, 
	43, 0, 43, 0, 43, 140, 57, 54, 
	0, 54, 0, 81, 84, 81, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 0, 54, 0, 0, 54, 0, 
	54, 21, 0, 0, 0, 0, 43, 54, 
	37, 37, 87, 37, 37, 43, 0, 39, 
	0, 43, 0, 0, 54, 0, 0, 39, 
	0, 0, 96, 54, 0, 93, 90, 41, 
	96, 90, 96, 96, 96, 96, 96, 96, 
	96, 99, 0, 43, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 19, 0, 54, 0, 
	0, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 54, 0, 
	0, 0, 54, 0, 0, 54, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 19, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 140, 
	57, 54, 0, 84, 54, 0, 75, 33, 
	84, 75, 84, 84, 84, 84, 84, 84, 
	0, 0, 0, 54, 0, 54, 0, 0, 
	54, 17, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 17, 0, 54, 0, 0, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 54, 0, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 0, 
	54, 0, 0, 54, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 17, 0, 54, 0, 0, 0, 54, 
	0, 0, 54, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 17, 0, 0, 54, 0, 0, 0, 
	54, 0, 54, 0, 0, 54, 0, 0, 
	0, 54, 0, 0, 54, 0, 54, 0, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 54, 0, 0, 54, 0, 0, 
	54, 0, 0, 0, 54, 0, 0, 54, 
	0, 54, 0, 0, 54, 0, 0, 54, 
	0, 0, 0, 43, 0, 43, 0, 0
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
	43, 43
};

static const int lexer_start = 1;
static const int lexer_first_final = 393;
static const int lexer_error = 0;

static const int lexer_en_main = 1;


#line 258 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"

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
    
    
#line 977 "ext/gherkin_lexer_hu/gherkin_lexer_hu.c"
	{
	cs = lexer_start;
	}

#line 425 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
    
#line 984 "ext/gherkin_lexer_hu/gherkin_lexer_hu.c"
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
#line 83 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
		MARK(content_start, p);
    lexer->current_line = lexer->line_number;
    lexer->start_col = lexer->content_start - lexer->last_newline - (lexer->keyword_end - lexer->keyword_start) + 2;
  }
	break;
	case 1:
#line 89 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    MARK(content_start, p);
  }
	break;
	case 2:
#line 93 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    lexer->current_line = lexer->line_number;
    lexer->start_col = p - data - lexer->last_newline;
  }
	break;
	case 3:
#line 98 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    int len = LEN(content_start, PTR_TO(final_newline));
    int type_len = LEN(docstring_content_type_start, PTR_TO(docstring_content_type_end));

    if (len < 0) len = 0;
    if (type_len < 0) len = 0;

    store_docstring_content(listener, lexer->start_col, PTR_TO(docstring_content_type_start), type_len, PTR_TO(content_start), len, lexer->current_line);
  }
	break;
	case 4:
#line 108 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{ 
    MARK(docstring_content_type_start, p);
  }
	break;
	case 5:
#line 112 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{ 
    MARK(docstring_content_type_end, p);
  }
	break;
	case 6:
#line 116 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    STORE_KW_END_CON(feature);
  }
	break;
	case 7:
#line 120 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    STORE_KW_END_CON(background);
  }
	break;
	case 8:
#line 124 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    STORE_KW_END_CON(scenario);
  }
	break;
	case 9:
#line 128 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    STORE_KW_END_CON(scenario_outline);
  }
	break;
	case 10:
#line 132 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    STORE_KW_END_CON(examples);
  }
	break;
	case 11:
#line 136 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    store_kw_con(listener, "step",
      PTR_TO(keyword_start), LEN(keyword_start, PTR_TO(keyword_end)),
      PTR_TO(content_start), LEN(content_start, p), 
      lexer->current_line);
  }
	break;
	case 12:
#line 143 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    STORE_ATTR(comment);
    lexer->mark = 0;
  }
	break;
	case 13:
#line 148 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    STORE_ATTR(tag);
    lexer->mark = 0;
  }
	break;
	case 14:
#line 153 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    lexer->line_number += 1;
    MARK(final_newline, p);
  }
	break;
	case 15:
#line 158 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    MARK(last_newline, p + 1);
  }
	break;
	case 16:
#line 162 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    if (lexer->mark == 0) {
      MARK(mark, p);
    }
  }
	break;
	case 17:
#line 168 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    MARK(keyword_end, p);
    MARK(keyword_start, PTR_TO(mark));
    MARK(content_start, p + 1);
    lexer->mark = 0;
  }
	break;
	case 18:
#line 175 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    MARK(content_end, p);
  }
	break;
	case 19:
#line 179 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    p = p - 1;
    lexer->current_line = lexer->line_number;
    current_row = rb_ary_new();
  }
	break;
	case 20:
#line 185 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
		MARK(content_start, p);
  }
	break;
	case 21:
#line 189 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
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
#line 203 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
	{
    rb_funcall(listener, rb_intern("row"), 2, current_row, INT2FIX(lexer->current_line));
  }
	break;
	case 23:
#line 207 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
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
#line 1274 "ext/gherkin_lexer_hu/gherkin_lexer_hu.c"
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
#line 207 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"
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
#line 1337 "ext/gherkin_lexer_hu/gherkin_lexer_hu.c"
		}
	}
	}

	_out: {}
	}

#line 426 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hu.c.rl"

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

void Init_gherkin_lexer_hu()
{
  mGherkin = rb_define_module("Gherkin");
  mGherkinLexer = rb_define_module_under(mGherkin, "Lexer");
  rb_eGherkinLexingError = rb_const_get(mGherkinLexer, rb_intern("LexingError"));

  mCLexer = rb_define_module_under(mGherkin, "CLexer");
  cI18nLexer = rb_define_class_under(mCLexer, "Hu", rb_cObject);
  rb_define_alloc_func(cI18nLexer, CLexer_alloc);
  rb_define_method(cI18nLexer, "initialize", CLexer_init, 1);
  rb_define_method(cI18nLexer, "scan", CLexer_scan, 1);
}

