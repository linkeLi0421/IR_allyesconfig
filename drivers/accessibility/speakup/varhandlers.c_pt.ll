; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/varhandlers.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/varhandlers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+spk_get_var\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_get_var\09\09\09\09"
module asm "\09.long\09__crc_spk_get_var\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_get_var:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_get_var\22\09\09\09\09\09"
module asm "__kstrtabns_spk_get_var:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.st_var_header = type { ptr, i32, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.punc_var_t = type { i32, i16 }
%struct.st_bits_data = type { ptr, ptr, i16 }
%struct.var_t = type { i32, %union.anon }
%union.anon = type { %struct.num_var_t }
%struct.num_var_t = type { ptr, i32, i32, i32, i16, i16, ptr, i32 }
%struct.spk_synth = type { %struct.list_head, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.synth_indexing, i32, %struct.attribute_group, ptr }
%struct.list_head = type { ptr, ptr }
%struct.synth_indexing = type { ptr, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ALPHA\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"B_CTL\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WDLM\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"A_PUNC\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PUNC\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NUM\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"A_CAP\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"B_CAPSYM\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"B_SYM\00", [26 x i8] zeroinitializer }, align 32
@var_ptrs = internal global { [43 x ptr], [52 x i8] } zeroinitializer, align 32
@var_headers = internal global { [43 x %struct.st_var_header], [196 x i8] } { [43 x %struct.st_var_header] [%struct.st_var_header { ptr @.str.10, i32 0, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.11, i32 1, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.12, i32 4, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.13, i32 2, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.14, i32 6, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.15, i32 7, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.16, i32 8, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.17, i32 9, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.18, i32 10, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.19, i32 11, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.20, i32 5, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.21, i32 3, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.22, i32 38, i32 2, ptr @spk_str_caps_start, ptr null }, %struct.st_var_header { ptr @.str.23, i32 39, i32 2, ptr @spk_str_caps_stop, ptr null }, %struct.st_var_header { ptr @.str.24, i32 12, i32 1, ptr null, ptr null }, %struct.st_var_header { ptr @.str.25, i32 13, i32 1, ptr null, ptr null }, %struct.st_var_header { ptr @.str.26, i32 14, i32 1, ptr null, ptr null }, %struct.st_var_header { ptr @.str.27, i32 15, i32 1, ptr null, ptr null }, %struct.st_var_header { ptr @.str.28, i32 42, i32 1, ptr null, ptr null }, %struct.st_var_header { ptr @.str.29, i32 23, i32 0, ptr @spk_spell_delay, ptr null }, %struct.st_var_header { ptr @.str.30, i32 27, i32 0, ptr @spk_bleeps, ptr null }, %struct.st_var_header { ptr @.str.31, i32 26, i32 0, ptr @spk_attrib_bleep, ptr null }, %struct.st_var_header { ptr @.str.32, i32 16, i32 1, ptr @spk_bleep_time, ptr null }, %struct.st_var_header { ptr @.str.33, i32 17, i32 1, ptr null, ptr null }, %struct.st_var_header { ptr @.str.34, i32 24, i32 0, ptr @spk_punc_level, ptr null }, %struct.st_var_header { ptr @.str.35, i32 25, i32 0, ptr @spk_reading_punc, ptr null }, %struct.st_var_header { ptr @.str.36, i32 19, i32 0, ptr @spk_say_ctrl, ptr null }, %struct.st_var_header { ptr @.str.37, i32 20, i32 0, ptr @spk_say_word_ctl, ptr null }, %struct.st_var_header { ptr @.str.38, i32 21, i32 0, ptr @spk_no_intr, ptr null }, %struct.st_var_header { ptr @.str.39, i32 22, i32 0, ptr @spk_key_echo, ptr null }, %struct.st_var_header { ptr @.str.40, i32 18, i32 0, ptr @spk_bell_pos, ptr null }, %struct.st_var_header { ptr @.str.41, i32 28, i32 0, ptr null, ptr null }, %struct.st_var_header { ptr @.str.42, i32 29, i32 0, ptr null, ptr null }, %struct.st_var_header { ptr @.str.43, i32 41, i32 0, ptr null, ptr null }, %struct.st_var_header { ptr @.str.44, i32 30, i32 0, ptr null, ptr null }, %struct.st_var_header { ptr @.str.45, i32 31, i32 0, ptr null, ptr null }, %struct.st_var_header { ptr @.str.46, i32 32, i32 0, ptr null, ptr null }, %struct.st_var_header { ptr @.str.47, i32 33, i32 0, ptr null, ptr null }, %struct.st_var_header { ptr @.str.48, i32 34, i32 0, ptr null, ptr null }, %struct.st_var_header { ptr @.str.49, i32 35, i32 0, ptr null, ptr null }, %struct.st_var_header { ptr @.str.50, i32 40, i32 3, ptr null, ptr null }, %struct.st_var_header { ptr @.str.51, i32 36, i32 0, ptr null, ptr null }, %struct.st_var_header { ptr @.str.52, i32 37, i32 2, ptr @spk_str_pause, ptr null }], [196 x i8] zeroinitializer }, align 32
@__kstrtab_spk_get_var = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_get_var = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_get_var = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_get_var to i32), ptr @__kstrtab_spk_get_var, ptr @__kstrtabns_spk_get_var }, section "___ksymtab_gpl+spk_get_var", align 4
@punc_vars = internal global { [7 x %struct.punc_var_t], [40 x i8] } { [7 x %struct.punc_var_t] [%struct.punc_var_t { i32 6, i16 1 }, %struct.punc_var_t { i32 7, i16 2 }, %struct.punc_var_t { i32 8, i16 3 }, %struct.punc_var_t { i32 9, i16 4 }, %struct.punc_var_t { i32 10, i16 5 }, %struct.punc_var_t { i32 11, i16 6 }, %struct.punc_var_t { i32 -1, i16 -1 }], [40 x i8] zeroinitializer }, align 32
@spk_punc_masks = external dso_local local_unnamed_addr global [0 x i16], align 2
@spk_punc_mask = external dso_local local_unnamed_addr global i16, align 2
@synth = external dso_local local_unnamed_addr global ptr, align 4
@spk_pitch_buff = external dso_local global [0 x i8], align 1
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@spk_punc_info = external dso_local local_unnamed_addr constant [0 x %struct.st_bits_data], align 4
@spk_chartab = external dso_local local_unnamed_addr global [0 x i16], align 2
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"synth_name\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"keymap\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"silent\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"punc_some\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"punc_most\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"punc_all\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delimiters\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"repeats\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ex_num\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"characters\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"synth_direct\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"caps_start\00", [21 x i8] zeroinitializer }, align 32
@spk_str_caps_start = external dso_local global [0 x i8], align 1
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caps_stop\00", [22 x i8] zeroinitializer }, align 32
@spk_str_caps_stop = external dso_local global [0 x i8], align 1
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delay_time\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trigger_time\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jiffy_delta\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"full_time\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flush_time\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spell_delay\00", [20 x i8] zeroinitializer }, align 32
@spk_spell_delay = external dso_local global i32, align 4
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bleeps\00", [25 x i8] zeroinitializer }, align 32
@spk_bleeps = external dso_local global i32, align 4
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"attrib_bleep\00", [19 x i8] zeroinitializer }, align 32
@spk_attrib_bleep = external dso_local global i32, align 4
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bleep_time\00", [21 x i8] zeroinitializer }, align 32
@spk_bleep_time = external dso_local global i32, align 4
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cursor_time\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"punc_level\00", [21 x i8] zeroinitializer }, align 32
@spk_punc_level = external dso_local global i32, align 4
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reading_punc\00", [19 x i8] zeroinitializer }, align 32
@spk_reading_punc = external dso_local global i32, align 4
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"say_control\00", [20 x i8] zeroinitializer }, align 32
@spk_say_ctrl = external dso_local global i32, align 4
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"say_word_ctl\00", [19 x i8] zeroinitializer }, align 32
@spk_say_word_ctl = external dso_local global i32, align 4
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no_interrupt\00", [19 x i8] zeroinitializer }, align 32
@spk_no_intr = external dso_local global i32, align 4
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key_echo\00", [23 x i8] zeroinitializer }, align 32
@spk_key_echo = external dso_local global i32, align 4
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bell_pos\00", [23 x i8] zeroinitializer }, align 32
@spk_bell_pos = external dso_local global i32, align 4
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pitch\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inflection\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vol\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tone\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"punct\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"voice\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"freq\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lang\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chartab\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"direct\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pause\00", [26 x i8] zeroinitializer }, align 32
@spk_str_pause = external dso_local global [0 x i8], align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 69, i32 23 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 71, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 73, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 75, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 77, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 79, i32 28 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 81, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 83, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 85, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant [9 x i8] c"var_ptrs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 53, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"var_headers\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 7, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"punc_vars\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 55, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 245, i32 15 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 8, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 9, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 10, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 11, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 12, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 13, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 14, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 15, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 16, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 17, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 18, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 19, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 20, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 21, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 22, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 23, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 24, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 25, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 26, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 27, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 28, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 29, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 30, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 31, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 32, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 33, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 34, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 35, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 36, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 37, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 38, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 39, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 40, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 41, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 42, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 43, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 44, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 45, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 46, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 47, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 48, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 49, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private constant [47 x i8] c"../drivers/accessibility/speakup/varhandlers.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 50, i32 4 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__ksymtab_spk_get_var, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @var_ptrs, ptr @var_headers, ptr @punc_vars, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @var_ptrs to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @var_headers to i32), i32 860, i32 1056, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punc_vars to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spk_chartab_get_value(ptr nocapture noundef readonly %keyword) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %keyword, ptr noundef nonnull dereferenceable(6) @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end39_crit_edge, label %if.else

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %keyword, ptr noundef nonnull dereferenceable(6) @.str.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else.if.end39_crit_edge, label %if.else4

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strcmp(ptr noundef %keyword, ptr noundef nonnull dereferenceable(5) @.str.2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else4.if.end39_crit_edge, label %if.else8

if.else4.if.end39_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else8:                                         ; preds = %if.else4
  %call9 = tail call i32 @strcmp(ptr noundef %keyword, ptr noundef nonnull dereferenceable(7) @.str.3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else8.if.end39_crit_edge, label %if.else12

if.else8.if.end39_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else12:                                        ; preds = %if.else8
  %call13 = tail call i32 @strcmp(ptr noundef %keyword, ptr noundef nonnull dereferenceable(5) @.str.4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else12.if.end39_crit_edge, label %if.else16

if.else12.if.end39_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else16:                                        ; preds = %if.else12
  %call17 = tail call i32 @strcmp(ptr noundef %keyword, ptr noundef nonnull dereferenceable(4) @.str.5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else16.if.end39_crit_edge, label %if.else20

if.else16.if.end39_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else20:                                        ; preds = %if.else16
  %call21 = tail call i32 @strcmp(ptr noundef %keyword, ptr noundef nonnull dereferenceable(6) @.str.6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else20.if.end39_crit_edge, label %if.else24

if.else20.if.end39_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else24:                                        ; preds = %if.else20
  %call25 = tail call i32 @strcmp(ptr noundef %keyword, ptr noundef nonnull dereferenceable(9) @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else24.if.end39_crit_edge, label %if.else28

if.else24.if.end39_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = tail call i32 @strcmp(ptr noundef %keyword, ptr noundef nonnull dereferenceable(6) @.str.8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %spec.select = select i1 %tobool30.not, i32 2048, i32 0
  br label %if.end39

if.end39:                                         ; preds = %if.else28, %if.else24.if.end39_crit_edge, %if.else20.if.end39_crit_edge, %if.else16.if.end39_crit_edge, %if.else12.if.end39_crit_edge, %if.else8.if.end39_crit_edge, %if.else4.if.end39_crit_edge, %if.else.if.end39_crit_edge, %entry.if.end39_crit_edge
  %value.0 = phi i32 [ 3, %entry.if.end39_crit_edge ], [ 1024, %if.else.if.end39_crit_edge ], [ 129, %if.else4.if.end39_crit_edge ], [ 65, %if.else8.if.end39_crit_edge ], [ 64, %if.else12.if.end39_crit_edge ], [ 9, %if.else16.if.end39_crit_edge ], [ 7, %if.else20.if.end39_crit_edge ], [ 2052, %if.else24.if.end39_crit_edge ], [ %spec.select, %if.else28 ]
  ret i32 %value.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @speakup_register_var(ptr noundef %var) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %var, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !125

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %1)
  %cmp2 = icmp ugt i32 %1, 42
  br i1 %cmp2, label %lor.rhs.do.body5_crit_edge, label %do.end10, !prof !125

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/accessibility/speakup/varhandlers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 96, 0\0A.popsection", ""() #12, !srcloc !126
  unreachable

do.end10:                                         ; preds = %lor.rhs
  %2 = load ptr, ptr @var_ptrs, align 4
  %tobool11.not = icmp eq ptr %2, null
  br i1 %tobool11.not, label %do.end10.for.body_crit_edge, label %do.end10.if.end16_crit_edge

do.end10.if.end16_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end10.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end10.for.body_crit_edge ]
  %arrayidx = getelementptr [43 x %struct.st_var_header], ptr @var_headers, i32 0, i32 %i.040
  %var_id14 = getelementptr [43 x %struct.st_var_header], ptr @var_headers, i32 0, i32 %i.040, i32 1
  %3 = ptrtoint ptr %var_id14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %var_id14, align 4
  %arrayidx15 = getelementptr [43 x ptr], ptr @var_ptrs, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %arrayidx15, align 4
  %data = getelementptr [43 x %struct.st_var_header], ptr @var_headers, i32 0, i32 %i.040, i32 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data, align 4
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 43
  br i1 %exitcond.not, label %for.body.if.end16_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end16:                                         ; preds = %for.body.if.end16_crit_edge, %do.end10.if.end16_crit_edge
  %7 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %var, align 4
  %arrayidx18 = getelementptr [43 x ptr], ptr @var_ptrs, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx18, align 4
  %data19 = getelementptr inbounds %struct.st_var_header, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data19, align 4
  %tobool20.not = icmp eq ptr %12, null
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %13 = ptrtoint ptr %data19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %var, ptr %data19, align 4
  %var_type = getelementptr inbounds %struct.st_var_header, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %var_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %var_type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end22.cleanup_crit_edge [
    i32 2, label %if.end.i
    i32 0, label %if.end22.sw.bb24_crit_edge
    i32 1, label %if.end22.sw.bb24_crit_edge41
  ]

if.end22.sw.bb24_crit_edge41:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24

if.end22.sw.bb24_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end22
  %u.i = getelementptr inbounds %struct.var_t, ptr %var, i32 0, i32 1
  %17 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %u.i, align 4
  %tobool5.not.i = icmp eq ptr %18, null
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %p_val.i = getelementptr inbounds %struct.st_var_header, ptr %10, i32 0, i32 3
  %19 = ptrtoint ptr %p_val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p_val.i, align 4
  %tobool8.not.i = icmp eq ptr %20, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end7.i.if.end13.i_crit_edge

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %p_val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %p_val.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end13.i_crit_edge
  %22 = ptrtoint ptr %p_val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_val.i, align 4
  %24 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %u.i, align 4
  %cmp17.not.i = icmp eq ptr %23, %25
  br i1 %cmp17.not.i, label %if.end13.i.cleanup_crit_edge, label %if.then18.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @strcpy(ptr noundef %23, ptr noundef %25) #16
  br label %cleanup

sw.bb24:                                          ; preds = %if.end22.sw.bb24_crit_edge, %if.end22.sw.bb24_crit_edge41
  %call25 = tail call i32 @spk_set_num_var(i32 noundef 0, ptr noundef %10, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %if.then18.i, %if.end13.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end16.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spk_set_string_var(ptr nocapture noundef readonly %page, ptr nocapture noundef %var, i32 noundef %len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.st_var_header, ptr %var, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len)
  %cmp = icmp sgt i32 %len, 15
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool3.not = icmp eq i32 %len, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end2
  %u = getelementptr inbounds %struct.var_t, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %if.end7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.then4
  %p_val = getelementptr inbounds %struct.st_var_header, ptr %var, i32 0, i32 3
  %4 = ptrtoint ptr %p_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_val, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.then9, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %p_val to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %p_val, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7.if.end13_crit_edge
  %7 = ptrtoint ptr %p_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_val, align 4
  %9 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %u, align 4
  %cmp17.not = icmp eq ptr %8, %10
  br i1 %cmp17.not, label %if.end13.cleanup_crit_edge, label %if.then18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @strcpy(ptr noundef %8, ptr noundef %10) #15
  br label %cleanup

if.else:                                          ; preds = %if.end2
  %p_val23 = getelementptr inbounds %struct.st_var_header, ptr %var, i32 0, i32 3
  %11 = ptrtoint ptr %p_val23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_val23, align 4
  %tobool24.not = icmp eq ptr %12, null
  br i1 %tobool24.not, label %if.else.cleanup_crit_edge, label %if.then25

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call ptr @strcpy(ptr noundef nonnull %12, ptr noundef %page) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.else.cleanup_crit_edge, %if.then18, %if.end13.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then25 ], [ -61, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ -85, %if.then18 ], [ -85, %if.end13.cleanup_crit_edge ], [ -7, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spk_set_num_var(i32 noundef %input, ptr noundef %var, i32 noundef %how) local_unnamed_addr #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %p_val1 = getelementptr inbounds %struct.st_var_header, ptr %var, i32 0, i32 3
  %0 = ptrtoint ptr %p_val1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_val1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %data = getelementptr inbounds %struct.st_var_header, ptr %var, i32 0, i32 4
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.var_t, ptr %4, i32 0, i32 1
  %value = getelementptr inbounds %struct.var_t, ptr %4, i32 0, i32 1, i32 0, i32 7
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %7 = zext i32 %how to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %how, label %if.end.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %sw.bb8
    i32 1, label %sw.bb11
    i32 2, label %sw.bb12
    i32 3, label %sw.bb13
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %low = getelementptr inbounds %struct.var_t, ptr %4, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %input)
  %cmp = icmp sgt i32 %9, %input
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %high = getelementptr inbounds %struct.var_t, ptr %4, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %input)
  %cmp4 = icmp slt i32 %11, %input
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %default_val = getelementptr inbounds %struct.var_t, ptr %4, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %default_val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %input, ptr %default_val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %default_val10 = getelementptr inbounds %struct.var_t, ptr %4, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %default_val10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %default_val10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %6, %input
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %6, %input
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb8, %if.end.sw.epilog_crit_edge
  %val.0 = phi i32 [ %6, %if.end.sw.epilog_crit_edge ], [ %sub, %sw.bb13 ], [ %add, %sw.bb12 ], [ %input, %sw.bb11 ], [ %14, %sw.bb8 ]
  %low15 = getelementptr inbounds %struct.var_t, ptr %4, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %low15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %low15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %16)
  %cmp16 = icmp slt i32 %val.0, %16
  br i1 %cmp16, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false17

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false17:                                  ; preds = %sw.epilog
  %high19 = getelementptr inbounds %struct.var_t, ptr %4, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %high19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %high19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %18)
  %cmp20 = icmp sgt i32 %val.0, %18
  br i1 %cmp20, label %lor.lhs.false17.cleanup_crit_edge, label %if.end22

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false17
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %val.0, ptr %value, align 4
  %var_type = getelementptr inbounds %struct.st_var_header, ptr %var, i32 0, i32 2
  %20 = ptrtoint ptr %var_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %var_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp25 = icmp ne i32 %21, 1
  %tobool26.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp25, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %if.end28, label %if.else.i

if.else.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %val.0) #12
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call2.i, ptr %1, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  br i1 %tobool26.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %val.0, ptr %1, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  %var_id = getelementptr inbounds %struct.st_var_header, ptr %var, i32 0, i32 1
  %24 = ptrtoint ptr %var_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %var_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %25)
  %cmp32 = icmp eq i32 %25, 24
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [0 x i16], ptr @spk_punc_masks, i32 0, i32 %val.0
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx, align 2
  call void @__asan_store2_noabort(i32 ptrtoint (ptr @spk_punc_mask to i32))
  store i16 %27, ptr @spk_punc_mask, align 2
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %multiplier = getelementptr inbounds %struct.var_t, ptr %4, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %multiplier to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %multiplier, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp36.not = icmp eq i16 %29, 0
  %narrow = select i1 %cmp36.not, i16 1, i16 %29
  %mul = sext i16 %narrow to i32
  %val.1 = mul i32 %val.0, %mul
  %offset = getelementptr inbounds %struct.var_t, ptr %4, i32 0, i32 1, i32 0, i32 4
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %offset, align 4
  %conv44 = sext i16 %31 to i32
  %add45 = add i32 %val.1, %conv44
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %25)
  %cmp47 = icmp ult i32 %25, 28
  br i1 %cmp47, label %if.end34.cleanup_crit_edge, label %lor.lhs.false49

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false49:                                  ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %32 = load ptr, ptr @synth, align 4
  %tobool50.not = icmp eq ptr %32, null
  br i1 %tobool50.not, label %lor.lhs.false49.cleanup_crit_edge, label %if.end52

lor.lhs.false49.cleanup_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false49
  %synth_adjust = getelementptr inbounds %struct.spk_synth, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %synth_adjust to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %synth_adjust, align 4
  %tobool53.not = icmp eq ptr %34, null
  br i1 %tobool53.not, label %if.end57, label %if.then54

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = tail call i32 %34(ptr noundef %var) #12
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %35 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %u, align 4
  %tobool59.not = icmp eq ptr %36, null
  br i1 %tobool59.not, label %if.end57.cleanup_crit_edge, label %if.end61

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %25)
  %cmp63 = icmp eq i32 %25, 29
  %spk_pitch_buff.buf = select i1 %cmp63, ptr @spk_pitch_buff, ptr %buf
  %out_str = getelementptr inbounds %struct.var_t, ptr %4, i32 0, i32 1, i32 0, i32 6
  %37 = ptrtoint ptr %out_str to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out_str, align 4
  %tobool68.not = icmp eq ptr %38, null
  br i1 %tobool68.not, label %if.end61.if.end81_crit_edge, label %if.else73

if.end61.if.end81_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.else73:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx78 = getelementptr i8, ptr %38, i32 %add45
  %39 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %40 to i32
  br label %if.end81

if.end81:                                         ; preds = %if.else73, %if.end61.if.end81_crit_edge
  %conv79.sink = phi i32 [ %conv79, %if.else73 ], [ %add45, %if.end61.if.end81_crit_edge ]
  %call80 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %spk_pitch_buff.buf, ptr noundef nonnull %36, i32 noundef %conv79.sink)
  call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.9, ptr noundef nonnull %spk_pitch_buff.buf) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.end57.cleanup_crit_edge, %if.then54, %lor.lhs.false49.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then33, %if.else.i, %lor.lhs.false17.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end6, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.i ], [ 0, %if.then33 ], [ %call56, %if.then54 ], [ 0, %if.end81 ], [ 0, %if.end6 ], [ -61, %entry.cleanup_crit_edge ], [ -34, %lor.lhs.false.cleanup_crit_edge ], [ -34, %sw.bb.cleanup_crit_edge ], [ -34, %lor.lhs.false17.cleanup_crit_edge ], [ -34, %sw.epilog.cleanup_crit_edge ], [ 0, %lor.lhs.false49.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @speakup_unregister_var(i32 noundef %var_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %var_id)
  %cmp1 = icmp ugt i32 %var_id, 42
  br i1 %cmp1, label %do.body3, label %do.end8, !prof !125

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/accessibility/speakup/varhandlers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #12, !srcloc !127
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [43 x ptr], ptr @var_ptrs, i32 0, i32 %var_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %data = getelementptr inbounds %struct.st_var_header, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @spk_get_var_header(i32 noundef %var_id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %var_id)
  %cmp1 = icmp ugt i32 %var_id, 42
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [43 x ptr], ptr @var_ptrs, i32 0, i32 %var_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %data = getelementptr inbounds %struct.st_var_header, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  %. = select i1 %tobool.not, ptr null, ptr %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @spk_var_header_by_name(ptr noundef readonly %name) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 43
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [43 x ptr], ptr @var_ptrs, i32 0, i32 %i.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %1, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @spk_get_var(i32 noundef %var_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %var_id)
  %cmp1 = icmp ugt i32 %var_id, 42
  br i1 %cmp1, label %do.body3, label %do.body7, !prof !125

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/accessibility/speakup/varhandlers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 158, 0\0A.popsection", ""() #12, !srcloc !128
  unreachable

do.body7:                                         ; preds = %entry
  %arrayidx = getelementptr [43 x ptr], ptr @var_ptrs, i32 0, i32 %var_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %do.body18, label %do.end23, !prof !125

do.body18:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/accessibility/speakup/varhandlers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

do.end23:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.st_var_header, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  ret ptr %3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @spk_get_punc_var(i32 noundef %var_id) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @punc_vars, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp.not8.not = icmp eq i32 %0, -1
  br i1 %cmp.not8.not, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi i32 [ %3, %while.body.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %where.010 = phi ptr [ %where.1, %while.body.while.body_crit_edge ], [ @punc_vars, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %var_id)
  %cmp3 = icmp eq i32 %1, %var_id
  %rv.1 = select i1 %cmp3, ptr %where.010, ptr null
  %not.cmp3 = xor i1 %cmp3, true
  %where.1.idx = zext i1 %not.cmp3 to i32
  %where.1 = getelementptr %struct.punc_var_t, ptr %where.010, i32 %where.1.idx
  %2 = ptrtoint ptr %where.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %where.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp ne i32 %3, -1
  %tobool.not = icmp eq ptr %rv.1, null
  %or.cond = select i1 %cmp.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %rv.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %rv.1, %while.body.while.end_crit_edge ]
  ret ptr %rv.0.lcssa
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_printf(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spk_set_mask_bits(ptr noundef readonly %input, i32 noundef %which, i32 noundef %how) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mask1 = getelementptr [0 x %struct.st_bits_data], ptr @spk_punc_info, i32 0, i32 %which, i32 2
  %0 = ptrtoint ptr %mask1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mask1, align 4
  %and = and i32 %how, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.st_bits_data], ptr @spk_punc_info, i32 0, i32 3, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([0 x %struct.st_bits_data], ptr @spk_punc_info, i32 0, i32 3, i32 1), align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not112 = icmp eq i8 %4, 0
  br i1 %tobool2.not112, label %if.then.if.end_crit_edge, label %for.body.lr.ph

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %5 = xor i16 %1, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i8 [ %4, %for.body.lr.ph ], [ %10, %for.body.for.body_crit_edge ]
  %cp.0113 = phi ptr [ %2, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %idxprom = zext i8 %6 to i32
  %arrayidx3 = getelementptr [0 x i16], ptr @spk_chartab, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx3, align 2
  %and5 = and i16 %8, %5
  store i16 %and5, ptr %arrayidx3, align 2
  %incdec.ptr = getelementptr i8, ptr %cp.0113, i32 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr, align 1
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool7.not = icmp eq ptr %input, null
  br i1 %tobool7.not, label %if.then8, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %if.end
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not114 = icmp eq i8 %12, 0
  br i1 %tobool11.not114, label %for.cond10.preheader.if.end43_crit_edge, label %for.body12.lr.ph

for.cond10.preheader.if.end43_crit_edge:          ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

for.body12.lr.ph:                                 ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %1)
  %cmp18 = icmp slt i16 %1, 64
  br label %for.body12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr [0 x %struct.st_bits_data], ptr @spk_punc_info, i32 0, i32 %which, i32 1
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %value, align 4
  br label %if.end43

for.body12:                                       ; preds = %for.inc37.for.body12_crit_edge, %for.body12.lr.ph
  %15 = phi i8 [ %12, %for.body12.lr.ph ], [ %21, %for.inc37.for.body12_crit_edge ]
  %cp.1115 = phi ptr [ %input, %for.body12.lr.ph ], [ %incdec.ptr38, %for.inc37.for.body12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %15)
  %cmp = icmp ult i8 %15, 32
  br i1 %cmp, label %for.body12.cleanup_crit_edge, label %if.end16

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %for.body12
  %conv13 = zext i8 %15 to i32
  %arrayidx22 = getelementptr [0 x i16], ptr @spk_chartab, i32 0, i32 %conv13
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx22, align 2
  br i1 %cmp18, label %if.then20, label %if.else28

if.then20:                                        ; preds = %if.end16
  %18 = and i16 %17, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool25.not = icmp eq i16 %18, 0
  br i1 %tobool25.not, label %if.then20.cleanup_crit_edge, label %if.then20.for.inc37_crit_edge

if.then20.for.inc37_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc37

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else28:                                        ; preds = %if.end16
  %19 = and i16 %17, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool33.not = icmp eq i16 %19, 0
  br i1 %tobool33.not, label %if.else28.for.inc37_crit_edge, label %if.else28.cleanup_crit_edge

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else28.for.inc37_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc37

for.inc37:                                        ; preds = %if.else28.for.inc37_crit_edge, %if.then20.for.inc37_crit_edge
  %incdec.ptr38 = getelementptr i8, ptr %cp.1115, i32 1
  %20 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr38, align 1
  %tobool11.not = icmp eq i8 %21, 0
  br i1 %tobool11.not, label %for.inc37.if.end43_crit_edge, label %for.inc37.for.body12_crit_edge

for.inc37.for.body12_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12

for.inc37.if.end43_crit_edge:                     ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end43:                                         ; preds = %for.inc37.if.end43_crit_edge, %if.then8, %for.cond10.preheader.if.end43_crit_edge
  %cp.2 = phi ptr [ %14, %if.then8 ], [ %input, %for.cond10.preheader.if.end43_crit_edge ], [ %input, %for.inc37.if.end43_crit_edge ]
  %and44 = and i32 %how, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %22 = ptrtoint ptr %cp.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cp.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool65.not118 = icmp eq i8 %23, 0
  br i1 %tobool45.not, label %for.cond64.preheader, label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %if.end43
  br i1 %tobool65.not118, label %for.cond47.preheader.cleanup_crit_edge, label %for.cond47.preheader.for.body49_crit_edge

for.cond47.preheader.for.body49_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body49

for.cond47.preheader.cleanup_crit_edge:           ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond64.preheader:                             ; preds = %if.end43
  br i1 %tobool65.not118, label %for.cond64.preheader.cleanup_crit_edge, label %for.body66.lr.ph

for.cond64.preheader.cleanup_crit_edge:           ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body66.lr.ph:                                 ; preds = %for.cond64.preheader
  %24 = xor i16 %1, -1
  br label %for.body66

for.body49:                                       ; preds = %for.inc60.for.body49_crit_edge, %for.cond47.preheader.for.body49_crit_edge
  %25 = phi i8 [ %29, %for.inc60.for.body49_crit_edge ], [ %23, %for.cond47.preheader.for.body49_crit_edge ]
  %cp.3117 = phi ptr [ %incdec.ptr61, %for.inc60.for.body49_crit_edge ], [ %cp.2, %for.cond47.preheader.for.body49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %25)
  %cmp51 = icmp ugt i8 %25, 32
  br i1 %cmp51, label %if.then53, label %for.body49.for.inc60_crit_edge

for.body49.for.inc60_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc60

if.then53:                                        ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #14
  %conv50 = zext i8 %25 to i32
  %arrayidx56 = getelementptr [0 x i16], ptr @spk_chartab, i32 0, i32 %conv50
  %26 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx56, align 2
  %or = or i16 %27, %1
  store i16 %or, ptr %arrayidx56, align 2
  br label %for.inc60

for.inc60:                                        ; preds = %if.then53, %for.body49.for.inc60_crit_edge
  %incdec.ptr61 = getelementptr i8, ptr %cp.3117, i32 1
  %28 = ptrtoint ptr %incdec.ptr61 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr61, align 1
  %tobool48.not = icmp eq i8 %29, 0
  br i1 %tobool48.not, label %for.inc60.cleanup_crit_edge, label %for.inc60.for.body49_crit_edge

for.inc60.for.body49_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body49

for.inc60.cleanup_crit_edge:                      ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body66:                                       ; preds = %for.inc79.for.body66_crit_edge, %for.body66.lr.ph
  %30 = phi i8 [ %23, %for.body66.lr.ph ], [ %34, %for.inc79.for.body66_crit_edge ]
  %cp.4119 = phi ptr [ %cp.2, %for.body66.lr.ph ], [ %incdec.ptr80, %for.inc79.for.body66_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %30)
  %cmp68 = icmp ugt i8 %30, 32
  br i1 %cmp68, label %if.then70, label %for.body66.for.inc79_crit_edge

for.body66.for.inc79_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc79

if.then70:                                        ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #14
  %conv67 = zext i8 %30 to i32
  %arrayidx74 = getelementptr [0 x i16], ptr @spk_chartab, i32 0, i32 %conv67
  %31 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx74, align 2
  %and76 = and i16 %32, %24
  store i16 %and76, ptr %arrayidx74, align 2
  br label %for.inc79

for.inc79:                                        ; preds = %if.then70, %for.body66.for.inc79_crit_edge
  %incdec.ptr80 = getelementptr i8, ptr %cp.4119, i32 1
  %33 = ptrtoint ptr %incdec.ptr80 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr80, align 1
  %tobool65.not = icmp eq i8 %34, 0
  br i1 %tobool65.not, label %for.inc79.cleanup_crit_edge, label %for.inc79.for.body66_crit_edge

for.inc79.for.body66_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body66

for.inc79.cleanup_crit_edge:                      ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc79.cleanup_crit_edge, %for.inc60.cleanup_crit_edge, %for.cond64.preheader.cleanup_crit_edge, %for.cond47.preheader.cleanup_crit_edge, %if.else28.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %for.body12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond64.preheader.cleanup_crit_edge ], [ 0, %for.cond47.preheader.cleanup_crit_edge ], [ 0, %for.inc79.cleanup_crit_edge ], [ 0, %for.inc60.cleanup_crit_edge ], [ -22, %if.else28.cleanup_crit_edge ], [ -22, %if.then20.cleanup_crit_edge ], [ -22, %for.body12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @spk_strlwr(ptr noundef %s) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not7 = icmp eq i8 %1, 0
  br i1 %tobool1.not7, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %2 = phi i8 [ %8, %for.body.for.body_crit_edge ], [ %1, %for.cond.preheader.for.body_crit_edge ]
  %p.08 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %s, %for.cond.preheader.for.body_crit_edge ]
  %conv.i = zext i8 %2 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 0
  %sub.i = add i8 %2, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %2, i8 %sub.i
  %6 = ptrtoint ptr %p.08 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select.i, ptr %p.08, align 1
  %incdec.ptr = getelementptr i8, ptr %p.08, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr, align 1
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %s
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @spk_s2uchar(ptr noundef %start, ptr nocapture noundef writeonly %dest) local_unnamed_addr #3 align 64 {
entry:
  %start.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %start.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %start, ptr %start.addr, align 4
  %call = tail call ptr @skip_spaces(ptr noundef %start) #12
  %call1 = call i32 @simple_strtoul(ptr noundef %call, ptr noundef nonnull %start.addr, i32 noundef 10) #12
  %1 = ptrtoint ptr %start.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %start.addr, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %4)
  %cmp = icmp eq i8 %4, 44
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr = getelementptr i8, ptr %2, i32 1
  %5 = ptrtoint ptr %start.addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %incdec.ptr, ptr %start.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv3 = trunc i32 %call1 to i8
  %6 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3, ptr %dest, align 1
  %7 = ptrtoint ptr %start.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %start.addr, align 4
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 69, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 71, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 73, i32 28}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 75, i32 28}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 77, i32 28}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 79, i32 28}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 81, i32 28}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 83, i32 28}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 85, i32 28}
!18 = distinct !{null, !19, !"nothing", i1 false, i1 false}
!19 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 92, i32 14}
!20 = !{ptr @__ksymtab_spk_get_var, !21, !"__ksymtab_spk_get_var", i1 false, i1 false}
!21 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 162, i32 1}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 245, i32 15}
!24 = !{ptr @var_ptrs, !25, !"var_ptrs", i1 false, i1 false}
!25 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 53, i32 30}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 8, i32 4}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 9, i32 4}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 10, i32 4}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 11, i32 4}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 12, i32 4}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 13, i32 4}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 14, i32 4}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 15, i32 4}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 16, i32 4}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 17, i32 4}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 18, i32 4}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 19, i32 4}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 20, i32 4}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 21, i32 4}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 22, i32 4}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 23, i32 4}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 24, i32 4}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 25, i32 4}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 26, i32 4}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 27, i32 4}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 28, i32 4}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 29, i32 4}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 30, i32 4}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 31, i32 4}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 32, i32 4}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 33, i32 4}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 34, i32 4}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 35, i32 4}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 36, i32 4}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 37, i32 4}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 38, i32 4}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 39, i32 4}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 40, i32 4}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 41, i32 4}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 42, i32 4}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 43, i32 4}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 44, i32 4}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 45, i32 4}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 46, i32 4}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 47, i32 4}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 48, i32 4}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 49, i32 4}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 50, i32 4}
!112 = !{ptr @var_headers, !113, !"var_headers", i1 false, i1 false}
!113 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 7, i32 29}
!114 = !{ptr @punc_vars, !115, !"punc_vars", i1 false, i1 false}
!115 = !{!"../drivers/accessibility/speakup/varhandlers.c", i32 55, i32 26}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{i64 2154028636, i64 2154029143, i64 2154028673, i64 2154028729, i64 2154028763, i64 2154028787, i64 2154028828, i64 2154028849, i64 2154028877, i64 2154028911}
!127 = !{i64 2154030337, i64 2154030845, i64 2154030374, i64 2154030430, i64 2154030464, i64 2154030488, i64 2154030529, i64 2154030550, i64 2154030578, i64 2154030612}
!128 = !{i64 2154032087, i64 2154032595, i64 2154032124, i64 2154032180, i64 2154032214, i64 2154032238, i64 2154032279, i64 2154032300, i64 2154032328, i64 2154032362}
!129 = !{i64 2154033749, i64 2154034257, i64 2154033786, i64 2154033842, i64 2154033876, i64 2154033900, i64 2154033941, i64 2154033962, i64 2154033990, i64 2154034024}
