; ModuleID = '/llk/IR_all_yes/drivers/soundwire/sysfs_slave_dpn.c_pt.bc'
source_filename = "../drivers/soundwire/sysfs_slave_dpn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dpn_attribute = type { %struct.device_attribute, i32, i32, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sdw_dpn_prop = type { i32, i32, i32, i32, ptr, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@add_all_attributes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 259, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mismatch in attributes, allocated %d got %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"add_all_attributes\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/soundwire/sysfs_slave_dpn.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@add_all_attributes._entry_ptr = internal global ptr @add_all_attributes._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dp%d_%s\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sink\00", [27 x i8] zeroinitializer }, align 32
@max_word_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max_word\00", [23 x i8] zeroinitializer }, align 32
@min_word_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"min_word\00", [23 x i8] zeroinitializer }, align 32
@words_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"words\00", [26 x i8] zeroinitializer }, align 32
@type_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@max_grouping_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_grouping\00", [19 x i8] zeroinitializer }, align 32
@simple_ch_prep_sm_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"simple_ch_prep_sm\00", [46 x i8] zeroinitializer }, align 32
@ch_prep_timeout_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ch_prep_timeout\00", [16 x i8] zeroinitializer }, align 32
@imp_def_interrupts_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imp_def_interrupts\00", [45 x i8] zeroinitializer }, align 32
@min_ch_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"min_ch\00", [25 x i8] zeroinitializer }, align 32
@max_ch_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"max_ch\00", [25 x i8] zeroinitializer }, align 32
@channels_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channels\00", [23 x i8] zeroinitializer }, align 32
@ch_combinations_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ch_combinations\00", [16 x i8] zeroinitializer }, align 32
@max_async_buffer_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_async_buffer\00", [47 x i8] zeroinitializer }, align 32
@block_pack_mode_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"block_pack_mode\00", [16 x i8] zeroinitializer }, align 32
@port_encoding_attribute_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port_encoding\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 182, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 217, i32 16 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 258, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 268, i32 52 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 269, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 269, i32 24 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 99, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 100, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 163, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 101, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 102, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 103, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 104, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 98, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 106, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 105, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 165, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 164, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 107, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 108, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [39 x i8] c"../drivers/soundwire/sysfs_slave_dpn.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 109, i32 1 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @add_all_attributes._entry, ptr @add_all_attributes._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @max_word_attribute_alloc.__key, ptr @.str.10, ptr @min_word_attribute_alloc.__key, ptr @.str.11, ptr @words_attribute_alloc.__key, ptr @.str.12, ptr @type_attribute_alloc.__key, ptr @.str.14, ptr @max_grouping_attribute_alloc.__key, ptr @.str.15, ptr @simple_ch_prep_sm_attribute_alloc.__key, ptr @.str.16, ptr @ch_prep_timeout_attribute_alloc.__key, ptr @.str.17, ptr @imp_def_interrupts_attribute_alloc.__key, ptr @.str.18, ptr @min_ch_attribute_alloc.__key, ptr @.str.19, ptr @max_ch_attribute_alloc.__key, ptr @.str.20, ptr @channels_attribute_alloc.__key, ptr @.str.21, ptr @ch_combinations_attribute_alloc.__key, ptr @.str.22, ptr @max_async_buffer_attribute_alloc.__key, ptr @.str.23, ptr @block_pack_mode_attribute_alloc.__key, ptr @.str.24, ptr @port_encoding_attribute_alloc.__key, ptr @.str.25], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_all_attributes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_word_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_word_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @words_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_grouping_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_ch_prep_sm_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_prep_timeout_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_def_interrupts_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_ch_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_ch_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channels_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_combinations_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_async_buffer_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_pack_mode_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_encoding_attribute_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_slave_sysfs_dpn_init(ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #5
  %source_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 14
  %0 = ptrtoint ptr %source_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %source_ports, align 4
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mask, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp32 = icmp slt i32 %call, 32
  br i1 %cmp32, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ %call, %for.body.lr.ph ], [ %call3, %for.inc.for.body_crit_edge ]
  %call1 = call fastcc i32 @add_all_attributes(ptr noundef %dev, i32 noundef %i.033, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %add = add nsw i32 %i.033, 1
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 32, i32 noundef %add) #5
  %cmp = icmp slt i32 %call3, 32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %sink_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 15
  %3 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sink_ports, align 4
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mask, align 4
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 32, i32 noundef 0) #5
  %dev9 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5)
  %cmp734 = icmp slt i32 %call5, 32
  br i1 %cmp734, label %for.end.for.body8_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.for.body8_crit_edge:                      ; preds = %for.end
  br label %for.body8

for.body8:                                        ; preds = %for.inc14.for.body8_crit_edge, %for.end.for.body8_crit_edge
  %i.135 = phi i32 [ %call16, %for.inc14.for.body8_crit_edge ], [ %call5, %for.end.for.body8_crit_edge ]
  %call10 = call fastcc i32 @add_all_attributes(ptr noundef %dev9, i32 noundef %i.135, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %for.body8.cleanup_crit_edge, label %for.inc14

for.body8.cleanup_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc14:                                        ; preds = %for.body8
  %add15 = add nsw i32 %i.135, 1
  %call16 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 32, i32 noundef %add15) #5
  %cmp7 = icmp slt i32 %call16, 32
  br i1 %cmp7, label %for.inc14.for.body8_crit_edge, label %for.inc14.cleanup_crit_edge

for.inc14.cleanup_crit_edge:                      ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc14.for.body8_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

cleanup:                                          ; preds = %for.inc14.cleanup_crit_edge, %for.body8.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %call10, %for.body8.cleanup_crit_edge ], [ 0, %for.inc14.cleanup_crit_edge ], [ %call1, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_all_attributes(ptr noundef %dev, i32 noundef %N, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %N1.i = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %N1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %N, ptr %N1.i, align 4
  %dir2.i = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %dir2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dir, ptr %dir2.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %call.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @max_word_attribute_alloc.__key, ptr %key.i, align 4
  %format_string3.i = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %format_string3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %format_string3.i, align 4
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.10, ptr %call.i.i, align 4
  %mode.i = getelementptr inbounds %struct.attribute, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 292, ptr %mode.i, align 4
  %show.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @max_word_show, ptr %show.i, align 4
  %7 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %call5.i.i, align 4
  %call.i.i224 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not.i225 = icmp eq ptr %call.i.i224, null
  br i1 %tobool.not.i225, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %arrayidx5 = getelementptr ptr, ptr %call5.i.i, i32 1
  %N1.i226 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i224, i32 0, i32 1
  %8 = ptrtoint ptr %N1.i226 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %N, ptr %N1.i226, align 4
  %dir2.i227 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i224, i32 0, i32 2
  %9 = ptrtoint ptr %dir2.i227 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dir, ptr %dir2.i227, align 4
  %key.i228 = getelementptr inbounds %struct.attribute, ptr %call.i.i224, i32 0, i32 3
  %10 = ptrtoint ptr %key.i228 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @min_word_attribute_alloc.__key, ptr %key.i228, align 4
  %format_string3.i229 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i224, i32 0, i32 3
  %11 = ptrtoint ptr %format_string3.i229 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str, ptr %format_string3.i229, align 4
  %12 = ptrtoint ptr %call.i.i224 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.11, ptr %call.i.i224, align 4
  %mode.i230 = getelementptr inbounds %struct.attribute, ptr %call.i.i224, i32 0, i32 1
  %13 = ptrtoint ptr %mode.i230 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 292, ptr %mode.i230, align 4
  %show.i231 = getelementptr inbounds %struct.device_attribute, ptr %call.i.i224, i32 0, i32 1
  %14 = ptrtoint ptr %show.i231 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @min_word_show, ptr %show.i231, align 4
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i224, ptr %arrayidx5, align 4
  %call.i.i234 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not.i235 = icmp eq ptr %call.i.i234, null
  br i1 %tobool.not.i235, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %arrayidx11 = getelementptr ptr, ptr %call5.i.i, i32 2
  %N1.i236 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i234, i32 0, i32 1
  %16 = ptrtoint ptr %N1.i236 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %N, ptr %N1.i236, align 4
  %dir2.i237 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i234, i32 0, i32 2
  %17 = ptrtoint ptr %dir2.i237 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dir, ptr %dir2.i237, align 4
  %key.i238 = getelementptr inbounds %struct.attribute, ptr %call.i.i234, i32 0, i32 3
  %18 = ptrtoint ptr %key.i238 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @words_attribute_alloc.__key, ptr %key.i238, align 4
  %format_string3.i239 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i234, i32 0, i32 3
  %19 = ptrtoint ptr %format_string3.i239 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str, ptr %format_string3.i239, align 4
  %20 = ptrtoint ptr %call.i.i234 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.12, ptr %call.i.i234, align 4
  %mode.i240 = getelementptr inbounds %struct.attribute, ptr %call.i.i234, i32 0, i32 1
  %21 = ptrtoint ptr %mode.i240 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 292, ptr %mode.i240, align 4
  %show.i241 = getelementptr inbounds %struct.device_attribute, ptr %call.i.i234, i32 0, i32 1
  %22 = ptrtoint ptr %show.i241 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @words_show, ptr %show.i241, align 4
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i234, ptr %arrayidx11, align 4
  %call.i.i244 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not.i245 = icmp eq ptr %call.i.i244, null
  br i1 %tobool.not.i245, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %arrayidx17 = getelementptr ptr, ptr %call5.i.i, i32 3
  %N1.i246 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i244, i32 0, i32 1
  %24 = ptrtoint ptr %N1.i246 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %N, ptr %N1.i246, align 4
  %dir2.i247 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i244, i32 0, i32 2
  %25 = ptrtoint ptr %dir2.i247 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dir, ptr %dir2.i247, align 4
  %key.i248 = getelementptr inbounds %struct.attribute, ptr %call.i.i244, i32 0, i32 3
  %26 = ptrtoint ptr %key.i248 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @type_attribute_alloc.__key, ptr %key.i248, align 4
  %format_string3.i249 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i244, i32 0, i32 3
  %27 = ptrtoint ptr %format_string3.i249 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str, ptr %format_string3.i249, align 4
  %28 = ptrtoint ptr %call.i.i244 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.14, ptr %call.i.i244, align 4
  %mode.i250 = getelementptr inbounds %struct.attribute, ptr %call.i.i244, i32 0, i32 1
  %29 = ptrtoint ptr %mode.i250 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 292, ptr %mode.i250, align 4
  %show.i251 = getelementptr inbounds %struct.device_attribute, ptr %call.i.i244, i32 0, i32 1
  %30 = ptrtoint ptr %show.i251 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @type_show, ptr %show.i251, align 4
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i244, ptr %arrayidx17, align 4
  %call.i.i254 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not.i255 = icmp eq ptr %call.i.i254, null
  br i1 %tobool.not.i255, label %if.end21.cleanup_crit_edge, label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %arrayidx23 = getelementptr ptr, ptr %call5.i.i, i32 4
  %N1.i256 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i254, i32 0, i32 1
  %32 = ptrtoint ptr %N1.i256 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %N, ptr %N1.i256, align 4
  %dir2.i257 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i254, i32 0, i32 2
  %33 = ptrtoint ptr %dir2.i257 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dir, ptr %dir2.i257, align 4
  %key.i258 = getelementptr inbounds %struct.attribute, ptr %call.i.i254, i32 0, i32 3
  %34 = ptrtoint ptr %key.i258 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @max_grouping_attribute_alloc.__key, ptr %key.i258, align 4
  %format_string3.i259 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i254, i32 0, i32 3
  %35 = ptrtoint ptr %format_string3.i259 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str, ptr %format_string3.i259, align 4
  %36 = ptrtoint ptr %call.i.i254 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.15, ptr %call.i.i254, align 4
  %mode.i260 = getelementptr inbounds %struct.attribute, ptr %call.i.i254, i32 0, i32 1
  %37 = ptrtoint ptr %mode.i260 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 292, ptr %mode.i260, align 4
  %show.i261 = getelementptr inbounds %struct.device_attribute, ptr %call.i.i254, i32 0, i32 1
  %38 = ptrtoint ptr %show.i261 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @max_grouping_show, ptr %show.i261, align 4
  %39 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i254, ptr %arrayidx23, align 4
  %call.i.i264 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not.i265 = icmp eq ptr %call.i.i264, null
  br i1 %tobool.not.i265, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %arrayidx29 = getelementptr ptr, ptr %call5.i.i, i32 5
  %N1.i266 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i264, i32 0, i32 1
  %40 = ptrtoint ptr %N1.i266 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %N, ptr %N1.i266, align 4
  %dir2.i267 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i264, i32 0, i32 2
  %41 = ptrtoint ptr %dir2.i267 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %dir, ptr %dir2.i267, align 4
  %key.i268 = getelementptr inbounds %struct.attribute, ptr %call.i.i264, i32 0, i32 3
  %42 = ptrtoint ptr %key.i268 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @simple_ch_prep_sm_attribute_alloc.__key, ptr %key.i268, align 4
  %format_string3.i269 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i264, i32 0, i32 3
  %43 = ptrtoint ptr %format_string3.i269 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str, ptr %format_string3.i269, align 4
  %44 = ptrtoint ptr %call.i.i264 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.16, ptr %call.i.i264, align 4
  %mode.i270 = getelementptr inbounds %struct.attribute, ptr %call.i.i264, i32 0, i32 1
  %45 = ptrtoint ptr %mode.i270 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 292, ptr %mode.i270, align 4
  %show.i271 = getelementptr inbounds %struct.device_attribute, ptr %call.i.i264, i32 0, i32 1
  %46 = ptrtoint ptr %show.i271 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @simple_ch_prep_sm_show, ptr %show.i271, align 4
  %47 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i264, ptr %arrayidx29, align 4
  %call.i.i274 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not.i275 = icmp eq ptr %call.i.i274, null
  br i1 %tobool.not.i275, label %if.end33.cleanup_crit_edge, label %if.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %arrayidx35 = getelementptr ptr, ptr %call5.i.i, i32 6
  %N1.i276 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i274, i32 0, i32 1
  %48 = ptrtoint ptr %N1.i276 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %N, ptr %N1.i276, align 4
  %dir2.i277 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i274, i32 0, i32 2
  %49 = ptrtoint ptr %dir2.i277 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dir, ptr %dir2.i277, align 4
  %key.i278 = getelementptr inbounds %struct.attribute, ptr %call.i.i274, i32 0, i32 3
  %50 = ptrtoint ptr %key.i278 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ch_prep_timeout_attribute_alloc.__key, ptr %key.i278, align 4
  %format_string3.i279 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i274, i32 0, i32 3
  %51 = ptrtoint ptr %format_string3.i279 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str, ptr %format_string3.i279, align 4
  %52 = ptrtoint ptr %call.i.i274 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.17, ptr %call.i.i274, align 4
  %mode.i280 = getelementptr inbounds %struct.attribute, ptr %call.i.i274, i32 0, i32 1
  %53 = ptrtoint ptr %mode.i280 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 292, ptr %mode.i280, align 4
  %show.i281 = getelementptr inbounds %struct.device_attribute, ptr %call.i.i274, i32 0, i32 1
  %54 = ptrtoint ptr %show.i281 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ch_prep_timeout_show, ptr %show.i281, align 4
  %55 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i274, ptr %arrayidx35, align 4
  %call.i.i284 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not.i285 = icmp eq ptr %call.i.i284, null
  br i1 %tobool.not.i285, label %if.end39.cleanup_crit_edge, label %if.end45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %arrayidx41 = getelementptr ptr, ptr %call5.i.i, i32 7
  %N1.i286 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i284, i32 0, i32 1
  %56 = ptrtoint ptr %N1.i286 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %N, ptr %N1.i286, align 4
  %dir2.i287 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i284, i32 0, i32 2
  %57 = ptrtoint ptr %dir2.i287 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %dir, ptr %dir2.i287, align 4
  %key.i288 = getelementptr inbounds %struct.attribute, ptr %call.i.i284, i32 0, i32 3
  %58 = ptrtoint ptr %key.i288 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @imp_def_interrupts_attribute_alloc.__key, ptr %key.i288, align 4
  %format_string3.i289 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i.i284, i32 0, i32 3
  %59 = ptrtoint ptr %format_string3.i289 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.1, ptr %format_string3.i289, align 4
  %60 = ptrtoint ptr %call.i.i284 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.18, ptr %call.i.i284, align 4
  %mode.i290 = getelementptr inbounds %struct.attribute, ptr %call.i.i284, i32 0, i32 1
  %61 = ptrtoint ptr %mode.i290 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 292, ptr %mode.i290, align 4
  %show.i291 = getelementptr inbounds %struct.device_attribute, ptr %call.i.i284, i32 0, i32 1
  %62 = ptrtoint ptr %show.i291 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @imp_def_interrupts_show, ptr %show.i291, align 4
  %63 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i284, ptr %arrayidx41, align 4
  %arrayidx47 = getelementptr ptr, ptr %call5.i.i, i32 8
  %call48 = tail call fastcc i32 @min_ch_attribute_alloc(ptr noundef %dev, ptr noundef %arrayidx47, i32 noundef %N, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end45.cleanup_crit_edge, label %if.end51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  %arrayidx53 = getelementptr ptr, ptr %call5.i.i, i32 9
  %call54 = tail call fastcc i32 @max_ch_attribute_alloc(ptr noundef %dev, ptr noundef %arrayidx53, i32 noundef %N, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end51.cleanup_crit_edge, label %if.end57

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  %arrayidx59 = getelementptr ptr, ptr %call5.i.i, i32 10
  %call60 = tail call fastcc i32 @channels_attribute_alloc(ptr noundef %dev, ptr noundef %arrayidx59, i32 noundef %N, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end57.cleanup_crit_edge, label %if.end63

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end63:                                         ; preds = %if.end57
  %arrayidx65 = getelementptr ptr, ptr %call5.i.i, i32 11
  %call66 = tail call fastcc i32 @ch_combinations_attribute_alloc(ptr noundef %dev, ptr noundef %arrayidx65, i32 noundef %N, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end63.cleanup_crit_edge, label %if.end69

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end69:                                         ; preds = %if.end63
  %arrayidx71 = getelementptr ptr, ptr %call5.i.i, i32 12
  %call72 = tail call fastcc i32 @max_async_buffer_attribute_alloc(ptr noundef %dev, ptr noundef %arrayidx71, i32 noundef %N, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end69.cleanup_crit_edge, label %if.end75

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end75:                                         ; preds = %if.end69
  %arrayidx77 = getelementptr ptr, ptr %call5.i.i, i32 13
  %call78 = tail call fastcc i32 @block_pack_mode_attribute_alloc(ptr noundef %dev, ptr noundef %arrayidx77, i32 noundef %N, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end75.cleanup_crit_edge, label %if.end81

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end81:                                         ; preds = %if.end75
  %arrayidx83 = getelementptr ptr, ptr %call5.i.i, i32 14
  %call84 = tail call fastcc i32 @port_encoding_attribute_alloc(ptr noundef %dev, ptr noundef %arrayidx83, i32 noundef %N, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end81.cleanup_crit_edge, label %if.end90

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end90:                                         ; preds = %if.end81
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool92.not = icmp eq ptr %call.i, null
  br i1 %tobool92.not, label %if.end90.cleanup_crit_edge, label %if.end94

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end94:                                         ; preds = %if.end90
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %call.i, i32 0, i32 3
  %64 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call5.i.i, ptr %attrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool95.not = icmp eq i32 %dir, 0
  %cond = select i1 %tobool95.not, ptr @.str.9, ptr @.str.8
  %call96 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %N, ptr noundef nonnull %cond) #5
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call96, ptr %call.i, align 4
  %tobool98.not = icmp eq ptr %call96, null
  br i1 %tobool98.not, label %if.end94.cleanup_crit_edge, label %if.end100

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end100:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  %call101 = tail call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  %66 = tail call i32 @llvm.smin.i32(i32 %call101, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %if.end94.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call48, %if.end45.cleanup_crit_edge ], [ %call54, %if.end51.cleanup_crit_edge ], [ %call60, %if.end57.cleanup_crit_edge ], [ %call66, %if.end63.cleanup_crit_edge ], [ %call72, %if.end69.cleanup_crit_edge ], [ %call78, %if.end75.cleanup_crit_edge ], [ %call84, %if.end81.cleanup_crit_edge ], [ -12, %if.end90.cleanup_crit_edge ], [ -12, %if.end94.cleanup_crit_edge ], [ %66, %if.end100 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ], [ -12, %if.end33.cleanup_crit_edge ], [ -12, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @min_ch_attribute_alloc(ptr noundef %dev, ptr nocapture noundef writeonly %res, i32 noundef %N, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %N1 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %N, ptr %N1, align 4
  %dir2 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dir2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dir, ptr %dir2, align 4
  %key = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @min_ch_attribute_alloc.__key, ptr %key, align 4
  %format_string3 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %format_string3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %format_string3, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.19, ptr %call.i, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 292, ptr %mode, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @min_ch_show, ptr %show, align 4
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max_ch_attribute_alloc(ptr noundef %dev, ptr nocapture noundef writeonly %res, i32 noundef %N, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %N1 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %N, ptr %N1, align 4
  %dir2 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dir2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dir, ptr %dir2, align 4
  %key = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @max_ch_attribute_alloc.__key, ptr %key, align 4
  %format_string3 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %format_string3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %format_string3, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.20, ptr %call.i, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 292, ptr %mode, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @max_ch_show, ptr %show, align 4
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @channels_attribute_alloc(ptr noundef %dev, ptr nocapture noundef writeonly %res, i32 noundef %N, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %N1 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %N, ptr %N1, align 4
  %dir2 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dir2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dir, ptr %dir2, align 4
  %key = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @channels_attribute_alloc.__key, ptr %key, align 4
  %format_string3 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %format_string3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %format_string3, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.21, ptr %call.i, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 292, ptr %mode, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @channels_show, ptr %show, align 4
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch_combinations_attribute_alloc(ptr noundef %dev, ptr nocapture noundef writeonly %res, i32 noundef %N, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %N1 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %N, ptr %N1, align 4
  %dir2 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dir2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dir, ptr %dir2, align 4
  %key = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ch_combinations_attribute_alloc.__key, ptr %key, align 4
  %format_string3 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %format_string3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %format_string3, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.22, ptr %call.i, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 292, ptr %mode, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ch_combinations_show, ptr %show, align 4
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max_async_buffer_attribute_alloc(ptr noundef %dev, ptr nocapture noundef writeonly %res, i32 noundef %N, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %N1 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %N, ptr %N1, align 4
  %dir2 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dir2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dir, ptr %dir2, align 4
  %key = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @max_async_buffer_attribute_alloc.__key, ptr %key, align 4
  %format_string3 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %format_string3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %format_string3, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.23, ptr %call.i, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 292, ptr %mode, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @max_async_buffer_show, ptr %show, align 4
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @block_pack_mode_attribute_alloc(ptr noundef %dev, ptr nocapture noundef writeonly %res, i32 noundef %N, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %N1 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %N, ptr %N1, align 4
  %dir2 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dir2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dir, ptr %dir2, align 4
  %key = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @block_pack_mode_attribute_alloc.__key, ptr %key, align 4
  %format_string3 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %format_string3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %format_string3, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.24, ptr %call.i, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 292, ptr %mode, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @block_pack_mode_show, ptr %show, align 4
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @port_encoding_attribute_alloc(ptr noundef %dev, ptr nocapture noundef writeonly %res, i32 noundef %N, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %N1 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %N, ptr %N1, align 4
  %dir2 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dir2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dir, ptr %dir2, align 4
  %key = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @port_encoding_attribute_alloc.__key, ptr %key, align 4
  %format_string3 = getelementptr inbounds %struct.dpn_attribute, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %format_string3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %format_string3, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.25, ptr %call.i, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 292, ptr %mode, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @port_encoding_show, ptr %show, align 4
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_word_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp19.i = icmp slt i32 %call.i, 32
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.max_word_dpn_show.exit_crit_edge

entry.max_word_dpn_show.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max_word_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.020.i = phi i32 [ %call8.i, %if.end7.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.020.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.020.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %max_word.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.021.i, i32 1
  %9 = ptrtoint ptr %max_word.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_word.i, align 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %10) #5
  br label %max_word_dpn_show.exit

if.end7.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.021.i, 1
  %add.i = add nsw i32 %bit.020.i, 1
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call8.i, 32
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.max_word_dpn_show.exit_crit_edge

if.end7.i.max_word_dpn_show.exit_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max_word_dpn_show.exit

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

max_word_dpn_show.exit:                           ; preds = %if.end7.i.max_word_dpn_show.exit_crit_edge, %if.then5.i, %entry.max_word_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then5.i ], [ -22, %entry.max_word_dpn_show.exit_crit_edge ], [ -22, %if.end7.i.max_word_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_word_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp19.i = icmp slt i32 %call.i, 32
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.min_word_dpn_show.exit_crit_edge

entry.min_word_dpn_show.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %min_word_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.020.i = phi i32 [ %call8.i, %if.end7.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.020.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.020.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %min_word.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.021.i, i32 2
  %9 = ptrtoint ptr %min_word.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_word.i, align 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %10) #5
  br label %min_word_dpn_show.exit

if.end7.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.021.i, 1
  %add.i = add nsw i32 %bit.020.i, 1
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call8.i, 32
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.min_word_dpn_show.exit_crit_edge

if.end7.i.min_word_dpn_show.exit_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %min_word_dpn_show.exit

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

min_word_dpn_show.exit:                           ; preds = %if.end7.i.min_word_dpn_show.exit_crit_edge, %if.then5.i, %entry.min_word_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then5.i ], [ -22, %entry.min_word_dpn_show.exit_crit_edge ], [ -22, %if.end7.i.min_word_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @words_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp42.i = icmp slt i32 %call.i, 32
  br i1 %cmp42.i, label %entry.for.body.i_crit_edge, label %entry.words_dpn_show.exit_crit_edge

entry.words_dpn_show.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %words_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end15.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc16.i, %if.end15.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.043.i = phi i32 [ %call19.i, %if.end15.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.043.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.043.i, %1
  br i1 %cmp4.i, label %for.cond6.preheader.i, label %if.end15.i

for.cond6.preheader.i:                            ; preds = %for.body.i
  %num_words.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.044.i, i32 3
  %9 = ptrtoint ptr %num_words.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_words.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp745.not.i = icmp eq i32 %10, 0
  br i1 %cmp745.not.i, label %for.cond6.preheader.i.for.end.i_crit_edge, label %for.body8.lr.ph.i

for.cond6.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body8.lr.ph.i:                                ; preds = %for.cond6.preheader.i
  %words.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.044.i, i32 4
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %j.047.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc.i, %for.body8.i.for.body8.i_crit_edge ]
  %size.046.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %add.i, %for.body8.i.for.body8.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %size.046.i
  %11 = ptrtoint ptr %words.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %words.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %12, i32 %j.047.i
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10.i, align 4
  %call11.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef %14) #5
  %add.i = add i32 %call11.i, %size.046.i
  %inc.i = add nuw i32 %j.047.i, 1
  %15 = ptrtoint ptr %num_words.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_words.i, align 4
  %cmp7.i = icmp ult i32 %inc.i, %16
  br i1 %cmp7.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.for.end.i_crit_edge

for.body8.i.for.end.i_crit_edge:                  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i

for.end.i:                                        ; preds = %for.body8.i.for.end.i_crit_edge, %for.cond6.preheader.i.for.end.i_crit_edge
  %size.0.lcssa.i = phi i32 [ 0, %for.cond6.preheader.i.for.end.i_crit_edge ], [ %add.i, %for.body8.i.for.end.i_crit_edge ]
  %add.ptr12.i = getelementptr i8, ptr %buf, i32 %size.0.lcssa.i
  %17 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 2560, ptr %add.ptr12.i, align 1
  %add14.i = add i32 %size.0.lcssa.i, 1
  br label %words_dpn_show.exit

if.end15.i:                                       ; preds = %for.body.i
  %inc16.i = add i32 %i.044.i, 1
  %add18.i = add nsw i32 %bit.043.i, 1
  %call19.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add18.i) #5
  %cmp.i = icmp slt i32 %call19.i, 32
  br i1 %cmp.i, label %if.end15.i.for.body.i_crit_edge, label %if.end15.i.words_dpn_show.exit_crit_edge

if.end15.i.words_dpn_show.exit_crit_edge:         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %words_dpn_show.exit

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

words_dpn_show.exit:                              ; preds = %if.end15.i.words_dpn_show.exit_crit_edge, %for.end.i, %entry.words_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %add14.i, %for.end.i ], [ -22, %entry.words_dpn_show.exit_crit_edge ], [ -22, %if.end15.i.words_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp19.i = icmp slt i32 %call.i, 32
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.type_dpn_show.exit_crit_edge

entry.type_dpn_show.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %type_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.020.i = phi i32 [ %call8.i, %if.end7.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.020.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.020.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %type.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.021.i, i32 5
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %10) #5
  br label %type_dpn_show.exit

if.end7.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.021.i, 1
  %add.i = add nsw i32 %bit.020.i, 1
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call8.i, 32
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.type_dpn_show.exit_crit_edge

if.end7.i.type_dpn_show.exit_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %type_dpn_show.exit

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

type_dpn_show.exit:                               ; preds = %if.end7.i.type_dpn_show.exit_crit_edge, %if.then5.i, %entry.type_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then5.i ], [ -22, %entry.type_dpn_show.exit_crit_edge ], [ -22, %if.end7.i.type_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_grouping_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp19.i = icmp slt i32 %call.i, 32
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.max_grouping_dpn_show.exit_crit_edge

entry.max_grouping_dpn_show.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max_grouping_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.020.i = phi i32 [ %call8.i, %if.end7.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.020.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.020.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %max_grouping.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.021.i, i32 6
  %9 = ptrtoint ptr %max_grouping.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_grouping.i, align 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %10) #5
  br label %max_grouping_dpn_show.exit

if.end7.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.021.i, 1
  %add.i = add nsw i32 %bit.020.i, 1
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call8.i, 32
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.max_grouping_dpn_show.exit_crit_edge

if.end7.i.max_grouping_dpn_show.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max_grouping_dpn_show.exit

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

max_grouping_dpn_show.exit:                       ; preds = %if.end7.i.max_grouping_dpn_show.exit_crit_edge, %if.then5.i, %entry.max_grouping_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then5.i ], [ -22, %entry.max_grouping_dpn_show.exit_crit_edge ], [ -22, %if.end7.i.max_grouping_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_ch_prep_sm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp20.i = icmp slt i32 %call.i, 32
  br i1 %cmp20.i, label %entry.for.body.i_crit_edge, label %entry.simple_ch_prep_sm_dpn_show.exit_crit_edge

entry.simple_ch_prep_sm_dpn_show.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %simple_ch_prep_sm_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.021.i = phi i32 [ %call9.i, %if.end8.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.021.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.021.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %simple_ch_prep_sm.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.022.i, i32 7
  %9 = ptrtoint ptr %simple_ch_prep_sm.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %simple_ch_prep_sm.i, align 4, !range !73
  %11 = zext i8 %10 to i32
  %call7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %11) #5
  br label %simple_ch_prep_sm_dpn_show.exit

if.end8.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.022.i, 1
  %add.i = add nsw i32 %bit.021.i, 1
  %call9.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call9.i, 32
  br i1 %cmp.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.simple_ch_prep_sm_dpn_show.exit_crit_edge

if.end8.i.simple_ch_prep_sm_dpn_show.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %simple_ch_prep_sm_dpn_show.exit

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

simple_ch_prep_sm_dpn_show.exit:                  ; preds = %if.end8.i.simple_ch_prep_sm_dpn_show.exit_crit_edge, %if.then5.i, %entry.simple_ch_prep_sm_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.then5.i ], [ -22, %entry.simple_ch_prep_sm_dpn_show.exit_crit_edge ], [ -22, %if.end8.i.simple_ch_prep_sm_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_prep_timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp19.i = icmp slt i32 %call.i, 32
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.ch_prep_timeout_dpn_show.exit_crit_edge

entry.ch_prep_timeout_dpn_show.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ch_prep_timeout_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.020.i = phi i32 [ %call8.i, %if.end7.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.020.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.020.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %ch_prep_timeout.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.021.i, i32 8
  %9 = ptrtoint ptr %ch_prep_timeout.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch_prep_timeout.i, align 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %10) #5
  br label %ch_prep_timeout_dpn_show.exit

if.end7.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.021.i, 1
  %add.i = add nsw i32 %bit.020.i, 1
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call8.i, 32
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.ch_prep_timeout_dpn_show.exit_crit_edge

if.end7.i.ch_prep_timeout_dpn_show.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ch_prep_timeout_dpn_show.exit

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

ch_prep_timeout_dpn_show.exit:                    ; preds = %if.end7.i.ch_prep_timeout_dpn_show.exit_crit_edge, %if.then5.i, %entry.ch_prep_timeout_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then5.i ], [ -22, %entry.ch_prep_timeout_dpn_show.exit_crit_edge ], [ -22, %if.end7.i.ch_prep_timeout_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imp_def_interrupts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp19.i = icmp slt i32 %call.i, 32
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.imp_def_interrupts_dpn_show.exit_crit_edge

entry.imp_def_interrupts_dpn_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %imp_def_interrupts_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.020.i = phi i32 [ %call8.i, %if.end7.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.020.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.020.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %imp_def_interrupts.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.021.i, i32 9
  %9 = ptrtoint ptr %imp_def_interrupts.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %imp_def_interrupts.i, align 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %10) #5
  br label %imp_def_interrupts_dpn_show.exit

if.end7.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.021.i, 1
  %add.i = add nsw i32 %bit.020.i, 1
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call8.i, 32
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.imp_def_interrupts_dpn_show.exit_crit_edge

if.end7.i.imp_def_interrupts_dpn_show.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %imp_def_interrupts_dpn_show.exit

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

imp_def_interrupts_dpn_show.exit:                 ; preds = %if.end7.i.imp_def_interrupts_dpn_show.exit_crit_edge, %if.then5.i, %entry.imp_def_interrupts_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then5.i ], [ -22, %entry.imp_def_interrupts_dpn_show.exit_crit_edge ], [ -22, %if.end7.i.imp_def_interrupts_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_ch_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp19.i = icmp slt i32 %call.i, 32
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.min_ch_dpn_show.exit_crit_edge

entry.min_ch_dpn_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %min_ch_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.020.i = phi i32 [ %call8.i, %if.end7.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.020.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.020.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %min_ch.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.021.i, i32 11
  %9 = ptrtoint ptr %min_ch.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_ch.i, align 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %10) #5
  br label %min_ch_dpn_show.exit

if.end7.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.021.i, 1
  %add.i = add nsw i32 %bit.020.i, 1
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call8.i, 32
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.min_ch_dpn_show.exit_crit_edge

if.end7.i.min_ch_dpn_show.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %min_ch_dpn_show.exit

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

min_ch_dpn_show.exit:                             ; preds = %if.end7.i.min_ch_dpn_show.exit_crit_edge, %if.then5.i, %entry.min_ch_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then5.i ], [ -22, %entry.min_ch_dpn_show.exit_crit_edge ], [ -22, %if.end7.i.min_ch_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_ch_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp19.i = icmp slt i32 %call.i, 32
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.max_ch_dpn_show.exit_crit_edge

entry.max_ch_dpn_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max_ch_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.020.i = phi i32 [ %call8.i, %if.end7.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.020.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.020.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %max_ch.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.021.i, i32 10
  %9 = ptrtoint ptr %max_ch.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_ch.i, align 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %10) #5
  br label %max_ch_dpn_show.exit

if.end7.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.021.i, 1
  %add.i = add nsw i32 %bit.020.i, 1
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call8.i, 32
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.max_ch_dpn_show.exit_crit_edge

if.end7.i.max_ch_dpn_show.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max_ch_dpn_show.exit

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

max_ch_dpn_show.exit:                             ; preds = %if.end7.i.max_ch_dpn_show.exit_crit_edge, %if.then5.i, %entry.max_ch_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then5.i ], [ -22, %entry.max_ch_dpn_show.exit_crit_edge ], [ -22, %if.end7.i.max_ch_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @channels_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp42.i = icmp slt i32 %call.i, 32
  br i1 %cmp42.i, label %entry.for.body.i_crit_edge, label %entry.channels_dpn_show.exit_crit_edge

entry.channels_dpn_show.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %channels_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end15.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc16.i, %if.end15.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.043.i = phi i32 [ %call19.i, %if.end15.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.043.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.043.i, %1
  br i1 %cmp4.i, label %for.cond6.preheader.i, label %if.end15.i

for.cond6.preheader.i:                            ; preds = %for.body.i
  %num_channels.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.044.i, i32 12
  %9 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp745.not.i = icmp eq i32 %10, 0
  br i1 %cmp745.not.i, label %for.cond6.preheader.i.for.end.i_crit_edge, label %for.body8.lr.ph.i

for.cond6.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body8.lr.ph.i:                                ; preds = %for.cond6.preheader.i
  %channels.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.044.i, i32 13
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %j.047.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc.i, %for.body8.i.for.body8.i_crit_edge ]
  %size.046.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %add.i, %for.body8.i.for.body8.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %size.046.i
  %11 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channels.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %12, i32 %j.047.i
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10.i, align 4
  %call11.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef %14) #5
  %add.i = add i32 %call11.i, %size.046.i
  %inc.i = add nuw i32 %j.047.i, 1
  %15 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_channels.i, align 4
  %cmp7.i = icmp ult i32 %inc.i, %16
  br i1 %cmp7.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.for.end.i_crit_edge

for.body8.i.for.end.i_crit_edge:                  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i

for.end.i:                                        ; preds = %for.body8.i.for.end.i_crit_edge, %for.cond6.preheader.i.for.end.i_crit_edge
  %size.0.lcssa.i = phi i32 [ 0, %for.cond6.preheader.i.for.end.i_crit_edge ], [ %add.i, %for.body8.i.for.end.i_crit_edge ]
  %add.ptr12.i = getelementptr i8, ptr %buf, i32 %size.0.lcssa.i
  %17 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 2560, ptr %add.ptr12.i, align 1
  %add14.i = add i32 %size.0.lcssa.i, 1
  br label %channels_dpn_show.exit

if.end15.i:                                       ; preds = %for.body.i
  %inc16.i = add i32 %i.044.i, 1
  %add18.i = add nsw i32 %bit.043.i, 1
  %call19.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add18.i) #5
  %cmp.i = icmp slt i32 %call19.i, 32
  br i1 %cmp.i, label %if.end15.i.for.body.i_crit_edge, label %if.end15.i.channels_dpn_show.exit_crit_edge

if.end15.i.channels_dpn_show.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %channels_dpn_show.exit

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

channels_dpn_show.exit:                           ; preds = %if.end15.i.channels_dpn_show.exit_crit_edge, %for.end.i, %entry.channels_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %add14.i, %for.end.i ], [ -22, %entry.channels_dpn_show.exit_crit_edge ], [ -22, %if.end15.i.channels_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_combinations_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp42.i = icmp slt i32 %call.i, 32
  br i1 %cmp42.i, label %entry.for.body.i_crit_edge, label %entry.ch_combinations_dpn_show.exit_crit_edge

entry.ch_combinations_dpn_show.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ch_combinations_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end15.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc16.i, %if.end15.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.043.i = phi i32 [ %call19.i, %if.end15.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.043.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.043.i, %1
  br i1 %cmp4.i, label %for.cond6.preheader.i, label %if.end15.i

for.cond6.preheader.i:                            ; preds = %for.body.i
  %num_ch_combinations.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.044.i, i32 14
  %9 = ptrtoint ptr %num_ch_combinations.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_ch_combinations.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp745.not.i = icmp eq i32 %10, 0
  br i1 %cmp745.not.i, label %for.cond6.preheader.i.for.end.i_crit_edge, label %for.body8.lr.ph.i

for.cond6.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body8.lr.ph.i:                                ; preds = %for.cond6.preheader.i
  %ch_combinations.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.044.i, i32 15
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %j.047.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc.i, %for.body8.i.for.body8.i_crit_edge ]
  %size.046.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %add.i, %for.body8.i.for.body8.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %size.046.i
  %11 = ptrtoint ptr %ch_combinations.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ch_combinations.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %12, i32 %j.047.i
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10.i, align 4
  %call11.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef %14) #5
  %add.i = add i32 %call11.i, %size.046.i
  %inc.i = add nuw i32 %j.047.i, 1
  %15 = ptrtoint ptr %num_ch_combinations.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ch_combinations.i, align 4
  %cmp7.i = icmp ult i32 %inc.i, %16
  br i1 %cmp7.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.for.end.i_crit_edge

for.body8.i.for.end.i_crit_edge:                  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i

for.end.i:                                        ; preds = %for.body8.i.for.end.i_crit_edge, %for.cond6.preheader.i.for.end.i_crit_edge
  %size.0.lcssa.i = phi i32 [ 0, %for.cond6.preheader.i.for.end.i_crit_edge ], [ %add.i, %for.body8.i.for.end.i_crit_edge ]
  %add.ptr12.i = getelementptr i8, ptr %buf, i32 %size.0.lcssa.i
  %17 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 2560, ptr %add.ptr12.i, align 1
  %add14.i = add i32 %size.0.lcssa.i, 1
  br label %ch_combinations_dpn_show.exit

if.end15.i:                                       ; preds = %for.body.i
  %inc16.i = add i32 %i.044.i, 1
  %add18.i = add nsw i32 %bit.043.i, 1
  %call19.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add18.i) #5
  %cmp.i = icmp slt i32 %call19.i, 32
  br i1 %cmp.i, label %if.end15.i.for.body.i_crit_edge, label %if.end15.i.ch_combinations_dpn_show.exit_crit_edge

if.end15.i.ch_combinations_dpn_show.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ch_combinations_dpn_show.exit

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

ch_combinations_dpn_show.exit:                    ; preds = %if.end15.i.ch_combinations_dpn_show.exit_crit_edge, %for.end.i, %entry.ch_combinations_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %add14.i, %for.end.i ], [ -22, %entry.ch_combinations_dpn_show.exit_crit_edge ], [ -22, %if.end15.i.ch_combinations_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_async_buffer_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp19.i = icmp slt i32 %call.i, 32
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.max_async_buffer_dpn_show.exit_crit_edge

entry.max_async_buffer_dpn_show.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max_async_buffer_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.020.i = phi i32 [ %call8.i, %if.end7.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.020.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.020.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %max_async_buffer.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.021.i, i32 17
  %9 = ptrtoint ptr %max_async_buffer.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_async_buffer.i, align 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %10) #5
  br label %max_async_buffer_dpn_show.exit

if.end7.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.021.i, 1
  %add.i = add nsw i32 %bit.020.i, 1
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call8.i, 32
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.max_async_buffer_dpn_show.exit_crit_edge

if.end7.i.max_async_buffer_dpn_show.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max_async_buffer_dpn_show.exit

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

max_async_buffer_dpn_show.exit:                   ; preds = %if.end7.i.max_async_buffer_dpn_show.exit_crit_edge, %if.then5.i, %entry.max_async_buffer_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then5.i ], [ -22, %entry.max_async_buffer_dpn_show.exit_crit_edge ], [ -22, %if.end7.i.max_async_buffer_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @block_pack_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp20.i = icmp slt i32 %call.i, 32
  br i1 %cmp20.i, label %entry.for.body.i_crit_edge, label %entry.block_pack_mode_dpn_show.exit_crit_edge

entry.block_pack_mode_dpn_show.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %block_pack_mode_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.021.i = phi i32 [ %call9.i, %if.end8.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.021.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.021.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %block_pack_mode.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.022.i, i32 18
  %9 = ptrtoint ptr %block_pack_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %block_pack_mode.i, align 4, !range !73
  %11 = zext i8 %10 to i32
  %call7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %11) #5
  br label %block_pack_mode_dpn_show.exit

if.end8.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.022.i, 1
  %add.i = add nsw i32 %bit.021.i, 1
  %call9.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call9.i, 32
  br i1 %cmp.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.block_pack_mode_dpn_show.exit_crit_edge

if.end8.i.block_pack_mode_dpn_show.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %block_pack_mode_dpn_show.exit

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

block_pack_mode_dpn_show.exit:                    ; preds = %if.end8.i.block_pack_mode_dpn_show.exit_crit_edge, %if.then5.i, %entry.block_pack_mode_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.then5.i ], [ -22, %entry.block_pack_mode_dpn_show.exit_crit_edge ], [ -22, %if.end8.i.block_pack_mode_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_encoding_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %N = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %N to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %N, align 4
  %dir = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %format_string = getelementptr inbounds %struct.dpn_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %format_string to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format_string, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %storemerge.in.i.v = select i1 %tobool.not.i, i32 980, i32 976
  %storemerge.in.i = getelementptr i8, ptr %dev, i32 %storemerge.in.i.v
  %dpn.0.in.i.v = select i1 %tobool.not.i, i32 992, i32 988
  %dpn.0.in.i = getelementptr i8, ptr %dev, i32 %dpn.0.in.i.v
  %6 = ptrtoint ptr %dpn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %dpn.0.i = load ptr, ptr %dpn.0.in.i, align 4
  %7 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %mask.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp19.i = icmp slt i32 %call.i, 32
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.port_encoding_dpn_show.exit_crit_edge

entry.port_encoding_dpn_show.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %port_encoding_dpn_show.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bit.020.i = phi i32 [ %call8.i, %if.end7.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.020.i, i32 %1)
  %cmp4.i = icmp eq i32 %bit.020.i, %1
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %port_encoding.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn.0.i, i32 %i.021.i, i32 20
  %9 = ptrtoint ptr %port_encoding.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_encoding.i, align 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef %5, i32 noundef %10) #5
  br label %port_encoding_dpn_show.exit

if.end7.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.021.i, 1
  %add.i = add nsw i32 %bit.020.i, 1
  %call8.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef 32, i32 noundef %add.i) #5
  %cmp.i = icmp slt i32 %call8.i, 32
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.port_encoding_dpn_show.exit_crit_edge

if.end7.i.port_encoding_dpn_show.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %port_encoding_dpn_show.exit

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

port_encoding_dpn_show.exit:                      ; preds = %if.end7.i.port_encoding_dpn_show.exit_crit_edge, %if.then5.i, %entry.port_encoding_dpn_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then5.i ], [ -22, %entry.port_encoding_dpn_show.exit_crit_edge ], [ -22, %if.end7.i.port_encoding_dpn_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 182, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 217, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 258, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @add_all_attributes._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @add_all_attributes._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 268, i32 52}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 269, i32 16}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 269, i32 24}
!18 = !{ptr @max_word_attribute_alloc.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 99, i32 1}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @min_word_attribute_alloc.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 100, i32 1}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @words_attribute_alloc.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 163, i32 1}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @type_attribute_alloc.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 101, i32 1}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @max_grouping_attribute_alloc.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 102, i32 1}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @simple_ch_prep_sm_attribute_alloc.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 103, i32 1}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ch_prep_timeout_attribute_alloc.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 104, i32 1}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @imp_def_interrupts_attribute_alloc.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 98, i32 1}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @min_ch_attribute_alloc.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 106, i32 1}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @max_ch_attribute_alloc.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 105, i32 1}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @channels_attribute_alloc.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 165, i32 1}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ch_combinations_attribute_alloc.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 164, i32 1}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @max_async_buffer_attribute_alloc.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 107, i32 1}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @block_pack_mode_attribute_alloc.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 108, i32 1}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @port_encoding_attribute_alloc.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/soundwire/sysfs_slave_dpn.c", i32 109, i32 1}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
