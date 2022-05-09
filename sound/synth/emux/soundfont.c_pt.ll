; ModuleID = '/llk/IR_all_yes/sound/synth/emux/soundfont.c_pt.bc'
source_filename = "../sound/synth/emux/soundfont.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_sf_linear_to_log\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sf_linear_to_log\09\09\09\09"
module asm "\09.long\09__crc_snd_sf_linear_to_log\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sf_linear_to_log:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sf_linear_to_log\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sf_linear_to_log:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_sf_list = type { ptr, i32, i32, [256 x ptr], ptr, i32, i32, i32, i32, i32, %struct.snd_sf_callback, i32, %struct.mutex, %struct.spinlock, ptr }
%struct.snd_sf_callback = type { ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.soundfont_patch_info = type { i16, i16, i16, i16, i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_soundfont = type { ptr, i16, i16, [32 x i8], ptr, ptr }
%struct.soundfont_sample_info = type { i16, i16, i32, i32, i32, i32, i32, i16, i16, i32 }
%struct.snd_sf_sample = type { %struct.soundfont_sample_info, i32, ptr, ptr }
%struct.soundfont_open_parm = type { i16, i16, [32 x i8] }
%struct.soundfont_voice_rec_hdr = type { i8, i8, i8, i8 }
%struct.snd_sf_zone = type { ptr, i8, i8, i8, %struct.soundfont_voice_info, i32, ptr, ptr, ptr }
%struct.soundfont_voice_info = type { i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, %struct.soundfont_voice_parm, i16 }
%struct.soundfont_voice_parm = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [4 x i16] }
%struct.soundfont_voice_map = type { i32, i32, i32, i32, i32, i32 }
%struct.patch_info = type { i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [2 x i32], [1 x i8] }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/synth/emux/soundfont.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013patch record too small %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013The wrong kind of patch %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Patch too short %ld, need %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013poor length %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013soundfont: remove_info: patch not opened\0A\00", [52 x i8] zeroinitializer }, align 32
@log_tbl = internal constant { [129 x i32], [156 x i8] } { [129 x i32] [i32 458752, i32 459487, i32 460217, i32 460942, i32 461661, i32 462374, i32 463083, i32 463786, i32 464483, i32 465176, i32 465864, i32 466546, i32 467224, i32 467897, i32 468565, i32 469229, i32 469888, i32 470542, i32 471192, i32 471837, i32 472478, i32 473115, i32 473747, i32 474376, i32 475000, i32 475620, i32 476236, i32 476848, i32 477456, i32 478060, i32 478660, i32 479257, i32 479849, i32 480438, i32 481024, i32 481606, i32 482184, i32 482759, i32 483330, i32 483898, i32 484462, i32 485024, i32 485581, i32 486136, i32 486687, i32 487235, i32 487780, i32 488322, i32 488861, i32 489396, i32 489929, i32 490459, i32 490986, i32 491509, i32 492030, i32 492548, i32 493064, i32 493576, i32 494086, i32 494593, i32 495097, i32 495599, i32 496098, i32 496594, i32 497088, i32 497579, i32 498067, i32 498553, i32 499037, i32 499518, i32 499997, i32 500473, i32 500947, i32 501419, i32 501888, i32 502355, i32 502820, i32 503282, i32 503742, i32 504200, i32 504656, i32 505109, i32 505560, i32 506009, i32 506456, i32 506901, i32 507344, i32 507785, i32 508224, i32 508661, i32 509095, i32 509528, i32 509959, i32 510387, i32 510814, i32 511239, i32 511662, i32 512083, i32 512503, i32 512920, i32 513336, i32 513750, i32 514162, i32 514572, i32 514980, i32 515387, i32 515792, i32 516195, i32 516596, i32 516996, i32 517394, i32 517791, i32 518185, i32 518579, i32 518970, i32 519360, i32 519748, i32 520135, i32 520520, i32 520904, i32 521286, i32 521666, i32 522045, i32 522423, i32 522799, i32 523173, i32 523546, i32 523917, i32 524288], [156 x i8] zeroinitializer }, align 32
@__kstrtab_snd_sf_linear_to_log = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sf_linear_to_log = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sf_linear_to_log = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sf_linear_to_log to i32), ptr @__kstrtab_snd_sf_linear_to_log, ptr @__kstrtabns_snd_sf_linear_to_log }, section "___ksymtab+snd_sf_linear_to_log", align 4
@attack_time_tbl = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 32767, i16 32767, i16 5989, i16 4235, i16 2994, i16 2518, i16 2117, i16 1780, i16 1497, i16 1373, i16 1259, i16 1154, i16 1058, i16 970, i16 890, i16 816, i16 707, i16 691, i16 662, i16 634, i16 607, i16 581, i16 557, i16 533, i16 510, i16 489, i16 468, i16 448, i16 429, i16 411, i16 393, i16 377, i16 361, i16 345, i16 331, i16 317, i16 303, i16 290, i16 278, i16 266, i16 255, i16 244, i16 234, i16 224, i16 214, i16 205, i16 196, i16 188, i16 180, i16 172, i16 165, i16 158, i16 151, i16 145, i16 139, i16 133, i16 127, i16 122, i16 117, i16 112, i16 107, i16 102, i16 98, i16 94, i16 90, i16 86, i16 82, i16 79, i16 75, i16 72, i16 69, i16 66, i16 63, i16 61, i16 58, i16 56, i16 53, i16 51, i16 49, i16 47, i16 45, i16 43, i16 41, i16 39, i16 37, i16 36, i16 34, i16 33, i16 31, i16 30, i16 29, i16 28, i16 26, i16 25, i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 19, i16 18, i16 17, i16 16, i16 16, i16 15, i16 15, i16 14, i16 13, i16 13, i16 12, i16 12, i16 11, i16 11, i16 10, i16 10, i16 10, i16 9, i16 9, i16 8, i16 8, i16 8, i16 8, i16 7, i16 7, i16 7, i16 6, i16 0], [64 x i8] zeroinitializer }, align 32
@decay_time_tbl = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 32767, i16 32767, i16 22614, i16 15990, i16 11307, i16 9508, i16 7995, i16 6723, i16 5653, i16 5184, i16 4754, i16 4359, i16 3997, i16 3665, i16 3361, i16 3082, i16 2828, i16 2765, i16 2648, i16 2535, i16 2428, i16 2325, i16 2226, i16 2132, i16 2042, i16 1955, i16 1872, i16 1793, i16 1717, i16 1644, i16 1574, i16 1507, i16 1443, i16 1382, i16 1324, i16 1267, i16 1214, i16 1162, i16 1113, i16 1066, i16 978, i16 936, i16 897, i16 859, i16 822, i16 787, i16 754, i16 722, i16 691, i16 662, i16 634, i16 607, i16 581, i16 557, i16 533, i16 510, i16 489, i16 468, i16 448, i16 429, i16 411, i16 393, i16 377, i16 361, i16 345, i16 331, i16 317, i16 303, i16 290, i16 278, i16 266, i16 255, i16 244, i16 234, i16 224, i16 214, i16 205, i16 196, i16 188, i16 180, i16 172, i16 165, i16 158, i16 151, i16 145, i16 139, i16 133, i16 127, i16 122, i16 117, i16 112, i16 107, i16 102, i16 98, i16 94, i16 90, i16 86, i16 82, i16 79, i16 75, i16 72, i16 69, i16 66, i16 63, i16 61, i16 58, i16 56, i16 53, i16 51, i16 49, i16 47, i16 45, i16 43, i16 41, i16 39, i16 37, i16 36, i16 34, i16 33, i16 31, i16 30, i16 29, i16 28, i16 26, i16 25, i16 24, i16 23, i16 22], [64 x i8] zeroinitializer }, align 32
@snd_sf_vol_table = dso_local global { [128 x i32], [128 x i8] } { [128 x i32] [i32 255, i32 111, i32 95, i32 86, i32 79, i32 74, i32 70, i32 66, i32 63, i32 61, i32 58, i32 56, i32 54, i32 52, i32 50, i32 49, i32 47, i32 46, i32 45, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 34, i32 33, i32 32, i32 31, i32 31, i32 30, i32 29, i32 29, i32 28, i32 27, i32 27, i32 26, i32 26, i32 25, i32 24, i32 24, i32 23, i32 23, i32 22, i32 22, i32 21, i32 21, i32 21, i32 20, i32 20, i32 19, i32 19, i32 18, i32 18, i32 18, i32 17, i32 17, i32 16, i32 16, i32 16, i32 15, i32 15, i32 15, i32 14, i32 14, i32 14, i32 13, i32 13, i32 13, i32 12, i32 12, i32 12, i32 11, i32 11, i32 11, i32 10, i32 10, i32 10, i32 10, i32 9, i32 9, i32 9, i32 8, i32 8, i32 8, i32 8, i32 7, i32 7, i32 7, i32 7, i32 6, i32 6, i32 6, i32 6, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [128 x i8] zeroinitializer }, align 32
@snd_sf_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&sflist->presets_mutex\00", [41 x i8] zeroinitializer }, align 32
@snd_sf_new.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sflist->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@load_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Soundfont error: invalid patch zone length\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"load_info\00", [22 x i8] zeroinitializer }, align 32
@load_info._entry_ptr = internal global ptr @load_info._entry, section ".printk_index", align 4
@load_info._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Soundfont error: Illegal voice number %d\0A\00", [52 x i8] zeroinitializer }, align 32
@load_info._entry_ptr.16 = internal global ptr @load_info._entry.14, section ".printk_index", align 4
@load_info._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013Soundfont Error: patch length(%ld) is smaller than nvoices(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@load_info._entry_ptr.19 = internal global ptr @load_info._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 124, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 134, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 138, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 143, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 187, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [8 x i8] c"log_tbl\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 760, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"attack_time_tbl\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 866, i32 20 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"decay_time_tbl\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 877, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"snd_sf_vol_table\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 927, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1404, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1405, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 156, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 528, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 538, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [32 x i8] c"../sound/synth/emux/soundfont.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 544, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_snd_sf_linear_to_log, ptr @load_info._entry, ptr @load_info._entry.14, ptr @load_info._entry.17, ptr @load_info._entry_ptr, ptr @load_info._entry_ptr.16, ptr @load_info._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @log_tbl, ptr @attack_time_tbl, ptr @decay_time_tbl, ptr @snd_sf_vol_table, ptr @snd_sf_new.__key, ptr @.str.6, ptr @snd_sf_new.__key.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_tbl to i32), i32 516, i32 672, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attack_time_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decay_time_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sf_vol_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sf_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sf_new.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_info._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_info._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soundfont_close_check(ptr noundef %sflist, i32 noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %open_client = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 1
  %0 = ptrtoint ptr %open_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open_client, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %client)
  %cmp5 = icmp eq i32 %1, %client
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  br i1 %cmp5, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %2 = ptrtoint ptr %sflist to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sflist, align 4
  %3 = ptrtoint ptr %open_client to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %open_client, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #11
  tail call fastcc void @rebuild_presets(ptr noundef %sflist) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @close_patch(ptr noundef %sflist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %0 = ptrtoint ptr %sflist to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sflist, align 4
  %open_client = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 1
  %1 = ptrtoint ptr %open_client to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %open_client, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  tail call fastcc void @rebuild_presets(ptr noundef %sflist)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soundfont_load(ptr noundef %sflist, ptr noundef %data, i32 noundef %count, i32 noundef %client) local_unnamed_addr #0 align 64 {
entry:
  %patch = alloca %struct.soundfont_patch_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %patch) #11
  %0 = getelementptr inbounds %struct.soundfont_patch_info, ptr %patch, i32 0, i32 3
  %1 = getelementptr inbounds %struct.soundfont_patch_info, ptr %patch, i32 0, i32 4
  %2 = getelementptr inbounds %struct.soundfont_patch_info, ptr %patch, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp = icmp slt i32 %count, 16
  %3 = call ptr @memset(ptr %patch, i32 255, i32 16)
  br i1 %cmp, label %if.then, label %if.end59.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 124, ptr noundef nonnull @.str.1, i32 noundef %count) #11
  br label %cleanup

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 16, i32 -1226833920) #14, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !58

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %patch, i32 noundef 16) #11
  %5 = call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !59
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %patch, ptr noundef %data, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !58

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i105 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i105
  %add.ptr.i.i = getelementptr i8, ptr %patch, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i105)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %sub = add nsw i32 %count, -16
  %add.ptr = getelementptr i8, ptr %data, i32 16
  %9 = ptrtoint ptr %patch to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %patch, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -761, i16 %10)
  %cmp3.not = icmp eq i16 %10, -761
  br i1 %cmp3.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %10 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @.str.2, i32 noundef %conv) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %12)
  %cmp9 = icmp slt i32 %sub, %12
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 139, ptr noundef nonnull @.str.3, i32 noundef %sub, i32 noundef %12) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp15 = icmp slt i32 %12, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.4, i32 noundef %12) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %14)
  %cmp21 = icmp eq i16 %14, 2
  br i1 %cmp21, label %if.then23, label %do.body26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @lock_preset(ptr noundef %sflist)
  %call24 = call fastcc i32 @open_patch(ptr noundef %sflist, ptr noundef %add.ptr, i32 noundef %client)
  call fastcc void @unlock_preset(ptr noundef %sflist)
  br label %cleanup

do.body26:                                        ; preds = %if.end19
  %lock = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 13
  %call30 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %open_client = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 1
  %15 = ptrtoint ptr %open_client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %open_client, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %client)
  %cmp33.not = icmp eq i32 %16, %client
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #11
  br i1 %cmp33.not, label %if.end37, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %do.body26
  call fastcc void @lock_preset(ptr noundef %sflist)
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %2, align 4
  %conv40 = sext i16 %18 to i32
  %19 = zext i32 %conv40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv40, label %if.end37.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb42
    i32 3, label %sw.bb44
    i32 9, label %sw.bb51
    i32 6, label %sw.bb46
    i32 8, label %sw.bb48
  ]

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call41 = call fastcc i32 @load_info(ptr noundef %sflist, ptr noundef %add.ptr, i32 noundef %sub)
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = call fastcc i32 @load_data(ptr noundef %sflist, ptr noundef %add.ptr, i32 noundef %sub)
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @close_patch(ptr noundef %sflist)
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = call fastcc i32 @load_map(ptr noundef %sflist, ptr noundef %add.ptr, i32 noundef %sub)
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end37
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %0, align 2
  %conv49 = sext i16 %21 to i32
  %22 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sflist, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %sw.bb48.sw.epilog_crit_edge, label %if.end.i.i101

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i.i101:                                    ; preds = %sw.bb48
  %samples.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %samples.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %p.09.i.i = load ptr, ptr %samples.i.i, align 4
  %tobool.not10.i.i = icmp eq ptr %p.09.i.i, null
  br i1 %tobool.not10.i.i, label %if.end.i.i101.sw.epilog_crit_edge, label %if.end.i.i101.for.body.i.i_crit_edge

if.end.i.i101.for.body.i.i_crit_edge:             ; preds = %if.end.i.i101
  br label %for.body.i.i

if.end.i.i101.sw.epilog_crit_edge:                ; preds = %if.end.i.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i101.for.body.i.i_crit_edge
  %p.011.i.i = phi ptr [ %p.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %p.09.i.i, %if.end.i.i101.for.body.i.i_crit_edge ]
  %sample.i.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %sample.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sample.i.i, align 2
  %conv.i.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv49)
  %cmp1.i.i102 = icmp eq i32 %conv.i.i, %conv49
  br i1 %cmp1.i.i102, label %for.body.i.i.sw.epilog_crit_edge, label %for.inc.i.i

for.body.i.i.sw.epilog_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.snd_sf_sample, ptr %p.011.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %p.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %p.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.sw.epilog_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end37
  %28 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sflist, align 4
  %tobool52.not = icmp eq ptr %29, null
  br i1 %tobool52.not, label %if.then53, label %if.else

if.then53:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.5) #11
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %0, align 2
  %conv55 = zext i16 %31 to i32
  %32 = lshr i32 %conv55, 8
  %and58 = and i32 %conv55, 255
  %call60 = call fastcc i32 @remove_info(ptr noundef %sflist, ptr noundef nonnull %29, i32 noundef %32, i32 noundef %and58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  %. = select i1 %tobool61.not, i32 -22, i32 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then53, %for.inc.i.i.sw.epilog_crit_edge, %for.body.i.i.sw.epilog_crit_edge, %if.end.i.i101.sw.epilog_crit_edge, %sw.bb48.sw.epilog_crit_edge, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb, %if.end37.sw.epilog_crit_edge
  %rc.1 = phi i32 [ -22, %if.end37.sw.epilog_crit_edge ], [ %call47, %sw.bb46 ], [ %., %if.else ], [ -22, %if.then53 ], [ 0, %sw.bb44 ], [ %call43, %sw.bb42 ], [ %call41, %sw.bb ], [ -22, %sw.bb48.sw.epilog_crit_edge ], [ -22, %if.end.i.i101.sw.epilog_crit_edge ], [ 0, %for.body.i.i.sw.epilog_crit_edge ], [ -22, %for.inc.i.i.sw.epilog_crit_edge ]
  call fastcc void @unlock_preset(ptr noundef %sflist)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.body26.cleanup_crit_edge, %if.then23, %if.then17, %if.then11, %if.then5, %if.then11.i.i, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then5 ], [ -22, %if.then11 ], [ -22, %if.then17 ], [ %call24, %if.then23 ], [ %rc.1, %sw.epilog ], [ -14, %if.then11.i.i ], [ -16, %do.body26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %patch) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_preset(ptr noundef %sflist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %presets_mutex = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %presets_mutex, i32 noundef 0) #11
  %lock = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %presets_locked = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 11
  %0 = ptrtoint ptr %presets_locked to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %presets_locked, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @open_patch(ptr noundef %sflist, ptr noundef %data, i32 noundef %client) unnamed_addr #0 align 64 {
entry:
  %parm = alloca %struct.soundfont_open_parm, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %parm) #11
  %0 = call ptr @memset(ptr %parm, i32 255, i32 36)
  %lock = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %open_client = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 1
  %1 = ptrtoint ptr %open_client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %open_client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp5 = icmp sgt i32 %2, -1
  br i1 %cmp5, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sflist, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 36, i32 -1226833920) #14, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !58

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %parm, i32 noundef 36) #11
  %6 = call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !59
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %parm, ptr noundef %data, i32 noundef 36) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end12, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !58

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i5 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 36, %if.end.if.then11.i.i_crit_edge ], [ 36, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 36, %res.0.i.i5
  %add.ptr.i.i = getelementptr i8, ptr %parm, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i5)
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.i
  %10 = ptrtoint ptr %parm to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %parm, align 2
  %conv13 = zext i16 %11 to i32
  %12 = and i32 %conv13, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %.not = icmp eq i32 %12, 6
  br i1 %.not, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end12
  %13 = or i16 %11, 512
  %14 = ptrtoint ptr %parm to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %parm, align 2
  %fonts.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 4
  %15 = ptrtoint ptr %fonts.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %sf.0.i15 = load ptr, ptr %fonts.i, align 4
  %tobool1.not.i16 = icmp eq ptr %sf.0.i15, null
  br i1 %tobool1.not.i16, label %if.then16.if.end4.i_crit_edge, label %if.then16.for.body.i_crit_edge

if.then16.for.body.i_crit_edge:                   ; preds = %if.then16
  br label %for.body.i

if.then16.if.end4.i_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

for.body.i:                                       ; preds = %is_identical_font.exit.i.for.body.i_crit_edge, %if.then16.for.body.i_crit_edge
  %sf.0.i17 = phi ptr [ %sf.0.i, %is_identical_font.exit.i.for.body.i_crit_edge ], [ %sf.0.i15, %if.then16.for.body.i_crit_edge ]
  %type1.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %sf.0.i17, i32 0, i32 2
  %16 = ptrtoint ptr %type1.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %type1.i.i, align 2
  %18 = and i16 %17, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i.i, label %for.body.i.is_identical_font.exit.i_crit_edge, label %land.lhs.true.i.i2

for.body.i.is_identical_font.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_identical_font.exit.i

land.lhs.true.i.i2:                               ; preds = %for.body.i
  %19 = xor i16 %17, %11
  %20 = and i16 %19, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i.i1 = icmp eq i16 %20, 0
  br i1 %cmp.i.i1, label %land.lhs.true.i.i2.do.body32_crit_edge, label %land.lhs.true.i.i2.is_identical_font.exit.i_crit_edge

land.lhs.true.i.i2.is_identical_font.exit.i_crit_edge: ; preds = %land.lhs.true.i.i2
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_identical_font.exit.i

land.lhs.true.i.i2.do.body32_crit_edge:           ; preds = %land.lhs.true.i.i2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

is_identical_font.exit.i:                         ; preds = %land.lhs.true.i.i2.is_identical_font.exit.i_crit_edge, %for.body.i.is_identical_font.exit.i_crit_edge
  %21 = ptrtoint ptr %sf.0.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %sf.0.i = load ptr, ptr %sf.0.i17, align 4
  %tobool1.not.i = icmp eq ptr %sf.0.i, null
  br i1 %tobool1.not.i, label %is_identical_font.exit.i.if.end4.i_crit_edge, label %is_identical_font.exit.i.for.body.i_crit_edge

is_identical_font.exit.i.for.body.i_crit_edge:    ; preds = %is_identical_font.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

is_identical_font.exit.i.if.end4.i_crit_edge:     ; preds = %is_identical_font.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %is_identical_font.exit.i.if.end4.i_crit_edge, %if.then16.if.end4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 48) #15
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end4.i.cleanup_crit_edge, label %if.end7.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %fonts_size.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 5
  %23 = ptrtoint ptr %fonts_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fonts_size.i, align 4
  %conv.i = trunc i32 %24 to i16
  %id.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %id.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %fonts_size.i, align 4
  %26 = ptrtoint ptr %fonts.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fonts.i, align 4
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %call7.i.i.i, align 8
  store ptr %call7.i.i.i, ptr %fonts.i, align 4
  %type13.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %type13.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %13, ptr %type13.i, align 2
  %zones.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %zones.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %zones.i, align 8
  %samples.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %samples.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %samples.i, align 4
  br label %do.body32

if.end26:                                         ; preds = %if.end12
  %name = getelementptr inbounds %struct.soundfont_open_parm, ptr %parm, i32 0, i32 2
  %call25 = call fastcc ptr @newsf(ptr noundef %sflist, i32 noundef %conv13, ptr noundef %name)
  %cmp27 = icmp eq ptr %call25, null
  br i1 %cmp27, label %if.end26.cleanup_crit_edge, label %if.end26.do.body32_crit_edge

if.end26.do.body32_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body32:                                        ; preds = %if.end26.do.body32_crit_edge, %if.end7.i, %land.lhs.true.i.i2.do.body32_crit_edge
  %sf.010 = phi ptr [ %call25, %if.end26.do.body32_crit_edge ], [ %call7.i.i.i, %if.end7.i ], [ %sf.0.i17, %land.lhs.true.i.i2.do.body32_crit_edge ]
  %call40 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %32 = ptrtoint ptr %open_client to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %client, ptr %open_client, align 4
  %33 = ptrtoint ptr %sflist to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %sf.010, ptr %sflist, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %if.end26.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.then11.i.i, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %do.body32 ], [ -12, %if.end26.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -12, %if.end4.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %parm) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unlock_preset(ptr noundef %sflist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %presets_locked = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 11
  %0 = ptrtoint ptr %presets_locked to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %presets_locked, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  %presets_mutex = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %presets_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_info(ptr nocapture noundef %sflist, ptr noundef %data, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.soundfont_voice_rec_hdr, align 4
  %tmpzone = alloca %struct.snd_sf_zone, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr) #11
  %0 = getelementptr inbounds %struct.soundfont_voice_rec_hdr, ptr %hdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.soundfont_voice_rec_hdr, ptr %hdr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.soundfont_voice_rec_hdr, ptr %hdr, i32 0, i32 3
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %hdr, align 4
  %4 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sflist, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup101_crit_edge, label %if.end

entry.cleanup101_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.snd_soundfont, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 2
  %8 = and i16 %7, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %8)
  %.not = icmp eq i16 %8, 6
  br i1 %.not, label %if.end.cleanup101_crit_edge, label %if.end3

if.end.cleanup101_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp = icmp slt i32 %count, 4
  br i1 %cmp, label %do.end, label %if.end59.i.i

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #16
  br label %cleanup101

if.end59.i.i:                                     ; preds = %if.end3
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 4, i32 -1226833920) #14, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !58

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdr, i32 noundef 4) #11
  %10 = call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !59
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %hdr, ptr noundef %data, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !58

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i164 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i164
  %add.ptr.i.i = getelementptr i8, ptr %hdr, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i164)
  br label %cleanup101

if.end11:                                         ; preds = %if.end.i.i
  %add.ptr = getelementptr i8, ptr %data, i32 4
  %sub = add nsw i32 %count, -4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 2
  %conv12 = zext i8 %15 to i32
  %16 = add i8 %15, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 -99, i8 %16)
  %17 = icmp ult i8 %16, -99
  br i1 %17, label %do.end22, label %if.end27

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv12) #16
  br label %cleanup101

if.end27:                                         ; preds = %if.end11
  %mul = mul nuw nsw i32 %conv12, 92
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul)
  %cmp30 = icmp ult i32 %sub, %mul
  br i1 %cmp30, label %do.end35, label %if.end40

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %sub, i32 noundef %conv12) #16
  br label %cleanup101

if.end40:                                         ; preds = %if.end27
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %19, label %if.end40.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb57
  ]

if.end40.sw.epilog_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end40
  %zones = getelementptr inbounds %struct.snd_soundfont, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %21)
  %zone.0180 = load ptr, ptr %zones, align 4
  %tobool42.not181 = icmp eq ptr %zone.0180, null
  br i1 %tobool42.not181, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %zone.0182 = phi ptr [ %zone.0, %for.inc.for.body_crit_edge ], [ %zone.0180, %sw.bb.for.body_crit_edge ]
  %mapped = getelementptr inbounds %struct.snd_sf_zone, ptr %zone.0182, i32 0, i32 3
  %22 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mapped, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool43.not = icmp eq i8 %23, 0
  br i1 %tobool43.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bank = getelementptr inbounds %struct.snd_sf_zone, ptr %zone.0182, i32 0, i32 1
  %24 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bank, align 4
  %26 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hdr, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp47 = icmp eq i8 %25, %27
  br i1 %cmp47, label %land.lhs.true49, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true49:                                  ; preds = %land.lhs.true
  %instr = getelementptr inbounds %struct.snd_sf_zone, ptr %zone.0182, i32 0, i32 2
  %28 = ptrtoint ptr %instr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %instr, align 1
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp53 = icmp eq i8 %29, %31
  br i1 %cmp53, label %land.lhs.true49.cleanup101_crit_edge, label %land.lhs.true49.for.inc_crit_edge

land.lhs.true49.for.inc_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true49.cleanup101_crit_edge:             ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

for.inc:                                          ; preds = %land.lhs.true49.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %32 = ptrtoint ptr %zone.0182 to i32
  call void @__asan_load4_noabort(i32 %32)
  %zone.0 = load ptr, ptr %zone.0182, align 4
  %tobool42.not = icmp eq ptr %zone.0, null
  br i1 %tobool42.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end40
  %33 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hdr, align 4
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %0, align 1
  %zones.i = getelementptr inbounds %struct.snd_soundfont, ptr %5, i32 0, i32 4
  %37 = ptrtoint ptr %zones.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %zones.i, align 4
  %tobool.not31.i = icmp eq ptr %38, null
  br i1 %tobool.not31.i, label %sw.bb57.sw.epilog_crit_edge, label %sw.bb57.for.body.i_crit_edge

sw.bb57.for.body.i_crit_edge:                     ; preds = %sw.bb57
  br label %for.body.i

sw.bb57.sw.epilog_crit_edge:                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb57.for.body.i_crit_edge
  %removed.034.i = phi i32 [ %removed.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb57.for.body.i_crit_edge ]
  %p.033.i = phi ptr [ %40, %for.inc.i.for.body.i_crit_edge ], [ %38, %sw.bb57.for.body.i_crit_edge ]
  %prev.032.i = phi ptr [ %prev.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %sw.bb57.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %p.033.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p.033.i, align 4
  %mapped.i = getelementptr inbounds %struct.snd_sf_zone, ptr %p.033.i, i32 0, i32 3
  %41 = ptrtoint ptr %mapped.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mapped.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool2.not.i = icmp eq i8 %42, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bank3.i = getelementptr inbounds %struct.snd_sf_zone, ptr %p.033.i, i32 0, i32 1
  %43 = ptrtoint ptr %bank3.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bank3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %34)
  %cmp.i = icmp eq i8 %44, %34
  br i1 %cmp.i, label %land.lhs.true5.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %instr6.i = getelementptr inbounds %struct.snd_sf_zone, ptr %p.033.i, i32 0, i32 2
  %45 = ptrtoint ptr %instr6.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %instr6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %36)
  %cmp8.i = icmp eq i8 %46, %36
  br i1 %cmp8.i, label %if.then.i, label %land.lhs.true5.i.for.inc.i_crit_edge

land.lhs.true5.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  %tobool10.not.i = icmp eq ptr %prev.032.i, null
  %zones.prev.032.i = select i1 %tobool10.not.i, ptr %zones.i, ptr %prev.032.i
  %47 = ptrtoint ptr %zones.prev.032.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %40, ptr %zones.prev.032.i, align 4
  %inc.i = add i32 %removed.034.i, 1
  call void @kfree(ptr noundef nonnull %p.033.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %prev.1.i = phi ptr [ %prev.032.i, %if.then.i ], [ %p.033.i, %land.lhs.true5.i.for.inc.i_crit_edge ], [ %p.033.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %p.033.i, %for.body.i.for.inc.i_crit_edge ]
  %removed.1.i = phi i32 [ %inc.i, %if.then.i ], [ %removed.034.i, %land.lhs.true5.i.for.inc.i_crit_edge ], [ %removed.034.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %removed.034.i, %for.body.i.for.inc.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %removed.1.i)
  %tobool16.not.i = icmp eq i32 %removed.1.i, 0
  br i1 %tobool16.not.i, label %for.end.i.sw.epilog_crit_edge, label %if.then17.i

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then17.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @rebuild_presets(ptr noundef %sflist) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then17.i, %for.end.i.sw.epilog_crit_edge, %sw.bb57.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end40.sw.epilog_crit_edge
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp66184.not = icmp eq i8 %49, 0
  br i1 %cmp66184.not, label %sw.epilog.cleanup101_crit_edge, label %for.body68.lr.ph

sw.epilog.cleanup101_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

for.body68.lr.ph:                                 ; preds = %sw.epilog
  %v = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4
  %bank76 = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 1
  %instr78 = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 2
  %mapped79 = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 3
  %id = getelementptr inbounds %struct.snd_soundfont, ptr %5, i32 0, i32 1
  %mode = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 7
  %parm = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22
  %50 = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22, i32 4
  %modatkhld.i = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22, i32 1
  %moddcysus.i = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22, i32 2
  %modrelease.i = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22, i32 3
  %voldelay.i = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22, i32 6
  %volatkhld.i = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22, i32 7
  %voldcysus.i = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22, i32 8
  %volrelease.i = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22, i32 9
  %lfo1delay.i = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22, i32 12
  %lfo2delay.i = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22, i32 13
  %cutoff.i = getelementptr inbounds %struct.snd_sf_zone, ptr %tmpzone, i32 0, i32 4, i32 22, i32 18
  %zones.i155 = getelementptr inbounds %struct.snd_soundfont, ptr %5, i32 0, i32 4
  %zone_counter.i.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 6
  %zone_locked.i.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 8
  %samples.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %5, i32 0, i32 5
  br label %for.body68

for.body68:                                       ; preds = %for.inc99.for.body68_crit_edge, %for.body68.lr.ph
  %data.addr.0186 = phi ptr [ %add.ptr, %for.body68.lr.ph ], [ %add.ptr73, %for.inc99.for.body68_crit_edge ]
  %i.0185 = phi i32 [ 0, %for.body68.lr.ph ], [ %inc, %for.inc99.for.body68_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %tmpzone) #11
  %51 = call ptr @memset(ptr %tmpzone, i32 255, i32 116)
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #11
  %call.i.i135 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i135, label %for.body68.if.then11.i.i151_crit_edge, label %land.lhs.true.i.i138

for.body68.if.then11.i.i151_crit_edge:            ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i151

land.lhs.true.i.i138:                             ; preds = %for.body68
  %52 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data.addr.0186, i32 92, i32 -1226833920) #14, !srcloc !57
  %asmresult.i.i136 = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i136)
  %cmp.i6.i137 = icmp eq i32 %asmresult.i.i136, 0
  br i1 %cmp.i6.i137, label %if.end.i.i148, label %land.lhs.true.i.i138.if.then11.i.i151_crit_edge, !prof !58

land.lhs.true.i.i138.if.then11.i.i151_crit_edge:  ; preds = %land.lhs.true.i.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i151

if.end.i.i148:                                    ; preds = %land.lhs.true.i.i138
  %call.i.i.i139 = call zeroext i1 @__kasan_check_write(ptr noundef %v, i32 noundef 92) #11
  %53 = call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i.i.i.i.i140 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i140 to ptr
  %cpu_domain.i.i.i.i.i141 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i141) #6, !srcloc !59
  %and.i.i.i.i142 = and i32 %55, -13
  %or.i.i.i.i143 = or i32 %and.i.i.i.i142, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i143) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  %call1.i.i.i144 = call i32 @arm_copy_from_user(ptr noundef %v, ptr noundef %data.addr.0186, i32 noundef 92) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i144)
  %tobool4.not.i.i147 = icmp eq i32 %call1.i.i.i144, 0
  br i1 %tobool4.not.i.i147, label %if.end72, label %if.end.i.i148.if.then11.i.i151_crit_edge, !prof !58

if.end.i.i148.if.then11.i.i151_crit_edge:         ; preds = %if.end.i.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i151

if.then11.i.i151:                                 ; preds = %if.end.i.i148.if.then11.i.i151_crit_edge, %land.lhs.true.i.i138.if.then11.i.i151_crit_edge, %for.body68.if.then11.i.i151_crit_edge
  %res.0.i.i146169 = phi i32 [ %call1.i.i.i144, %if.end.i.i148.if.then11.i.i151_crit_edge ], [ 92, %for.body68.if.then11.i.i151_crit_edge ], [ 92, %land.lhs.true.i.i138.if.then11.i.i151_crit_edge ]
  %sub.i.i149 = sub i32 92, %res.0.i.i146169
  %add.ptr.i.i150 = getelementptr i8, ptr %v, i32 %sub.i.i149
  %56 = call ptr @memset(ptr %add.ptr.i.i150, i32 0, i32 %res.0.i.i146169)
  br label %cleanup.thread

if.end72:                                         ; preds = %if.end.i.i148
  %add.ptr73 = getelementptr i8, ptr %data.addr.0186, i32 92
  %57 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %hdr, align 4
  %59 = ptrtoint ptr %bank76 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %bank76, align 4
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %0, align 1
  %62 = ptrtoint ptr %instr78 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %instr78, align 1
  %63 = ptrtoint ptr %mapped79 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %mapped79, align 2
  %64 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %id, align 4
  %66 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %v, align 4
  %67 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mode, align 2
  %69 = and i16 %68, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool83.not = icmp eq i16 %69, 0
  br i1 %tobool83.not, label %if.end72.if.end86_crit_edge, label %if.then84

if.end72.if.end86_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then84:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %70 = call ptr @memset(ptr %50, i32 0, i32 40)
  %71 = ptrtoint ptr %parm to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -32768, ptr %parm, align 2
  %72 = ptrtoint ptr %modatkhld.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 32639, ptr %modatkhld.i, align 4
  %73 = ptrtoint ptr %moddcysus.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 32639, ptr %moddcysus.i, align 2
  %74 = ptrtoint ptr %modrelease.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -32641, ptr %modrelease.i, align 4
  %75 = ptrtoint ptr %voldelay.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -32768, ptr %voldelay.i, align 2
  %76 = ptrtoint ptr %volatkhld.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 32639, ptr %volatkhld.i, align 4
  %77 = ptrtoint ptr %voldcysus.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 32639, ptr %voldcysus.i, align 2
  %78 = ptrtoint ptr %volrelease.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 -32641, ptr %volrelease.i, align 4
  %79 = ptrtoint ptr %lfo1delay.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 -32768, ptr %lfo1delay.i, align 2
  %80 = ptrtoint ptr %lfo2delay.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 -32768, ptr %lfo2delay.i, align 4
  %81 = ptrtoint ptr %cutoff.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %cutoff.i, align 2
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end72.if.end86_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 116) #15
  %tobool.not.i154 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i154, label %if.end86.cleanup.thread_crit_edge, label %if.end.i

if.end86.cleanup.thread_crit_edge:                ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end.i:                                         ; preds = %if.end86
  %83 = ptrtoint ptr %zones.i155 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %zones.i155, align 4
  %85 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %call7.i.i.i, align 8
  store ptr %call7.i.i.i, ptr %zones.i155, align 4
  %v.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4
  %86 = call ptr @memset(ptr %v.i, i32 0, i32 92)
  %root.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 8
  %87 = ptrtoint ptr %root.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 60, ptr %root.i.i, align 8
  %high.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 11
  %88 = ptrtoint ptr %high.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 127, ptr %high.i.i, align 1
  %velhigh.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 13
  %89 = ptrtoint ptr %velhigh.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 127, ptr %velhigh.i.i, align 1
  %fixkey.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 14
  %amplitude.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 19
  %90 = ptrtoint ptr %fixkey.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %fixkey.i.i, align 8
  %91 = ptrtoint ptr %amplitude.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 127, ptr %amplitude.i.i, align 2
  %scaleTuning.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 21
  %92 = ptrtoint ptr %scaleTuning.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 100, ptr %scaleTuning.i.i, align 8
  %parm.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22
  %93 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22, i32 4
  %94 = call ptr @memset(ptr %93, i32 0, i32 40)
  %95 = ptrtoint ptr %parm.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 -32768, ptr %parm.i.i, align 2
  %modatkhld.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22, i32 1
  %96 = ptrtoint ptr %modatkhld.i.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 32639, ptr %modatkhld.i.i.i, align 4
  %moddcysus.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22, i32 2
  %97 = ptrtoint ptr %moddcysus.i.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 32639, ptr %moddcysus.i.i.i, align 2
  %modrelease.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22, i32 3
  %98 = ptrtoint ptr %modrelease.i.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -32641, ptr %modrelease.i.i.i, align 8
  %voldelay.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22, i32 6
  %99 = ptrtoint ptr %voldelay.i.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 -32768, ptr %voldelay.i.i.i, align 2
  %volatkhld.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22, i32 7
  %100 = ptrtoint ptr %volatkhld.i.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 32639, ptr %volatkhld.i.i.i, align 8
  %voldcysus.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22, i32 8
  %101 = ptrtoint ptr %voldcysus.i.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 32639, ptr %voldcysus.i.i.i, align 2
  %volrelease.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22, i32 9
  %102 = ptrtoint ptr %volrelease.i.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 -32641, ptr %volrelease.i.i.i, align 4
  %lfo1delay.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22, i32 12
  %103 = ptrtoint ptr %lfo1delay.i.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 -32768, ptr %lfo1delay.i.i.i, align 2
  %lfo2delay.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22, i32 13
  %104 = ptrtoint ptr %lfo2delay.i.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -32768, ptr %lfo2delay.i.i.i, align 4
  %cutoff.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 22, i32 18
  %105 = ptrtoint ptr %cutoff.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -1, ptr %cutoff.i.i.i, align 2
  %106 = ptrtoint ptr %zone_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %zone_counter.i.i, align 4
  %inc.i.i = add i32 %107, 1
  store i32 %inc.i.i, ptr %zone_counter.i.i, align 4
  %counter.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 5
  %108 = ptrtoint ptr %counter.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %counter.i.i, align 4
  %109 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %type, align 2
  %111 = and i16 %110, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool.not.i.i = icmp eq i16 %111, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i158_crit_edge, label %if.then.i.i156

if.end.i.if.end.i.i158_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i158

if.then.i.i156:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %zone_locked.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %inc.i.i, ptr %zone_locked.i.i, align 4
  br label %if.end.i.i158

if.end.i.i158:                                    ; preds = %if.then.i.i156, %if.end.i.if.end.i.i158_crit_edge
  %113 = ptrtoint ptr %bank76 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bank76, align 4
  %bank92 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %bank92 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %bank92, align 4
  %116 = ptrtoint ptr %instr78 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %instr78, align 1
  %instr94 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 2
  %118 = ptrtoint ptr %instr94 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %instr94, align 1
  %119 = call ptr @memcpy(ptr %v.i, ptr %v, i32 92)
  %sample1.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %120 = ptrtoint ptr %sample1.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %sample1.i, align 2
  %122 = ptrtoint ptr %samples.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %p.09.i.i = load ptr, ptr %samples.i.i, align 4
  %tobool.not10.i.i = icmp eq ptr %p.09.i.i, null
  br i1 %tobool.not10.i.i, label %if.end.i.i158.for.inc99_crit_edge, label %if.end.i.i158.for.body.i.i_crit_edge

if.end.i.i158.for.body.i.i_crit_edge:             ; preds = %if.end.i.i158
  br label %for.body.i.i

if.end.i.i158.for.inc99_crit_edge:                ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc99

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i158.for.body.i.i_crit_edge
  %p.011.i.i = phi ptr [ %p.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %p.09.i.i, %if.end.i.i158.for.body.i.i_crit_edge ]
  %sample.i.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %sample.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %sample.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %124, i16 %121)
  %cmp1.i.i159 = icmp eq i16 %124, %121
  br i1 %cmp1.i.i159, label %if.end.i161, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.snd_sf_sample, ptr %p.011.i.i, i32 0, i32 3
  %125 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %p.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i160 = icmp eq ptr %p.0.i.i, null
  br i1 %tobool.not.i.i160, label %for.inc.i.i.for.inc99_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.for.inc99_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc99

if.end.i161:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %start.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 2
  %126 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %start.i, align 4
  %start3.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %128 = ptrtoint ptr %start3.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %start3.i, align 4
  %add.i = add i32 %129, %127
  store i32 %add.i, ptr %start3.i, align 4
  %end.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 3
  %130 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %end.i, align 4
  %end5.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  %132 = ptrtoint ptr %end5.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %end5.i, align 8
  %add6.i = add i32 %133, %131
  store i32 %add6.i, ptr %end5.i, align 8
  %loopstart.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 4
  %134 = ptrtoint ptr %loopstart.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %loopstart.i, align 4
  %loopstart8.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 4
  %136 = ptrtoint ptr %loopstart8.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %loopstart8.i, align 4
  %add9.i = add i32 %137, %135
  store i32 %add9.i, ptr %loopstart8.i, align 4
  %loopend.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 5
  %138 = ptrtoint ptr %loopend.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %loopend.i, align 4
  %loopend11.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 5
  %140 = ptrtoint ptr %loopend11.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %loopend11.i, align 8
  %add12.i = add i32 %141, %139
  store i32 %add12.i, ptr %loopend11.i, align 8
  %mode_flags.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 8
  %142 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %mode_flags.i, align 2
  %sample_mode.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 4, i32 23
  %144 = ptrtoint ptr %sample_mode.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %sample_mode.i, align 2
  br label %for.inc99

cleanup.thread:                                   ; preds = %if.end86.cleanup.thread_crit_edge, %if.then11.i.i151
  %retval.1.ph = phi i32 [ -14, %if.then11.i.i151 ], [ -12, %if.end86.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %tmpzone) #11
  br label %cleanup101

for.inc99:                                        ; preds = %if.end.i161, %for.inc.i.i.for.inc99_crit_edge, %if.end.i.i158.for.inc99_crit_edge
  %retval.0.i = phi ptr [ %p.011.i.i, %if.end.i161 ], [ null, %if.end.i.i158.for.inc99_crit_edge ], [ null, %for.inc.i.i.for.inc99_crit_edge ]
  %sample = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i, i32 0, i32 6
  %145 = ptrtoint ptr %sample to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %retval.0.i, ptr %sample, align 8
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %tmpzone) #11
  %inc = add nuw nsw i32 %i.0185, 1
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %1, align 2
  %conv65 = zext i8 %147 to i32
  %cmp66 = icmp ult i32 %inc, %conv65
  br i1 %cmp66, label %for.inc99.for.body68_crit_edge, label %for.inc99.cleanup101_crit_edge

for.inc99.cleanup101_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

for.inc99.for.body68_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body68

cleanup101:                                       ; preds = %for.inc99.cleanup101_crit_edge, %cleanup.thread, %sw.epilog.cleanup101_crit_edge, %land.lhs.true49.cleanup101_crit_edge, %do.end35, %do.end22, %if.then11.i.i, %do.end, %if.end.cleanup101_crit_edge, %entry.cleanup101_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ -22, %do.end22 ], [ -22, %do.end35 ], [ -22, %entry.cleanup101_crit_edge ], [ -22, %if.end.cleanup101_crit_edge ], [ %retval.1.ph, %cleanup.thread ], [ -14, %if.then11.i.i ], [ 0, %sw.epilog.cleanup101_crit_edge ], [ 0, %for.inc99.cleanup101_crit_edge ], [ -22, %land.lhs.true49.cleanup101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr) #11
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_data(ptr nocapture noundef %sflist, ptr noundef %data, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %sample_info = alloca %struct.soundfont_sample_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sample_info) #11
  %0 = getelementptr inbounds %struct.soundfont_sample_info, ptr %sample_info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.soundfont_sample_info, ptr %sample_info, i32 0, i32 6
  %2 = call ptr @memset(ptr %sample_info, i32 255, i32 32)
  %3 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sflist, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.snd_soundfont, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type, align 2
  %7 = and i16 %6, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %7)
  %.not = icmp eq i16 %7, 6
  br i1 %.not, label %if.end.cleanup45_crit_edge, label %if.end59.i.i

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end59.i.i:                                     ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 32, i32 -1226833920) #14, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !58

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sample_info, i32 noundef 32) #11
  %9 = call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !59
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sample_info, ptr noundef %data, i32 noundef 32) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !58

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i83 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i83
  %add.ptr.i.i = getelementptr i8, ptr %sample_info, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i83)
  br label %cleanup45

if.end7:                                          ; preds = %if.end.i.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %sub = add i32 %count, -32
  %div = sdiv i32 %sub, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %div)
  %cmp.not = icmp eq i32 %14, %div
  br i1 %cmp.not, label %if.end.i, label %if.end7.cleanup45_crit_edge

if.end7.cleanup45_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end.i:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %0, align 2
  %samples.i = getelementptr inbounds %struct.snd_soundfont, ptr %4, i32 0, i32 5
  %17 = ptrtoint ptr %samples.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %p.09.i = load ptr, ptr %samples.i, align 4
  %tobool.not10.i = icmp eq ptr %p.09.i, null
  br i1 %tobool.not10.i, label %if.end.i.if.end20_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %p.011.i = phi ptr [ %p.0.i, %for.inc.i.for.body.i_crit_edge ], [ %p.09.i, %if.end.i.for.body.i_crit_edge ]
  %sample.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i, i32 0, i32 1
  %18 = ptrtoint ptr %sample.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sample.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %16)
  %cmp1.i = icmp eq i16 %19, %16
  br i1 %cmp1.i, label %if.then14, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %next.i = getelementptr inbounds %struct.snd_sf_sample, ptr %p.011.i, i32 0, i32 3
  %20 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %p.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end20_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end20_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then14:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %type, align 2
  %23 = and i16 %22, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool17.not = icmp eq i16 %23, 0
  %. = select i1 %tobool17.not, i32 -22, i32 0
  br label %cleanup45

if.end20:                                         ; preds = %for.inc.i.if.end20_crit_edge, %if.end.i.if.end20_crit_edge
  %call21 = call fastcc ptr @sf_sample_new(ptr noundef %sflist, ptr noundef nonnull %4)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.cleanup45_crit_edge, label %if.end24

if.end20.cleanup45_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end24:                                         ; preds = %if.end20
  %24 = call ptr @memcpy(ptr %call21, ptr %sample_info, i32 32)
  %id = getelementptr inbounds %struct.snd_soundfont, ptr %4, i32 0, i32 1
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %id, align 4
  %27 = ptrtoint ptr %call21 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %call21, align 4
  %dummy = getelementptr inbounds %struct.soundfont_sample_info, ptr %call21, i32 0, i32 7
  %28 = ptrtoint ptr %dummy to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %dummy, align 4
  %size28 = getelementptr inbounds %struct.soundfont_sample_info, ptr %call21, i32 0, i32 6
  %29 = ptrtoint ptr %size28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size28, align 4
  %truesize = getelementptr inbounds %struct.soundfont_sample_info, ptr %call21, i32 0, i32 9
  %31 = ptrtoint ptr %truesize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %truesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp32 = icmp sgt i32 %30, 0
  br i1 %cmp32, label %if.then34, label %if.end24.cleanup45_crit_edge

if.end24.cleanup45_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.then34:                                        ; preds = %if.end24
  %callback = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10
  %sample_new = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %sample_new to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sample_new, align 4
  %34 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %callback, align 4
  %memhdr = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 14
  %36 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %memhdr, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %call37 = call i32 %33(ptr noundef %35, ptr noundef nonnull %call21, ptr noundef %37, ptr noundef %add.ptr, i32 noundef %sub) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then34
  %38 = ptrtoint ptr %samples.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %samples.i, align 4
  %cmp.i78 = icmp eq ptr %39, %call21
  br i1 %cmp.i78, label %if.then.i, label %if.then40.cleanup45_crit_edge

if.then40.cleanup45_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.then.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %next.i79 = getelementptr inbounds %struct.snd_sf_sample, ptr %call21, i32 0, i32 3
  %40 = ptrtoint ptr %next.i79 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %next.i79, align 4
  %42 = ptrtoint ptr %samples.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %samples.i, align 4
  call void @kfree(ptr noundef nonnull %call21) #11
  br label %cleanup45

if.end41:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %truesize, align 4
  %mem_used = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 2
  %45 = ptrtoint ptr %mem_used to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mem_used, align 4
  %add = add i32 %46, %44
  store i32 %add, ptr %mem_used, align 4
  br label %cleanup45

cleanup45:                                        ; preds = %if.end41, %if.then.i, %if.then40.cleanup45_crit_edge, %if.end24.cleanup45_crit_edge, %if.end20.cleanup45_crit_edge, %if.then14, %if.end7.cleanup45_crit_edge, %if.then11.i.i, %if.end.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup45_crit_edge ], [ -22, %if.end.cleanup45_crit_edge ], [ -22, %if.end7.cleanup45_crit_edge ], [ %., %if.then14 ], [ -12, %if.end20.cleanup45_crit_edge ], [ %count, %if.end41 ], [ %count, %if.end24.cleanup45_crit_edge ], [ %call37, %if.then40.cleanup45_crit_edge ], [ %call37, %if.then.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sample_info) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_map(ptr nocapture noundef %sflist, ptr noundef %data, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %map = alloca %struct.soundfont_voice_map, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map) #11
  %0 = getelementptr inbounds %struct.soundfont_voice_map, ptr %map, i32 0, i32 1
  %1 = getelementptr inbounds %struct.soundfont_voice_map, ptr %map, i32 0, i32 2
  %2 = getelementptr inbounds %struct.soundfont_voice_map, ptr %map, i32 0, i32 3
  %3 = getelementptr inbounds %struct.soundfont_voice_map, ptr %map, i32 0, i32 4
  %4 = getelementptr inbounds %struct.soundfont_voice_map, ptr %map, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %count)
  %cmp = icmp slt i32 %count, 24
  %5 = call ptr @memset(ptr %map, i32 255, i32 24)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end59.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 24, i32 -1226833920) #14, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !58

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %map, i32 noundef 24) #11
  %7 = call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !59
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %map, ptr noundef %data, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !58

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i131 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i131
  %add.ptr.i.i = getelementptr i8, ptr %map, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i131)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %12)
  %13 = icmp ugt i32 %12, 127
  br i1 %13, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %fonts.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end7
  %sf.0.in.i = phi ptr [ %fonts.i, %if.end7 ], [ %sf.0.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %sf.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %sf.0.i = load ptr, ptr %sf.0.in.i, align 4
  %tobool1.not.i = icmp eq ptr %sf.0.i, null
  br i1 %tobool1.not.i, label %if.end4.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %type1.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %sf.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %type1.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %type1.i.i, align 2
  %17 = and i16 %16, 527
  %18 = icmp eq i16 %17, 519
  br i1 %18, label %for.body.i.if.end11_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.if.end11_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end4.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 48) #15
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end4.i.cleanup_crit_edge, label %if.end7.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %fonts_size.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 5
  %20 = ptrtoint ptr %fonts_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fonts_size.i, align 4
  %conv.i = trunc i32 %21 to i16
  %id.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %id.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %fonts_size.i, align 4
  %23 = ptrtoint ptr %fonts.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fonts.i, align 4
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %call7.i.i.i, align 8
  store ptr %call7.i.i.i, ptr %fonts.i, align 4
  %type13.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %type13.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 519, ptr %type13.i, align 2
  %zones.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %zones.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %zones.i, align 8
  %samples.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %samples.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %samples.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end7.i, %for.body.i.if.end11_crit_edge
  %retval.0.i.ph = phi ptr [ %call7.i.i.i, %if.end7.i ], [ %sf.0.i, %for.body.i.if.end11_crit_edge ]
  %zones = getelementptr inbounds %struct.snd_soundfont, ptr %retval.0.i.ph, i32 0, i32 4
  %29 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %29)
  %zp.0140 = load ptr, ptr %zones, align 4
  %tobool12.not141 = icmp eq ptr %zp.0140, null
  br i1 %tobool12.not141, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %zp.0143 = phi ptr [ %zp.0, %for.inc.for.body_crit_edge ], [ %zp.0140, %if.end11.for.body_crit_edge ]
  %prevp.0142 = phi ptr [ %zp.0143, %for.inc.for.body_crit_edge ], [ null, %if.end11.for.body_crit_edge ]
  %mapped = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.0143, i32 0, i32 3
  %30 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mapped, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool13.not = icmp eq i8 %31, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %instr = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.0143, i32 0, i32 2
  %32 = ptrtoint ptr %instr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %instr, align 1
  %conv14 = zext i8 %33 to i32
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv14)
  %cmp16 = icmp eq i32 %35, %conv14
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true
  %bank = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.0143, i32 0, i32 1
  %36 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bank, align 4
  %conv19 = zext i8 %37 to i32
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %map, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv19)
  %cmp20 = icmp eq i32 %39, %conv19
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %low = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.0143, i32 0, i32 4, i32 10
  %40 = ptrtoint ptr %low to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %low, align 4
  %conv23 = zext i8 %41 to i32
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv23)
  %cmp24 = icmp eq i32 %43, %conv23
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true26:                                  ; preds = %land.lhs.true22
  %start = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.0143, i32 0, i32 4, i32 2
  %44 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %start, align 4
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp28 = icmp eq i32 %45, %47
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true26.for.inc_crit_edge

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %end = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.0143, i32 0, i32 4, i32 3
  %48 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %end, align 4
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp32 = icmp eq i32 %49, %51
  br i1 %cmp32, label %land.lhs.true34, label %land.lhs.true30.for.inc_crit_edge

land.lhs.true30.for.inc_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true34:                                  ; preds = %land.lhs.true30
  %fixkey = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.0143, i32 0, i32 4, i32 14
  %52 = ptrtoint ptr %fixkey to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fixkey, align 4
  %conv36 = sext i8 %53 to i32
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv36)
  %cmp37 = icmp eq i32 %55, %conv36
  br i1 %cmp37, label %if.then39, label %land.lhs.true34.for.inc_crit_edge

land.lhs.true34.for.inc_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then39:                                        ; preds = %land.lhs.true34
  %tobool40.not = icmp eq ptr %prevp.0142, null
  br i1 %tobool40.not, label %if.then39.if.end46_crit_edge, label %if.then41

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %zp.0143 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %zp.0143, align 4
  %58 = ptrtoint ptr %prevp.0142 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %prevp.0142, align 4
  %59 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %zones, align 4
  store ptr %60, ptr %zp.0143, align 4
  store ptr %zp.0143, ptr %zones, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.then39.if.end46_crit_edge
  %zone_counter.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 6
  %61 = ptrtoint ptr %zone_counter.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %zone_counter.i, align 4
  %inc.i123 = add i32 %62, 1
  store i32 %inc.i123, ptr %zone_counter.i, align 4
  %counter.i = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.0143, i32 0, i32 5
  %63 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %counter.i, align 4
  %type.i = getelementptr inbounds %struct.snd_soundfont, ptr %retval.0.i.ph, i32 0, i32 2
  %64 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %type.i, align 2
  %66 = and i16 %65, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool.not.i = icmp eq i16 %66, 0
  br i1 %tobool.not.i, label %if.end46.cleanup_crit_edge, label %if.then.i

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %zone_counter.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %zone_counter.i, align 4
  %zone_locked.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 8
  %69 = ptrtoint ptr %zone_locked.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %zone_locked.i, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true34.for.inc_crit_edge, %land.lhs.true30.for.inc_crit_edge, %land.lhs.true26.for.inc_crit_edge, %land.lhs.true22.for.inc_crit_edge, %land.lhs.true18.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %70 = ptrtoint ptr %zp.0143 to i32
  call void @__asan_load4_noabort(i32 %70)
  %zp.0 = load ptr, ptr %zp.0143, align 4
  %tobool12.not = icmp eq ptr %zp.0, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i124 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3520, i32 noundef 116) #15
  %tobool.not.i125 = icmp eq ptr %call7.i.i.i124, null
  br i1 %tobool.not.i125, label %for.end.cleanup_crit_edge, label %if.end.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  %72 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %zones, align 4
  %74 = ptrtoint ptr %call7.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %call7.i.i.i124, align 8
  store ptr %call7.i.i.i124, ptr %zones, align 4
  %v.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4
  %75 = call ptr @memset(ptr %v.i, i32 0, i32 92)
  %root.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 8
  %76 = ptrtoint ptr %root.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 60, ptr %root.i.i, align 8
  %high.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 11
  %77 = ptrtoint ptr %high.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 127, ptr %high.i.i, align 1
  %velhigh.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 13
  %78 = ptrtoint ptr %velhigh.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 127, ptr %velhigh.i.i, align 1
  %fixkey.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 14
  %amplitude.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 19
  %79 = ptrtoint ptr %fixkey.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %fixkey.i.i, align 8
  %80 = ptrtoint ptr %amplitude.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 127, ptr %amplitude.i.i, align 2
  %scaleTuning.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 21
  %81 = ptrtoint ptr %scaleTuning.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 100, ptr %scaleTuning.i.i, align 8
  %parm.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22
  %82 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22, i32 4
  %83 = call ptr @memset(ptr %82, i32 0, i32 40)
  %84 = ptrtoint ptr %parm.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 -32768, ptr %parm.i.i, align 2
  %modatkhld.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22, i32 1
  %85 = ptrtoint ptr %modatkhld.i.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 32639, ptr %modatkhld.i.i.i, align 4
  %moddcysus.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22, i32 2
  %86 = ptrtoint ptr %moddcysus.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 32639, ptr %moddcysus.i.i.i, align 2
  %modrelease.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22, i32 3
  %87 = ptrtoint ptr %modrelease.i.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -32641, ptr %modrelease.i.i.i, align 8
  %voldelay.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22, i32 6
  %88 = ptrtoint ptr %voldelay.i.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -32768, ptr %voldelay.i.i.i, align 2
  %volatkhld.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22, i32 7
  %89 = ptrtoint ptr %volatkhld.i.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 32639, ptr %volatkhld.i.i.i, align 8
  %voldcysus.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22, i32 8
  %90 = ptrtoint ptr %voldcysus.i.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 32639, ptr %voldcysus.i.i.i, align 2
  %volrelease.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22, i32 9
  %91 = ptrtoint ptr %volrelease.i.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 -32641, ptr %volrelease.i.i.i, align 4
  %lfo1delay.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22, i32 12
  %92 = ptrtoint ptr %lfo1delay.i.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -32768, ptr %lfo1delay.i.i.i, align 2
  %lfo2delay.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22, i32 13
  %93 = ptrtoint ptr %lfo2delay.i.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -32768, ptr %lfo2delay.i.i.i, align 4
  %cutoff.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 22, i32 18
  %94 = ptrtoint ptr %cutoff.i.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %cutoff.i.i.i, align 2
  %zone_counter.i.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 6
  %95 = ptrtoint ptr %zone_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %zone_counter.i.i, align 4
  %inc.i.i = add i32 %96, 1
  store i32 %inc.i.i, ptr %zone_counter.i.i, align 4
  %counter.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 5
  %97 = ptrtoint ptr %counter.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %counter.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %retval.0.i.ph, i32 0, i32 2
  %98 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %type.i.i, align 2
  %100 = and i16 %99, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool.not.i.i127 = icmp eq i16 %100, 0
  br i1 %tobool.not.i.i127, label %if.end.i.if.end52_crit_edge, label %if.then.i.i128

if.end.i.if.end52_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then.i.i128:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %zone_locked.i.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 8
  %101 = ptrtoint ptr %zone_locked.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %inc.i.i, ptr %zone_locked.i.i, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then.i.i128, %if.end.i.if.end52_crit_edge
  %102 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %map, align 4
  %conv54 = trunc i32 %103 to i8
  %bank55 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 1
  %104 = ptrtoint ptr %bank55 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv54, ptr %bank55, align 4
  %105 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %0, align 4
  %conv57 = trunc i32 %106 to i8
  %instr58 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 2
  %107 = ptrtoint ptr %instr58 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv57, ptr %instr58, align 1
  %mapped59 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 3
  %108 = ptrtoint ptr %mapped59 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %mapped59, align 2
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp61 = icmp sgt i32 %110, -1
  br i1 %cmp61, label %if.then63, label %if.end52.if.end71_crit_edge

if.end52.if.end71_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then63:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %conv65 = trunc i32 %110 to i8
  %low67 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 10
  %111 = ptrtoint ptr %low67 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv65, ptr %low67, align 4
  %112 = ptrtoint ptr %high.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv65, ptr %high.i.i, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then63, %if.end52.if.end71_crit_edge
  %113 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %3, align 4
  %start74 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 2
  %115 = ptrtoint ptr %start74 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %start74, align 4
  %116 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %2, align 4
  %end77 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i124, i32 0, i32 4, i32 3
  %118 = ptrtoint ptr %end77 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %end77, align 8
  %119 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %4, align 4
  %conv79 = trunc i32 %120 to i8
  %121 = ptrtoint ptr %fixkey.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv79, ptr %fixkey.i.i, align 8
  %id = getelementptr inbounds %struct.snd_soundfont, ptr %retval.0.i.ph, i32 0, i32 1
  %122 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %id, align 4
  %124 = ptrtoint ptr %v.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %v.i, align 8
  call fastcc void @add_preset(ptr noundef %sflist, ptr noundef nonnull %call7.i.i.i124)
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %for.end.cleanup_crit_edge, %if.then.i, %if.end46.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -12, %if.end4.i.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ], [ 0, %if.then.i ], [ -12, %for.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_info(ptr nocapture noundef %sflist, ptr nocapture noundef %sf, i32 noundef %bank, i32 noundef %instr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %zones = getelementptr inbounds %struct.snd_soundfont, ptr %sf, i32 0, i32 4
  %0 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zones, align 4
  %tobool.not31 = icmp eq ptr %1, null
  br i1 %tobool.not31, label %entry.if.end18_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %removed.034 = phi i32 [ %removed.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.033 = phi ptr [ %3, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %prev.032 = phi ptr [ %prev.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %p.033 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.033, align 4
  %mapped = getelementptr inbounds %struct.snd_sf_zone, ptr %p.033, i32 0, i32 3
  %4 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mapped, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bank3 = getelementptr inbounds %struct.snd_sf_zone, ptr %p.033, i32 0, i32 1
  %6 = ptrtoint ptr %bank3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank3, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %bank)
  %cmp = icmp eq i32 %conv, %bank
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %instr6 = getelementptr inbounds %struct.snd_sf_zone, ptr %p.033, i32 0, i32 2
  %8 = ptrtoint ptr %instr6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %instr6, align 1
  %conv7 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %instr)
  %cmp8 = icmp eq i32 %conv7, %instr
  br i1 %cmp8, label %if.then, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  %tobool10.not = icmp eq ptr %prev.032, null
  %zones.prev.032 = select i1 %tobool10.not, ptr %zones, ptr %prev.032
  %10 = ptrtoint ptr %zones.prev.032 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %zones.prev.032, align 4
  %inc = add i32 %removed.034, 1
  tail call void @kfree(ptr noundef nonnull %p.033) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %prev.1 = phi ptr [ %prev.032, %if.then ], [ %p.033, %land.lhs.true5.for.inc_crit_edge ], [ %p.033, %land.lhs.true.for.inc_crit_edge ], [ %p.033, %for.body.for.inc_crit_edge ]
  %removed.1 = phi i32 [ %inc, %if.then ], [ %removed.034, %land.lhs.true5.for.inc_crit_edge ], [ %removed.034, %land.lhs.true.for.inc_crit_edge ], [ %removed.034, %for.body.for.inc_crit_edge ]
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %removed.1)
  %tobool16.not = icmp eq i32 %removed.1, 0
  br i1 %tobool16.not, label %for.end.if.end18_crit_edge, label %if.then17

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rebuild_presets(ptr noundef %sflist)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  %removed.0.lcssa37 = phi i32 [ %removed.1, %if.then17 ], [ 0, %for.end.if.end18_crit_edge ], [ 0, %entry.if.end18_crit_edge ]
  ret i32 %removed.0.lcssa37
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sf_linear_to_log(i32 noundef %amount, i32 noundef %offset, i32 noundef %ratio) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %amount)
  %cmp = icmp ult i32 %amount, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %amount)
  %tobool.not28 = icmp sgt i32 %amount, -1
  br i1 %tobool.not28, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %bit.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %amount.addr.029 = phi i32 [ %shl, %for.body.for.body_crit_edge ], [ %amount, %for.cond.preheader.for.body_crit_edge ]
  %shl = shl nuw i32 %amount.addr.029, 1
  %inc = add i32 %bit.030, 1
  %tobool.not = icmp sgt i32 %shl, -1
  br i1 %tobool.not, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo = sub i32 23, %bit.030
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %amount.addr.0.lcssa = phi i32 [ %amount, %for.cond.preheader.for.end_crit_edge ], [ %shl, %for.end.loopexit ]
  %bit.0.lcssa = phi i32 [ 24, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %shr = lshr i32 %amount.addr.0.lcssa, 24
  %and1 = and i32 %shr, 127
  %shr2 = lshr i32 %amount.addr.0.lcssa, 16
  %and3 = and i32 %shr2, 255
  %add = add nuw nsw i32 %and1, 1
  %arrayidx = getelementptr [129 x i32], ptr @log_tbl, i32 0, i32 %add
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %1, %and3
  %arrayidx4 = getelementptr [129 x i32], ptr @log_tbl, i32 0, i32 %and1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %sub = sub nuw nsw i32 256, %and3
  %mul5 = mul i32 %3, %sub
  %add6 = add i32 %mul5, %mul
  %shr7 = ashr i32 %add6, 8
  %sub8 = sub i32 %shr7, %offset
  %mul9 = mul i32 %sub8, %ratio
  %shr10 = ashr i32 %mul9, 16
  %mul12 = mul i32 %bit.0.lcssa, %ratio
  %add13 = add i32 %shr10, %mul12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add13, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_sf_calc_parm_hold(i32 noundef %msec) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 11684, %msec
  %div = sdiv i32 %sub, 92
  %0 = tail call i32 @llvm.smax.i32(i32 %div, i32 1)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 126)
  ret i32 %1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sf_calc_parm_attack(i32 noundef %msec) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %right.010.i = phi i32 [ 127, %entry ], [ %right.1.i, %while.body.i.while.body.i_crit_edge ]
  %left.09.i = phi i32 [ 1, %entry ], [ %left.1.i, %while.body.i.while.body.i_crit_edge ]
  %add.i = add i32 %left.09.i, %right.010.i
  %div.i = sdiv i32 %add.i, 2
  %arrayidx.i = getelementptr i16, ptr @attack_time_tbl, i32 %div.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i, align 2
  %conv.i = sext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %msec)
  %cmp1.i = icmp sgt i32 %conv.i, %msec
  %add3.i = add nsw i32 %div.i, 1
  %left.1.i = select i1 %cmp1.i, i32 %add3.i, i32 %left.09.i
  %right.1.i = select i1 %cmp1.i, i32 %right.010.i, i32 %div.i
  %cmp.i = icmp slt i32 %left.1.i, %right.1.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %calc_parm_search.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

calc_parm_search.exit:                            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 %left.1.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sf_calc_parm_decay(i32 noundef %msec) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %right.010.i = phi i32 [ 127, %entry ], [ %right.1.i, %while.body.i.while.body.i_crit_edge ]
  %left.09.i = phi i32 [ 1, %entry ], [ %left.1.i, %while.body.i.while.body.i_crit_edge ]
  %add.i = add i32 %left.09.i, %right.010.i
  %div.i = sdiv i32 %add.i, 2
  %arrayidx.i = getelementptr i16, ptr @decay_time_tbl, i32 %div.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i, align 2
  %conv.i = sext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %msec)
  %cmp1.i = icmp sgt i32 %conv.i, %msec
  %add3.i = add nsw i32 %div.i, 1
  %left.1.i = select i1 %cmp1.i, i32 %add3.i, i32 %left.09.i
  %right.1.i = select i1 %cmp1.i, i32 %right.010.i, i32 %div.i
  %cmp.i = icmp slt i32 %left.1.i, %right.1.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %calc_parm_search.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

calc_parm_search.exit:                            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 %left.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soundfont_load_guspatch(ptr noundef %sflist, ptr noundef %data, i32 noundef %count, i32 noundef %client) local_unnamed_addr #0 align 64 {
entry:
  %patch.i = alloca %struct.patch_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %presets_mutex.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %presets_mutex.i, i32 noundef 0) #11
  %lock.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %presets_locked.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 11
  %0 = ptrtoint ptr %presets_locked.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %presets_locked.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %patch.i) #11
  %1 = call ptr @memset(ptr %patch.i, i32 255, i32 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %count)
  %cmp.i = icmp slt i32 %count, 100
  br i1 %cmp.i, label %if.then.i, label %if.end59.i.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 955, ptr noundef nonnull @.str.1, i32 noundef %count) #11
  br label %load_guspatch.exit

if.end59.i.i.i:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end59.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 100, i32 -1226833920) #14, !srcloc !57
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !58

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %patch.i, i32 noundef 100) #11
  %3 = call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !59
  %and.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %patch.i, ptr noundef %data, i32 noundef 100) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end2.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !58

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i222.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 100, %if.end59.i.i.i.if.then11.i.i.i_crit_edge ], [ 100, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 100, %res.0.i.i222.i
  %add.ptr.i.i.i = getelementptr i8, ptr %patch.i, i32 %sub.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i222.i)
  br label %load_guspatch.exit

if.end2.i:                                        ; preds = %if.end.i.i.i
  %sub.i = add nsw i32 %count, -100
  %add.ptr.i = getelementptr i8, ptr %data, i32 100
  %fonts.i.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end2.i
  %sf.0.in.i.i = phi ptr [ %fonts.i.i, %if.end2.i ], [ %sf.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %sf.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %sf.0.i.i = load ptr, ptr %sf.0.in.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %sf.0.i.i, null
  br i1 %tobool1.not.i.i, label %if.end4.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %type1.i.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %sf.0.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %type1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %type1.i.i.i, align 2
  %10 = and i16 %9, 527
  %11 = icmp eq i16 %10, 518
  br i1 %11, label %for.body.i.i.if.end6.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

for.body.i.i.if.end6.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.end4.i.i:                                      ; preds = %for.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 48) #15
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %if.end4.i.i.load_guspatch.exit_crit_edge, label %if.end7.i.i

if.end4.i.i.load_guspatch.exit_crit_edge:         ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %load_guspatch.exit

if.end7.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %fonts_size.i.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 5
  %13 = ptrtoint ptr %fonts_size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fonts_size.i.i, align 4
  %conv.i.i = trunc i32 %14 to i16
  %id.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i.i, ptr %id.i.i, align 4
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr %fonts_size.i.i, align 4
  %16 = ptrtoint ptr %fonts.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fonts.i.i, align 4
  %18 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %call7.i.i.i.i, align 8
  store ptr %call7.i.i.i.i, ptr %fonts.i.i, align 4
  %type13.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %type13.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 518, ptr %type13.i.i, align 2
  %zones.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %zones.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %zones.i.i, align 8
  %samples.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %samples.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %samples.i.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end7.i.i, %for.body.i.i.if.end6.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ %call7.i.i.i.i, %if.end7.i.i ], [ %sf.0.i.i, %for.body.i.i.if.end6.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i3.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 44) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i3.i, null
  br i1 %tobool.not.i.i, label %if.end6.i.load_guspatch.exit_crit_edge, label %if.end.i.i

if.end6.i.load_guspatch.exit_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %load_guspatch.exit

if.end.i.i:                                       ; preds = %if.end6.i
  %samples.i4.i = getelementptr inbounds %struct.snd_soundfont, ptr %retval.0.i.ph.i, i32 0, i32 5
  %23 = ptrtoint ptr %samples.i4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %samples.i4.i, align 4
  %next.i.i = getelementptr inbounds %struct.snd_sf_sample, ptr %call7.i.i.i3.i, i32 0, i32 3
  %25 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %next.i.i, align 8
  store ptr %call7.i.i.i3.i, ptr %samples.i4.i, align 4
  %sample_counter.i.i.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 7
  %26 = ptrtoint ptr %sample_counter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sample_counter.i.i.i, align 4
  %inc.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i, ptr %sample_counter.i.i.i, align 4
  %counter.i.i.i = getelementptr inbounds %struct.snd_sf_sample, ptr %call7.i.i.i3.i, i32 0, i32 1
  %28 = ptrtoint ptr %counter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %counter.i.i.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %retval.0.i.ph.i, i32 0, i32 2
  %29 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %type.i.i.i, align 2
  %31 = and i16 %30, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i.i5.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i.i5.i, label %if.end.i.i.if.end10.i_crit_edge, label %if.then.i.i6.i

if.end.i.i.if.end10.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then.i.i6.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sample_locked.i.i.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 9
  %32 = ptrtoint ptr %sample_locked.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc.i.i.i, ptr %sample_locked.i.i.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i.i6.i, %if.end.i.i.if.end10.i_crit_edge
  %conv.i = trunc i32 %inc.i.i.i to i16
  %sample.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %call7.i.i.i3.i, i32 0, i32 1
  %33 = ptrtoint ptr %sample.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i, ptr %sample.i, align 2
  %start.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %call7.i.i.i3.i, i32 0, i32 2
  %34 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %start.i, align 4
  %len.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 4
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %end.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %call7.i.i.i3.i, i32 0, i32 3
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %end.i, align 8
  %loop_start.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 5
  %38 = ptrtoint ptr %loop_start.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %loop_start.i, align 4
  %loopstart.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %call7.i.i.i3.i, i32 0, i32 4
  %40 = ptrtoint ptr %loopstart.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %loopstart.i, align 4
  %loop_end.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 6
  %41 = ptrtoint ptr %loop_end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %loop_end.i, align 4
  %loopend.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %call7.i.i.i3.i, i32 0, i32 5
  %43 = ptrtoint ptr %loopend.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %loopend.i, align 8
  %size.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %call7.i.i.i3.i, i32 0, i32 6
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %36, ptr %size.i, align 4
  %mode_flags.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %call7.i.i.i3.i, i32 0, i32 8
  %mode.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 3
  %45 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mode.i, align 4
  %and.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  %47 = trunc i32 %and.i to i16
  %48 = trunc i32 %46 to i16
  %49 = and i16 %48, 2
  %50 = or i16 %49, %47
  %and41.i = and i32 %46, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  %storemerge235.v.i = select i1 %tobool42.not.i, i16 12, i16 4
  %51 = or i16 %50, %storemerge235.v.i
  %52 = shl i16 %48, 1
  %53 = and i16 %52, 16
  %54 = or i16 %51, %53
  %55 = xor i16 %54, 1
  %56 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %mode_flags.i, align 2
  %and61.i = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end10.i.if.end69.i_crit_edge, label %if.then63.i

if.end10.i.if.end69.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

if.then63.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mode_flags.i, align 2
  %59 = or i16 %58, 128
  store i16 %59, ptr %mode_flags.i, align 2
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then63.i, %if.end10.i.if.end69.i_crit_edge
  br i1 %tobool18.not.i, label %if.end69.i.if.end85.i_crit_edge, label %if.then73.i

if.end69.i.if.end85.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85.i

if.then73.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size.i, align 4
  %div.i = sdiv i32 %61, 2
  store i32 %div.i, ptr %size.i, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %end.i, align 8
  %div78.i = sdiv i32 %63, 2
  store i32 %div78.i, ptr %end.i, align 8
  %64 = ptrtoint ptr %loopstart.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %loopstart.i, align 4
  %div81.i = sdiv i32 %65, 2
  store i32 %div81.i, ptr %loopstart.i, align 4
  %66 = ptrtoint ptr %loopend.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %loopend.i, align 8
  %div84.i = sdiv i32 %67, 2
  store i32 %div84.i, ptr %loopend.i, align 8
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then73.i, %if.end69.i.if.end85.i_crit_edge
  %dummy.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %call7.i.i.i3.i, i32 0, i32 7
  %68 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %dummy.i, align 8
  %truesize.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %call7.i.i.i3.i, i32 0, i32 9
  %69 = ptrtoint ptr %truesize.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %truesize.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soundfont, ptr %retval.0.i.ph.i, i32 0, i32 1
  %70 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %id.i, align 4
  %72 = ptrtoint ptr %call7.i.i.i3.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %call7.i.i.i3.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 116) #15
  %tobool.not.i8.i = icmp eq ptr %call7.i.i.i7.i, null
  br i1 %tobool.not.i8.i, label %if.then91.i, label %if.end.i14.i

if.end.i14.i:                                     ; preds = %if.end85.i
  %zones.i9.i = getelementptr inbounds %struct.snd_soundfont, ptr %retval.0.i.ph.i, i32 0, i32 4
  %74 = ptrtoint ptr %zones.i9.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %zones.i9.i, align 4
  %76 = ptrtoint ptr %call7.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %call7.i.i.i7.i, align 8
  store ptr %call7.i.i.i7.i, ptr %zones.i9.i, align 4
  %v.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4
  %77 = call ptr @memset(ptr %v.i.i, i32 0, i32 92)
  %root.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 8
  %78 = ptrtoint ptr %root.i.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 60, ptr %root.i.i.i, align 8
  %high.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 11
  %79 = ptrtoint ptr %high.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 127, ptr %high.i.i.i, align 1
  %velhigh.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 13
  %80 = ptrtoint ptr %velhigh.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 127, ptr %velhigh.i.i.i, align 1
  %fixkey.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 14
  %amplitude.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 19
  %81 = ptrtoint ptr %fixkey.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %fixkey.i.i.i, align 8
  %82 = ptrtoint ptr %amplitude.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 127, ptr %amplitude.i.i.i, align 2
  %scaleTuning.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 21
  %83 = ptrtoint ptr %scaleTuning.i.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 100, ptr %scaleTuning.i.i.i, align 8
  %parm.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22
  %84 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 4
  %85 = call ptr @memset(ptr %84, i32 0, i32 40)
  %86 = ptrtoint ptr %parm.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -32768, ptr %parm.i.i.i, align 2
  %modatkhld.i.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 1
  %87 = ptrtoint ptr %modatkhld.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 32639, ptr %modatkhld.i.i.i.i, align 4
  %moddcysus.i.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 2
  %88 = ptrtoint ptr %moddcysus.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 32639, ptr %moddcysus.i.i.i.i, align 2
  %modrelease.i.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 3
  %89 = ptrtoint ptr %modrelease.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -32641, ptr %modrelease.i.i.i.i, align 8
  %voldelay.i.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 6
  %90 = ptrtoint ptr %voldelay.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 -32768, ptr %voldelay.i.i.i.i, align 2
  %volatkhld.i.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 7
  %91 = ptrtoint ptr %volatkhld.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 32639, ptr %volatkhld.i.i.i.i, align 8
  %voldcysus.i.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 8
  %92 = ptrtoint ptr %voldcysus.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 32639, ptr %voldcysus.i.i.i.i, align 2
  %volrelease.i.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 9
  %93 = ptrtoint ptr %volrelease.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -32641, ptr %volrelease.i.i.i.i, align 4
  %lfo1delay.i.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 12
  %94 = ptrtoint ptr %lfo1delay.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -32768, ptr %lfo1delay.i.i.i.i, align 2
  %lfo2delay.i.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 13
  %95 = ptrtoint ptr %lfo2delay.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 -32768, ptr %lfo2delay.i.i.i.i, align 4
  %cutoff.i.i.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 18
  %96 = ptrtoint ptr %cutoff.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -1, ptr %cutoff.i.i.i.i, align 2
  %zone_counter.i.i.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 6
  %97 = ptrtoint ptr %zone_counter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %zone_counter.i.i.i, align 4
  %inc.i.i10.i = add i32 %98, 1
  store i32 %inc.i.i10.i, ptr %zone_counter.i.i.i, align 4
  %counter.i.i11.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 5
  %99 = ptrtoint ptr %counter.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %counter.i.i11.i, align 4
  %100 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %type.i.i.i, align 2
  %102 = and i16 %101, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool.not.i.i13.i = icmp eq i16 %102, 0
  br i1 %tobool.not.i.i13.i, label %if.end.i14.i.if.end92.i_crit_edge, label %if.then.i.i15.i

if.end.i14.i.if.end92.i_crit_edge:                ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i

if.then.i.i15.i:                                  ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  %zone_locked.i.i.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 8
  %103 = ptrtoint ptr %zone_locked.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %inc.i.i10.i, ptr %zone_locked.i.i.i, align 4
  br label %if.end92.i

if.then91.i:                                      ; preds = %if.end85.i
  %104 = ptrtoint ptr %samples.i4.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %samples.i4.i, align 4
  %cmp.i17.i = icmp eq ptr %105, %call7.i.i.i3.i
  br i1 %cmp.i17.i, label %if.then.i.i, label %if.then91.i.load_guspatch.exit_crit_edge

if.then91.i.load_guspatch.exit_crit_edge:         ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %load_guspatch.exit

if.then.i.i:                                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %next.i.i, align 8
  %108 = ptrtoint ptr %samples.i4.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %samples.i4.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i3.i) #11
  br label %load_guspatch.exit

if.end92.i:                                       ; preds = %if.then.i.i15.i, %if.end.i14.i.if.end92.i_crit_edge
  %sample_new.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10, i32 1
  %109 = ptrtoint ptr %sample_new.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sample_new.i, align 4
  %tobool93.not.i = icmp eq ptr %110, null
  br i1 %tobool93.not.i, label %if.end92.i.if.end103.i_crit_edge, label %if.then94.i

if.end92.i.if.end103.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

if.then94.i:                                      ; preds = %if.end92.i
  %callback.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10
  %111 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %callback.i, align 4
  %memhdr.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 14
  %113 = ptrtoint ptr %memhdr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %memhdr.i, align 4
  %call98.i = call i32 %110(ptr noundef %112, ptr noundef nonnull %call7.i.i.i3.i, ptr noundef %114, ptr noundef %add.ptr.i, i32 noundef %sub.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %cmp99.i = icmp slt i32 %call98.i, 0
  br i1 %cmp99.i, label %if.then101.i, label %if.then94.i.if.end103.i_crit_edge

if.then94.i.if.end103.i_crit_edge:                ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.i

if.then101.i:                                     ; preds = %if.then94.i
  %115 = ptrtoint ptr %samples.i4.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %samples.i4.i, align 4
  %cmp.i21.i = icmp eq ptr %116, %call7.i.i.i3.i
  br i1 %cmp.i21.i, label %if.then.i23.i, label %if.then101.i.sf_sample_delete.exit25.i_crit_edge

if.then101.i.sf_sample_delete.exit25.i_crit_edge: ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sf_sample_delete.exit25.i

if.then.i23.i:                                    ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %next.i.i, align 8
  %119 = ptrtoint ptr %samples.i4.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %samples.i4.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i3.i) #11
  br label %sf_sample_delete.exit25.i

sf_sample_delete.exit25.i:                        ; preds = %if.then.i23.i, %if.then101.i.sf_sample_delete.exit25.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i7.i) #11
  br label %load_guspatch.exit

if.end103.i:                                      ; preds = %if.then94.i.if.end103.i_crit_edge, %if.end92.i.if.end103.i_crit_edge
  %120 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %truesize.i, align 4
  %mem_used.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 2
  %122 = ptrtoint ptr %mem_used.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mem_used.i, align 4
  %add.i = add i32 %123, %121
  store i32 %add.i, ptr %mem_used.i, align 4
  %sample108.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 1
  %124 = ptrtoint ptr %sample108.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i, ptr %sample108.i, align 2
  %base_freq.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 7
  %125 = ptrtoint ptr %base_freq.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %base_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %126)
  %cmp.i.i26.i = icmp ult i32 %126, 2
  br i1 %cmp.i.i26.i, label %if.end103.i.calc_rate_offset.exit.i_crit_edge, label %for.cond.preheader.i.i.i

if.end103.i.calc_rate_offset.exit.i_crit_edge:    ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_rate_offset.exit.i

for.cond.preheader.i.i.i:                         ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %tobool.not28.i.i.i = icmp sgt i32 %126, -1
  br i1 %tobool.not28.i.i.i, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %bit.030.i.i.i = phi i32 [ %inc.i.i27.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %amount.addr.029.i.i.i = phi i32 [ %shl.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %126, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 %amount.addr.029.i.i.i, 1
  %inc.i.i27.i = add i32 %bit.030.i.i.i, 1
  %tobool.not.i.i28.i = icmp sgt i32 %shl.i.i.i, -1
  br i1 %tobool.not.i.i28.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.end.loopexit.i.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.end.loopexit.i.i.i:                           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %.neg.i.i = mul i32 %bit.030.i.i.i, -4096
  %phi.bo.i.i = add i32 %.neg.i.i, 94208
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.end.loopexit.i.i.i, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge
  %amount.addr.0.lcssa.i.i.i = phi i32 [ %126, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge ], [ %shl.i.i.i, %for.end.loopexit.i.i.i ]
  %bit.0.lcssa.i.i.i = phi i32 [ 98304, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge ], [ %phi.bo.i.i, %for.end.loopexit.i.i.i ]
  %shr.i.i.i = lshr i32 %amount.addr.0.lcssa.i.i.i, 24
  %and1.i.i.i = and i32 %shr.i.i.i, 127
  %shr2.i.i.i = lshr i32 %amount.addr.0.lcssa.i.i.i, 16
  %and3.i.i.i = and i32 %shr2.i.i.i, 255
  %add.i.i.i = add nuw nsw i32 %and1.i.i.i, 1
  %arrayidx.i.i.i = getelementptr [129 x i32], ptr @log_tbl, i32 0, i32 %add.i.i.i
  %127 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i.i = mul i32 %128, %and3.i.i.i
  %arrayidx4.i.i.i = getelementptr [129 x i32], ptr @log_tbl, i32 0, i32 %and1.i.i.i
  %129 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx4.i.i.i, align 4
  %sub.i.i29.i = sub nuw nsw i32 256, %and3.i.i.i
  %mul5.i.i.i = mul i32 %130, %sub.i.i29.i
  %add6.i.i.i = add i32 %mul5.i.i.i, %mul.i.i.i
  %131 = shl i32 %add6.i.i.i, 4
  %132 = add i32 %131, 153423872
  %shr10.i.i.i = ashr i32 %132, 16
  %add13.i.i.i = add i32 %shr10.i.i.i, %bit.0.lcssa.i.i.i
  br label %calc_rate_offset.exit.i

calc_rate_offset.exit.i:                          ; preds = %for.end.i.i.i, %if.end103.i.calc_rate_offset.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %add13.i.i.i, %for.end.i.i.i ], [ 0, %if.end103.i.calc_rate_offset.exit.i_crit_edge ]
  %conv110.i = trunc i32 %retval.0.i.i.i to i16
  %rate_offset.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 6
  %133 = ptrtoint ptr %rate_offset.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv110.i, ptr %rate_offset.i, align 4
  %base_note.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 8
  %134 = ptrtoint ptr %base_note.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %base_note.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp.i.i30.i = icmp ult i32 %135, 2
  br i1 %cmp.i.i30.i, label %calc_rate_offset.exit.i.freq_to_note.exit.i_crit_edge, label %for.cond.preheader.i.i32.i

calc_rate_offset.exit.i.freq_to_note.exit.i_crit_edge: ; preds = %calc_rate_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %freq_to_note.exit.i

for.cond.preheader.i.i32.i:                       ; preds = %calc_rate_offset.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %135)
  %tobool.not28.i.i31.i = icmp sgt i32 %135, -1
  br i1 %tobool.not28.i.i31.i, label %for.cond.preheader.i.i32.i.for.body.i.i38.i_crit_edge, label %for.cond.preheader.i.i32.i.for.end.i.i56.i_crit_edge

for.cond.preheader.i.i32.i.for.end.i.i56.i_crit_edge: ; preds = %for.cond.preheader.i.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i56.i

for.cond.preheader.i.i32.i.for.body.i.i38.i_crit_edge: ; preds = %for.cond.preheader.i.i32.i
  br label %for.body.i.i38.i

for.body.i.i38.i:                                 ; preds = %for.body.i.i38.i.for.body.i.i38.i_crit_edge, %for.cond.preheader.i.i32.i.for.body.i.i38.i_crit_edge
  %bit.030.i.i33.i = phi i32 [ %inc.i.i36.i, %for.body.i.i38.i.for.body.i.i38.i_crit_edge ], [ 0, %for.cond.preheader.i.i32.i.for.body.i.i38.i_crit_edge ]
  %amount.addr.029.i.i34.i = phi i32 [ %shl.i.i35.i, %for.body.i.i38.i.for.body.i.i38.i_crit_edge ], [ %135, %for.cond.preheader.i.i32.i.for.body.i.i38.i_crit_edge ]
  %shl.i.i35.i = shl nuw i32 %amount.addr.029.i.i34.i, 1
  %inc.i.i36.i = add i32 %bit.030.i.i33.i, 1
  %tobool.not.i.i37.i = icmp sgt i32 %shl.i.i35.i, -1
  br i1 %tobool.not.i.i37.i, label %for.body.i.i38.i.for.body.i.i38.i_crit_edge, label %for.end.loopexit.i.i40.i

for.body.i.i38.i.for.body.i.i38.i_crit_edge:      ; preds = %for.body.i.i38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i38.i

for.end.loopexit.i.i40.i:                         ; preds = %for.body.i.i38.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i.i.i = sub i32 23, %bit.030.i.i33.i
  %phi.bo.i39.i = mul i32 %phi.bo.i.i.i, 1200
  br label %for.end.i.i56.i

for.end.i.i56.i:                                  ; preds = %for.end.loopexit.i.i40.i, %for.cond.preheader.i.i32.i.for.end.i.i56.i_crit_edge
  %amount.addr.0.lcssa.i.i41.i = phi i32 [ %135, %for.cond.preheader.i.i32.i.for.end.i.i56.i_crit_edge ], [ %shl.i.i35.i, %for.end.loopexit.i.i40.i ]
  %bit.0.lcssa.i.i42.i = phi i32 [ 28800, %for.cond.preheader.i.i32.i.for.end.i.i56.i_crit_edge ], [ %phi.bo.i39.i, %for.end.loopexit.i.i40.i ]
  %shr.i.i43.i = lshr i32 %amount.addr.0.lcssa.i.i41.i, 24
  %and1.i.i44.i = and i32 %shr.i.i43.i, 127
  %shr2.i.i45.i = lshr i32 %amount.addr.0.lcssa.i.i41.i, 16
  %and3.i.i46.i = and i32 %shr2.i.i45.i, 255
  %add.i.i47.i = add nuw nsw i32 %and1.i.i44.i, 1
  %arrayidx.i.i48.i = getelementptr [129 x i32], ptr @log_tbl, i32 0, i32 %add.i.i47.i
  %136 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i.i48.i, align 4
  %mul.i.i49.i = mul i32 %137, %and3.i.i46.i
  %arrayidx4.i.i50.i = getelementptr [129 x i32], ptr @log_tbl, i32 0, i32 %and1.i.i44.i
  %138 = ptrtoint ptr %arrayidx4.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx4.i.i50.i, align 4
  %sub.i.i51.i = sub nuw nsw i32 256, %and3.i.i46.i
  %mul5.i.i52.i = mul i32 %139, %sub.i.i51.i
  %add6.i.i53.i = add i32 %mul5.i.i52.i, %mul.i.i49.i
  %shr7.i.i.i = ashr i32 %add6.i.i53.i, 8
  %140 = mul i32 %shr7.i.i.i, 1200
  %mul9.i.i.i = add i32 %140, -1022137200
  %shr10.i.i54.i = ashr i32 %mul9.i.i.i, 16
  %add13.i.i55.i = add i32 %shr10.i.i54.i, %bit.0.lcssa.i.i42.i
  br label %freq_to_note.exit.i

freq_to_note.exit.i:                              ; preds = %for.end.i.i56.i, %calc_rate_offset.exit.i.freq_to_note.exit.i_crit_edge
  %retval.0.i.i57.i = phi i32 [ %add13.i.i55.i, %for.end.i.i56.i ], [ 0, %calc_rate_offset.exit.i.freq_to_note.exit.i_crit_edge ]
  %retval.0.i.i57.i.frozen = freeze i32 %retval.0.i.i57.i
  %div113.i = sdiv i32 %retval.0.i.i57.i.frozen, 100
  %conv114.i = trunc i32 %div113.i to i16
  %141 = ptrtoint ptr %root.i.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv114.i, ptr %root.i.i.i, align 8
  %142 = mul i32 %div113.i, 100
  %rem.i.decomposed = sub i32 %retval.0.i.i57.i.frozen, %142
  %143 = trunc i32 %rem.i.decomposed to i16
  %conv117.i = sub nsw i16 0, %143
  %tune.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 9
  %144 = ptrtoint ptr %tune.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv117.i, ptr %tune.i, align 2
  %low_note.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 10
  %145 = ptrtoint ptr %low_note.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %low_note.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %146)
  %cmp.i.i58.i = icmp ult i32 %146, 2
  br i1 %cmp.i.i58.i, label %freq_to_note.exit.i.freq_to_note.exit89.i_crit_edge, label %for.cond.preheader.i.i60.i

freq_to_note.exit.i.freq_to_note.exit89.i_crit_edge: ; preds = %freq_to_note.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %freq_to_note.exit89.i

for.cond.preheader.i.i60.i:                       ; preds = %freq_to_note.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %146)
  %tobool.not28.i.i59.i = icmp sgt i32 %146, -1
  br i1 %tobool.not28.i.i59.i, label %for.cond.preheader.i.i60.i.for.body.i.i66.i_crit_edge, label %for.cond.preheader.i.i60.i.for.end.i.i87.i_crit_edge

for.cond.preheader.i.i60.i.for.end.i.i87.i_crit_edge: ; preds = %for.cond.preheader.i.i60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i87.i

for.cond.preheader.i.i60.i.for.body.i.i66.i_crit_edge: ; preds = %for.cond.preheader.i.i60.i
  br label %for.body.i.i66.i

for.body.i.i66.i:                                 ; preds = %for.body.i.i66.i.for.body.i.i66.i_crit_edge, %for.cond.preheader.i.i60.i.for.body.i.i66.i_crit_edge
  %bit.030.i.i61.i = phi i32 [ %inc.i.i64.i, %for.body.i.i66.i.for.body.i.i66.i_crit_edge ], [ 0, %for.cond.preheader.i.i60.i.for.body.i.i66.i_crit_edge ]
  %amount.addr.029.i.i62.i = phi i32 [ %shl.i.i63.i, %for.body.i.i66.i.for.body.i.i66.i_crit_edge ], [ %146, %for.cond.preheader.i.i60.i.for.body.i.i66.i_crit_edge ]
  %shl.i.i63.i = shl nuw i32 %amount.addr.029.i.i62.i, 1
  %inc.i.i64.i = add i32 %bit.030.i.i61.i, 1
  %tobool.not.i.i65.i = icmp sgt i32 %shl.i.i63.i, -1
  br i1 %tobool.not.i.i65.i, label %for.body.i.i66.i.for.body.i.i66.i_crit_edge, label %for.end.loopexit.i.i69.i

for.body.i.i66.i.for.body.i.i66.i_crit_edge:      ; preds = %for.body.i.i66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i66.i

for.end.loopexit.i.i69.i:                         ; preds = %for.body.i.i66.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i.i67.i = sub i32 23, %bit.030.i.i61.i
  %phi.bo.i68.i = mul i32 %phi.bo.i.i67.i, 1200
  %phi.bo238.i = add i32 %phi.bo.i68.i, 99
  br label %for.end.i.i87.i

for.end.i.i87.i:                                  ; preds = %for.end.loopexit.i.i69.i, %for.cond.preheader.i.i60.i.for.end.i.i87.i_crit_edge
  %amount.addr.0.lcssa.i.i70.i = phi i32 [ %146, %for.cond.preheader.i.i60.i.for.end.i.i87.i_crit_edge ], [ %shl.i.i63.i, %for.end.loopexit.i.i69.i ]
  %bit.0.lcssa.i.i71.i = phi i32 [ 28899, %for.cond.preheader.i.i60.i.for.end.i.i87.i_crit_edge ], [ %phi.bo238.i, %for.end.loopexit.i.i69.i ]
  %shr.i.i72.i = lshr i32 %amount.addr.0.lcssa.i.i70.i, 24
  %and1.i.i73.i = and i32 %shr.i.i72.i, 127
  %shr2.i.i74.i = lshr i32 %amount.addr.0.lcssa.i.i70.i, 16
  %and3.i.i75.i = and i32 %shr2.i.i74.i, 255
  %add.i.i76.i = add nuw nsw i32 %and1.i.i73.i, 1
  %arrayidx.i.i77.i = getelementptr [129 x i32], ptr @log_tbl, i32 0, i32 %add.i.i76.i
  %147 = ptrtoint ptr %arrayidx.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i.i77.i, align 4
  %mul.i.i78.i = mul i32 %148, %and3.i.i75.i
  %arrayidx4.i.i79.i = getelementptr [129 x i32], ptr @log_tbl, i32 0, i32 %and1.i.i73.i
  %149 = ptrtoint ptr %arrayidx4.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx4.i.i79.i, align 4
  %sub.i.i80.i = sub nuw nsw i32 256, %and3.i.i75.i
  %mul5.i.i81.i = mul i32 %150, %sub.i.i80.i
  %add6.i.i82.i = add i32 %mul5.i.i81.i, %mul.i.i78.i
  %shr7.i.i83.i = ashr i32 %add6.i.i82.i, 8
  %151 = mul i32 %shr7.i.i83.i, 1200
  %mul9.i.i84.i = add i32 %151, -1022137200
  %shr10.i.i85.i = ashr i32 %mul9.i.i84.i, 16
  %phi.bo.i = add i32 %shr10.i.i85.i, %bit.0.lcssa.i.i71.i
  %phi.bo232.i = sdiv i32 %phi.bo.i, 100
  %phi.cast.i = trunc i32 %phi.bo232.i to i8
  br label %freq_to_note.exit89.i

freq_to_note.exit89.i:                            ; preds = %for.end.i.i87.i, %freq_to_note.exit.i.freq_to_note.exit89.i_crit_edge
  %retval.0.i.i88.i = phi i8 [ %phi.cast.i, %for.end.i.i87.i ], [ 0, %freq_to_note.exit.i.freq_to_note.exit89.i_crit_edge ]
  %low.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 10
  %152 = ptrtoint ptr %low.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %retval.0.i.i88.i, ptr %low.i, align 4
  %high_note.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 9
  %153 = ptrtoint ptr %high_note.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %high_note.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %154)
  %cmp.i.i90.i = icmp ult i32 %154, 2
  br i1 %cmp.i.i90.i, label %freq_to_note.exit89.i.freq_to_note.exit121.i_crit_edge, label %for.cond.preheader.i.i92.i

freq_to_note.exit89.i.freq_to_note.exit121.i_crit_edge: ; preds = %freq_to_note.exit89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %freq_to_note.exit121.i

for.cond.preheader.i.i92.i:                       ; preds = %freq_to_note.exit89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %154)
  %tobool.not28.i.i91.i = icmp sgt i32 %154, -1
  br i1 %tobool.not28.i.i91.i, label %for.cond.preheader.i.i92.i.for.body.i.i98.i_crit_edge, label %for.cond.preheader.i.i92.i.for.end.i.i119.i_crit_edge

for.cond.preheader.i.i92.i.for.end.i.i119.i_crit_edge: ; preds = %for.cond.preheader.i.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i119.i

for.cond.preheader.i.i92.i.for.body.i.i98.i_crit_edge: ; preds = %for.cond.preheader.i.i92.i
  br label %for.body.i.i98.i

for.body.i.i98.i:                                 ; preds = %for.body.i.i98.i.for.body.i.i98.i_crit_edge, %for.cond.preheader.i.i92.i.for.body.i.i98.i_crit_edge
  %bit.030.i.i93.i = phi i32 [ %inc.i.i96.i, %for.body.i.i98.i.for.body.i.i98.i_crit_edge ], [ 0, %for.cond.preheader.i.i92.i.for.body.i.i98.i_crit_edge ]
  %amount.addr.029.i.i94.i = phi i32 [ %shl.i.i95.i, %for.body.i.i98.i.for.body.i.i98.i_crit_edge ], [ %154, %for.cond.preheader.i.i92.i.for.body.i.i98.i_crit_edge ]
  %shl.i.i95.i = shl nuw i32 %amount.addr.029.i.i94.i, 1
  %inc.i.i96.i = add i32 %bit.030.i.i93.i, 1
  %tobool.not.i.i97.i = icmp sgt i32 %shl.i.i95.i, -1
  br i1 %tobool.not.i.i97.i, label %for.body.i.i98.i.for.body.i.i98.i_crit_edge, label %for.end.loopexit.i.i101.i

for.body.i.i98.i.for.body.i.i98.i_crit_edge:      ; preds = %for.body.i.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i98.i

for.end.loopexit.i.i101.i:                        ; preds = %for.body.i.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i.i99.i = sub i32 23, %bit.030.i.i93.i
  %phi.bo.i100.i = mul i32 %phi.bo.i.i99.i, 1200
  br label %for.end.i.i119.i

for.end.i.i119.i:                                 ; preds = %for.end.loopexit.i.i101.i, %for.cond.preheader.i.i92.i.for.end.i.i119.i_crit_edge
  %amount.addr.0.lcssa.i.i102.i = phi i32 [ %154, %for.cond.preheader.i.i92.i.for.end.i.i119.i_crit_edge ], [ %shl.i.i95.i, %for.end.loopexit.i.i101.i ]
  %bit.0.lcssa.i.i103.i = phi i32 [ 28800, %for.cond.preheader.i.i92.i.for.end.i.i119.i_crit_edge ], [ %phi.bo.i100.i, %for.end.loopexit.i.i101.i ]
  %shr.i.i104.i = lshr i32 %amount.addr.0.lcssa.i.i102.i, 24
  %and1.i.i105.i = and i32 %shr.i.i104.i, 127
  %shr2.i.i106.i = lshr i32 %amount.addr.0.lcssa.i.i102.i, 16
  %and3.i.i107.i = and i32 %shr2.i.i106.i, 255
  %add.i.i108.i = add nuw nsw i32 %and1.i.i105.i, 1
  %arrayidx.i.i109.i = getelementptr [129 x i32], ptr @log_tbl, i32 0, i32 %add.i.i108.i
  %155 = ptrtoint ptr %arrayidx.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx.i.i109.i, align 4
  %mul.i.i110.i = mul i32 %156, %and3.i.i107.i
  %arrayidx4.i.i111.i = getelementptr [129 x i32], ptr @log_tbl, i32 0, i32 %and1.i.i105.i
  %157 = ptrtoint ptr %arrayidx4.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx4.i.i111.i, align 4
  %sub.i.i112.i = sub nuw nsw i32 256, %and3.i.i107.i
  %mul5.i.i113.i = mul i32 %158, %sub.i.i112.i
  %add6.i.i114.i = add i32 %mul5.i.i113.i, %mul.i.i110.i
  %shr7.i.i115.i = ashr i32 %add6.i.i114.i, 8
  %159 = mul i32 %shr7.i.i115.i, 1200
  %mul9.i.i116.i = add i32 %159, -1022137200
  %shr10.i.i117.i = ashr i32 %mul9.i.i116.i, 16
  %add13.i.i118.i = add i32 %shr10.i.i117.i, %bit.0.lcssa.i.i103.i
  %phi.bo233.i = sdiv i32 %add13.i.i118.i, 100
  %phi.cast234.i = trunc i32 %phi.bo233.i to i8
  br label %freq_to_note.exit121.i

freq_to_note.exit121.i:                           ; preds = %for.end.i.i119.i, %freq_to_note.exit89.i.freq_to_note.exit121.i_crit_edge
  %retval.0.i.i120.i = phi i8 [ %phi.cast234.i, %for.end.i.i119.i ], [ 0, %freq_to_note.exit89.i.freq_to_note.exit121.i_crit_edge ]
  %160 = ptrtoint ptr %high.i.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %retval.0.i.i120.i, ptr %high.i.i.i, align 1
  %panning.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 11
  %161 = ptrtoint ptr %panning.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %panning.i, align 4
  %add128.i = add i32 %162, 128
  %div129.i = sdiv i32 %add128.i, 2
  %conv130.i = trunc i32 %div129.i to i8
  %pan.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 16
  %163 = ptrtoint ptr %pan.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv130.i, ptr %pan.i, align 2
  %164 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %mode.i, align 4
  %and133.i = and i32 %165, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  br i1 %tobool134.not.i, label %freq_to_note.exit121.i.if.end221.i_crit_edge, label %if.then135.i

freq_to_note.exit121.i.if.end221.i_crit_edge:     ; preds = %freq_to_note.exit121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end221.i

if.then135.i:                                     ; preds = %freq_to_note.exit121.i
  %env_rate.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 13
  %166 = ptrtoint ptr %env_rate.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %env_rate.i, align 4
  %conv136.i = zext i8 %167 to i32
  %env_offset.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 14
  %168 = ptrtoint ptr %env_offset.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %env_offset.i, align 2
  %conv138.i = zext i8 %169 to i32
  %170 = lshr i32 %conv136.i, 6
  %sub.i.i = xor i32 %170, 3
  %mul.neg.i.i = mul nsw i32 %sub.i.i, -3
  %sub8.i.i = add nsw i32 %mul.neg.i.i, 13
  %shl.i.i = shl i32 %conv138.i, %sub8.i.i
  %and1.i.i = and i32 %conv136.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i122.i = icmp eq i32 %and1.i.i, 0
  %mul12.i.i = mul i32 %shl.i.i, 10
  %and1.op.i.i = mul nuw nsw i32 %and1.i.i, 441
  %mul13.i.i = select i1 %tobool.not.i122.i, i32 441, i32 %and1.op.i.i
  %div.i.i = sdiv i32 %mul12.i.i, %mul13.i.i
  %arrayidx141.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 13, i32 1
  %171 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx141.i, align 1
  %conv142.i = zext i8 %172 to i32
  %arrayidx147.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 14, i32 1
  %173 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx147.i, align 1
  %conv148.i = zext i8 %174 to i32
  %sub2.i.i = sub nsw i32 %conv148.i, %conv138.i
  %175 = call i32 @llvm.abs.i32(i32 %sub2.i.i, i1 true) #11
  %176 = lshr i32 %conv142.i, 6
  %sub.i124.i = xor i32 %176, 3
  %mul.neg.i125.i = mul nsw i32 %sub.i124.i, -3
  %sub8.i126.i = add nsw i32 %mul.neg.i125.i, 13
  %shl.i127.i = shl i32 %175, %sub8.i126.i
  %and1.i128.i = and i32 %conv142.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i128.i)
  %tobool.not.i129.i = icmp eq i32 %and1.i128.i, 0
  %mul12.i130.i = mul i32 %shl.i127.i, 10
  %and1.op.i131.i = mul nuw nsw i32 %and1.i128.i, 441
  %mul13.i132.i = select i1 %tobool.not.i129.i, i32 441, i32 %and1.op.i131.i
  %div.i133.i = sdiv i32 %mul12.i130.i, %mul13.i132.i
  %arrayidx151.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 13, i32 2
  %177 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx151.i, align 2
  %conv152.i = zext i8 %178 to i32
  %arrayidx157.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 14, i32 2
  %179 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx157.i, align 4
  %conv158.i = zext i8 %180 to i32
  %181 = lshr i32 %conv152.i, 6
  %sub.i136.i = xor i32 %181, 3
  %mul.neg.i137.i = mul nsw i32 %sub.i136.i, -3
  %and1.i140.i = and i32 %conv152.i, 63
  %and1.op.i143.i = mul nuw nsw i32 %and1.i140.i, 441
  %arrayidx161.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 13, i32 3
  %182 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx161.i, align 1
  %conv162.i = zext i8 %183 to i32
  %arrayidx167.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 14, i32 4
  %184 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx167.i, align 2
  %conv168.i = zext i8 %185 to i32
  %186 = lshr i32 %conv162.i, 6
  %sub.i148.i = xor i32 %186, 3
  %mul.neg.i149.i = mul nsw i32 %sub.i148.i, -3
  %and1.i152.i = and i32 %conv162.i, 63
  %and1.op.i155.i = mul nuw nsw i32 %and1.i152.i, 441
  %arrayidx171.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 13, i32 4
  %187 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx171.i, align 4
  %conv172.i = zext i8 %188 to i32
  %arrayidx174.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 14, i32 3
  %189 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx174.i, align 1
  %conv175.i = zext i8 %190 to i32
  %sub2.i158.i = sub nsw i32 %conv168.i, %conv175.i
  %191 = lshr i32 %conv172.i, 6
  %sub.i160.i = xor i32 %191, 3
  %mul.neg.i161.i = mul nsw i32 %sub.i160.i, -3
  %sub8.i162.i = add nsw i32 %mul.neg.i161.i, 13
  %and1.i164.i = and i32 %conv172.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i164.i)
  %tobool.not.i165.i = icmp eq i32 %and1.i164.i, 0
  %and1.op.i167.i = mul nuw nsw i32 %and1.i164.i, 441
  %mul13.i168.i = select i1 %tobool.not.i165.i, i32 441, i32 %and1.op.i167.i
  %arrayidx182.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 13, i32 5
  %192 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx182.i, align 1
  %conv183.i = zext i8 %193 to i32
  %arrayidx188.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 14, i32 5
  %194 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx188.i, align 1
  %conv189.i = zext i8 %195 to i32
  %sub2.i170.i = sub nsw i32 %conv189.i, %conv168.i
  %196 = lshr i32 %conv183.i, 6
  %sub.i172.i = xor i32 %196, 3
  %mul.neg.i173.i = mul nsw i32 %sub.i172.i, -3
  %sub8.i174.i = add nsw i32 %mul.neg.i173.i, 13
  %and1.i176.i = and i32 %conv183.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i176.i)
  %tobool.not.i177.i = icmp eq i32 %and1.i176.i, 0
  %and1.op.i179.i = mul nuw nsw i32 %and1.i176.i, 441
  %mul13.i180.i = select i1 %tobool.not.i177.i, i32 441, i32 %and1.op.i179.i
  %sub.i182.i = sub i32 11684, %div.i133.i
  %div.i183.i = sdiv i32 %sub.i182.i, 92
  %197 = call i32 @llvm.smax.i32(i32 %div.i183.i, i32 1) #11
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.then135.i
  %right.010.i.i.i = phi i32 [ 127, %if.then135.i ], [ %right.1.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %left.09.i.i.i = phi i32 [ 1, %if.then135.i ], [ %left.1.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %add.i.i184.i = add i32 %left.09.i.i.i, %right.010.i.i.i
  %div.i.i.i = sdiv i32 %add.i.i184.i, 2
  %arrayidx.i.i185.i = getelementptr i16, ptr @attack_time_tbl, i32 %div.i.i.i
  %198 = ptrtoint ptr %arrayidx.i.i185.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %arrayidx.i.i185.i, align 2
  %conv.i.i.i = sext i16 %199 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %conv.i.i.i)
  %cmp1.i.i186.i = icmp slt i32 %div.i.i, %conv.i.i.i
  %add3.i.i.i = add nsw i32 %div.i.i.i, 1
  %left.1.i.i.i = select i1 %cmp1.i.i186.i, i32 %add3.i.i.i, i32 %left.09.i.i.i
  %right.1.i.i.i = select i1 %cmp1.i.i186.i, i32 %right.010.i.i.i, i32 %div.i.i.i
  %cmp.i.i187.i = icmp slt i32 %left.1.i.i.i, %right.1.i.i.i
  br i1 %cmp.i.i187.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %snd_sf_calc_parm_attack.exit.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

snd_sf_calc_parm_attack.exit.i:                   ; preds = %while.body.i.i.i
  %sub2.i134.i = sub nsw i32 %conv158.i, %conv148.i
  %sub8.i138.i = add nsw i32 %mul.neg.i137.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i140.i)
  %tobool.not.i141.i = icmp eq i32 %and1.i140.i, 0
  %mul13.i144.i = select i1 %tobool.not.i141.i, i32 441, i32 %and1.op.i143.i
  %sub2.i146.i = sub nsw i32 %conv168.i, %conv148.i
  %sub8.i150.i = add nsw i32 %mul.neg.i149.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i152.i)
  %tobool.not.i153.i = icmp eq i32 %and1.i152.i, 0
  %200 = call i32 @llvm.abs.i32(i32 %sub2.i158.i, i1 true) #11
  %shl.i163.i = shl i32 %200, %sub8.i162.i
  %mul12.i166.i = mul i32 %shl.i163.i, 10
  %201 = call i32 @llvm.abs.i32(i32 %sub2.i170.i, i1 true) #11
  %shl.i175.i = shl i32 %201, %sub8.i174.i
  %mul12.i178.i = mul i32 %shl.i175.i, 10
  %202 = call i32 @llvm.umin.i32(i32 %197, i32 126) #11
  %203 = call i32 @llvm.abs.i32(i32 %sub2.i134.i, i1 true) #11
  %shl.i139.i = shl i32 %203, %sub8.i138.i
  %mul12.i142.i = mul i32 %shl.i139.i, 10
  %div.i145.i = sdiv i32 %mul12.i142.i, %mul13.i144.i
  %204 = call i32 @llvm.abs.i32(i32 %sub2.i146.i, i1 true) #11
  %shl.i151.i = shl i32 %204, %sub8.i150.i
  %mul12.i154.i = mul i32 %shl.i151.i, 10
  %shl.i = shl nuw nsw i32 %202, 8
  %or194.i = or i32 %left.1.i.i.i, %shl.i
  %conv195.i = trunc i32 %or194.i to i16
  %205 = ptrtoint ptr %volatkhld.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv195.i, ptr %volatkhld.i.i.i.i, align 8
  %206 = lshr i8 %180, 1
  %div200.i = zext i8 %206 to i32
  %arrayidx201.i = getelementptr [128 x i32], ptr @snd_sf_vol_table, i32 0, i32 %div200.i
  %207 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx201.i, align 4
  br label %while.body.i.i199.i

while.body.i.i199.i:                              ; preds = %while.body.i.i199.i.while.body.i.i199.i_crit_edge, %snd_sf_calc_parm_attack.exit.i
  %right.010.i.i188.i = phi i32 [ 127, %snd_sf_calc_parm_attack.exit.i ], [ %right.1.i.i197.i, %while.body.i.i199.i.while.body.i.i199.i_crit_edge ]
  %left.09.i.i189.i = phi i32 [ 1, %snd_sf_calc_parm_attack.exit.i ], [ %left.1.i.i196.i, %while.body.i.i199.i.while.body.i.i199.i_crit_edge ]
  %add.i.i190.i = add i32 %left.09.i.i189.i, %right.010.i.i188.i
  %div.i.i191.i = sdiv i32 %add.i.i190.i, 2
  %arrayidx.i.i192.i = getelementptr i16, ptr @decay_time_tbl, i32 %div.i.i191.i
  %209 = ptrtoint ptr %arrayidx.i.i192.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %arrayidx.i.i192.i, align 2
  %conv.i.i193.i = sext i16 %210 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i145.i, i32 %conv.i.i193.i)
  %cmp1.i.i194.i = icmp slt i32 %div.i145.i, %conv.i.i193.i
  %add3.i.i195.i = add nsw i32 %div.i.i191.i, 1
  %left.1.i.i196.i = select i1 %cmp1.i.i194.i, i32 %add3.i.i195.i, i32 %left.09.i.i189.i
  %right.1.i.i197.i = select i1 %cmp1.i.i194.i, i32 %right.010.i.i188.i, i32 %div.i.i191.i
  %cmp.i.i198.i = icmp slt i32 %left.1.i.i196.i, %right.1.i.i197.i
  br i1 %cmp.i.i198.i, label %while.body.i.i199.i.while.body.i.i199.i_crit_edge, label %snd_sf_calc_parm_decay.exit.i

while.body.i.i199.i.while.body.i.i199.i_crit_edge: ; preds = %while.body.i.i199.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i199.i

snd_sf_calc_parm_decay.exit.i:                    ; preds = %while.body.i.i199.i
  %mul13.i156.i = select i1 %tobool.not.i153.i, i32 441, i32 %and1.op.i155.i
  %div.i169.i = sdiv i32 %mul12.i166.i, %mul13.i168.i
  %div.i181.i = sdiv i32 %mul12.i178.i, %mul13.i180.i
  %div.i157.i = sdiv i32 %mul12.i154.i, %mul13.i156.i
  %.neg.i = mul i32 %208, 65280
  %add180.i = add i32 %div.i181.i, %div.i169.i
  %add191.i = add i32 %add180.i, %div.i157.i
  %shl203.i = add i32 %.neg.i, 32512
  %or205.i = or i32 %left.1.i.i196.i, %shl203.i
  %conv206.i = trunc i32 %or205.i to i16
  %211 = ptrtoint ptr %voldcysus.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %conv206.i, ptr %voldcysus.i.i.i.i, align 2
  br label %while.body.i.i211.i

while.body.i.i211.i:                              ; preds = %while.body.i.i211.i.while.body.i.i211.i_crit_edge, %snd_sf_calc_parm_decay.exit.i
  %right.010.i.i200.i = phi i32 [ 127, %snd_sf_calc_parm_decay.exit.i ], [ %right.1.i.i209.i, %while.body.i.i211.i.while.body.i.i211.i_crit_edge ]
  %left.09.i.i201.i = phi i32 [ 1, %snd_sf_calc_parm_decay.exit.i ], [ %left.1.i.i208.i, %while.body.i.i211.i.while.body.i.i211.i_crit_edge ]
  %add.i.i202.i = add i32 %left.09.i.i201.i, %right.010.i.i200.i
  %div.i.i203.i = sdiv i32 %add.i.i202.i, 2
  %arrayidx.i.i204.i = getelementptr i16, ptr @decay_time_tbl, i32 %div.i.i203.i
  %212 = ptrtoint ptr %arrayidx.i.i204.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %arrayidx.i.i204.i, align 2
  %conv.i.i205.i = sext i16 %213 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add191.i, i32 %conv.i.i205.i)
  %cmp1.i.i206.i = icmp slt i32 %add191.i, %conv.i.i205.i
  %add3.i.i207.i = add nsw i32 %div.i.i203.i, 1
  %left.1.i.i208.i = select i1 %cmp1.i.i206.i, i32 %add3.i.i207.i, i32 %left.09.i.i201.i
  %right.1.i.i209.i = select i1 %cmp1.i.i206.i, i32 %right.010.i.i200.i, i32 %div.i.i203.i
  %cmp.i.i210.i = icmp slt i32 %left.1.i.i208.i, %right.1.i.i209.i
  br i1 %cmp.i.i210.i, label %while.body.i.i211.i.while.body.i.i211.i_crit_edge, label %snd_sf_calc_parm_decay.exit212.i

while.body.i.i211.i.while.body.i.i211.i_crit_edge: ; preds = %while.body.i.i211.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i211.i

snd_sf_calc_parm_decay.exit212.i:                 ; preds = %while.body.i.i211.i
  call void @__sanitizer_cov_trace_pc() #13
  %214 = trunc i32 %left.1.i.i208.i to i16
  %conv211.i = or i16 %214, -32768
  %215 = ptrtoint ptr %volrelease.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv211.i, ptr %volrelease.i.i.i.i, align 4
  %216 = lshr i8 %169, 1
  %div217.i = zext i8 %216 to i32
  %arrayidx218.i = getelementptr [128 x i32], ptr @snd_sf_vol_table, i32 0, i32 %div217.i
  %217 = ptrtoint ptr %arrayidx218.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx218.i, align 4
  %conv219.i = trunc i32 %218 to i8
  %attenuation.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 20
  %219 = ptrtoint ptr %attenuation.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv219.i, ptr %attenuation.i, align 1
  br label %if.end221.i

if.end221.i:                                      ; preds = %snd_sf_calc_parm_decay.exit212.i, %freq_to_note.exit121.i.if.end221.i_crit_edge
  %and223.i = and i32 %165, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223.i)
  %tobool224.not.i = icmp eq i32 %and223.i, 0
  br i1 %tobool224.not.i, label %if.end221.i.if.end229.i_crit_edge, label %if.then225.i

if.end221.i.if.end229.i_crit_edge:                ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229.i

if.then225.i:                                     ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #13
  %220 = ptrtoint ptr %volrelease.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 -32641, ptr %volrelease.i.i.i.i, align 4
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.then225.i, %if.end221.i.if.end229.i_crit_edge
  %and231.i = and i32 %165, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.i)
  %tobool232.not.i = icmp eq i32 %and231.i, 0
  br i1 %tobool232.not.i, label %if.end229.i.if.end244.i_crit_edge, label %if.then233.i

if.end229.i.if.end244.i_crit_edge:                ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end244.i

if.then233.i:                                     ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #13
  %tremolo_rate.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 16
  %221 = ptrtoint ptr %tremolo_rate.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %tremolo_rate.i, align 1
  %conv234.i = zext i8 %222 to i32
  %mul.i = mul nuw nsw i32 %conv234.i, 1000
  %div236.i = udiv i32 %mul.i, 1596
  %tremolo_depth.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 17
  %223 = ptrtoint ptr %tremolo_depth.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %tremolo_depth.i, align 2
  %225 = lshr i8 %224, 1
  %div238.i = zext i8 %225 to i32
  %shl239.i = shl nuw nsw i32 %div238.i, 8
  %or240.i = or i32 %shl239.i, %div236.i
  %conv241.i = trunc i32 %or240.i to i16
  %tremfrq.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 16
  %226 = ptrtoint ptr %tremfrq.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %conv241.i, ptr %tremfrq.i, align 2
  br label %if.end244.i

if.end244.i:                                      ; preds = %if.then233.i, %if.end229.i.if.end244.i_crit_edge
  %and246.i = and i32 %165, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246.i)
  %tobool247.not.i = icmp eq i32 %and246.i, 0
  br i1 %tobool247.not.i, label %if.end244.i.if.end261.i_crit_edge, label %if.then248.i

if.end244.i.if.end261.i_crit_edge:                ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end261.i

if.then248.i:                                     ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #13
  %vibrato_rate.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 19
  %227 = ptrtoint ptr %vibrato_rate.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %vibrato_rate.i, align 4
  %conv250.i = zext i8 %228 to i32
  %mul251.i = mul nuw nsw i32 %conv250.i, 1000
  %div253.i = udiv i32 %mul251.i, 1596
  %vibrato_depth.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 20
  %229 = ptrtoint ptr %vibrato_depth.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %vibrato_depth.i, align 1
  %231 = udiv i8 %230, 6
  %div255.i = zext i8 %231 to i32
  %shl256.i = shl nuw nsw i32 %div255.i, 8
  %or257.i = or i32 %shl256.i, %div253.i
  %conv258.i = trunc i32 %or257.i to i16
  %fm2frq2.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 22, i32 17
  %232 = ptrtoint ptr %fm2frq2.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %conv258.i, ptr %fm2frq2.i, align 4
  br label %if.end261.i

if.end261.i:                                      ; preds = %if.then248.i, %if.end244.i.if.end261.i_crit_edge
  %233 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %mode_flags.i, align 2
  %235 = lshr i16 %234, 2
  %236 = and i16 %235, 2
  %237 = xor i16 %236, 2
  %238 = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 7
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %237, ptr %238, align 2
  %bank.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 1
  %240 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 0, ptr %bank.i, align 4
  %instr_no.i = getelementptr inbounds %struct.patch_info, ptr %patch.i, i32 0, i32 2
  %241 = ptrtoint ptr %instr_no.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %instr_no.i, align 4
  %conv273.i = trunc i16 %242 to i8
  %instr.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 2
  %243 = ptrtoint ptr %instr.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %conv273.i, ptr %instr.i, align 1
  %mapped.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 3
  %244 = ptrtoint ptr %mapped.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 0, ptr %mapped.i, align 2
  %245 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %id.i, align 4
  %247 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %246, ptr %v.i.i, align 8
  %248 = ptrtoint ptr %sample108.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %sample108.i, align 2
  %250 = ptrtoint ptr %samples.i4.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %p.09.i.i.i = load ptr, ptr %samples.i4.i, align 4
  %tobool.not10.i.i.i = icmp eq ptr %p.09.i.i.i, null
  br i1 %tobool.not10.i.i.i, label %if.end261.i.set_sample.exit.i_crit_edge, label %if.end261.i.for.body.i.i216.i_crit_edge

if.end261.i.for.body.i.i216.i_crit_edge:          ; preds = %if.end261.i
  br label %for.body.i.i216.i

if.end261.i.set_sample.exit.i_crit_edge:          ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sample.exit.i

for.body.i.i216.i:                                ; preds = %for.inc.i.i.i.for.body.i.i216.i_crit_edge, %if.end261.i.for.body.i.i216.i_crit_edge
  %p.011.i.i.i = phi ptr [ %p.0.i.i.i, %for.inc.i.i.i.for.body.i.i216.i_crit_edge ], [ %p.09.i.i.i, %if.end261.i.for.body.i.i216.i_crit_edge ]
  %sample.i.i.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i.i, i32 0, i32 1
  %251 = ptrtoint ptr %sample.i.i.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %sample.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %252, i16 %249)
  %cmp1.i.i215.i = icmp eq i16 %252, %249
  br i1 %cmp1.i.i215.i, label %if.end.i218.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i216.i
  %next.i.i.i = getelementptr inbounds %struct.snd_sf_sample, ptr %p.011.i.i.i, i32 0, i32 3
  %253 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %p.0.i.i.i = load ptr, ptr %next.i.i.i, align 4
  %tobool.not.i.i217.i = icmp eq ptr %p.0.i.i.i, null
  br i1 %tobool.not.i.i217.i, label %for.inc.i.i.i.set_sample.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i216.i_crit_edge

for.inc.i.i.i.for.body.i.i216.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i216.i

for.inc.i.i.i.set_sample.exit.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sample.exit.i

if.end.i218.i:                                    ; preds = %for.body.i.i216.i
  call void @__sanitizer_cov_trace_pc() #13
  %start.i.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i.i, i32 0, i32 2
  %254 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %start.i.i, align 4
  %start3.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 2
  %256 = ptrtoint ptr %start3.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %start3.i.i, align 4
  %add.i.i = add i32 %257, %255
  store i32 %add.i.i, ptr %start3.i.i, align 4
  %end.i.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i.i, i32 0, i32 3
  %258 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %end.i.i, align 4
  %end5.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 3
  %260 = ptrtoint ptr %end5.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %end5.i.i, align 8
  %add6.i.i = add i32 %261, %259
  store i32 %add6.i.i, ptr %end5.i.i, align 8
  %loopstart.i.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i.i, i32 0, i32 4
  %262 = ptrtoint ptr %loopstart.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %loopstart.i.i, align 4
  %loopstart8.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 4
  %264 = ptrtoint ptr %loopstart8.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %loopstart8.i.i, align 4
  %add9.i.i = add i32 %265, %263
  store i32 %add9.i.i, ptr %loopstart8.i.i, align 4
  %loopend.i.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i.i, i32 0, i32 5
  %266 = ptrtoint ptr %loopend.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %loopend.i.i, align 4
  %loopend11.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 5
  %268 = ptrtoint ptr %loopend11.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %loopend11.i.i, align 8
  %add12.i.i = add i32 %269, %267
  store i32 %add12.i.i, ptr %loopend11.i.i, align 8
  %mode_flags.i.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i.i, i32 0, i32 8
  %270 = ptrtoint ptr %mode_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %mode_flags.i.i, align 2
  %sample_mode.i.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 4, i32 23
  %272 = ptrtoint ptr %sample_mode.i.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %271, ptr %sample_mode.i.i, align 2
  br label %set_sample.exit.i

set_sample.exit.i:                                ; preds = %if.end.i218.i, %for.inc.i.i.i.set_sample.exit.i_crit_edge, %if.end261.i.set_sample.exit.i_crit_edge
  %retval.0.i219.i = phi ptr [ %p.011.i.i.i, %if.end.i218.i ], [ null, %if.end261.i.set_sample.exit.i_crit_edge ], [ null, %for.inc.i.i.i.set_sample.exit.i_crit_edge ]
  %sample279.i = getelementptr inbounds %struct.snd_sf_zone, ptr %call7.i.i.i7.i, i32 0, i32 6
  %273 = ptrtoint ptr %sample279.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %retval.0.i219.i, ptr %sample279.i, align 8
  call fastcc void @add_preset(ptr noundef %sflist, ptr noundef nonnull %call7.i.i.i7.i) #11
  br label %load_guspatch.exit

load_guspatch.exit:                               ; preds = %set_sample.exit.i, %sf_sample_delete.exit25.i, %if.then.i.i, %if.then91.i.load_guspatch.exit_crit_edge, %if.end6.i.load_guspatch.exit_crit_edge, %if.end4.i.i.load_guspatch.exit_crit_edge, %if.then11.i.i.i, %if.then.i
  %retval.0.i = phi i32 [ -22, %if.then.i ], [ %call98.i, %sf_sample_delete.exit25.i ], [ 0, %set_sample.exit.i ], [ -12, %if.end4.i.i.load_guspatch.exit_crit_edge ], [ -12, %if.end6.i.load_guspatch.exit_crit_edge ], [ -12, %if.then91.i.load_guspatch.exit_crit_edge ], [ -12, %if.then.i.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %patch.i) #11
  %call2.i4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %274 = ptrtoint ptr %presets_locked.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %presets_locked.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i4) #11
  call void @mutex_unlock(ptr noundef %presets_mutex.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soundfont_search_zone(ptr noundef %sflist, ptr nocapture noundef %notep, i32 noundef %vel, i32 noundef %preset, i32 noundef %bank, i32 noundef %def_preset, i32 noundef %def_bank, ptr nocapture noundef writeonly %table, i32 noundef %max_layers) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %presets_locked = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 11
  %0 = ptrtoint ptr %presets_locked to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %presets_locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call fastcc i32 @search_zones(ptr noundef %sflist, ptr noundef %notep, i32 noundef %vel, i32 noundef %preset, i32 noundef %bank, ptr noundef %table, i32 noundef %max_layers, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %preset, i32 %def_preset)
  %cmp9.not = icmp eq i32 %preset, %def_preset
  call void @__sanitizer_cov_trace_cmp4(i32 %bank, i32 %def_bank)
  %cmp11.not = icmp eq i32 %bank, %def_bank
  %or.cond = and i1 %cmp9.not, %cmp11.not
  br i1 %or.cond, label %if.then8.cleanup_crit_edge, label %if.then13

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call fastcc i32 @search_zones(ptr noundef %sflist, ptr noundef %notep, i32 noundef %vel, i32 noundef %def_preset, i32 noundef %def_bank, ptr noundef %table, i32 noundef %max_layers, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call14, %if.then13 ], [ 0, %if.then8.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @search_zones(ptr nocapture noundef readonly %sflist, ptr nocapture noundef %notep, i32 noundef %vel, i32 noundef %preset, i32 noundef %bank, ptr nocapture noundef writeonly %table, i32 noundef %max_layers, i32 noundef %level) unnamed_addr #5 align 64 {
entry:
  %key = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %notep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %bank)
  %cmp.i.i = icmp eq i32 %bank, 128
  %add.i.i = add i32 %1, 128
  %index.0.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %preset
  %rem.i.i = srem i32 %index.0.i.i, 256
  %2 = tail call i32 @llvm.smax.i32(i32 %rem.i.i, i32 -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp slt i32 %2, 0
  br i1 %cmp.i, label %entry.cleanup40_crit_edge, label %if.end.i

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.snd_sf_list, ptr %sflist, i32 0, i32 3, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %zp.017.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not18.i = icmp eq ptr %zp.017.i, null
  br i1 %tobool.not18.i, label %if.end.i.cleanup40_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup40_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %zp.019.i = phi ptr [ %zp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %zp.017.i, %if.end.i.for.body.i_crit_edge ]
  %instr.i = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.019.i, i32 0, i32 2
  %4 = ptrtoint ptr %instr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %instr.i, align 1
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %preset)
  %cmp1.i = icmp eq i32 %conv.i, %preset
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bank3.i = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.019.i, i32 0, i32 1
  %6 = ptrtoint ptr %bank3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank3.i, align 4
  %conv4.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %bank)
  %cmp5.i = icmp eq i32 %conv4.i, %bank
  br i1 %cmp5.i, label %land.lhs.true.i.for.body_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.for.body_crit_edge:               ; preds = %land.lhs.true.i
  br label %for.body

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %next_instr.i = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.019.i, i32 0, i32 7
  %8 = ptrtoint ptr %next_instr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %zp.0.i = load ptr, ptr %next_instr.i, align 4
  %tobool.not.i = icmp eq ptr %zp.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.cleanup40_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup40_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %land.lhs.true.i.for.body_crit_edge
  %nvoices.072 = phi i32 [ %nvoices.2, %for.inc.for.body_crit_edge ], [ 0, %land.lhs.true.i.for.body_crit_edge ]
  %zp.070 = phi ptr [ %34, %for.inc.for.body_crit_edge ], [ %zp.019.i, %land.lhs.true.i.for.body_crit_edge ]
  %9 = ptrtoint ptr %notep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %notep, align 4
  %low = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.070, i32 0, i32 4, i32 10
  %11 = ptrtoint ptr %low to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %low, align 4
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp.not = icmp slt i32 %10, %conv
  br i1 %cmp.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %high = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.070, i32 0, i32 4, i32 11
  %13 = ptrtoint ptr %high to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %high, align 1
  %conv3 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv3)
  %cmp4.not = icmp sgt i32 %10, %conv3
  br i1 %cmp4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true6

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true6:                                   ; preds = %land.lhs.true
  %vellow = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.070, i32 0, i32 4, i32 12
  %15 = ptrtoint ptr %vellow to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vellow, align 2
  %conv8 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %vel)
  %cmp9.not = icmp sgt i32 %conv8, %vel
  br i1 %cmp9.not, label %land.lhs.true6.for.inc_crit_edge, label %land.lhs.true11

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %velhigh = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.070, i32 0, i32 4, i32 13
  %17 = ptrtoint ptr %velhigh to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %velhigh, align 1
  %conv13 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %vel)
  %cmp14.not = icmp slt i32 %conv13, %vel
  br i1 %cmp14.not, label %land.lhs.true11.for.inc_crit_edge, label %if.then

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true11
  %mapped = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.070, i32 0, i32 3
  %19 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mapped, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  br i1 %tobool16.not, label %if.end34, label %if.then17

if.then17:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #11
  %fixkey = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.070, i32 0, i32 4, i32 14
  %21 = ptrtoint ptr %fixkey to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fixkey, align 4
  %conv19 = sext i8 %22 to i32
  %23 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv19, ptr %key, align 4
  %start = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.070, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.070, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %level)
  %cmp22 = icmp sgt i32 %level, 5
  br i1 %cmp22, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp25 = icmp slt i8 %22, 0
  br i1 %cmp25, label %if.then27, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %10, ptr %key, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end.if.end28_crit_edge
  %add = add nsw i32 %level, 1
  %call29 = call fastcc i32 @search_zones(ptr noundef %sflist, ptr noundef nonnull %key, i32 noundef %vel, i32 noundef %25, i32 noundef %27, ptr noundef %table, i32 noundef %max_layers, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp sgt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end28.cleanup.thread_crit_edge

if.end28.cleanup.thread_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %key, align 4
  %31 = ptrtoint ptr %notep to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %notep, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then32, %if.end28.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #11
  br label %cleanup40

cleanup:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #11
  br label %cleanup40

if.end34:                                         ; preds = %if.then
  %inc = add i32 %nvoices.072, 1
  %arrayidx = getelementptr ptr, ptr %table, i32 %nvoices.072
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %zp.070, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %max_layers)
  %cmp35.not = icmp slt i32 %inc, %max_layers
  br i1 %cmp35.not, label %if.end34.for.inc_crit_edge, label %if.end34.cleanup40_crit_edge

if.end34.cleanup40_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end34.for.inc_crit_edge, %land.lhs.true11.for.inc_crit_edge, %land.lhs.true6.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %nvoices.2 = phi i32 [ %inc, %if.end34.for.inc_crit_edge ], [ %nvoices.072, %land.lhs.true11.for.inc_crit_edge ], [ %nvoices.072, %land.lhs.true6.for.inc_crit_edge ], [ %nvoices.072, %land.lhs.true.for.inc_crit_edge ], [ %nvoices.072, %for.body.for.inc_crit_edge ]
  %next_zone = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.070, i32 0, i32 8
  %33 = ptrtoint ptr %next_zone to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %next_zone, align 4
  %tobool.not = icmp eq ptr %34, null
  br i1 %tobool.not, label %for.inc.cleanup40_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

cleanup40:                                        ; preds = %for.inc.cleanup40_crit_edge, %if.end34.cleanup40_crit_edge, %cleanup, %cleanup.thread, %for.inc.i.cleanup40_crit_edge, %if.end.i.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ %call29, %cleanup.thread ], [ 0, %entry.cleanup40_crit_edge ], [ 0, %if.end.i.cleanup40_crit_edge ], [ %inc, %if.end34.cleanup40_crit_edge ], [ %nvoices.2, %for.inc.cleanup40_crit_edge ], [ 0, %for.inc.i.cleanup40_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_sf_new(ptr noundef readonly %callback, ptr noundef %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1220) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %presets_mutex = getelementptr inbounds %struct.snd_sf_list, ptr %call7.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %presets_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_sf_new.__key) #11
  %lock = getelementptr inbounds %struct.snd_sf_list, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @snd_sf_new.__key.7, i16 noundef signext 3) #11
  %memhdr = getelementptr inbounds %struct.snd_sf_list, ptr %call7.i.i, i32 0, i32 14
  %1 = ptrtoint ptr %memhdr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hdr, ptr %memhdr, align 8
  %tobool5.not = icmp eq ptr %callback, null
  br i1 %tobool5.not, label %do.body.if.end8_crit_edge, label %if.then6

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %callback7 = getelementptr inbounds %struct.snd_sf_list, ptr %call7.i.i, i32 0, i32 10
  %2 = call ptr @memcpy(ptr %callback7, ptr %callback, i32 16)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body.if.end8_crit_edge
  %mem_used.i = getelementptr inbounds %struct.snd_sf_list, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call7.i.i, align 8
  %open_client.i = getelementptr inbounds %struct.snd_sf_list, ptr %call7.i.i, i32 0, i32 1
  %4 = call ptr @memset(ptr %mem_used.i, i32 0, i32 1028)
  %5 = ptrtoint ptr %open_client.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %open_client.i, align 4
  %fonts.i = getelementptr inbounds %struct.snd_sf_list, ptr %call7.i.i, i32 0, i32 4
  %6 = call ptr @memset(ptr %fonts.i, i32 0, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_sf_free(ptr noundef %sflist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sflist, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %presets_mutex.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %presets_mutex.i, i32 noundef 0) #11
  %lock.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %presets_locked.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 11
  %0 = ptrtoint ptr %presets_locked.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %presets_locked.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  %sample_reset = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10, i32 3
  %1 = ptrtoint ptr %sample_reset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sample_reset, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then1

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %callback = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10
  %3 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %callback, align 4
  tail call void %2(ptr noundef %4) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.end.if.end5_crit_edge
  tail call fastcc void @snd_sf_clear(ptr noundef nonnull %sflist)
  %call2.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %5 = ptrtoint ptr %presets_locked.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %presets_locked.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i14) #11
  tail call void @mutex_unlock(ptr noundef %presets_mutex.i) #11
  tail call void @kfree(ptr noundef nonnull %sflist) #11
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_sf_clear(ptr nocapture noundef %sflist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fonts = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 4
  %0 = ptrtoint ptr %fonts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fonts, align 4
  %tobool.not36 = icmp eq ptr %1, null
  br i1 %tobool.not36, label %entry.for.end16_crit_edge, label %for.body.lr.ph

entry.for.end16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

for.body.lr.ph:                                   ; preds = %entry
  %sample_free = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10, i32 2
  %callback = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10
  %memhdr = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.end14.for.body_crit_edge, %for.body.lr.ph
  %sf.037 = phi ptr [ %1, %for.body.lr.ph ], [ %3, %for.end14.for.body_crit_edge ]
  %2 = ptrtoint ptr %sf.037 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sf.037, align 4
  %zones = getelementptr inbounds %struct.snd_soundfont, ptr %sf.037, i32 0, i32 4
  %4 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zones, align 4
  %tobool2.not31 = icmp eq ptr %5, null
  br i1 %tobool2.not31, label %for.body.for.end_crit_edge, label %for.body.for.body3_crit_edge

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %zp.032 = phi ptr [ %7, %for.body3.for.body3_crit_edge ], [ %5, %for.body.for.body3_crit_edge ]
  %6 = ptrtoint ptr %zp.032 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zp.032, align 4
  tail call void @kfree(ptr noundef nonnull %zp.032) #11
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %for.body3.for.end_crit_edge, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3

for.body3.for.end_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body3.for.end_crit_edge, %for.body.for.end_crit_edge
  %samples = getelementptr inbounds %struct.snd_soundfont, ptr %sf.037, i32 0, i32 5
  %8 = ptrtoint ptr %samples to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %samples, align 4
  %tobool6.not33 = icmp eq ptr %9, null
  br i1 %tobool6.not33, label %for.end.for.end14_crit_edge, label %for.end.for.body7_crit_edge

for.end.for.body7_crit_edge:                      ; preds = %for.end
  br label %for.body7

for.end.for.end14_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end14

for.body7:                                        ; preds = %if.end.for.body7_crit_edge, %for.end.for.body7_crit_edge
  %sp.034 = phi ptr [ %11, %if.end.for.body7_crit_edge ], [ %9, %for.end.for.body7_crit_edge ]
  %next8 = getelementptr inbounds %struct.snd_sf_sample, ptr %sp.034, i32 0, i32 3
  %10 = ptrtoint ptr %next8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next8, align 4
  %12 = ptrtoint ptr %sample_free to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sample_free, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %for.body7.if.end_crit_edge, label %if.then

for.body7.if.end_crit_edge:                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %callback, align 4
  %16 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memhdr, align 4
  %call = tail call i32 %13(ptr noundef %15, ptr noundef nonnull %sp.034, ptr noundef %17) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %sp.034) #11
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end.for.end14_crit_edge, label %if.end.for.body7_crit_edge

if.end.for.body7_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7

if.end.for.end14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end14

for.end14:                                        ; preds = %if.end.for.end14_crit_edge, %for.end.for.end14_crit_edge
  tail call void @kfree(ptr noundef nonnull %sf.037) #11
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.end14.for.end16_crit_edge, label %for.end14.for.body_crit_edge

for.end14.for.body_crit_edge:                     ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end14.for.end16_crit_edge:                    ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end16

for.end16:                                        ; preds = %for.end14.for.end16_crit_edge, %entry.for.end16_crit_edge
  %mem_used.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 2
  %18 = ptrtoint ptr %sflist to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sflist, align 4
  %open_client.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 1
  %19 = call ptr @memset(ptr %mem_used.i, i32 0, i32 1028)
  %20 = ptrtoint ptr %open_client.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %open_client.i, align 4
  %21 = call ptr @memset(ptr %fonts, i32 0, i32 24)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soundfont_remove_samples(ptr noundef %sflist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %presets_mutex.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %presets_mutex.i, i32 noundef 0) #11
  %lock.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %presets_locked.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 11
  %0 = ptrtoint ptr %presets_locked.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %presets_locked.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  %sample_reset = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10, i32 3
  %1 = ptrtoint ptr %sample_reset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sample_reset, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %callback = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10
  %3 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %callback, align 4
  tail call void %2(ptr noundef %4) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @snd_sf_clear(ptr noundef %sflist)
  %call2.i10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %5 = ptrtoint ptr %presets_locked.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %presets_locked.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i10) #11
  tail call void @mutex_unlock(ptr noundef %presets_mutex.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soundfont_remove_unlocked(ptr noundef %sflist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %presets_mutex.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %presets_mutex.i, i32 noundef 0) #11
  %lock.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %presets_locked.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 11
  %0 = ptrtoint ptr %presets_locked.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %presets_locked.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  %callback = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10
  %sample_reset = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10, i32 3
  %1 = ptrtoint ptr %sample_reset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sample_reset, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %callback, align 4
  tail call void %2(ptr noundef %4) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %presets = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 3
  %5 = call ptr @memset(ptr %presets, i32 0, i32 1024)
  %fonts = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 4
  %6 = ptrtoint ptr %fonts to i32
  call void @__asan_load4_noabort(i32 %6)
  %sf.078 = load ptr, ptr %fonts, align 4
  %tobool4.not79 = icmp eq ptr %sf.078, null
  br i1 %tobool4.not79, label %if.end.for.end32_crit_edge, label %for.body.lr.ph

if.end.for.end32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32

for.body.lr.ph:                                   ; preds = %if.end
  %zone_locked = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 8
  %sample_locked = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 9
  %mem_used = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 2
  %sample_free = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 10, i32 2
  %memhdr = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc30.for.body_crit_edge, %for.body.lr.ph
  %sf.080 = phi ptr [ %sf.078, %for.body.lr.ph ], [ %sf.0, %for.inc30.for.body_crit_edge ]
  %zones = getelementptr inbounds %struct.snd_soundfont, ptr %sf.080, i32 0, i32 4
  %7 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %zones, align 4
  %tobool6.not73 = icmp eq ptr %8, null
  br i1 %tobool6.not73, label %for.body.for.end_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body7:                                        ; preds = %if.end9.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %zp.074 = phi ptr [ %14, %if.end9.for.body7_crit_edge ], [ %8, %for.body.for.body7_crit_edge ]
  %counter = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.074, i32 0, i32 5
  %9 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %counter, align 4
  %11 = ptrtoint ptr %zone_locked to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %zone_locked, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body7.for.end_crit_edge, label %if.end9

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end9:                                          ; preds = %for.body7
  %13 = ptrtoint ptr %zp.074 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %zp.074, align 4
  %15 = ptrtoint ptr %zones to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %zones, align 4
  tail call void @kfree(ptr noundef nonnull %zp.074) #11
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body7_crit_edge

if.end9.for.body7_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %for.body7.for.end_crit_edge, %for.body.for.end_crit_edge
  %samples = getelementptr inbounds %struct.snd_soundfont, ptr %sf.080, i32 0, i32 5
  %16 = ptrtoint ptr %samples to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %samples, align 4
  %tobool12.not75 = icmp eq ptr %17, null
  br i1 %tobool12.not75, label %for.end.for.inc30_crit_edge, label %for.end.for.body13_crit_edge

for.end.for.body13_crit_edge:                     ; preds = %for.end
  br label %for.body13

for.end.for.inc30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc30

for.body13:                                       ; preds = %if.end27.for.body13_crit_edge, %for.end.for.body13_crit_edge
  %sp.076 = phi ptr [ %23, %if.end27.for.body13_crit_edge ], [ %17, %for.end.for.body13_crit_edge ]
  %counter14 = getelementptr inbounds %struct.snd_sf_sample, ptr %sp.076, i32 0, i32 1
  %18 = ptrtoint ptr %counter14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %counter14, align 4
  %20 = ptrtoint ptr %sample_locked to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sample_locked, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp15 = icmp slt i32 %19, %21
  br i1 %cmp15, label %for.body13.for.inc30_crit_edge, label %if.end17

for.body13.for.inc30_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc30

if.end17:                                         ; preds = %for.body13
  %next18 = getelementptr inbounds %struct.snd_sf_sample, ptr %sp.076, i32 0, i32 3
  %22 = ptrtoint ptr %next18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next18, align 4
  %24 = ptrtoint ptr %samples to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %samples, align 4
  %truesize = getelementptr inbounds %struct.soundfont_sample_info, ptr %sp.076, i32 0, i32 9
  %25 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %truesize, align 4
  %27 = ptrtoint ptr %mem_used to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mem_used, align 4
  %sub = sub i32 %28, %26
  store i32 %sub, ptr %mem_used, align 4
  %29 = ptrtoint ptr %sample_free to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sample_free, align 4
  %tobool21.not = icmp eq ptr %30, null
  br i1 %tobool21.not, label %if.end17.if.end27_crit_edge, label %if.then22

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %callback, align 4
  %33 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %memhdr, align 4
  %call = tail call i32 %30(ptr noundef %32, ptr noundef nonnull %sp.076, ptr noundef %34) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end17.if.end27_crit_edge
  tail call void @kfree(ptr noundef nonnull %sp.076) #11
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %if.end27.for.inc30_crit_edge, label %if.end27.for.body13_crit_edge

if.end27.for.body13_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

if.end27.for.inc30_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc30

for.inc30:                                        ; preds = %if.end27.for.inc30_crit_edge, %for.body13.for.inc30_crit_edge, %for.end.for.inc30_crit_edge
  %35 = ptrtoint ptr %sf.080 to i32
  call void @__asan_load4_noabort(i32 %35)
  %sf.0 = load ptr, ptr %sf.080, align 4
  %tobool4.not = icmp eq ptr %sf.0, null
  br i1 %tobool4.not, label %for.inc30.for.end32_crit_edge, label %for.inc30.for.body_crit_edge

for.inc30.for.body_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc30.for.end32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32

for.end32:                                        ; preds = %for.inc30.for.end32_crit_edge, %if.end.for.end32_crit_edge
  %zone_locked33 = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 8
  %36 = ptrtoint ptr %zone_locked33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %zone_locked33, align 4
  %zone_counter = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 6
  %38 = ptrtoint ptr %zone_counter to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %zone_counter, align 4
  %sample_locked34 = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 9
  %39 = ptrtoint ptr %sample_locked34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sample_locked34, align 4
  %sample_counter = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 7
  %41 = ptrtoint ptr %sample_counter to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %sample_counter, align 4
  tail call fastcc void @rebuild_presets(ptr noundef %sflist)
  %call2.i70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %42 = ptrtoint ptr %presets_locked.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %presets_locked.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i70) #11
  tail call void @mutex_unlock(ptr noundef %presets_mutex.i) #11
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rebuild_presets(ptr nocapture noundef %sflist) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %presets = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 3
  %0 = call ptr @memset(ptr %presets, i32 0, i32 1024)
  %fonts = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 4
  %1 = ptrtoint ptr %fonts to i32
  call void @__asan_load4_noabort(i32 %1)
  %sf.031 = load ptr, ptr %fonts, align 4
  %tobool.not32 = icmp eq ptr %sf.031, null
  br i1 %tobool.not32, label %entry.for.end12_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %2 = ptrtoint ptr %sf.033 to i32
  call void @__asan_load4_noabort(i32 %2)
  %sf.0 = load ptr, ptr %sf.033, align 4
  %tobool.not = icmp eq ptr %sf.0, null
  br i1 %tobool.not, label %for.cond.loopexit.for.end12_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.loopexit.for.end12_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %sf.033 = phi ptr [ %sf.0, %for.cond.loopexit.for.body_crit_edge ], [ %sf.031, %entry.for.body_crit_edge ]
  %zones = getelementptr inbounds %struct.snd_soundfont, ptr %sf.033, i32 0, i32 4
  %3 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %3)
  %cur.028 = load ptr, ptr %zones, align 4
  %tobool2.not29 = icmp eq ptr %cur.028, null
  br i1 %tobool2.not29, label %for.body.for.cond.loopexit_crit_edge, label %for.body3.lr.ph

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.body3.lr.ph:                                  ; preds = %for.body
  %samples.i.i = getelementptr inbounds %struct.snd_soundfont, ptr %sf.033, i32 0, i32 5
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body3.lr.ph
  %cur.030 = phi ptr [ %cur.028, %for.body3.lr.ph ], [ %cur.0, %for.inc.for.body3_crit_edge ]
  %mapped = getelementptr inbounds %struct.snd_sf_zone, ptr %cur.030, i32 0, i32 3
  %4 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mapped, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true, label %for.body3.if.end9_crit_edge

for.body3.if.end9_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %for.body3
  %sample = getelementptr inbounds %struct.snd_sf_zone, ptr %cur.030, i32 0, i32 6
  %6 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sample, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.end.i.i, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.i.i:                                       ; preds = %land.lhs.true
  %sample1.i = getelementptr inbounds %struct.snd_sf_zone, ptr %cur.030, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %sample1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sample1.i, align 2
  %10 = ptrtoint ptr %samples.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %p.09.i.i = load ptr, ptr %samples.i.i, align 4
  %tobool.not10.i.i = icmp eq ptr %p.09.i.i, null
  br i1 %tobool.not10.i.i, label %if.end.i.i.set_sample.exit.thread_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.set_sample.exit.thread_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sample.exit.thread

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %p.011.i.i = phi ptr [ %p.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %p.09.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %sample.i.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %sample.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sample.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %9)
  %cmp1.i.i = icmp eq i16 %12, %9
  br i1 %cmp1.i.i, label %set_sample.exit, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.snd_sf_sample, ptr %p.011.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %p.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %p.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.set_sample.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.set_sample.exit.thread_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sample.exit.thread

set_sample.exit.thread:                           ; preds = %for.inc.i.i.set_sample.exit.thread_crit_edge, %if.end.i.i.set_sample.exit.thread_crit_edge
  %14 = ptrtoint ptr %sample to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %sample, align 4
  br label %for.inc

set_sample.exit:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %start.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start.i, align 4
  %start3.i = getelementptr inbounds %struct.snd_sf_zone, ptr %cur.030, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %start3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start3.i, align 4
  %add.i = add i32 %18, %16
  store i32 %add.i, ptr %start3.i, align 4
  %end.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %end5.i = getelementptr inbounds %struct.snd_sf_zone, ptr %cur.030, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %end5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end5.i, align 4
  %add6.i = add i32 %22, %20
  store i32 %add6.i, ptr %end5.i, align 4
  %loopstart.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %loopstart.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %loopstart.i, align 4
  %loopstart8.i = getelementptr inbounds %struct.snd_sf_zone, ptr %cur.030, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %loopstart8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %loopstart8.i, align 4
  %add9.i = add i32 %26, %24
  store i32 %add9.i, ptr %loopstart8.i, align 4
  %loopend.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %loopend.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %loopend.i, align 4
  %loopend11.i = getelementptr inbounds %struct.snd_sf_zone, ptr %cur.030, i32 0, i32 4, i32 5
  %29 = ptrtoint ptr %loopend11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %loopend11.i, align 4
  %add12.i = add i32 %30, %28
  store i32 %add12.i, ptr %loopend11.i, align 4
  %mode_flags.i = getelementptr inbounds %struct.soundfont_sample_info, ptr %p.011.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mode_flags.i, align 2
  %sample_mode.i = getelementptr inbounds %struct.snd_sf_zone, ptr %cur.030, i32 0, i32 4, i32 23
  %33 = ptrtoint ptr %sample_mode.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %sample_mode.i, align 2
  %34 = ptrtoint ptr %sample to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %p.011.i.i, ptr %sample, align 4
  br label %if.end9

if.end9:                                          ; preds = %set_sample.exit, %land.lhs.true.if.end9_crit_edge, %for.body3.if.end9_crit_edge
  tail call fastcc void @add_preset(ptr noundef %sflist, ptr noundef nonnull %cur.030)
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %set_sample.exit.thread
  %35 = ptrtoint ptr %cur.030 to i32
  call void @__asan_load4_noabort(i32 %35)
  %cur.0 = load ptr, ptr %cur.030, align 4
  %tobool2.not = icmp eq ptr %cur.0, null
  br i1 %tobool2.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.end12:                                        ; preds = %for.cond.loopexit.for.end12_crit_edge, %entry.for.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @newsf(ptr nocapture noundef %sflist, i32 noundef %type, ptr noundef readonly %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %fonts = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 4
  %cmp7.i = icmp eq ptr %name, null
  br label %for.cond

for.cond:                                         ; preds = %is_identical_font.exit.for.cond_crit_edge, %if.then
  %sf.0.in = phi ptr [ %fonts, %if.then ], [ %sf.0, %is_identical_font.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %sf.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %sf.0 = load ptr, ptr %sf.0.in, align 4
  %tobool1.not = icmp eq ptr %sf.0, null
  br i1 %tobool1.not, label %for.cond.if.end4_crit_edge, label %for.body

for.cond.if.end4_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.body:                                         ; preds = %for.cond
  %type1.i = getelementptr inbounds %struct.snd_soundfont, ptr %sf.0, i32 0, i32 2
  %1 = ptrtoint ptr %type1.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type1.i, align 2
  %conv15.i = zext i16 %2 to i32
  %and.i = and i32 %conv15.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.is_identical_font.exit_crit_edge, label %land.lhs.true.i

for.body.is_identical_font.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_identical_font.exit

land.lhs.true.i:                                  ; preds = %for.body
  %3 = xor i32 %conv15.i, %type
  %4 = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %land.rhs.i, label %land.lhs.true.i.is_identical_font.exit_crit_edge

land.lhs.true.i.is_identical_font.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_identical_font.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  br i1 %cmp7.i, label %land.rhs.i.cleanup_crit_edge, label %lor.rhs.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %name9.i = getelementptr inbounds %struct.snd_soundfont, ptr %sf.0, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(32) %name9.i, ptr noundef nonnull dereferenceable(32) %name, i32 32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp10.i = icmp eq i32 %bcmp.i, 0
  %phi.cast.i = zext i1 %cmp10.i to i32
  br label %is_identical_font.exit

is_identical_font.exit:                           ; preds = %lor.rhs.i, %land.lhs.true.i.is_identical_font.exit_crit_edge, %for.body.is_identical_font.exit_crit_edge
  %5 = phi i32 [ 0, %land.lhs.true.i.is_identical_font.exit_crit_edge ], [ 0, %for.body.is_identical_font.exit_crit_edge ], [ %phi.cast.i, %lor.rhs.i ]
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %is_identical_font.exit.for.cond_crit_edge, label %is_identical_font.exit.cleanup_crit_edge

is_identical_font.exit.cleanup_crit_edge:         ; preds = %is_identical_font.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_identical_font.exit.for.cond_crit_edge:        ; preds = %is_identical_font.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end4:                                          ; preds = %for.cond.if.end4_crit_edge, %entry.if.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 48) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %fonts_size = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 5
  %7 = ptrtoint ptr %fonts_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fonts_size, align 4
  %conv = trunc i32 %8 to i16
  %id = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %id, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %fonts_size, align 4
  %fonts9 = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 4
  %10 = ptrtoint ptr %fonts9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fonts9, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i.i, align 8
  store ptr %call7.i.i, ptr %fonts9, align 4
  %conv12 = trunc i32 %type to i16
  %type13 = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %type13 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv12, ptr %type13, align 2
  %zones = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %zones to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %zones, align 8
  %samples = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %samples to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %samples, align 4
  %tobool14.not = icmp eq ptr %name, null
  br i1 %tobool14.not, label %if.end7.cleanup_crit_edge, label %if.then15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %name16 = getelementptr inbounds %struct.snd_soundfont, ptr %call7.i.i, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %name16, ptr %name, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %is_identical_font.exit.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end4.cleanup_crit_edge ], [ %call7.i.i, %if.then15 ], [ %call7.i.i, %if.end7.cleanup_crit_edge ], [ %sf.0, %is_identical_font.exit.cleanup_crit_edge ], [ %sf.0, %land.rhs.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_preset(ptr nocapture noundef %sflist, ptr noundef %cur) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bank = getelementptr inbounds %struct.snd_sf_zone, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bank, align 4
  %instr = getelementptr inbounds %struct.snd_sf_zone, ptr %cur, i32 0, i32 2
  %2 = ptrtoint ptr %instr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %instr, align 1
  %conv1 = zext i8 %3 to i32
  %low = getelementptr inbounds %struct.snd_sf_zone, ptr %cur, i32 0, i32 4, i32 10
  %4 = ptrtoint ptr %low to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %low, align 4
  %conv2 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %1)
  %cmp.i.i = icmp eq i8 %1, -128
  %add.i.i = add nuw nsw i32 %conv2, 128
  %index.0.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %conv1
  %rem.i.i6768 = and i32 %index.0.i.i, 255
  %arrayidx.i = getelementptr %struct.snd_sf_list, ptr %sflist, i32 0, i32 3, i32 %rem.i.i6768
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %zp.017.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not18.i = icmp eq ptr %zp.017.i, null
  br i1 %tobool.not18.i, label %entry.if.end26_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %zp.019.i = phi ptr [ %zp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %zp.017.i, %entry.for.body.i_crit_edge ]
  %instr.i = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.019.i, i32 0, i32 2
  %7 = ptrtoint ptr %instr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %instr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %3)
  %cmp1.i = icmp eq i8 %8, %3
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bank3.i = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.019.i, i32 0, i32 1
  %9 = ptrtoint ptr %bank3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bank3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %1)
  %cmp5.i = icmp eq i8 %10, %1
  br i1 %cmp5.i, label %land.lhs.true, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %next_instr.i = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.019.i, i32 0, i32 7
  %11 = ptrtoint ptr %next_instr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %zp.0.i = load ptr, ptr %next_instr.i, align 4
  %tobool.not.i = icmp eq ptr %zp.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end26_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end26_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %instr.i.le = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.019.i, i32 0, i32 2
  %bank3.i.le = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.019.i, i32 0, i32 1
  %v = getelementptr inbounds %struct.snd_sf_zone, ptr %cur, i32 0, i32 4
  %v3 = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.019.i, i32 0, i32 4
  %12 = ptrtoint ptr %v3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %v3, align 4
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %v, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp.not = icmp eq i16 %13, %15
  br i1 %cmp.not, label %land.lhs.true.if.end26_crit_edge, label %for.body.lr.ph

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

for.body.lr.ph:                                   ; preds = %land.lhs.true
  %counter10 = getelementptr inbounds %struct.snd_sf_zone, ptr %cur, i32 0, i32 5
  %16 = ptrtoint ptr %counter10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %counter10, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.077 = phi ptr [ %zp.019.i, %for.body.lr.ph ], [ %21, %for.inc.for.body_crit_edge ]
  %counter = getelementptr inbounds %struct.snd_sf_zone, ptr %p.077, i32 0, i32 5
  %18 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %counter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp11 = icmp sgt i32 %19, %17
  br i1 %cmp11, label %for.body.cleanup30_crit_edge, label %for.inc

for.body.cleanup30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

for.inc:                                          ; preds = %for.body
  %next_zone = getelementptr inbounds %struct.snd_sf_zone, ptr %p.077, i32 0, i32 8
  %20 = ptrtoint ptr %next_zone to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next_zone, align 4
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %22 = ptrtoint ptr %bank3.i.le to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bank3.i.le, align 4
  %24 = ptrtoint ptr %instr.i.le to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %instr.i.le, align 1
  %conv1.i = zext i8 %25 to i32
  %low.i = getelementptr inbounds %struct.snd_sf_zone, ptr %zp.019.i, i32 0, i32 4, i32 10
  %26 = ptrtoint ptr %low.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %low.i, align 4
  %conv2.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %23)
  %cmp.i.i56 = icmp eq i8 %23, -128
  %add.i.i57 = add nuw nsw i32 %conv2.i, 128
  %index.0.i.i58 = select i1 %cmp.i.i56, i32 %add.i.i57, i32 %conv1.i
  %rem.i2526.i = and i32 %index.0.i.i58, 255
  %arrayidx.i59 = getelementptr %struct.snd_sf_list, ptr %sflist, i32 0, i32 3, i32 %rem.i2526.i
  %28 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i59, align 4
  %tobool.not30.i = icmp eq ptr %29, null
  br i1 %tobool.not30.i, label %for.end.if.end26_crit_edge, label %for.end.while.cond.preheader.i_crit_edge

for.end.while.cond.preheader.i_crit_edge:         ; preds = %for.end
  br label %while.cond.preheader.i

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

for.cond.loopexit.i:                              ; preds = %while.cond.i
  %tobool.not.i60 = icmp eq ptr %31, null
  br i1 %tobool.not.i60, label %for.cond.loopexit.i.if.end26_crit_edge, label %for.cond.loopexit.i.while.cond.preheader.i_crit_edge

for.cond.loopexit.i.while.cond.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i

for.cond.loopexit.i.if.end26_crit_edge:           ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

while.cond.preheader.i:                           ; preds = %for.cond.loopexit.i.while.cond.preheader.i_crit_edge, %for.end.while.cond.preheader.i_crit_edge
  %p.032.i = phi ptr [ %31, %for.cond.loopexit.i.while.cond.preheader.i_crit_edge ], [ %29, %for.end.while.cond.preheader.i_crit_edge ]
  %zp.addr.031.i = phi ptr [ %zp.addr.1.i, %for.cond.loopexit.i.while.cond.preheader.i_crit_edge ], [ %zp.019.i, %for.end.while.cond.preheader.i_crit_edge ]
  %next_instr.i61 = getelementptr inbounds %struct.snd_sf_zone, ptr %p.032.i, i32 0, i32 7
  %30 = ptrtoint ptr %next_instr.i61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr.i = load ptr, ptr %next_instr.i61, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %31 = phi ptr [ %.pr.i, %while.cond.preheader.i ], [ %33, %while.body.i.while.cond.i_crit_edge ]
  %zp.addr.1.i = phi ptr [ %zp.addr.031.i, %while.cond.preheader.i ], [ %36, %while.body.i.while.cond.i_crit_edge ]
  %cmp4.i = icmp eq ptr %31, %zp.addr.1.i
  br i1 %cmp4.i, label %while.body.i, label %for.cond.loopexit.i

while.body.i:                                     ; preds = %while.cond.i
  %next_instr6.i = getelementptr inbounds %struct.snd_sf_zone, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %next_instr6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next_instr6.i, align 4
  %34 = ptrtoint ptr %next_instr.i61 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %next_instr.i61, align 4
  %next_zone.i = getelementptr inbounds %struct.snd_sf_zone, ptr %31, i32 0, i32 8
  %35 = ptrtoint ptr %next_zone.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %next_zone.i, align 4
  %cmp8.i = icmp eq ptr %36, null
  br i1 %cmp8.i, label %while.body.i.if.end26_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.if.end26_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end26:                                         ; preds = %while.body.i.if.end26_crit_edge, %for.cond.loopexit.i.if.end26_crit_edge, %for.end.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %for.inc.i.if.end26_crit_edge, %entry.if.end26_crit_edge
  %zone.1 = phi ptr [ %zp.019.i, %land.lhs.true.if.end26_crit_edge ], [ null, %entry.if.end26_crit_edge ], [ null, %for.end.if.end26_crit_edge ], [ null, %while.body.i.if.end26_crit_edge ], [ null, %for.cond.loopexit.i.if.end26_crit_edge ], [ null, %for.inc.i.if.end26_crit_edge ]
  %37 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bank, align 4
  %39 = ptrtoint ptr %instr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %instr, align 1
  %conv18 = zext i8 %40 to i32
  %41 = ptrtoint ptr %low to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %low, align 4
  %conv21 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %38)
  %cmp.i = icmp eq i8 %38, -128
  %add.i = add nuw nsw i32 %conv21, 128
  %index.0.i = select i1 %cmp.i, i32 %add.i, i32 %conv18
  %rem.i6970 = and i32 %index.0.i, 255
  %next_zone27 = getelementptr inbounds %struct.snd_sf_zone, ptr %cur, i32 0, i32 8
  %43 = ptrtoint ptr %next_zone27 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %zone.1, ptr %next_zone27, align 4
  %arrayidx = getelementptr %struct.snd_sf_list, ptr %sflist, i32 0, i32 3, i32 %rem.i6970
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %next_instr = getelementptr inbounds %struct.snd_sf_zone, ptr %cur, i32 0, i32 7
  %46 = ptrtoint ptr %next_instr to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %next_instr, align 4
  store ptr %cur, ptr %arrayidx, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %if.end26, %for.body.cleanup30_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sf_sample_new(ptr nocapture noundef %sflist, ptr nocapture noundef %sf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %samples = getelementptr inbounds %struct.snd_soundfont, ptr %sf, i32 0, i32 5
  %1 = ptrtoint ptr %samples to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %samples, align 4
  %next = getelementptr inbounds %struct.snd_sf_sample, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %next, align 8
  store ptr %call7.i.i, ptr %samples, align 4
  %sample_counter.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 7
  %4 = ptrtoint ptr %sample_counter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sample_counter.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %sample_counter.i, align 4
  %counter.i = getelementptr inbounds %struct.snd_sf_sample, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %counter.i, align 8
  %type.i = getelementptr inbounds %struct.snd_soundfont, ptr %sf, i32 0, i32 2
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %type.i, align 2
  %9 = and i16 %8, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sample_locked.i = getelementptr inbounds %struct.snd_sf_list, ptr %sflist, i32 0, i32 9
  %10 = ptrtoint ptr %sample_locked.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i, ptr %sample_locked.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/synth/emux/soundfont.c", i32 124, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/synth/emux/soundfont.c", i32 134, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/synth/emux/soundfont.c", i32 138, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/synth/emux/soundfont.c", i32 143, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/synth/emux/soundfont.c", i32 187, i32 4}
!11 = !{ptr @__ksymtab_snd_sf_linear_to_log, !12, !"__ksymtab_snd_sf_linear_to_log", i1 false, i1 false}
!12 = !{!"../sound/synth/emux/soundfont.c", i32 810, i32 1}
!13 = !{ptr @snd_sf_vol_table, !14, !"snd_sf_vol_table", i1 false, i1 false}
!14 = !{!"../sound/synth/emux/soundfont.c", i32 927, i32 5}
!15 = !{ptr @snd_sf_new.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../sound/synth/emux/soundfont.c", i32 1404, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @snd_sf_new.__key.7, !19, !"__key", i1 false, i1 false}
!19 = !{!"../sound/synth/emux/soundfont.c", i32 1405, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/synth/emux/soundfont.c", i32 528, i32 3}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @load_info._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @load_info._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/synth/emux/soundfont.c", i32 538, i32 3}
!35 = !{ptr @load_info._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @load_info._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/synth/emux/soundfont.c", i32 544, i32 3}
!39 = !{ptr @load_info._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @load_info._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @log_tbl, !42, !"log_tbl", i1 false, i1 false}
!42 = !{!"../sound/synth/emux/soundfont.c", i32 760, i32 18}
!43 = !{ptr @attack_time_tbl, !44, !"attack_time_tbl", i1 false, i1 false}
!44 = !{!"../sound/synth/emux/soundfont.c", i32 866, i32 20}
!45 = !{ptr @decay_time_tbl, !46, !"decay_time_tbl", i1 false, i1 false}
!46 = !{!"../sound/synth/emux/soundfont.c", i32 877, i32 20}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2150533858, i64 2150533883}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 3029413}
!60 = !{i64 3029610}
!61 = !{i64 2150514843}
