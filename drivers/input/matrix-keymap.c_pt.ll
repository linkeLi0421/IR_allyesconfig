; ModuleID = '/llk/IR_all_yes/drivers/input/matrix-keymap.c_pt.bc'
source_filename = "../drivers/input/matrix-keymap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+matrix_keypad_parse_properties\22, \22a\22\09"
module asm "\09.weak\09__crc_matrix_keypad_parse_properties\09\09\09\09"
module asm "\09.long\09__crc_matrix_keypad_parse_properties\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matrix_keypad_parse_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22matrix_keypad_parse_properties\22\09\09\09\09\09"
module asm "__kstrtabns_matrix_keypad_parse_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+matrix_keypad_build_keymap\22, \22a\22\09"
module asm "\09.weak\09__crc_matrix_keypad_build_keymap\09\09\09\09"
module asm "\09.long\09__crc_matrix_keypad_build_keymap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matrix_keypad_build_keymap:\09\09\09\09\09"
module asm "\09.asciz \09\22matrix_keypad_build_keymap\22\09\09\09\09\09"
module asm "__kstrtabns_matrix_keypad_build_keymap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.matrix_keymap_data = type { ptr, i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"keypad,num-rows\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keypad,num-columns\00", [45 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 61, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"number of keypad rows/columns not specified\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"matrix_keypad_parse_properties\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/input/matrix-keymap.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_properties._entry_ptr = internal global ptr @matrix_keypad_parse_properties._entry, section ".printk_index", align 4
@__kstrtab_matrix_keypad_parse_properties = external dso_local constant [0 x i8], align 1
@__kstrtabns_matrix_keypad_parse_properties = external dso_local constant [0 x i8], align 1
@__ksymtab_matrix_keypad_parse_properties = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matrix_keypad_parse_properties to i32), ptr @__kstrtab_matrix_keypad_parse_properties, ptr @__kstrtabns_matrix_keypad_parse_properties }, section "___ksymtab_gpl+matrix_keypad_parse_properties", align 4
@matrix_keypad_build_keymap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to allocate memory for keymap\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"matrix_keypad_build_keymap\00", [37 x i8] zeroinitializer }, align 32
@matrix_keypad_build_keymap._entry_ptr = internal global ptr @matrix_keypad_build_keymap._entry, section ".printk_index", align 4
@__kstrtab_matrix_keypad_build_keymap = external dso_local constant [0 x i8], align 1
@__kstrtabns_matrix_keypad_build_keymap = external dso_local constant [0 x i8], align 1
@__ksymtab_matrix_keypad_build_keymap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matrix_keypad_build_keymap to i32), ptr @__kstrtab_matrix_keypad_build_keymap, ptr @__kstrtabns_matrix_keypad_build_keymap }, section "___ksymtab+matrix_keypad_build_keymap", align 4
@__UNIQUE_ID_file223 = internal constant [47 x i8] c"matrix_keymap.file=drivers/input/matrix-keymap\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [26 x i8] c"matrix_keymap.license=GPL\00", section ".modinfo", align 1
@matrix_keypad_map_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 34, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s: invalid keymap entry 0x%x (row: %d, col: %d, rows: %d, cols: %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"matrix_keypad_map_key\00", [42 x i8] zeroinitializer }, align 32
@matrix_keypad_map_key._entry_ptr = internal global ptr @matrix_keypad_map_key._entry, section ".printk_index", align 4
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"linux,keymap\00", [19 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_keymap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 87, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing or malformed property %s: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"matrix_keypad_parse_keymap\00", [37 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_keymap._entry_ptr = internal global ptr @matrix_keypad_parse_keymap._entry, section ".printk_index", align 4
@matrix_keypad_parse_keymap._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 93, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s size overflow (%d vs max %u)\0A\00", [63 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_keymap._entry_ptr.16 = internal global ptr @matrix_keypad_parse_keymap._entry.14, section ".printk_index", align 4
@matrix_keypad_parse_keymap._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.4, i32 104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read %s property: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@matrix_keypad_parse_keymap._entry_ptr.19 = internal global ptr @matrix_keypad_parse_keymap._entry.17, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 57, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 58, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 61, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 169, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 32, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 82, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 86, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 92, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [33 x i8] c"../drivers/input/matrix-keymap.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 103, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__ksymtab_matrix_keypad_build_keymap, ptr @__ksymtab_matrix_keypad_parse_properties, ptr @matrix_keypad_build_keymap._entry, ptr @matrix_keypad_build_keymap._entry_ptr, ptr @matrix_keypad_map_key._entry, ptr @matrix_keypad_map_key._entry_ptr, ptr @matrix_keypad_parse_keymap._entry, ptr @matrix_keypad_parse_keymap._entry.14, ptr @matrix_keypad_parse_keymap._entry.17, ptr @matrix_keypad_parse_keymap._entry_ptr, ptr @matrix_keypad_parse_keymap._entry_ptr.16, ptr @matrix_keypad_parse_keymap._entry_ptr.19, ptr @matrix_keypad_parse_properties._entry, ptr @matrix_keypad_parse_properties._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_parse_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_build_keymap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_map_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_parse_keymap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_parse_keymap._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrix_keypad_parse_keymap._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @matrix_keypad_parse_properties(ptr noundef %dev, ptr noundef %rows, ptr noundef %cols) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cols to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cols, align 4
  %1 = ptrtoint ptr %rows to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rows, align 4
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %rows, i32 noundef 1) #5
  %call.i9 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %cols, i32 noundef 1) #5
  %2 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @matrix_keypad_build_keymap(ptr noundef readonly %keymap_data, ptr noundef %keymap_name, i32 noundef %rows, i32 noundef %cols, ptr noundef %keymap, ptr nocapture noundef %input_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cols)
  %cmp.i = icmp eq i32 %cols, 0
  br i1 %cmp.i, label %entry.get_count_order.exit_crit_edge, label %if.end.i

entry.get_count_order.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_count_order.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i = add i32 %cols, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #5, !range !53
  %sub.i.i = sub nuw nsw i32 32, %0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i, %entry.get_count_order.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i.i, %if.end.i ], [ -1, %entry.get_count_order.exit_crit_edge ]
  %shl = shl i32 %rows, %retval.0.i
  %parent = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !54

do.end:                                           ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 161, i32 noundef 9, ptr noundef null) #5
  br label %cleanup50

if.end23:                                         ; preds = %get_count_order.exit
  %tobool24.not = icmp eq ptr %keymap, null
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end37_crit_edge

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then25:                                        ; preds = %if.end23
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl, i32 2) #5
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.then25.do.end33_crit_edge, label %devm_kcalloc.exit, !prof !54

if.then25.do.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

devm_kcalloc.exit:                                ; preds = %if.then25
  %5 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %2, i32 noundef %5, i32 noundef 3520) #5
  %tobool29.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool29.not, label %devm_kcalloc.exit.do.end33_crit_edge, label %devm_kcalloc.exit.if.end37_crit_edge

devm_kcalloc.exit.if.end37_crit_edge:             ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

devm_kcalloc.exit.do.end33_crit_edge:             ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

do.end33:                                         ; preds = %devm_kcalloc.exit.do.end33_crit_edge, %if.then25.do.end33_crit_edge
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.7) #8
  br label %cleanup50

if.end37:                                         ; preds = %devm_kcalloc.exit.if.end37_crit_edge, %if.end23.if.end37_crit_edge
  %keymap.addr.0 = phi ptr [ %keymap, %if.end23.if.end37_crit_edge ], [ %call5.i.i, %devm_kcalloc.exit.if.end37_crit_edge ]
  %keycode = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 17
  %8 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %keymap.addr.0, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 16
  %9 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 15
  %10 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl, ptr %keycodemax, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 5
  %11 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %evbit, align 4
  %or.i = or i32 %12, 2
  store i32 %or.i, ptr %evbit, align 4
  %tobool38.not = icmp eq ptr %keymap_data, null
  br i1 %tobool38.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end37
  %keymap_size = getelementptr inbounds %struct.matrix_keymap_data, ptr %keymap_data, i32 0, i32 1
  %13 = ptrtoint ptr %keymap_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %keymap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp100.not = icmp eq i32 %14, 0
  br i1 %cmp100.not, label %for.cond.preheader.if.end48_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end48_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %keymap_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %keymap_data, align 4
  %arrayidx = getelementptr i32, ptr %16, i32 %i.0101
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %shr.i = lshr i32 %18, 24
  %shr1.i = lshr i32 %18, 16
  %and2.i = and i32 %shr1.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %rows)
  %cmp.not.i = icmp ult i32 %shr.i, %rows
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %cols)
  %cmp5.not.i = icmp ult i32 %and2.i, %cols
  %or.cond.i = and i1 %cmp.not.i, %cmp5.not.i
  br i1 %or.cond.i, label %for.inc, label %matrix_keypad_map_key.exit

matrix_keypad_map_key.exit:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %18, i32 noundef %shr.i, i32 noundef %and2.i, i32 noundef %rows, i32 noundef %cols) #8
  br label %cleanup50

for.inc:                                          ; preds = %for.body
  %conv.i = trunc i32 %18 to i16
  %21 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %keycode, align 4
  %shl.i = shl i32 %shr.i, %retval.0.i
  %add.i = add i32 %shl.i, %and2.i
  %arrayidx.i = getelementptr i16, ptr %22, i32 %add.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %arrayidx.i, align 2
  %rem.i.i = and i32 %18, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %conv7.i = lshr i32 %18, 5
  %div2.i.i = and i32 %conv7.i, 2047
  %add.ptr.i.i = getelementptr i32, ptr %keybit.i, i32 %div2.i.i
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %25, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %inc = add nuw i32 %i.0101, 1
  %26 = ptrtoint ptr %keymap_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %keymap_size, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end48_crit_edge

for.inc.if.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.else:                                          ; preds = %if.end37
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 8
  br i1 %cmp.i, label %if.else.get_count_order.exit.i_crit_edge, label %if.end.i.i79

if.else.get_count_order.exit.i_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_count_order.exit.i

if.end.i.i79:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i.i = add i32 %cols, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 0
  %30 = tail call i32 @llvm.ctlz.i32(i32 %dec.i.i, i1 true) #5, !range !53
  %sub.i.i.i = sub nuw nsw i32 32, %30
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  br label %get_count_order.exit.i

get_count_order.exit.i:                           ; preds = %if.end.i.i79, %if.else.get_count_order.exit.i_crit_edge
  %retval.0.i.i80 = phi i32 [ %cond.i.i.i, %if.end.i.i79 ], [ -1, %if.else.get_count_order.exit.i_crit_edge ]
  %shl.i81 = shl i32 %rows, %retval.0.i.i80
  %tobool.not.i = icmp eq ptr %keymap_name, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr @.str.11, ptr %keymap_name
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %29, ptr noundef %spec.store.select.i, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i82 = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i82, label %do.end.i84, label %if.end6.i

do.end.i84:                                       ; preds = %get_count_order.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.12, ptr noundef %spec.store.select.i, i32 noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.not.i83 = icmp eq i32 %call.i.i, 0
  %spec.select = select i1 %cmp5.not.i83, i32 -22, i32 %call.i.i
  br label %cleanup50

if.end6.i:                                        ; preds = %get_count_order.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %shl.i81)
  %cmp7.i = icmp ugt i32 %call.i.i, %shl.i81
  br i1 %cmp7.i, label %do.end11.i, label %if.end12.i

do.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.15, ptr noundef %spec.store.select.i, i32 noundef %call.i.i, i32 noundef %shl.i81) #8
  br label %cleanup50

if.end12.i:                                       ; preds = %if.end6.i
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i.i, i32 4) #5
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %if.end12.i.cleanup50_crit_edge, label %if.end7.i.i, !prof !54

if.end12.i.cleanup50_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50

if.end7.i.i:                                      ; preds = %if.end12.i
  %33 = extractvalue { i32, i1 } %31, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #9
  %tobool14.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool14.not.i, label %if.end7.i.i.cleanup50_crit_edge, label %if.end16.i

if.end7.i.i.cleanup50_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50

if.end16.i:                                       ; preds = %if.end7.i.i
  %call17.i = tail call i32 @device_property_read_u32_array(ptr noundef %29, ptr noundef %spec.store.select.i, ptr noundef nonnull %call8.i.i, i32 noundef %call.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %for.body.lr.ph.i, label %do.end22.i

for.body.lr.ph.i:                                 ; preds = %if.end16.i
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 6
  br label %for.body.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.18, ptr noundef %spec.store.select.i, i32 noundef %call17.i) #8
  br label %matrix_keypad_parse_keymap.exit.thread93

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i85 = getelementptr i32, ptr %call8.i.i, i32 %i.074.i
  %34 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i85, align 4
  %shr.i.i = lshr i32 %35, 24
  %shr1.i.i = lshr i32 %35, 16
  %and2.i.i = and i32 %shr1.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %rows)
  %cmp.not.i.i = icmp ult i32 %shr.i.i, %rows
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i.i, i32 %cols)
  %cmp5.not.i.i = icmp ult i32 %and2.i.i, %cols
  %or.cond.i.i = and i1 %cmp.not.i.i, %cmp5.not.i.i
  br i1 %or.cond.i.i, label %for.inc.i, label %matrix_keypad_map_key.exit.i

matrix_keypad_map_key.exit.i:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %35, i32 noundef %shr.i.i, i32 noundef %and2.i.i, i32 noundef %rows, i32 noundef %cols) #8
  br label %matrix_keypad_parse_keymap.exit.thread93

for.inc.i:                                        ; preds = %for.body.i
  %conv.i.i = trunc i32 %35 to i16
  %38 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %keycode, align 4
  %shl.i.i86 = shl i32 %shr.i.i, %retval.0.i.i80
  %add.i.i = add i32 %shl.i.i86, %and2.i.i
  %arrayidx.i.i = getelementptr i16, ptr %39, i32 %add.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i.i, ptr %arrayidx.i.i, align 2
  %rem.i.i.i = and i32 %35, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %conv7.i.i = lshr i32 %35, 5
  %div2.i.i.i = and i32 %conv7.i.i, 2047
  %add.ptr.i.i.i = getelementptr i32, ptr %keybit.i.i, i32 %div2.i.i.i
  %41 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %42, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %inc.i = add nuw nsw i32 %i.074.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i.i
  br i1 %exitcond.not.i, label %matrix_keypad_parse_keymap.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

matrix_keypad_parse_keymap.exit.thread93:         ; preds = %matrix_keypad_map_key.exit.i, %do.end22.i
  %retval2.0.i.ph = phi i32 [ -22, %matrix_keypad_map_key.exit.i ], [ %call17.i, %do.end22.i ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #5
  br label %cleanup50

matrix_keypad_parse_keymap.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #5
  br label %if.end48

if.end48:                                         ; preds = %matrix_keypad_parse_keymap.exit, %for.inc.if.end48_crit_edge, %for.cond.preheader.if.end48_crit_edge
  %keybit = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 6
  %43 = ptrtoint ptr %keybit to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %keybit, align 4
  %and.i = and i32 %44, -2
  store i32 %and.i, ptr %keybit, align 4
  br label %cleanup50

cleanup50:                                        ; preds = %if.end48, %matrix_keypad_parse_keymap.exit.thread93, %if.end7.i.i.cleanup50_crit_edge, %if.end12.i.cleanup50_crit_edge, %do.end11.i, %do.end.i84, %matrix_keypad_map_key.exit, %do.end33, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ -22, %matrix_keypad_map_key.exit ], [ 0, %if.end48 ], [ -12, %do.end33 ], [ %retval2.0.i.ph, %matrix_keypad_parse_keymap.exit.thread93 ], [ -12, %if.end12.i.cleanup50_crit_edge ], [ -12, %if.end7.i.i.cleanup50_crit_edge ], [ -22, %do.end11.i ], [ %spec.select, %do.end.i84 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !21, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/matrix-keymap.c", i32 57, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/input/matrix-keymap.c", i32 58, i32 32}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/matrix-keymap.c", i32 61, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @matrix_keypad_parse_properties._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @matrix_keypad_parse_properties._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_matrix_keypad_parse_properties, !13, !"__ksymtab_matrix_keypad_parse_properties", i1 false, i1 false}
!13 = !{!"../drivers/input/matrix-keymap.c", i32 67, i32 1}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/matrix-keymap.c", i32 169, i32 4}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @matrix_keypad_build_keymap._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @matrix_keypad_build_keymap._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_matrix_keypad_build_keymap, !20, !"__ksymtab_matrix_keypad_build_keymap", i1 false, i1 false}
!20 = !{!"../drivers/input/matrix-keymap.c", i32 200, i32 1}
!21 = !{ptr @__UNIQUE_ID_file223, !22, !"__UNIQUE_ID_file223", i1 false, i1 false}
!22 = !{!"../drivers/input/matrix-keymap.c", i32 202, i32 1}
!23 = !{ptr @__UNIQUE_ID_license224, !22, !"__UNIQUE_ID_license224", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/matrix-keymap.c", i32 32, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @matrix_keypad_map_key._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @matrix_keypad_map_key._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/matrix-keymap.c", i32 82, i32 14}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/matrix-keymap.c", i32 86, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @matrix_keypad_parse_keymap._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @matrix_keypad_parse_keymap._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/matrix-keymap.c", i32 92, i32 3}
!38 = !{ptr @matrix_keypad_parse_keymap._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @matrix_keypad_parse_keymap._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/matrix-keymap.c", i32 103, i32 3}
!42 = !{ptr @matrix_keypad_parse_keymap._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @matrix_keypad_parse_keymap._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i32 0, i32 33}
!54 = !{!"branch_weights", i32 1, i32 2000}
