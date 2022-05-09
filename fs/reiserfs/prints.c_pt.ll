; ModuleID = '/llk/IR_all_yes/fs/reiserfs/prints.c_pt.bc'
source_filename = "../fs/reiserfs/prints.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.__va_list = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.72, i16, i16, i16 }
%struct.reiserfs_key = type { i32, i32, %union.anon.71 }
%union.anon.71 = type { %struct.offset_v2 }
%struct.offset_v2 = type { i64 }
%union.anon.72 = type { i16 }
%struct.reiserfs_dir_entry = type { ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.cpu_key }
%struct.cpu_key = type { %struct.in_core_key, i32, i32 }
%struct.disk_child = type { i32, i16, i16 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.block_head = type { i16, i16, i16, i16, %struct.reiserfs_key }
%struct.reiserfs_de_head = type { i32, i32, i32, i16, i16 }
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.70, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.70 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.reiserfs_journal = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, i64, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, [8192 x ptr], [8192 x ptr], [5 x %struct.reiserfs_list_bitmap], %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.atomic_t }
%struct.reiserfs_list_bitmap = type { ptr, ptr }
%struct.offset_v1 = type { i32, i32 }
%struct.item_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reiserfs_super_block_v1 = type { i32, i32, i32, %struct.journal_params, i16, i16, i16, i16, [10 x i8], i16, i32, i16, i16, i16, i16 }
%struct.journal_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reiserfs_journal_desc = type { i32, i32, i32, [1 x i32] }
%struct.tree_balance = type { i32, i32, ptr, ptr, ptr, [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32, i32, i32, [2 x ptr], [2 x i32], [2 x i32], i32, i32, [7 x ptr], ptr, i32, ptr, i32, %struct.in_core_key }
%struct.treepath = type { i32, i32, [7 x %struct.path_element], i32 }
%struct.path_element = type { ptr, i32 }

@__reiserfs_warning._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 292, ptr null, ptr null }, align 1
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014REISERFS warning (device %s): %s%s%s: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__reiserfs_warning\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/reiserfs/prints.c\00", [43 x i8] zeroinitializer }, align 32
@__reiserfs_warning._entry_ptr = internal global ptr @__reiserfs_warning._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@error_buf = internal global { [1024 x i8], [256 x i8] } zeroinitializer, align 32
@__reiserfs_warning._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 295, ptr null, ptr null }, align 1
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014REISERFS warning: %s%s%s: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@__reiserfs_warning._entry_ptr.7 = internal global ptr @__reiserfs_warning._entry.5, section ".printk_index", align 4
@reiserfs_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015REISERFS (device %s): %s\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs_info\00", [18 x i8] zeroinitializer }, align 32
@reiserfs_info._entry_ptr = internal global ptr @reiserfs_info._entry, section ".printk_index", align 4
@reiserfs_info._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\015REISERFS %s:\00", [17 x i8] zeroinitializer }, align 32
@reiserfs_info._entry_ptr.12 = internal global ptr @reiserfs_info._entry.10, section ".printk_index", align 4
@reiserfs_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017REISERFS debug (device %s): %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs_debug\00", [17 x i8] zeroinitializer }, align 32
@reiserfs_debug._entry_ptr = internal global ptr @reiserfs_debug._entry, section ".printk_index", align 4
@reiserfs_debug._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017REISERFS debug: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@reiserfs_debug._entry_ptr.17 = internal global ptr @reiserfs_debug._entry.15, section ".printk_index", align 4
@__reiserfs_panic._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 386, ptr null, ptr null }, align 1
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014REISERFS panic (device %s): %s%s%s: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__reiserfs_panic\00", [47 x i8] zeroinitializer }, align 32
@__reiserfs_panic._entry_ptr = internal global ptr @__reiserfs_panic._entry, section ".printk_index", align 4
@__reiserfs_panic._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 389, ptr null, ptr null }, align 1
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014REISERFS panic: %s%s%s: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@__reiserfs_panic._entry_ptr.22 = internal global ptr @__reiserfs_panic._entry.20, section ".printk_index", align 4
@__reiserfs_error._entry = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 405, ptr null, ptr null }, align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\012REISERFS error (device %s): %s %s: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__reiserfs_error\00", [47 x i8] zeroinitializer }, align 32
@__reiserfs_error._entry_ptr = internal global ptr @__reiserfs_error._entry, section ".printk_index", align 4
@__reiserfs_error._entry.25 = internal constant %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 408, ptr null, ptr null }, align 1
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012REISERFS error (device %s): %s: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@__reiserfs_error._entry_ptr.27 = internal global ptr @__reiserfs_error._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Remounting filesystem read-only\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\012REISERFS panic (device %s): %s\0A\00", [62 x i8] zeroinitializer }, align 32
@reiserfs_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\012REISERFS abort (device %s): %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs_abort\00", [17 x i8] zeroinitializer }, align 32
@reiserfs_abort._entry_ptr = internal global ptr @reiserfs_abort._entry, section ".printk_index", align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rupasov\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tea\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r5\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@print_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"print_block: buffer is NULL\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"print_block\00", [20 x i8] zeroinitializer }, align 32
@print_block._entry_ptr = internal global ptr @print_block._entry, section ".printk_index", align 4
@print_block._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Block %llu contains unformatted data\0A\00", [58 x i8] zeroinitializer }, align 32
@print_block._entry_ptr.40 = internal global ptr @print_block._entry.38, section ".printk_index", align 4
@print_tb_buf = internal global { [2048 x i8], [512 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [197 x i8], [59 x i8] } { [197 x i8] c"\0ABALANCING %d\0AMODE=%c, ITEM_POS=%d POS_IN_ITEM=%d\0A=====================================================================\0A* h *    S    *    L    *    R    *   F   *   FL  *   FR  *  CFL  *  CFR  *\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"* %d * %3lld(%2d) * %3lld(%2d) * %3lld(%2d) * %5lld * %5lld * %5lld * %5lld * %5lld *\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [245 x i8], [43 x i8] } { [245 x i8] c"=====================================================================\0A* h * size * ln * lb * rn * rb * blkn * s0 * s1 * s1b * s2 * s2b * curb * lk * rk *\0A* 0 * %4d * %2d * %2d * %2d * %2d * %4d * %2d * %2d * %3d * %2d * %3d * %4d * %2d * %2d *\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"* %d * %4d * %2d *    * %2d *    * %2d *\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"=====================================================================\0AFEB list: \00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%p (%llu %d)%s\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"======================== the end ====================================\0A\00", [57 x i8] zeroinitializer }, align 32
@print_cur_tb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s\0A%s\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"print_cur_tb\00", [19 x i8] zeroinitializer }, align 32
@print_cur_tb._entry_ptr = internal global ptr @print_cur_tb._entry, section ".printk_index", align 4
@item_ops = external dso_local local_unnamed_addr global [16 x ptr], align 4
@fmt_buf = internal global { [1024 x i8], [256 x i8] } zeroinitializer, align 32
@error_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"format string too long\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"error_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[%d %d %s %s]\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[NULL]\00", [25 x i8] zeroinitializer }, align 32
@off_buf = internal global { [80 x i8], [48 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%llu(%llu)\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%Lx\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SD\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DIR\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIRECT\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IND\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"*3.6* \00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"*3.5*\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c", item_len %d, item_location %d, free_space(entry_count) %d\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\22%s\22==>[%d %d]\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[dc_number=%d, dc_size=%u]\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"level=%d, nr_items=%d, free_space=%d rdkey \00", [52 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"dev %pg, size %zd, blocknr %llu, count %d, state 0x%lx, page %p, (%s, %s, %s)\00", [50 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UPTODATE\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"!UPTODATE\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DIRTY\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CLEAN\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOCKED\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UNLOCKED\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[offset=%d dir_id=%d objectid=%d location=%d state=%04x]\00", [39 x i8] zeroinitializer }, align 32
@print_leaf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\0A===================================================================\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"print_leaf\00", [21 x i8] zeroinitializer }, align 32
@print_leaf._entry_ptr = internal global ptr @print_leaf._entry, section ".printk_index", align 4
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LEAF NODE (%ld) contains %z\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FIRST ITEM_KEY: %k, LAST ITEM KEY: %k\0A\00", [57 x i8] zeroinitializer }, align 32
@print_leaf._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.79, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"-------------------------------------------------------------------------------\0A\00", [47 x i8] zeroinitializer }, align 32
@print_leaf._entry_ptr.84 = internal global ptr @print_leaf._entry.82, section ".printk_index", align 4
@print_leaf._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.79, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"|##|   type    |           key           | ilen | free_space | version | loc  |\0A\00", [47 x i8] zeroinitializer }, align 32
@print_leaf._entry_ptr.87 = internal global ptr @print_leaf._entry.85, section ".printk_index", align 4
@print_leaf._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.79, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_leaf._entry_ptr.89 = internal global ptr @print_leaf._entry.88, section ".printk_index", align 4
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"|%2d| %h |\0A\00", [20 x i8] zeroinitializer }, align 32
@print_leaf._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.79, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"===================================================================\0A\00", [59 x i8] zeroinitializer }, align 32
@print_leaf._entry_ptr.93 = internal global ptr @print_leaf._entry.91, section ".printk_index", align 4
@reiserfs_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.94, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reiserfs_printk\00", [16 x i8] zeroinitializer }, align 32
@reiserfs_printk._entry_ptr = internal global ptr @reiserfs_printk._entry, section ".printk_index", align 4
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"INTERNAL NODE (%ld) contains %z\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PTR %d: %y \00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"KEY %d: %k PTR %d: %y \00", [41 x i8] zeroinitializer }, align 32
@print_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.98, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"print_internal\00", [17 x i8] zeroinitializer }, align 32
@print_internal._entry_ptr = internal global ptr @print_internal._entry, section ".printk_index", align 4
@print_internal._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.98, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_internal._entry_ptr.100 = internal global ptr @print_internal._entry.99, section ".printk_index", align 4
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.5\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.6\00", [28 x i8] zeroinitializer }, align 32
@print_super_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%pg's super block is in block %llu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"print_super_block\00", [46 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr = internal global ptr @print_super_block._entry, section ".printk_index", align 4
@print_super_block._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reiserfs version %s\0A\00", [43 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.107 = internal global ptr @print_super_block._entry.105, section ".printk_index", align 4
@print_super_block._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Block count %u\0A\00", [16 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.110 = internal global ptr @print_super_block._entry.108, section ".printk_index", align 4
@print_super_block._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.104, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Blocksize %d\0A\00", [18 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.113 = internal global ptr @print_super_block._entry.111, section ".printk_index", align 4
@print_super_block._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.104, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Free blocks %u\0A\00", [16 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.116 = internal global ptr @print_super_block._entry.114, section ".printk_index", align 4
@print_super_block._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.104, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"Busy blocks (skipped %d, bitmaps - %d, journal (or reserved) blocks - %d\0A1 super block, %d data blocks\0A\00", [56 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.119 = internal global ptr @print_super_block._entry.117, section ".printk_index", align 4
@print_super_block._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.104, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Root block %u\0A\00", [17 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.122 = internal global ptr @print_super_block._entry.120, section ".printk_index", align 4
@print_super_block._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.104, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Journal block (first) %d\0A\00", [38 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.125 = internal global ptr @print_super_block._entry.123, section ".printk_index", align 4
@print_super_block._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.104, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Journal dev %d\0A\00", [16 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.128 = internal global ptr @print_super_block._entry.126, section ".printk_index", align 4
@print_super_block._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.104, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Journal orig size %d\0A\00", [42 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.131 = internal global ptr @print_super_block._entry.129, section ".printk_index", align 4
@print_super_block._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.104, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FS state %d\0A\00", [19 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.134 = internal global ptr @print_super_block._entry.132, section ".printk_index", align 4
@print_super_block._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.104, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Hash function \22%s\22\0A\00", [44 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.137 = internal global ptr @print_super_block._entry.135, section ".printk_index", align 4
@print_super_block._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.104, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Tree height %d\0A\00", [16 x i8] zeroinitializer }, align 32
@print_super_block._entry_ptr.140 = internal global ptr @print_super_block._entry.138, section ".printk_index", align 4
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ReIsErLB\00", [23 x i8] zeroinitializer }, align 32
@print_desc_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Desc block %llu (j_trans_id %d, j_mount_id %d, j_len %d)\00", [39 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"print_desc_block\00", [47 x i8] zeroinitializer }, align 32
@print_desc_block._entry_ptr = internal global ptr @print_desc_block._entry, section ".printk_index", align 4
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-6010\00", [24 x i8] zeroinitializer }, align 32
@__func__.check_leaf_block_head = private unnamed_addr constant [22 x i8] c"check_leaf_block_head\00", align 1
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid item number %z\00", [41 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-6020\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid free space %z\00", [42 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-6025\00", [24 x i8] zeroinitializer }, align 32
@__func__.check_internal_block_head = private unnamed_addr constant [26 x i8] c"check_internal_block_head\00", align 1
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid level %z\00", [47 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-6030\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-6040\00", [24 x i8] zeroinitializer }, align 32
@switch.table.reiserfs_hashname = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.33, ptr @.str.32, ptr @.str.34], [20 x i8] zeroinitializer }, align 32
@switch.table.print_block = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.33, ptr @.str.32, ptr @.str.34], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 75, i64 97, i64 98, i64 104, i64 107, i64 116, i64 121, i64 122]
@__sancov_gen_cov_switch_values.152 = internal global [10 x i64] [i64 8, i64 8, i64 75, i64 97, i64 98, i64 104, i64 107, i64 116, i64 121, i64 122]
@__sancov_gen_cov_switch_values.153 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.155 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4093706240, i64 4294967295]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 290, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [10 x i8] c"error_buf\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 13, i32 13 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 294, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 303, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 306, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 321, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 324, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 384, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 388, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 404, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 407, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 413, i32 20 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 423, i32 9 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 430, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 536, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 538, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 540, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 542, i32 9 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 617, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 630, i32 6 }
@___asan_gen_.269 = private unnamed_addr constant [13 x i8] c"print_tb_buf\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 637, i32 13 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 649, i32 24 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 670, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 690, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 703, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 709, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 716, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 720, i32 37 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 720, i32 44 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 723, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 728, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [8 x i8] c"fmt_buf\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 14, i32 13 }
@___asan_gen_.311 = private unnamed_addr constant [11 x i8] c"error_lock\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 214, i32 22 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 202, i32 8 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 82, i32 31 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 87, i32 31 }
@___asan_gen_.326 = private unnamed_addr constant [8 x i8] c"off_buf\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 15, i32 13 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 37, i32 20 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 43, i32 20 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 68, i32 10 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 70, i32 10 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 72, i32 10 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 74, i32 10 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 75, i32 9 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 122, i32 30 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 124, i32 11 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 124, i32 22 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 129, i32 11 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 144, i32 30 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 170, i32 30 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 151, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 158, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 163, i32 27 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 163, i32 40 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 164, i32 24 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 164, i32 34 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 165, i32 25 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 165, i32 36 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 107, i32 6 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 494, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 496, i32 18 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 499, i32 19 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 515, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 517, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 520, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 522, i32 19 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 527, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 313, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 462, i32 18 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 465, i32 18 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 469, i32 19 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 471, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 473, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 554, i32 13 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 556, i32 13 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 564, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 566, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 567, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 568, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 569, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 579, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 584, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 585, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 586, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 587, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 588, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 589, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 592, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 600, i32 41 }
@___asan_gen_.548 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 604, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 739, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 742, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 750, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 753, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.579 = private constant [24 x i8] c"../fs/reiserfs/prints.c\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 758, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant [31 x i8] c"switch.table.reiserfs_hashname\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [25 x i8] c"switch.table.print_block\00", align 1
@llvm.compiler.used = appending global [185 x ptr] [ptr @__reiserfs_error._entry, ptr @__reiserfs_error._entry.25, ptr @__reiserfs_error._entry_ptr, ptr @__reiserfs_error._entry_ptr.27, ptr @__reiserfs_panic._entry, ptr @__reiserfs_panic._entry.20, ptr @__reiserfs_panic._entry_ptr, ptr @__reiserfs_panic._entry_ptr.22, ptr @__reiserfs_warning._entry, ptr @__reiserfs_warning._entry.5, ptr @__reiserfs_warning._entry_ptr, ptr @__reiserfs_warning._entry_ptr.7, ptr @print_block._entry, ptr @print_block._entry.38, ptr @print_block._entry_ptr, ptr @print_block._entry_ptr.40, ptr @print_cur_tb._entry, ptr @print_cur_tb._entry_ptr, ptr @print_desc_block._entry, ptr @print_desc_block._entry_ptr, ptr @print_internal._entry, ptr @print_internal._entry.99, ptr @print_internal._entry_ptr, ptr @print_internal._entry_ptr.100, ptr @print_leaf._entry, ptr @print_leaf._entry.82, ptr @print_leaf._entry.85, ptr @print_leaf._entry.88, ptr @print_leaf._entry.91, ptr @print_leaf._entry_ptr, ptr @print_leaf._entry_ptr.84, ptr @print_leaf._entry_ptr.87, ptr @print_leaf._entry_ptr.89, ptr @print_leaf._entry_ptr.93, ptr @print_super_block._entry, ptr @print_super_block._entry.105, ptr @print_super_block._entry.108, ptr @print_super_block._entry.111, ptr @print_super_block._entry.114, ptr @print_super_block._entry.117, ptr @print_super_block._entry.120, ptr @print_super_block._entry.123, ptr @print_super_block._entry.126, ptr @print_super_block._entry.129, ptr @print_super_block._entry.132, ptr @print_super_block._entry.135, ptr @print_super_block._entry.138, ptr @print_super_block._entry_ptr, ptr @print_super_block._entry_ptr.107, ptr @print_super_block._entry_ptr.110, ptr @print_super_block._entry_ptr.113, ptr @print_super_block._entry_ptr.116, ptr @print_super_block._entry_ptr.119, ptr @print_super_block._entry_ptr.122, ptr @print_super_block._entry_ptr.125, ptr @print_super_block._entry_ptr.128, ptr @print_super_block._entry_ptr.131, ptr @print_super_block._entry_ptr.134, ptr @print_super_block._entry_ptr.137, ptr @print_super_block._entry_ptr.140, ptr @reiserfs_abort._entry, ptr @reiserfs_abort._entry_ptr, ptr @reiserfs_debug._entry, ptr @reiserfs_debug._entry.15, ptr @reiserfs_debug._entry_ptr, ptr @reiserfs_debug._entry_ptr.17, ptr @reiserfs_info._entry, ptr @reiserfs_info._entry.10, ptr @reiserfs_info._entry_ptr, ptr @reiserfs_info._entry_ptr.12, ptr @reiserfs_printk._entry, ptr @reiserfs_printk._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @error_buf, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @print_tb_buf, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @fmt_buf, ptr @error_lock, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @off_buf, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @switch.table.reiserfs_hashname, ptr @switch.table.print_block], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_buf to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_info._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_debug._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_block._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_tb_buf to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 197, i32 256, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 245, i32 288, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_cur_tb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmt_buf to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @off_buf to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_leaf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_leaf._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_leaf._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_leaf._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_leaf._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_internal._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_super_block._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_desc_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.reiserfs_hashname to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.print_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__reiserfs_warning(ptr noundef %sb, ptr noundef %id, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !289
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @prepare_error_buf(ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  %tobool.not = icmp eq ptr %sb, null
  br i1 %tobool.not, label %do.end5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %tobool1.not = icmp eq ptr %id, null
  %spec.select = select i1 %tobool1.not, ptr @.str.3, ptr @.str.4
  %spec.select22 = select i1 %tobool1.not, ptr @.str.3, ptr %id
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %s_id, ptr noundef nonnull %spec.select22, ptr noundef nonnull %spec.select, ptr noundef %function, ptr noundef nonnull @error_buf) #15
  br label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tobool7.not = icmp eq ptr %id, null
  %spec.select23 = select i1 %tobool7.not, ptr @.str.3, ptr @.str.4
  %spec.select24 = select i1 %tobool7.not, ptr @.str.3, ptr %id
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %spec.select24, ptr noundef nonnull %spec.select23, ptr noundef %function, ptr noundef nonnull @error_buf) #15
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prepare_error_buf(ptr noundef %fmt, [1 x i32] %args.coerce) unnamed_addr #0 align 64 {
entry:
  %name.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @error_lock) #12
  %call = tail call i32 @strscpy(ptr noundef nonnull @fmt_buf, ptr noundef %fmt, i32 noundef 1024) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %while.cond.preheader, !prof !290

while.cond.preheader:                             ; preds = %entry
  %args.coerce.fca.0.extract = extractvalue [1 x i32] %args.coerce, 0
  %0 = inttoptr i32 %args.coerce.fca.0.extract to ptr
  br label %while.cond

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 213, i32 noundef 9, ptr noundef null) #12
  %call21 = tail call i32 @strscpy(ptr noundef nonnull @error_buf, ptr noundef nonnull @.str.52, i32 noundef 1024) #12
  br label %out_unlock

while.cond:                                       ; preds = %sw.epilog, %while.cond.preheader
  %p.0 = phi ptr [ %p.1, %sw.epilog ], [ @error_buf, %while.cond.preheader ]
  %fmt1.0 = phi ptr [ %add.ptr80, %sw.epilog ], [ @fmt_buf, %while.cond.preheader ]
  %args.sroa.0.0 = phi ptr [ %args.sroa.0.1, %sw.epilog ], [ %0, %while.cond.preheader ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond
  %k.0.i = phi ptr [ %fmt1.0, %while.cond ], [ %arrayidx.i, %while.body.i.while.cond.i_crit_edge ]
  %call.i = call ptr @strchr(ptr noundef %k.0.i, i32 noundef 37) #12
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.end, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %while.body.i.while.cond.i_crit_edge [
    i8 107, label %while.body.i.while.body_crit_edge
    i8 75, label %while.body.i.while.body_crit_edge149
    i8 104, label %while.body.i.while.body_crit_edge150
    i8 116, label %while.body.i.while.body_crit_edge151
    i8 122, label %while.body.i.while.body_crit_edge152
    i8 98, label %while.body.i.while.body_crit_edge153
    i8 121, label %while.body.i.while.body_crit_edge154
    i8 97, label %while.body.i.while.body_crit_edge155
  ]

while.body.i.while.body_crit_edge155:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.i.while.body_crit_edge154:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.i.while.body_crit_edge153:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.i.while.body_crit_edge152:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.i.while.body_crit_edge151:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.i.while.body_crit_edge150:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.i.while.body_crit_edge149:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.i.while.body_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body:                                       ; preds = %while.body.i.while.body_crit_edge, %while.body.i.while.body_crit_edge149, %while.body.i.while.body_crit_edge150, %while.body.i.while.body_crit_edge151, %while.body.i.while.body_crit_edge152, %while.body.i.while.body_crit_edge153, %while.body.i.while.body_crit_edge154, %while.body.i.while.body_crit_edge155
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call.i, align 1
  %sub.ptr.rhs.cast = ptrtoint ptr %p.0 to i32
  %sub.ptr.sub = sub i32 ptrtoint (ptr getelementptr inbounds ([1024 x i8], ptr @error_buf, i32 1, i32 0) to i32), %sub.ptr.rhs.cast
  %5 = ptrtoint ptr %args.sroa.0.0 to i32
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %5, 0
  %call26 = call i32 @vscnprintf(ptr noundef %p.0, i32 noundef %sub.ptr.sub, ptr noundef %fmt1.0, [1 x i32] %.fca.0.insert) #12
  %add.ptr = getelementptr i8, ptr %p.0, i32 %call26
  %6 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %2, label %while.body.sw.epilog_crit_edge [
    i8 107, label %sw.bb
    i8 75, label %sw.bb31
    i8 104, label %sw.bb38
    i8 116, label %sw.bb45
    i8 121, label %sw.bb52
    i8 122, label %sw.bb59
    i8 98, label %sw.bb66
    i8 97, label %sw.bb73
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.rhs.cast27 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub28 = sub i32 ptrtoint (ptr getelementptr inbounds ([1024 x i8], ptr @error_buf, i32 1, i32 0) to i32), %sub.ptr.rhs.cast27
  %argp.next = getelementptr inbounds i8, ptr %args.sroa.0.0, i32 4
  %7 = ptrtoint ptr %args.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.sroa.0.0, align 4
  %call29 = call fastcc i32 @scnprintf_le_key(ptr noundef %add.ptr, i32 noundef %sub.ptr.sub28, ptr noundef %8)
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %call29
  br label %sw.epilog

sw.bb31:                                          ; preds = %while.body
  %sub.ptr.rhs.cast32 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub33 = sub i32 ptrtoint (ptr getelementptr inbounds ([1024 x i8], ptr @error_buf, i32 1, i32 0) to i32), %sub.ptr.rhs.cast32
  %argp.next35 = getelementptr inbounds i8, ptr %args.sroa.0.0, i32 4
  %9 = ptrtoint ptr %args.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.sroa.0.0, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i123

if.then.i123:                                     ; preds = %sw.bb31
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %k_objectid.i = getelementptr inbounds %struct.in_core_key, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %k_objectid.i, align 4
  %k_type.i.i.i = getelementptr inbounds %struct.in_core_key, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %k_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %k_type.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp.i.i = icmp eq i8 %16, 3
  %k_offset.i.i.i = getelementptr inbounds %struct.in_core_key, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %k_offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %k_offset.i.i.i, align 8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i = and i64 %18, 2147483520
  %and3.i.i = and i64 %18, 127
  %call4.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @off_buf, ptr noundef nonnull @.str.56, i64 noundef %and.i.i, i64 noundef %and3.i.i) #12
  br label %reiserfs_cpu_offset.exit.i

if.else.i.i:                                      ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @off_buf, ptr noundef nonnull @.str.57, i64 noundef %18) #12
  br label %reiserfs_cpu_offset.exit.i

reiserfs_cpu_offset.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %19 = ptrtoint ptr %k_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %k_type.i.i.i, align 8
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %20, label %if.end8.i.i [
    i8 0, label %reiserfs_cpu_offset.exit.i.cpu_type.exit.i_crit_edge
    i8 3, label %return.fold.split.i.i
    i8 2, label %return.fold.split22.i.i
  ]

reiserfs_cpu_offset.exit.i.cpu_type.exit.i_crit_edge: ; preds = %reiserfs_cpu_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_type.exit.i

if.end8.i.i:                                      ; preds = %reiserfs_cpu_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp10.i.i = icmp eq i8 %20, 1
  %.str.61..str.62.i.i = select i1 %cmp10.i.i, ptr @.str.61, ptr @.str.62
  br label %cpu_type.exit.i

return.fold.split.i.i:                            ; preds = %reiserfs_cpu_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_type.exit.i

return.fold.split22.i.i:                          ; preds = %reiserfs_cpu_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_type.exit.i

cpu_type.exit.i:                                  ; preds = %return.fold.split22.i.i, %return.fold.split.i.i, %if.end8.i.i, %reiserfs_cpu_offset.exit.i.cpu_type.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.58, %reiserfs_cpu_offset.exit.i.cpu_type.exit.i_crit_edge ], [ %.str.61..str.62.i.i, %if.end8.i.i ], [ @.str.59, %return.fold.split.i.i ], [ @.str.60, %return.fold.split22.i.i ]
  %call3.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub.ptr.sub33, ptr noundef nonnull @.str.54, i32 noundef %12, i32 noundef %14, ptr noundef nonnull @off_buf, ptr noundef nonnull %retval.0.i.i) #12
  br label %scnprintf_cpu_key.exit

if.else.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub.ptr.sub33, ptr noundef nonnull @.str.55) #12
  br label %scnprintf_cpu_key.exit

scnprintf_cpu_key.exit:                           ; preds = %if.else.i, %cpu_type.exit.i
  %retval.0.i = phi i32 [ %call3.i, %cpu_type.exit.i ], [ %call4.i, %if.else.i ]
  %add.ptr37 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i
  br label %sw.epilog

sw.bb38:                                          ; preds = %while.body
  %sub.ptr.rhs.cast39 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub40 = sub i32 ptrtoint (ptr getelementptr inbounds ([1024 x i8], ptr @error_buf, i32 1, i32 0) to i32), %sub.ptr.rhs.cast39
  %argp.next42 = getelementptr inbounds i8, ptr %args.sroa.0.0, i32 4
  %22 = ptrtoint ptr %args.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args.sroa.0.0, align 4
  %tobool.not.i124 = icmp eq ptr %23, null
  br i1 %tobool.not.i124, label %if.else.i127, label %if.then.i126

if.then.i126:                                     ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %sub.ptr.sub40
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %25)
  %cmp.i = icmp eq i16 %25, 256
  %cond.i = select i1 %cmp.i, ptr @.str.64, ptr @.str.65
  %call.i125 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub.ptr.sub40, ptr noundef nonnull @.str.63, ptr noundef nonnull %cond.i) #12
  %add.ptr2.i = getelementptr i8, ptr %add.ptr, i32 %call.i125
  %sub.ptr.rhs.cast4.i = ptrtoint ptr %add.ptr2.i to i32
  %sub.ptr.sub5.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast4.i
  %call6.i = call fastcc i32 @scnprintf_le_key(ptr noundef %add.ptr2.i, i32 noundef %sub.ptr.sub5.i, ptr noundef nonnull %23) #12
  %add.ptr7.i = getelementptr i8, ptr %add.ptr2.i, i32 %call6.i
  %sub.ptr.rhs.cast9.i = ptrtoint ptr %add.ptr7.i to i32
  %sub.ptr.sub10.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast9.i
  %ih_item_len.i = getelementptr inbounds %struct.item_head, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %ih_item_len.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %ih_item_len.i, align 1
  %28 = call i16 @llvm.bswap.i16(i16 %27) #12
  %conv11.i = zext i16 %28 to i32
  %ih_item_location.i = getelementptr inbounds %struct.item_head, ptr %23, i32 0, i32 3
  %29 = ptrtoint ptr %ih_item_location.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %ih_item_location.i, align 1
  %31 = call i16 @llvm.bswap.i16(i16 %30) #12
  %conv12.i = zext i16 %31 to i32
  %u.i = getelementptr inbounds %struct.item_head, ptr %23, i32 0, i32 1
  %32 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %u.i, align 1
  %34 = call i16 @llvm.bswap.i16(i16 %33) #12
  %conv13.i = zext i16 %34 to i32
  %call14.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.i, i32 noundef %sub.ptr.sub10.i, ptr noundef nonnull @.str.66, i32 noundef %conv11.i, i32 noundef %conv12.i, i32 noundef %conv13.i) #12
  %add.ptr15.i = getelementptr i8, ptr %add.ptr7.i, i32 %call14.i
  %sub.ptr.lhs.cast16.i = ptrtoint ptr %add.ptr15.i to i32
  %sub.ptr.sub18.i = sub i32 %sub.ptr.lhs.cast16.i, %sub.ptr.rhs.cast39
  br label %scnprintf_item_head.exit

if.else.i127:                                     ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #14
  %call19.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub.ptr.sub40, ptr noundef nonnull @.str.55) #12
  br label %scnprintf_item_head.exit

scnprintf_item_head.exit:                         ; preds = %if.else.i127, %if.then.i126
  %retval.0.i128 = phi i32 [ %sub.ptr.sub18.i, %if.then.i126 ], [ %call19.i, %if.else.i127 ]
  %add.ptr44 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i128
  br label %sw.epilog

sw.bb45:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.rhs.cast46 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub47 = sub i32 ptrtoint (ptr getelementptr inbounds ([1024 x i8], ptr @error_buf, i32 1, i32 0) to i32), %sub.ptr.rhs.cast46
  %argp.next49 = getelementptr inbounds i8, ptr %args.sroa.0.0, i32 4
  %35 = ptrtoint ptr %args.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %args.sroa.0.0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name.i) #12
  %de_name.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %36, i32 0, i32 7
  %37 = call ptr @memset(ptr %name.i, i32 255, i32 20)
  %38 = ptrtoint ptr %de_name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %de_name.i, align 4
  %de_namelen.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %36, i32 0, i32 6
  %40 = ptrtoint ptr %de_namelen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %de_namelen.i, align 8
  %42 = call i32 @llvm.smin.i32(i32 %41, i32 19) #12
  %43 = call ptr @memcpy(ptr %name.i, ptr %39, i32 %42)
  %arrayidx.i129 = getelementptr [20 x i8], ptr %name.i, i32 0, i32 %42
  %44 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx.i129, align 1
  %de_dir_id.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %36, i32 0, i32 9
  %45 = ptrtoint ptr %de_dir_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %de_dir_id.i, align 4
  %de_objectid.i = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %36, i32 0, i32 10
  %47 = ptrtoint ptr %de_objectid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %de_objectid.i, align 8
  %call.i130 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub.ptr.sub47, ptr noundef nonnull @.str.67, ptr noundef nonnull %name.i, i32 noundef %46, i32 noundef %48) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name.i) #12
  %add.ptr51 = getelementptr i8, ptr %add.ptr, i32 %call.i130
  br label %sw.epilog

sw.bb52:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.rhs.cast53 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub54 = sub i32 ptrtoint (ptr getelementptr inbounds ([1024 x i8], ptr @error_buf, i32 1, i32 0) to i32), %sub.ptr.rhs.cast53
  %argp.next56 = getelementptr inbounds i8, ptr %args.sroa.0.0, i32 4
  %49 = ptrtoint ptr %args.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %args.sroa.0.0, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #12
  %dc_size.i = getelementptr inbounds %struct.disk_child, ptr %50, i32 0, i32 1
  %54 = ptrtoint ptr %dc_size.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %dc_size.i, align 4
  %56 = call i16 @llvm.bswap.i16(i16 %55) #12
  %conv.i = zext i16 %56 to i32
  %call.i131 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub.ptr.sub54, ptr noundef nonnull @.str.68, i32 noundef %53, i32 noundef %conv.i) #12
  %add.ptr58 = getelementptr i8, ptr %add.ptr, i32 %call.i131
  br label %sw.epilog

sw.bb59:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.rhs.cast60 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub61 = sub i32 ptrtoint (ptr getelementptr inbounds ([1024 x i8], ptr @error_buf, i32 1, i32 0) to i32), %sub.ptr.rhs.cast60
  %argp.next63 = getelementptr inbounds i8, ptr %args.sroa.0.0, i32 4
  %57 = ptrtoint ptr %args.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %args.sroa.0.0, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %60, align 2
  %63 = call i16 @llvm.bswap.i16(i16 %62) #12
  %conv.i132 = zext i16 %63 to i32
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %60, i32 0, i32 1
  %64 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %blk_nr_item.i, align 2
  %66 = call i16 @llvm.bswap.i16(i16 %65) #12
  %conv2.i = zext i16 %66 to i32
  %blk_free_space.i = getelementptr inbounds %struct.block_head, ptr %60, i32 0, i32 2
  %67 = ptrtoint ptr %blk_free_space.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %blk_free_space.i, align 2
  %69 = call i16 @llvm.bswap.i16(i16 %68) #12
  %conv4.i = zext i16 %69 to i32
  %call.i133 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub.ptr.sub61, ptr noundef nonnull @.str.69, i32 noundef %conv.i132, i32 noundef %conv2.i, i32 noundef %conv4.i) #12
  %add.ptr65 = getelementptr i8, ptr %add.ptr, i32 %call.i133
  br label %sw.epilog

sw.bb66:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.rhs.cast67 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub68 = sub i32 ptrtoint (ptr getelementptr inbounds ([1024 x i8], ptr @error_buf, i32 1, i32 0) to i32), %sub.ptr.rhs.cast67
  %argp.next70 = getelementptr inbounds i8, ptr %args.sroa.0.0, i32 4
  %70 = ptrtoint ptr %args.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %args.sroa.0.0, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %b_bdev.i, align 8
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %71, i32 0, i32 4
  %74 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %b_size.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %71, i32 0, i32 3
  %76 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %b_blocknr.i, align 8
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %71, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %b_count.i, i32 noundef 4) #12
  %78 = ptrtoint ptr %b_count.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %b_count.i, align 4
  %80 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %71, align 8
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %71, i32 0, i32 2
  %82 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %b_page.i, align 8
  %84 = load volatile i32, ptr %71, align 4
  %and1.i.i.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i134 = icmp eq i32 %and1.i.i.i, 0
  %cond.i135 = select i1 %tobool.not.i134, ptr @.str.72, ptr @.str.71
  %85 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %71, align 4
  %87 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool3.not.i = icmp eq i32 %87, 0
  %cond4.i = select i1 %tobool3.not.i, ptr @.str.74, ptr @.str.73
  %88 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %71, align 4
  %90 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool6.not.i = icmp eq i32 %90, 0
  %cond7.i = select i1 %tobool6.not.i, ptr @.str.76, ptr @.str.75
  %call8.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub.ptr.sub68, ptr noundef nonnull @.str.70, ptr noundef %73, i32 noundef %75, i64 noundef %77, i32 noundef %79, i32 noundef %81, ptr noundef %83, ptr noundef nonnull %cond.i135, ptr noundef nonnull %cond4.i, ptr noundef nonnull %cond7.i) #12
  %add.ptr72 = getelementptr i8, ptr %add.ptr, i32 %call8.i
  br label %sw.epilog

sw.bb73:                                          ; preds = %while.body
  %sub.ptr.rhs.cast74 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub75 = sub i32 ptrtoint (ptr getelementptr inbounds ([1024 x i8], ptr @error_buf, i32 1, i32 0) to i32), %sub.ptr.rhs.cast74
  %argp.next77 = getelementptr inbounds i8, ptr %args.sroa.0.0, i32 4
  %91 = ptrtoint ptr %args.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %args.sroa.0.0, align 4
  %tobool.not.i136 = icmp eq ptr %92, null
  br i1 %tobool.not.i136, label %if.else.i140, label %if.then.i139

if.then.i139:                                     ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %92, align 1
  %95 = call i32 @llvm.bswap.i32(i32 %94) #12
  %deh_dir_id.i = getelementptr inbounds %struct.reiserfs_de_head, ptr %92, i32 0, i32 1
  %96 = ptrtoint ptr %deh_dir_id.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %deh_dir_id.i, align 1
  %98 = call i32 @llvm.bswap.i32(i32 %97) #12
  %deh_objectid.i = getelementptr inbounds %struct.reiserfs_de_head, ptr %92, i32 0, i32 2
  %99 = ptrtoint ptr %deh_objectid.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %deh_objectid.i, align 1
  %101 = call i32 @llvm.bswap.i32(i32 %100) #12
  %deh_location.i = getelementptr inbounds %struct.reiserfs_de_head, ptr %92, i32 0, i32 3
  %102 = ptrtoint ptr %deh_location.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %deh_location.i, align 1
  %104 = call i16 @llvm.bswap.i16(i16 %103) #12
  %conv.i137 = zext i16 %104 to i32
  %deh_state.i = getelementptr inbounds %struct.reiserfs_de_head, ptr %92, i32 0, i32 4
  %105 = ptrtoint ptr %deh_state.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %deh_state.i, align 1
  %107 = call i16 @llvm.bswap.i16(i16 %106) #12
  %conv1.i = zext i16 %107 to i32
  %call.i138 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub.ptr.sub75, ptr noundef nonnull @.str.77, i32 noundef %95, i32 noundef %98, i32 noundef %101, i32 noundef %conv.i137, i32 noundef %conv1.i) #12
  br label %scnprintf_de_head.exit

if.else.i140:                                     ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub.ptr.sub75, ptr noundef nonnull @.str.55) #12
  br label %scnprintf_de_head.exit

scnprintf_de_head.exit:                           ; preds = %if.else.i140, %if.then.i139
  %retval.0.i141 = phi i32 [ %call.i138, %if.then.i139 ], [ %call2.i, %if.else.i140 ]
  %add.ptr79 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i141
  br label %sw.epilog

sw.epilog:                                        ; preds = %scnprintf_de_head.exit, %sw.bb66, %sw.bb59, %sw.bb52, %sw.bb45, %scnprintf_item_head.exit, %scnprintf_cpu_key.exit, %sw.bb, %while.body.sw.epilog_crit_edge
  %p.1 = phi ptr [ %add.ptr, %while.body.sw.epilog_crit_edge ], [ %add.ptr79, %scnprintf_de_head.exit ], [ %add.ptr72, %sw.bb66 ], [ %add.ptr65, %sw.bb59 ], [ %add.ptr58, %sw.bb52 ], [ %add.ptr51, %sw.bb45 ], [ %add.ptr44, %scnprintf_item_head.exit ], [ %add.ptr37, %scnprintf_cpu_key.exit ], [ %add.ptr30, %sw.bb ]
  %args.sroa.0.1 = phi ptr [ %args.sroa.0.0, %while.body.sw.epilog_crit_edge ], [ %argp.next77, %scnprintf_de_head.exit ], [ %argp.next70, %sw.bb66 ], [ %argp.next63, %sw.bb59 ], [ %argp.next56, %sw.bb52 ], [ %argp.next49, %sw.bb45 ], [ %argp.next42, %scnprintf_item_head.exit ], [ %argp.next35, %scnprintf_cpu_key.exit ], [ %argp.next, %sw.bb ]
  %add.ptr80 = getelementptr i8, ptr %call.i, i32 2
  br label %while.cond

while.end:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.rhs.cast81 = ptrtoint ptr %p.0 to i32
  %sub.ptr.sub82 = sub i32 ptrtoint (ptr getelementptr inbounds ([1024 x i8], ptr @error_buf, i32 1, i32 0) to i32), %sub.ptr.rhs.cast81
  %108 = ptrtoint ptr %args.sroa.0.0 to i32
  %.fca.0.insert121 = insertvalue [1 x i32] poison, i32 %108, 0
  %call84 = call i32 @vscnprintf(ptr noundef %p.0, i32 noundef %sub.ptr.sub82, ptr noundef %fmt1.0, [1 x i32] %.fca.0.insert121) #12
  br label %out_unlock

out_unlock:                                       ; preds = %while.end, %do.end
  call void @_raw_spin_unlock(ptr noundef nonnull @error_lock) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_info(ptr noundef %sb, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !289
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @prepare_error_buf(ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  %tobool.not = icmp eq ptr %sb, null
  br i1 %tobool.not, label %do.end2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %s_id, ptr noundef nonnull @error_buf) #15
  br label %if.end

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @error_buf) #15
  br label %if.end

if.end:                                           ; preds = %do.end2, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_debug(ptr noundef %s, i32 noundef %level, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !289
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @prepare_error_buf(ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %do.end2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_id = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %s_id, ptr noundef nonnull @error_buf) #15
  br label %if.end

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @error_buf) #15
  br label %if.end

if.end:                                           ; preds = %do.end2, %do.end
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__reiserfs_panic(ptr noundef %sb, ptr noundef %id, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #4 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !289
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @prepare_error_buf(ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  call void @dump_stack() #15
  %tobool.not = icmp eq ptr %sb, null
  br i1 %tobool.not, label %do.end5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %tobool1.not = icmp eq ptr %id, null
  %spec.select = select i1 %tobool1.not, ptr @.str.3, ptr @.str.4
  %spec.select26 = select i1 %tobool1.not, ptr @.str.3, ptr %id
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %s_id, ptr noundef nonnull %spec.select26, ptr noundef nonnull %spec.select, ptr noundef %function, ptr noundef nonnull @error_buf) #15
  br label %do.body15

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tobool7.not = icmp eq ptr %id, null
  %spec.select27 = select i1 %tobool7.not, ptr @.str.3, ptr @.str.4
  %spec.select28 = select i1 %tobool7.not, ptr @.str.3, ptr %id
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %spec.select28, ptr noundef nonnull %spec.select27, ptr noundef %function, ptr noundef nonnull @error_buf) #15
  br label %do.body15

do.body15:                                        ; preds = %do.end5, %do.end
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/prints.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 390, 0\0A.popsection", ""() #12, !srcloc !291
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__reiserfs_error(ptr noundef %sb, ptr noundef %id, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !289
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @prepare_error_buf(ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  %cmp = icmp eq ptr %sb, null
  br i1 %cmp, label %do.body2, label %do.end5, !prof !290

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/prints.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 398, 0\0A.popsection", ""() #12, !srcloc !292
  unreachable

do.end5:                                          ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef nonnull %sb, ptr noundef %id, ptr noundef %function, ptr noundef nonnull @error_buf) #16
  unreachable

if.end8:                                          ; preds = %do.end5
  %tobool9.not = icmp eq ptr %id, null
  br i1 %tobool9.not, label %if.end8.do.end16_crit_edge, label %land.lhs.true

if.end8.do.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

land.lhs.true:                                    ; preds = %if.end8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %do.end13

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

do.end13:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %s_id, ptr noundef nonnull %id, ptr noundef %function, ptr noundef nonnull @error_buf) #15
  br label %if.end21

do.end16:                                         ; preds = %land.lhs.true.do.end16_crit_edge, %if.end8.do.end16_crit_edge
  %s_id18 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %s_id18, ptr noundef %function, ptr noundef nonnull @error_buf) #15
  br label %if.end21

if.end21:                                         ; preds = %do.end16, %do.end13
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end24, label %if.end21.return_crit_edge

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef nonnull %sb, ptr noundef nonnull @.str.28)
  %10 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_flags.i, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %s_flags.i, align 4
  call void @reiserfs_abort_journal(ptr noundef nonnull %sb, i32 noundef -5) #12
  br label %return

return:                                           ; preds = %if.end24, %if.end21.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_abort_journal(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_abort(ptr noundef %sb, i32 noundef %errno, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !289
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @prepare_error_buf(ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.29, ptr noundef %s_id, ptr noundef nonnull @error_buf) #17
  unreachable

if.end:                                           ; preds = %entry
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_journal, align 4
  %j_state.i = getelementptr inbounds %struct.reiserfs_journal, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %j_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %j_state.i, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %do.end, label %if.end.return_crit_edge, !prof !293

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %s_id8 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %s_id8, ptr noundef nonnull @error_buf) #15
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %11 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_flags, align 4
  %or = or i32 %12, 1
  store i32 %or, ptr %s_flags, align 4
  call void @reiserfs_abort_journal(ptr noundef %sb, i32 noundef %errno) #12
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @reiserfs_hashname(i32 noundef %code) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.reiserfs_hashname, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.35, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_block(ptr noundef %bh, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !289
  %tobool.not = icmp eq ptr %bh, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %argp.cur = load ptr, ptr %args, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %args, align 4
  %2 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %argp.cur, align 4
  %argp.next2 = getelementptr inbounds i8, ptr %argp.cur, i32 8
  %4 = ptrtoint ptr %argp.next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %argp.next, align 4
  %argp.next4 = getelementptr inbounds i8, ptr %argp.cur, i32 12
  store ptr %argp.next4, ptr %args, align 4
  %6 = ptrtoint ptr %argp.next2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %argp.next2, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %8 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %11)
  %cmp.i = icmp eq i16 %11, 256
  br i1 %cmp.i, label %if.end.i, label %if.then7

if.end.i:                                         ; preds = %if.end
  call void @check_leaf(ptr noundef nonnull %bh) #12
  %12 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 24
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %blk_nr_item.i, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15) #12
  %conv3.i = zext i16 %16 to i32
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #15
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %17 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %b_blocknr.i, align 8
  call void (ptr, ...) @reiserfs_printk(ptr noundef nonnull @.str.80, i64 noundef %18, ptr noundef nonnull %bh) #12
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %conv3.i
  %add.ptr6.i = getelementptr %struct.item_head, ptr %add.ptr.i, i32 -1
  call void (ptr, ...) @reiserfs_printk(ptr noundef nonnull @.str.81, ptr noundef %add.ptr.i.i.i, ptr noundef %add.ptr6.i) #12
  br label %if.end25

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp9.i = icmp sgt i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv3.i)
  %cmp11.not.i = icmp slt i32 %5, %conv3.i
  %or.cond.i = select i1 %cmp9.i, i1 %cmp11.not.i, i1 false
  %from.0.i = select i1 %or.cond.i, i32 %5, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15.i = icmp slt i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv3.i)
  %cmp18.i = icmp sgt i32 %7, %conv3.i
  %or.cond81.i = select i1 %cmp15.i, i1 true, i1 %cmp18.i
  %to.0.i = select i1 %or.cond81.i, i32 %conv3.i, i32 %7
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #15
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %from.0.i, i32 %to.0.i)
  %cmp3482.i = icmp ult i32 %from.0.i, %to.0.i
  br i1 %cmp3482.i, label %do.end38.preheader.i, label %if.end8.i.do.end49.i_crit_edge

if.end8.i.do.end49.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i

do.end38.preheader.i:                             ; preds = %if.end8.i
  %add.ptr23.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %from.0.i
  br label %do.end38.i

do.end38.i:                                       ; preds = %le_ih_k_type.exit.i.do.end38.i_crit_edge, %do.end38.preheader.i
  %ih.084.i = phi ptr [ %incdec.ptr.i, %le_ih_k_type.exit.i.do.end38.i_crit_edge ], [ %add.ptr23.i, %do.end38.preheader.i ]
  %i.083.i = phi i32 [ %inc.i, %le_ih_k_type.exit.i.do.end38.i_crit_edge ], [ %from.0.i, %do.end38.preheader.i ]
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #15
  call void (ptr, ...) @reiserfs_printk(ptr noundef nonnull @.str.90, i32 noundef %i.083.i, ptr noundef %ih.084.i) #12
  %ih_version.i.i = getelementptr inbounds %struct.item_head, ptr %ih.084.i, i32 0, i32 4
  %19 = ptrtoint ptr %ih_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %ih_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i.i.i = icmp eq i16 %20, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %ih.084.i, i32 0, i32 2
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %do.end38.i
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %k_uniqueness.i.i.i, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22) #12
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %23, label %sw.default.i.i.i.i [
    i32 0, label %if.then.i.i.i.le_ih_k_type.exit.i_crit_edge
    i32 -2, label %sw.bb1.i.i.i.i
    i32 -1, label %sw.bb2.i.i.i.i
    i32 500, label %sw.bb3.i.i.i.i
  ]

if.then.i.i.i.le_ih_k_type.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_ih_k_type.exit.i

sw.bb1.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_ih_k_type.exit.i

sw.bb2.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_ih_k_type.exit.i

sw.bb3.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_ih_k_type.exit.i

sw.default.i.i.i.i:                               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_ih_k_type.exit.i

if.else.i.i.i:                                    ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %u.i.i.i, align 1
  %27 = trunc i64 %26 to i32
  %28 = lshr i32 %27, 4
  %conv1.i.i.i.i = and i32 %28, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %conv1.i.i.i.i, 4
  %narrow.i.i.i = select i1 %cmp.i.i.i.i, i32 %conv1.i.i.i.i, i32 15
  br label %le_ih_k_type.exit.i

le_ih_k_type.exit.i:                              ; preds = %if.else.i.i.i, %sw.default.i.i.i.i, %sw.bb3.i.i.i.i, %sw.bb2.i.i.i.i, %sw.bb1.i.i.i.i, %if.then.i.i.i.le_ih_k_type.exit.i_crit_edge
  %retval.0.in.i.i.i = phi i32 [ %narrow.i.i.i, %if.else.i.i.i ], [ 15, %sw.default.i.i.i.i ], [ 3, %sw.bb3.i.i.i.i ], [ 2, %sw.bb2.i.i.i.i ], [ 1, %sw.bb1.i.i.i.i ], [ %23, %if.then.i.i.i.le_ih_k_type.exit.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %print_item.i = getelementptr inbounds %struct.item_operations, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %print_item.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %print_item.i, align 4
  %33 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data.i, align 4
  %ih_item_location.i.i = getelementptr inbounds %struct.item_head, ptr %ih.084.i, i32 0, i32 3
  %35 = ptrtoint ptr %ih_item_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %ih_item_location.i.i, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36) #12
  %conv.i.i = zext i16 %37 to i32
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %conv.i.i
  call void %32(ptr noundef %ih.084.i, ptr noundef %add.ptr.i.i) #12
  %inc.i = add i32 %i.083.i, 1
  %incdec.ptr.i = getelementptr %struct.item_head, ptr %ih.084.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %to.0.i
  br i1 %exitcond.not.i, label %le_ih_k_type.exit.i.do.end49.i_crit_edge, label %le_ih_k_type.exit.i.do.end38.i_crit_edge

le_ih_k_type.exit.i.do.end38.i_crit_edge:         ; preds = %le_ih_k_type.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38.i

le_ih_k_type.exit.i.do.end49.i_crit_edge:         ; preds = %le_ih_k_type.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i

do.end49.i:                                       ; preds = %le_ih_k_type.exit.i.do.end49.i_crit_edge, %if.end8.i.do.end49.i_crit_edge
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #15
  br label %if.end25

if.then7:                                         ; preds = %if.end
  %38 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41) #12
  %43 = add i16 %42, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %43)
  %44 = icmp ult i16 %43, 4
  br i1 %44, label %if.end.i42, label %if.then10

if.end.i42:                                       ; preds = %if.then7
  call void @check_internal(ptr noundef nonnull %bh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp7.i = icmp eq i32 %5, -1
  %45 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data.i, align 4
  %blk_nr_item.i37 = getelementptr inbounds %struct.block_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %blk_nr_item.i37 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %blk_nr_item.i37, align 2
  %49 = call i16 @llvm.bswap.i16(i16 %48) #12
  %conv11.i = zext i16 %49 to i32
  %50 = call i32 @llvm.smin.i32(i32 %conv11.i, i32 %7) #12
  %from.0.i38 = select i1 %cmp7.i, i32 0, i32 %5
  %to.0.i39 = select i1 %cmp7.i, i32 %conv11.i, i32 %50
  %b_blocknr.i40 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %51 = ptrtoint ptr %b_blocknr.i40 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %b_blocknr.i40, align 8
  call void (ptr, ...) @reiserfs_printk(ptr noundef nonnull @.str.95, i64 noundef %52, ptr noundef nonnull %bh) #12
  %53 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %54, i32 24
  %blk_nr_item23.i = getelementptr inbounds %struct.block_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %blk_nr_item23.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %blk_nr_item23.i, align 2
  %57 = call i16 @llvm.bswap.i16(i16 %56) #12
  %conv24.i = zext i16 %57 to i32
  %mul.i = shl nuw nsw i32 %conv24.i, 4
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i41, i32 %mul.i
  %mul26.i = shl i32 %from.0.i38, 3
  %add.ptr27.i = getelementptr i8, ptr %add.ptr25.i, i32 %mul26.i
  call void (ptr, ...) @reiserfs_printk(ptr noundef nonnull @.str.96, i32 noundef %from.0.i38, ptr noundef %add.ptr27.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %from.0.i38, i32 %to.0.i39)
  %cmp2873.i = icmp slt i32 %from.0.i38, %to.0.i39
  br i1 %cmp2873.i, label %for.body.preheader.i, label %if.end.i42.print_internal.exit.thread_crit_edge

if.end.i42.print_internal.exit.thread_crit_edge:  ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %print_internal.exit.thread

for.body.preheader.i:                             ; preds = %if.end.i42
  %58 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i.i.i43 = getelementptr i8, ptr %59, i32 24
  %arrayidx.i.i = getelementptr %struct.reiserfs_key, ptr %add.ptr.i.i.i43, i32 %from.0.i38
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %dc.076.pn.i = phi ptr [ %dc.076.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr27.i, %for.body.preheader.i ]
  %key.075.i = phi ptr [ %incdec.ptr36.i, %for.inc.i.for.body.i_crit_edge ], [ %arrayidx.i.i, %for.body.preheader.i ]
  %i.074.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ %from.0.i38, %for.body.preheader.i ]
  %dc.076.i = getelementptr %struct.disk_child, ptr %dc.076.pn.i, i32 1
  %add.i = add nsw i32 %i.074.i, 1
  call void (ptr, ...) @reiserfs_printk(ptr noundef nonnull @.str.97, i32 noundef %i.074.i, ptr noundef %key.075.i, i32 noundef %add.i, ptr noundef %dc.076.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.074.i)
  %tobool.not.i44 = icmp ne i32 %i.074.i, 0
  %60 = and i32 %i.074.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp31.i = icmp eq i32 %60, 0
  %or.cond71.i = and i1 %tobool.not.i44, %cmp31.i
  br i1 %or.cond71.i, label %do.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr36.i = getelementptr %struct.reiserfs_key, ptr %key.075.i, i32 1
  %exitcond.not.i45 = icmp eq i32 %add.i, %to.0.i39
  br i1 %exitcond.not.i45, label %for.inc.i.print_internal.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.print_internal.exit.thread_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %print_internal.exit.thread

print_internal.exit.thread:                       ; preds = %for.inc.i.print_internal.exit.thread_crit_edge, %if.end.i42.print_internal.exit.thread_crit_edge
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #15
  br label %if.end25

if.then10:                                        ; preds = %if.then7
  %61 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data.i, align 4
  %call.i = call i32 @is_reiserfs_3_5(ptr noundef %62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i48 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i48, label %if.else.i, label %if.then10.do.end.i51_crit_edge

if.then10.do.end.i51_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i51

if.else.i:                                        ; preds = %if.then10
  %call1.i = call i32 @is_reiserfs_3_6(ptr noundef %62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.else.i.do.end.i51_crit_edge

if.else.i.do.end.i51_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i51

if.else4.i:                                       ; preds = %if.else.i
  %call5.i = call i32 @is_reiserfs_jr(ptr noundef %62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then13, label %if.then7.i

if.then7.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #14
  %s_version.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %s_version.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %s_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %64)
  %cmp.i49 = icmp eq i16 %64, 512
  %cond.i = select i1 %cmp.i49, ptr @.str.102, ptr @.str.101
  br label %do.end.i51

do.end.i51:                                       ; preds = %if.then7.i, %if.else.i.do.end.i51_crit_edge, %if.then10.do.end.i51_crit_edge
  %version.0.i = phi ptr [ %cond.i, %if.then7.i ], [ @.str.101, %if.then10.do.end.i51_crit_edge ], [ @.str.102, %if.else.i.do.end.i51_crit_edge ]
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %65 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_bdev.i, align 8
  %b_blocknr.i50 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %67 = ptrtoint ptr %b_blocknr.i50 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %b_blocknr.i50, align 8
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %66, i64 noundef %68) #15
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull %version.0.i) #15
  %69 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %62, align 1
  %71 = call i32 @llvm.bswap.i32(i32 %70) #12
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %71) #15
  %s_blocksize.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 4
  %72 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %s_blocksize.i, align 1
  %74 = call i16 @llvm.bswap.i16(i16 %73) #12
  %conv29.i = zext i16 %74 to i32
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %conv29.i) #15
  %s_free_blocks.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 1
  %75 = ptrtoint ptr %s_free_blocks.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %s_free_blocks.i, align 1
  %77 = call i32 @llvm.bswap.i32(i32 %76) #12
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %77) #15
  %78 = ptrtoint ptr %b_blocknr.i50 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %b_blocknr.i50, align 8
  %conv38.i = trunc i64 %79 to i32
  %80 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %62, align 1
  %82 = call i32 @llvm.bswap.i32(i32 %81) #12
  %83 = xor i32 %conv38.i, -1
  %s_bmap_nr.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 12
  %84 = ptrtoint ptr %s_bmap_nr.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %s_bmap_nr.i, align 1
  %86 = call i16 @llvm.bswap.i16(i16 %85) #12
  %conv43.i = zext i16 %86 to i32
  %call45.i = call i32 @is_reiserfs_jr(ptr noundef %62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %do.end.i51
  call void @__sanitizer_cov_trace_pc() #14
  %jp_journal_size.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 3, i32 2
  %87 = ptrtoint ptr %jp_journal_size.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %jp_journal_size.i, align 1
  %89 = call i32 @llvm.bswap.i32(i32 %88) #12
  %add.i52 = add i32 %89, 1
  br label %cond.end.i

cond.false.i:                                     ; preds = %do.end.i51
  call void @__sanitizer_cov_trace_pc() #14
  %s_reserved_for_journal.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 14
  %90 = ptrtoint ptr %s_reserved_for_journal.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %s_reserved_for_journal.i, align 1
  %92 = call i16 @llvm.bswap.i16(i16 %91) #12
  %conv49.i = zext i16 %92 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond50.i = phi i32 [ %add.i52, %cond.true.i ], [ %conv49.i, %cond.false.i ]
  %93 = ptrtoint ptr %s_free_blocks.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %s_free_blocks.i, align 1
  %95 = call i32 @llvm.bswap.i32(i32 %94) #12
  %.neg = add i32 %82, %83
  %96 = add i32 %cond50.i, %conv43.i
  %97 = add i32 %96, %95
  %sub54.i = sub i32 %.neg, %97
  %98 = ptrtoint ptr %s_bmap_nr.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %s_bmap_nr.i, align 1
  %100 = call i16 @llvm.bswap.i16(i16 %99) #12
  %conv61.i = zext i16 %100 to i32
  %call62.i = call i32 @is_reiserfs_jr(ptr noundef %62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %cond.true64.i, label %cond.false69.i

cond.true64.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %jp_journal_size67.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 3, i32 2
  %101 = ptrtoint ptr %jp_journal_size67.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %jp_journal_size67.i, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %102) #12
  %add68.i = add i32 %103, 1
  br label %cond.end73.i

cond.false69.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %s_reserved_for_journal71.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 14
  %104 = ptrtoint ptr %s_reserved_for_journal71.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %s_reserved_for_journal71.i, align 1
  %106 = call i16 @llvm.bswap.i16(i16 %105) #12
  %conv72.i = zext i16 %106 to i32
  br label %cond.end73.i

cond.end73.i:                                     ; preds = %cond.false69.i, %cond.true64.i
  %cond74.i = phi i32 [ %add68.i, %cond.true64.i ], [ %conv72.i, %cond.false69.i ]
  %call75.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %conv38.i, i32 noundef %conv61.i, i32 noundef %cond74.i, i32 noundef %sub54.i) #15
  %s_root_block.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 2
  %107 = ptrtoint ptr %s_root_block.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %s_root_block.i, align 1
  %109 = call i32 @llvm.bswap.i32(i32 %108) #12
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %109) #15
  %s_journal87.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 3
  %110 = ptrtoint ptr %s_journal87.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %s_journal87.i, align 1
  %112 = call i32 @llvm.bswap.i32(i32 %111) #12
  %call88.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %112) #15
  %jp_journal_dev.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 3, i32 1
  %113 = ptrtoint ptr %jp_journal_dev.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %jp_journal_dev.i, align 1
  %115 = call i32 @llvm.bswap.i32(i32 %114) #12
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %115) #15
  %jp_journal_size102.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 3, i32 2
  %116 = ptrtoint ptr %jp_journal_size102.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %jp_journal_size102.i, align 1
  %118 = call i32 @llvm.bswap.i32(i32 %117) #12
  %call103.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %118) #15
  %s_fs_state.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 9
  %119 = ptrtoint ptr %s_fs_state.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %s_fs_state.i, align 1
  %121 = call i16 @llvm.bswap.i16(i16 %120) #12
  %conv109.i = zext i16 %121 to i32
  %call110.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %conv109.i) #15
  %s_hash_function_code.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 10
  %122 = ptrtoint ptr %s_hash_function_code.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %s_hash_function_code.i, align 1
  %124 = call i32 @llvm.bswap.i32(i32 %123) #12
  %switch.tableidx = add i32 %124, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %125 = icmp ult i32 %switch.tableidx, 3
  br i1 %125, label %switch.lookup, label %cond.end73.i.print_super_block.exit.thread_crit_edge

cond.end73.i.print_super_block.exit.thread_crit_edge: ; preds = %cond.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %print_super_block.exit.thread

switch.lookup:                                    ; preds = %cond.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.print_block, i32 0, i32 %switch.tableidx
  %126 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %126)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %print_super_block.exit.thread

print_super_block.exit.thread:                    ; preds = %switch.lookup, %cond.end73.i.print_super_block.exit.thread_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.35, %cond.end73.i.print_super_block.exit.thread_crit_edge ]
  %call117.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull %retval.0.i.i) #15
  %s_tree_height.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 11
  %127 = ptrtoint ptr %s_tree_height.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %s_tree_height.i, align 1
  %129 = call i16 @llvm.bswap.i16(i16 %128) #12
  %conv123.i = zext i16 %129 to i32
  %call124.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %conv123.i) #15
  br label %if.end25

if.then13:                                        ; preds = %if.else4.i
  %130 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %b_data.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %132 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %b_size.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %131, i32 %133
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i55, i32 -12
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr1.i, ptr noundef nonnull dereferenceable(8) @.str.141, i32 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i56 = icmp eq i32 %bcmp.i, 0
  %b_blocknr.i57 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %134 = ptrtoint ptr %b_blocknr.i57 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %b_blocknr.i57, align 8
  br i1 %tobool.not.i56, label %print_desc_block.exit.thread, label %do.end19

print_desc_block.exit.thread:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %131, align 4
  %138 = call i32 @llvm.bswap.i32(i32 %137) #12
  %j_mount_id.i = getelementptr inbounds %struct.reiserfs_journal_desc, ptr %131, i32 0, i32 2
  %139 = ptrtoint ptr %j_mount_id.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %j_mount_id.i, align 4
  %141 = call i32 @llvm.bswap.i32(i32 %140) #12
  %j_len.i = getelementptr inbounds %struct.reiserfs_journal_desc, ptr %131, i32 0, i32 1
  %142 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %j_len.i, align 4
  %144 = call i32 @llvm.bswap.i32(i32 %143) #12
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i64 noundef %135, i32 noundef %138, i32 noundef %141, i32 noundef %144) #15
  br label %if.end25

do.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i64 noundef %135) #15
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %print_desc_block.exit.thread, %print_super_block.exit.thread, %print_internal.exit.thread, %do.end49.i, %if.then5.i
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @store_print_tb(ptr noundef readonly %tb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tb_sb = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %tb_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_sb, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_do_balance = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %s_do_balance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_do_balance, align 4
  %6 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tb, align 8
  %tb_path = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %8 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tb_path, align 8
  %path_elements = getelementptr inbounds %struct.treepath, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %11, i32 1
  %12 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pe_position, align 4
  %pos_in_item = getelementptr inbounds %struct.treepath, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %pos_in_item to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos_in_item, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @print_tb_buf, ptr noundef nonnull @.str.41, i32 noundef %5, i32 noundef %7, i32 noundef %13, i32 noundef %15)
  br label %for.body

for.body:                                         ; preds = %cond.end118.for.body_crit_edge, %if.end
  %h.0321 = phi i32 [ 0, %if.end ], [ %inc, %cond.end118.for.body_crit_edge ]
  %16 = ptrtoint ptr %tb_path to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tb_path, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %sub = sub i32 %19, %h.0321
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %19)
  %cmp8.not = icmp sle i32 %sub, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp12 = icmp sgt i32 %sub, 1
  %or.cond = and i1 %cmp8.not, %cmp12
  br i1 %or.cond, label %if.end29, label %if.end29.thread

if.end29.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call30300 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  br label %cond.end37

if.end29:                                         ; preds = %for.body
  %path_elements15 = getelementptr inbounds %struct.treepath, ptr %17, i32 0, i32 2
  %add.ptr20 = getelementptr %struct.path_element, ptr %path_elements15, i32 %sub
  %20 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr20, align 4
  %add.neg = xor i32 %h.0321, -1
  %sub26 = add i32 %19, %add.neg
  %add.ptr27 = getelementptr %struct.path_element, ptr %path_elements15, i32 %sub26
  %22 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr27, align 4
  %call30 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %if.end29.cond.end37_crit_edge, label %cond.true34

if.end29.cond.end37_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end37

cond.true34:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %b_blocknr, align 8
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count, i32 noundef 4) #12
  %26 = ptrtoint ptr %b_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %b_count, align 4
  br label %cond.end37

cond.end37:                                       ; preds = %cond.true34, %if.end29.cond.end37_crit_edge, %if.end29.thread
  %cond314 = phi i64 [ %25, %cond.true34 ], [ -1, %if.end29.cond.end37_crit_edge ], [ -1, %if.end29.thread ]
  %tbFh.0304313 = phi ptr [ %23, %cond.true34 ], [ %23, %if.end29.cond.end37_crit_edge ], [ null, %if.end29.thread ]
  %call30.pn = phi i32 [ %call30, %cond.true34 ], [ %call30, %if.end29.cond.end37_crit_edge ], [ %call30300, %if.end29.thread ]
  %cond38 = phi i32 [ %27, %cond.true34 ], [ -1, %if.end29.cond.end37_crit_edge ], [ -1, %if.end29.thread ]
  %add.ptr31305312 = getelementptr i8, ptr @print_tb_buf, i32 %call30.pn
  %arrayidx = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 5, i32 %h.0321
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %tobool39.not = icmp eq ptr %29, null
  br i1 %tobool39.not, label %cond.end37.cond.end56_crit_edge, label %cond.true50

cond.end37.cond.end56_crit_edge:                  ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end56

cond.true50:                                      ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr43 = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %b_blocknr43 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %b_blocknr43, align 8
  %b_count53 = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 11
  %call.i.i295 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count53, i32 noundef 4) #12
  %32 = ptrtoint ptr %b_count53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %b_count53, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.true50, %cond.end37.cond.end56_crit_edge
  %cond46316 = phi i64 [ %31, %cond.true50 ], [ -1, %cond.end37.cond.end56_crit_edge ]
  %cond57 = phi i32 [ %33, %cond.true50 ], [ -1, %cond.end37.cond.end56_crit_edge ]
  %arrayidx58 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 6, i32 %h.0321
  %34 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %35, null
  br i1 %tobool59.not, label %cond.end56.cond.end76_crit_edge, label %cond.true70

cond.end56.cond.end76_crit_edge:                  ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end76

cond.true70:                                      ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr63 = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %b_blocknr63 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %b_blocknr63, align 8
  %b_count73 = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 11
  %call.i.i296 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count73, i32 noundef 4) #12
  %38 = ptrtoint ptr %b_count73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %b_count73, align 4
  br label %cond.end76

cond.end76:                                       ; preds = %cond.true70, %cond.end56.cond.end76_crit_edge
  %cond66318 = phi i64 [ %37, %cond.true70 ], [ -1, %cond.end56.cond.end76_crit_edge ]
  %cond77 = phi i32 [ %39, %cond.true70 ], [ -1, %cond.end56.cond.end76_crit_edge ]
  %tobool78.not = icmp eq ptr %tbFh.0304313, null
  br i1 %tobool78.not, label %cond.end76.cond.end82_crit_edge, label %cond.true79

cond.end76.cond.end82_crit_edge:                  ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end82

cond.true79:                                      ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr80 = getelementptr inbounds %struct.buffer_head, ptr %tbFh.0304313, i32 0, i32 3
  %40 = ptrtoint ptr %b_blocknr80 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %b_blocknr80, align 8
  br label %cond.end82

cond.end82:                                       ; preds = %cond.true79, %cond.end76.cond.end82_crit_edge
  %cond83 = phi i64 [ %41, %cond.true79 ], [ -1, %cond.end76.cond.end82_crit_edge ]
  %arrayidx84 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 7, i32 %h.0321
  %42 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx84, align 4
  %tobool85.not = icmp eq ptr %43, null
  br i1 %tobool85.not, label %cond.end82.cond.end91_crit_edge, label %cond.true86

cond.end82.cond.end91_crit_edge:                  ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end91

cond.true86:                                      ; preds = %cond.end82
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr89 = getelementptr inbounds %struct.buffer_head, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %b_blocknr89 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %b_blocknr89, align 8
  br label %cond.end91

cond.end91:                                       ; preds = %cond.true86, %cond.end82.cond.end91_crit_edge
  %cond92 = phi i64 [ %45, %cond.true86 ], [ -1, %cond.end82.cond.end91_crit_edge ]
  %arrayidx93 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 8, i32 %h.0321
  %46 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx93, align 4
  %tobool94.not = icmp eq ptr %47, null
  br i1 %tobool94.not, label %cond.end91.cond.end100_crit_edge, label %cond.true95

cond.end91.cond.end100_crit_edge:                 ; preds = %cond.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end100

cond.true95:                                      ; preds = %cond.end91
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr98 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %b_blocknr98 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %b_blocknr98, align 8
  br label %cond.end100

cond.end100:                                      ; preds = %cond.true95, %cond.end91.cond.end100_crit_edge
  %cond101 = phi i64 [ %49, %cond.true95 ], [ -1, %cond.end91.cond.end100_crit_edge ]
  %arrayidx102 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 9, i32 %h.0321
  %50 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx102, align 4
  %tobool103.not = icmp eq ptr %51, null
  br i1 %tobool103.not, label %cond.end100.cond.end109_crit_edge, label %cond.true104

cond.end100.cond.end109_crit_edge:                ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end109

cond.true104:                                     ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr107 = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %b_blocknr107 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %b_blocknr107, align 8
  br label %cond.end109

cond.end109:                                      ; preds = %cond.true104, %cond.end100.cond.end109_crit_edge
  %cond110 = phi i64 [ %53, %cond.true104 ], [ -1, %cond.end100.cond.end109_crit_edge ]
  %arrayidx111 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 10, i32 %h.0321
  %54 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx111, align 4
  %tobool112.not = icmp eq ptr %55, null
  br i1 %tobool112.not, label %cond.end109.cond.end118_crit_edge, label %cond.true113

cond.end109.cond.end118_crit_edge:                ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end118

cond.true113:                                     ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr116 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %b_blocknr116 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %b_blocknr116, align 8
  br label %cond.end118

cond.end118:                                      ; preds = %cond.true113, %cond.end109.cond.end118_crit_edge
  %cond119 = phi i64 [ %57, %cond.true113 ], [ -1, %cond.end109.cond.end118_crit_edge ]
  %call120 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr31305312, ptr noundef nonnull @.str.42, i32 noundef %h.0321, i64 noundef %cond314, i32 noundef %cond38, i64 noundef %cond46316, i32 noundef %cond57, i64 noundef %cond66318, i32 noundef %cond77, i64 noundef %cond83, i64 noundef %cond92, i64 noundef %cond101, i64 noundef %cond110, i64 noundef %cond119)
  %inc = add nuw nsw i32 %h.0321, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %cond.end118.for.body_crit_edge

cond.end118.for.body_crit_edge:                   ; preds = %cond.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cond.end118
  %call121 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  %add.ptr122 = getelementptr i8, ptr @print_tb_buf, i32 %call121
  %insert_size = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 18
  %58 = ptrtoint ptr %insert_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %insert_size, align 4
  %lnum = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 14
  %60 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lnum, align 4
  %lbytes = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 22
  %62 = ptrtoint ptr %lbytes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lbytes, align 4
  %rnum = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 15
  %64 = ptrtoint ptr %rnum to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rnum, align 8
  %rbytes = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 23
  %66 = ptrtoint ptr %rbytes to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rbytes, align 8
  %blknum = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 19
  %68 = ptrtoint ptr %blknum to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %blknum, align 8
  %s0num = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 21
  %70 = ptrtoint ptr %s0num to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s0num, align 8
  %snum = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 26
  %72 = ptrtoint ptr %snum to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %snum, align 8
  %sbytes = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 27
  %74 = ptrtoint ptr %sbytes to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sbytes, align 8
  %arrayidx130 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 26, i32 1
  %76 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx130, align 4
  %arrayidx132 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 27, i32 1
  %78 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx132, align 4
  %cur_blknum = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 20
  %80 = ptrtoint ptr %cur_blknum to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cur_blknum, align 4
  %lkey = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 16
  %82 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lkey, align 4
  %rkey = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 17
  %84 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rkey, align 8
  %call135 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr122, ptr noundef nonnull @.str.43, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85)
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.end
  %h.1 = phi i32 [ 0, %for.end ], [ %inc136, %do.body.do.body_crit_edge ]
  %inc136 = add i32 %h.1, 1
  %call137 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  %add.ptr138 = getelementptr i8, ptr @print_tb_buf, i32 %call137
  %arrayidx140 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 18, i32 %inc136
  %86 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx140, align 4
  %arrayidx142 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 14, i32 %inc136
  %88 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx142, align 4
  %arrayidx144 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 15, i32 %inc136
  %90 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx144, align 4
  %arrayidx146 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 19, i32 %inc136
  %92 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx146, align 4
  %call147 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr138, ptr noundef nonnull @.str.44, i32 noundef %inc136, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93)
  %94 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx140, align 4
  %tobool150.not = icmp eq i32 %95, 0
  br i1 %tobool150.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  %call151 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  %add.ptr152 = getelementptr i8, ptr @print_tb_buf, i32 %call151
  %96 = call ptr @memcpy(ptr %add.ptr152, ptr @.str.45, i32 81)
  %call157 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  %add.ptr158 = getelementptr i8, ptr @print_tb_buf, i32 %call157
  %arrayidx159 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 0
  %97 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx159, align 4
  %tobool162.not = icmp eq ptr %98, null
  br i1 %tobool162.not, label %do.end.cond.end179_crit_edge, label %cond.true173

do.end.cond.end179_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end179

cond.true173:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr166 = getelementptr inbounds %struct.buffer_head, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %b_blocknr166 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %b_blocknr166, align 8
  %b_count176 = getelementptr inbounds %struct.buffer_head, ptr %98, i32 0, i32 11
  %call.i.i297 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count176, i32 noundef 4) #12
  %101 = ptrtoint ptr %b_count176 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %b_count176, align 4
  br label %cond.end179

cond.end179:                                      ; preds = %cond.true173, %do.end.cond.end179_crit_edge
  %cond169320 = phi i64 [ %100, %cond.true173 ], [ 0, %do.end.cond.end179_crit_edge ]
  %cond180 = phi i32 [ %102, %cond.true173 ], [ 0, %do.end.cond.end179_crit_edge ]
  %call183 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr158, ptr noundef nonnull @.str.46, ptr noundef %98, i64 noundef %cond169320, i32 noundef %cond180, ptr noundef nonnull @.str.48)
  %call157.1 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  %add.ptr158.1 = getelementptr i8, ptr @print_tb_buf, i32 %call157.1
  %arrayidx159.1 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 1
  %103 = ptrtoint ptr %arrayidx159.1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx159.1, align 4
  %tobool162.not.1 = icmp eq ptr %104, null
  br i1 %tobool162.not.1, label %cond.end179.cond.end179.1_crit_edge, label %cond.true173.1

cond.end179.cond.end179.1_crit_edge:              ; preds = %cond.end179
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end179.1

cond.true173.1:                                   ; preds = %cond.end179
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr166.1 = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %b_blocknr166.1 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %b_blocknr166.1, align 8
  %b_count176.1 = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 11
  %call.i.i297.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count176.1, i32 noundef 4) #12
  %107 = ptrtoint ptr %b_count176.1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %b_count176.1, align 4
  br label %cond.end179.1

cond.end179.1:                                    ; preds = %cond.true173.1, %cond.end179.cond.end179.1_crit_edge
  %cond169320.1 = phi i64 [ %106, %cond.true173.1 ], [ 0, %cond.end179.cond.end179.1_crit_edge ]
  %cond180.1 = phi i32 [ %108, %cond.true173.1 ], [ 0, %cond.end179.cond.end179.1_crit_edge ]
  %call183.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr158.1, ptr noundef nonnull @.str.46, ptr noundef %104, i64 noundef %cond169320.1, i32 noundef %cond180.1, ptr noundef nonnull @.str.48)
  %call157.2 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  %add.ptr158.2 = getelementptr i8, ptr @print_tb_buf, i32 %call157.2
  %arrayidx159.2 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 2
  %109 = ptrtoint ptr %arrayidx159.2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx159.2, align 4
  %tobool162.not.2 = icmp eq ptr %110, null
  br i1 %tobool162.not.2, label %cond.end179.1.cond.end179.2_crit_edge, label %cond.true173.2

cond.end179.1.cond.end179.2_crit_edge:            ; preds = %cond.end179.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end179.2

cond.true173.2:                                   ; preds = %cond.end179.1
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr166.2 = getelementptr inbounds %struct.buffer_head, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %b_blocknr166.2 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %b_blocknr166.2, align 8
  %b_count176.2 = getelementptr inbounds %struct.buffer_head, ptr %110, i32 0, i32 11
  %call.i.i297.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count176.2, i32 noundef 4) #12
  %113 = ptrtoint ptr %b_count176.2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %b_count176.2, align 4
  br label %cond.end179.2

cond.end179.2:                                    ; preds = %cond.true173.2, %cond.end179.1.cond.end179.2_crit_edge
  %cond169320.2 = phi i64 [ %112, %cond.true173.2 ], [ 0, %cond.end179.1.cond.end179.2_crit_edge ]
  %cond180.2 = phi i32 [ %114, %cond.true173.2 ], [ 0, %cond.end179.1.cond.end179.2_crit_edge ]
  %call183.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr158.2, ptr noundef nonnull @.str.46, ptr noundef %110, i64 noundef %cond169320.2, i32 noundef %cond180.2, ptr noundef nonnull @.str.48)
  %call157.3 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  %add.ptr158.3 = getelementptr i8, ptr @print_tb_buf, i32 %call157.3
  %arrayidx159.3 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 3
  %115 = ptrtoint ptr %arrayidx159.3 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx159.3, align 4
  %tobool162.not.3 = icmp eq ptr %116, null
  br i1 %tobool162.not.3, label %cond.end179.2.cond.end179.3_crit_edge, label %cond.true173.3

cond.end179.2.cond.end179.3_crit_edge:            ; preds = %cond.end179.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end179.3

cond.true173.3:                                   ; preds = %cond.end179.2
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr166.3 = getelementptr inbounds %struct.buffer_head, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %b_blocknr166.3 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %b_blocknr166.3, align 8
  %b_count176.3 = getelementptr inbounds %struct.buffer_head, ptr %116, i32 0, i32 11
  %call.i.i297.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count176.3, i32 noundef 4) #12
  %119 = ptrtoint ptr %b_count176.3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %b_count176.3, align 4
  br label %cond.end179.3

cond.end179.3:                                    ; preds = %cond.true173.3, %cond.end179.2.cond.end179.3_crit_edge
  %cond169320.3 = phi i64 [ %118, %cond.true173.3 ], [ 0, %cond.end179.2.cond.end179.3_crit_edge ]
  %cond180.3 = phi i32 [ %120, %cond.true173.3 ], [ 0, %cond.end179.2.cond.end179.3_crit_edge ]
  %call183.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr158.3, ptr noundef nonnull @.str.46, ptr noundef %116, i64 noundef %cond169320.3, i32 noundef %cond180.3, ptr noundef nonnull @.str.48)
  %call157.4 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  %add.ptr158.4 = getelementptr i8, ptr @print_tb_buf, i32 %call157.4
  %arrayidx159.4 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 4
  %121 = ptrtoint ptr %arrayidx159.4 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx159.4, align 4
  %tobool162.not.4 = icmp eq ptr %122, null
  br i1 %tobool162.not.4, label %cond.end179.3.cond.end179.4_crit_edge, label %cond.true173.4

cond.end179.3.cond.end179.4_crit_edge:            ; preds = %cond.end179.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end179.4

cond.true173.4:                                   ; preds = %cond.end179.3
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr166.4 = getelementptr inbounds %struct.buffer_head, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %b_blocknr166.4 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %b_blocknr166.4, align 8
  %b_count176.4 = getelementptr inbounds %struct.buffer_head, ptr %122, i32 0, i32 11
  %call.i.i297.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count176.4, i32 noundef 4) #12
  %125 = ptrtoint ptr %b_count176.4 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %b_count176.4, align 4
  br label %cond.end179.4

cond.end179.4:                                    ; preds = %cond.true173.4, %cond.end179.3.cond.end179.4_crit_edge
  %cond169320.4 = phi i64 [ %124, %cond.true173.4 ], [ 0, %cond.end179.3.cond.end179.4_crit_edge ]
  %cond180.4 = phi i32 [ %126, %cond.true173.4 ], [ 0, %cond.end179.3.cond.end179.4_crit_edge ]
  %call183.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr158.4, ptr noundef nonnull @.str.46, ptr noundef %122, i64 noundef %cond169320.4, i32 noundef %cond180.4, ptr noundef nonnull @.str.48)
  %call157.5 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  %add.ptr158.5 = getelementptr i8, ptr @print_tb_buf, i32 %call157.5
  %arrayidx159.5 = getelementptr %struct.tree_balance, ptr %tb, i32 0, i32 11, i32 5
  %127 = ptrtoint ptr %arrayidx159.5 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx159.5, align 4
  %tobool162.not.5 = icmp eq ptr %128, null
  br i1 %tobool162.not.5, label %cond.end179.4.cond.end179.5_crit_edge, label %cond.true173.5

cond.end179.4.cond.end179.5_crit_edge:            ; preds = %cond.end179.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end179.5

cond.true173.5:                                   ; preds = %cond.end179.4
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr166.5 = getelementptr inbounds %struct.buffer_head, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %b_blocknr166.5 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %b_blocknr166.5, align 8
  %b_count176.5 = getelementptr inbounds %struct.buffer_head, ptr %128, i32 0, i32 11
  %call.i.i297.5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count176.5, i32 noundef 4) #12
  %131 = ptrtoint ptr %b_count176.5 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %b_count176.5, align 4
  br label %cond.end179.5

cond.end179.5:                                    ; preds = %cond.true173.5, %cond.end179.4.cond.end179.5_crit_edge
  %cond169320.5 = phi i64 [ %130, %cond.true173.5 ], [ 0, %cond.end179.4.cond.end179.5_crit_edge ]
  %cond180.5 = phi i32 [ %132, %cond.true173.5 ], [ 0, %cond.end179.4.cond.end179.5_crit_edge ]
  %call183.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr158.5, ptr noundef nonnull @.str.46, ptr noundef %128, i64 noundef %cond169320.5, i32 noundef %cond180.5, ptr noundef nonnull @.str.47)
  %call187 = tail call i32 @strlen(ptr noundef nonnull @print_tb_buf) #19
  %add.ptr188 = getelementptr i8, ptr @print_tb_buf, i32 %call187
  %133 = call ptr @memcpy(ptr %add.ptr188, ptr @.str.49, i32 71)
  br label %cleanup

cleanup:                                          ; preds = %cond.end179.5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_cur_tb(ptr noundef %mes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %mes, ptr noundef nonnull @print_tb_buf) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @check_leaf(ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data.i, align 4
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %blk_nr_item.i, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #12
  %conv.i = zext i16 %4 to i32
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %5 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_size.i, align 8
  %sub.i = add i32 %6, -24
  %div.i = udiv i32 %sub.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %div.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @__func__.check_leaf_block_head, ptr noundef nonnull @.str.145, ptr noundef nonnull %bh) #20
  unreachable

if.end.i:                                         ; preds = %if.end
  %blk_free_space.i = getelementptr inbounds %struct.block_head, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %blk_free_space.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %blk_free_space.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #12
  %conv2.i = zext i16 %9 to i32
  %mul.neg.i = mul nsw i32 %conv.i, -24
  %sub5.i = add i32 %mul.neg.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i, i32 %conv2.i)
  %cmp6.i = icmp ult i32 %sub5.i, %conv2.i
  br i1 %cmp6.i, label %if.then8.i, label %check_leaf_block_head.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @__func__.check_leaf_block_head, ptr noundef nonnull @.str.147, ptr noundef nonnull %bh) #20
  unreachable

check_leaf_block_head.exit:                       ; preds = %if.end.i
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %blk_nr_item15 = getelementptr inbounds %struct.block_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %blk_nr_item15 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %blk_nr_item15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp17.not = icmp eq i16 %13, 0
  br i1 %cmp17.not, label %check_leaf_block_head.exit.cleanup_crit_edge, label %for.body.preheader

check_leaf_block_head.exit.cleanup_crit_edge:     ; preds = %check_leaf_block_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %check_leaf_block_head.exit
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 24
  br label %for.body

for.body:                                         ; preds = %le_ih_k_type.exit.for.body_crit_edge, %for.body.preheader
  %14 = phi ptr [ %33, %le_ih_k_type.exit.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %ih.019 = phi ptr [ %incdec.ptr, %le_ih_k_type.exit.for.body_crit_edge ], [ %add.ptr.i.i, %for.body.preheader ]
  %i.018 = phi i32 [ %inc, %le_ih_k_type.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %ih.019, i32 0, i32 4
  %15 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i.i = icmp eq i16 %16, 0
  %u.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %ih.019, i32 0, i32 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body
  %k_uniqueness.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %k_uniqueness.i.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %19, label %sw.default.i.i.i [
    i32 0, label %if.then.i.i.le_ih_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i.i
    i32 -1, label %sw.bb2.i.i.i
    i32 500, label %sw.bb3.i.i.i
  ]

if.then.i.i.le_ih_k_type.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_ih_k_type.exit

sw.bb1.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_ih_k_type.exit

sw.bb2.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_ih_k_type.exit

sw.bb3.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_ih_k_type.exit

sw.default.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_ih_k_type.exit

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %u.i.i, align 1
  %23 = trunc i64 %22 to i32
  %24 = lshr i32 %23, 4
  %conv1.i.i.i = and i32 %24, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i)
  %cmp.i.i.i = icmp ult i32 %conv1.i.i.i, 4
  %narrow.i.i = select i1 %cmp.i.i.i, i32 %conv1.i.i.i, i32 15
  br label %le_ih_k_type.exit

le_ih_k_type.exit:                                ; preds = %if.else.i.i, %sw.default.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.then.i.i.le_ih_k_type.exit_crit_edge
  %retval.0.in.i.i = phi i32 [ %narrow.i.i, %if.else.i.i ], [ 15, %sw.default.i.i.i ], [ 3, %sw.bb3.i.i.i ], [ 2, %sw.bb2.i.i.i ], [ 1, %sw.bb1.i.i.i ], [ %19, %if.then.i.i.le_ih_k_type.exit_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %check_item = getelementptr inbounds %struct.item_operations, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %check_item to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %check_item, align 4
  %ih_item_location.i = getelementptr inbounds %struct.item_head, ptr %ih.019, i32 0, i32 3
  %29 = ptrtoint ptr %ih_item_location.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %ih_item_location.i, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #12
  %conv.i14 = zext i16 %31 to i32
  %add.ptr.i = getelementptr i8, ptr %14, i32 %conv.i14
  tail call void %28(ptr noundef %ih.019, ptr noundef %add.ptr.i) #12
  %inc = add nuw nsw i32 %i.018, 1
  %incdec.ptr = getelementptr %struct.item_head, ptr %ih.019, i32 1
  %32 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data.i, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %blk_nr_item, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %conv = zext i16 %36 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %le_ih_k_type.exit.for.body_crit_edge, label %le_ih_k_type.exit.cleanup_crit_edge

le_ih_k_type.exit.cleanup_crit_edge:              ; preds = %le_ih_k_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

le_ih_k_type.exit.for.body_crit_edge:             ; preds = %le_ih_k_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %le_ih_k_type.exit.cleanup_crit_edge, %check_leaf_block_head.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @check_internal(ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bh, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #12
  %5 = add i16 %4, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %6 = icmp ult i16 %5, 4
  br i1 %6, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.check_internal_block_head, ptr noundef nonnull @.str.149, ptr noundef nonnull %bh) #20
  unreachable

if.end.i:                                         ; preds = %if.end
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %blk_nr_item.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #12
  %conv8.i = zext i16 %9 to i32
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %10 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b_size.i, align 8
  %sub.i = add i32 %11, -24
  %div.i = udiv i32 %sub.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv8.i)
  %cmp9.i = icmp ult i32 %div.i, %conv8.i
  br i1 %cmp9.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @__func__.check_internal_block_head, ptr noundef nonnull @.str.145, ptr noundef nonnull %bh) #20
  unreachable

if.end12.i:                                       ; preds = %if.end.i
  %blk_free_space.i = getelementptr inbounds %struct.block_head, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %blk_free_space.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %blk_free_space.i, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #12
  %conv14.i = zext i16 %14 to i32
  %reass.mul.i = mul nsw i32 %conv8.i, -24
  %mul24.neg.i = add i32 %11, -32
  %sub25.i = add i32 %mul24.neg.i, %reass.mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub25.i, i32 %conv14.i)
  %cmp26.not.i = icmp eq i32 %sub25.i, %conv14.i
  br i1 %cmp26.not.i, label %if.end12.i.return_crit_edge, label %if.then28.i

if.end12.i.return_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then28.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @__func__.check_internal_block_head, ptr noundef nonnull @.str.147, ptr noundef nonnull %bh) #20
  unreachable

return:                                           ; preds = %if.end12.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @print_statistics(ptr nocapture noundef %s) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scnprintf_le_key(ptr noundef %buf, i32 noundef %size, ptr noundef readonly %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %key, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %k_objectid = getelementptr inbounds %struct.reiserfs_key, ptr %key, i32 0, i32 1
  %3 = ptrtoint ptr %k_objectid to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %k_objectid, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %u.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %key, i32 0, i32 2
  %6 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %u.i.i, align 1
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 4
  %conv1.i.i.i = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %conv1.i.i.i, 3
  %phi.cast.i.i.i = trunc i32 %conv1.i.i.i to i16
  %10 = add nsw i16 %phi.cast.i.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %10)
  %switch9.i.i = icmp ult i16 %10, -3
  %switch.i.i = select i1 %cmp.i.i.i, i1 true, i1 %switch9.i.i
  br i1 %switch.i.i, label %if.then.i.i, label %le_key_k_type.exit.i

if.then.i.i:                                      ; preds = %if.then
  %k_uniqueness.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %k_uniqueness.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %12)
  %cond.i = icmp eq i32 %12, -201261056
  %13 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %u.i.i, align 1
  br i1 %cond.i, label %cond.true.i9.i, label %cond.true.i16.i

le_key_k_type.exit.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.i.i.i)
  %cmp31.i = icmp eq i32 %conv1.i.i.i, 3
  br i1 %cmp31.i, label %cond.false.i10.i, label %cond.false.i17.i

cond.true.i9.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = and i32 %14, -2130706561
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  %and28.i = zext i32 %16 to i64
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %conv.i8.i = zext i32 %17 to i64
  br label %le_key_k_offset.exit12.i

cond.false.i10.i:                                 ; preds = %le_key_k_type.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = and i64 %7, -9151314996867629056
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #12
  %20 = and i64 %7, -241
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #12
  br label %le_key_k_offset.exit12.i

le_key_k_offset.exit12.i:                         ; preds = %cond.false.i10.i, %cond.true.i9.i
  %and29.i = phi i64 [ %and28.i, %cond.true.i9.i ], [ %19, %cond.false.i10.i ]
  %cond.i11.i = phi i64 [ %conv.i8.i, %cond.true.i9.i ], [ %21, %cond.false.i10.i ]
  %and4.i = and i64 %cond.i11.i, 127
  %call5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @off_buf, ptr noundef nonnull @.str.56, i64 noundef %and29.i, i64 noundef %and4.i) #12
  br label %le_offset.exit

cond.true.i16.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %conv.i15.i = zext i32 %22 to i64
  br label %le_key_k_offset.exit19.i

cond.false.i17.i:                                 ; preds = %le_key_k_type.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = and i64 %7, -241
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #12
  br label %le_key_k_offset.exit19.i

le_key_k_offset.exit19.i:                         ; preds = %cond.false.i17.i, %cond.true.i16.i
  %cond.i18.i = phi i64 [ %conv.i15.i, %cond.true.i16.i ], [ %24, %cond.false.i17.i ]
  %call7.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @off_buf, ptr noundef nonnull @.str.57, i64 noundef %cond.i18.i) #12
  br label %le_offset.exit

le_offset.exit:                                   ; preds = %le_key_k_offset.exit19.i, %le_key_k_offset.exit12.i
  %25 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %u.i.i, align 1
  %27 = trunc i64 %26 to i32
  %28 = lshr i32 %27, 4
  %conv1.i.i.i11 = and i32 %28, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.i.i.i11)
  %cmp.i.i.i12 = icmp ugt i32 %conv1.i.i.i11, 3
  %phi.cast.i.i.i13 = trunc i32 %conv1.i.i.i11 to i16
  %29 = add nsw i16 %phi.cast.i.i.i13, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %29)
  %switch9.i.i14 = icmp ult i16 %29, -3
  %switch.i.i15 = select i1 %cmp.i.i.i12, i1 true, i1 %switch9.i.i14
  br i1 %switch.i.i15, label %if.then.i.i18, label %le_key_k_type.exit.i19

if.then.i.i18:                                    ; preds = %le_offset.exit
  %k_uniqueness.i.i16 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %k_uniqueness.i.i16 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %k_uniqueness.i.i16, align 1
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %31, label %if.then.i57.i [
    i32 0, label %if.then.i.i18.le_type.exit_crit_edge
    i32 -201261056, label %le_type.exit.fold.split
    i32 -1, label %le_type.exit.fold.split20
  ]

if.then.i.i18.le_type.exit_crit_edge:             ; preds = %if.then.i.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_type.exit

le_key_k_type.exit.i19:                           ; preds = %le_offset.exit
  %33 = zext i32 %conv1.i.i.i11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %conv1.i.i.i11, label %if.else.i65.i [
    i32 0, label %le_key_k_type.exit.i19.le_type.exit_crit_edge
    i32 3, label %cleanup.fold.split.i
    i32 2, label %cleanup.fold.split96.i
  ]

le_key_k_type.exit.i19.le_type.exit_crit_edge:    ; preds = %le_key_k_type.exit.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_type.exit

if.then.i57.i:                                    ; preds = %if.then.i.i18
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %31)
  %cond97.i = icmp eq i32 %31, -16777217
  %spec.select.i = select i1 %cond97.i, ptr @.str.61, ptr @.str.62
  br label %le_type.exit

if.else.i65.i:                                    ; preds = %le_key_k_type.exit.i19
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv1.i.i.i11)
  %phi.cmp95.i = icmp eq i32 %conv1.i.i.i11, 1
  %phi.sel.i = select i1 %phi.cmp95.i, ptr @.str.61, ptr @.str.62
  br label %le_type.exit

cleanup.fold.split.i:                             ; preds = %le_key_k_type.exit.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_type.exit

cleanup.fold.split96.i:                           ; preds = %le_key_k_type.exit.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_type.exit

le_type.exit.fold.split:                          ; preds = %if.then.i.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_type.exit

le_type.exit.fold.split20:                        ; preds = %if.then.i.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %le_type.exit

le_type.exit:                                     ; preds = %le_type.exit.fold.split20, %le_type.exit.fold.split, %cleanup.fold.split96.i, %cleanup.fold.split.i, %if.else.i65.i, %if.then.i57.i, %le_key_k_type.exit.i19.le_type.exit_crit_edge, %if.then.i.i18.le_type.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.58, %le_key_k_type.exit.i19.le_type.exit_crit_edge ], [ @.str.58, %if.then.i.i18.le_type.exit_crit_edge ], [ @.str.59, %cleanup.fold.split.i ], [ @.str.60, %cleanup.fold.split96.i ], [ %phi.sel.i, %if.else.i65.i ], [ %spec.select.i, %if.then.i57.i ], [ @.str.59, %le_type.exit.fold.split ], [ @.str.60, %le_type.exit.fold.split20 ]
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str.54, i32 noundef %2, i32 noundef %5, ptr noundef nonnull @off_buf, ptr noundef nonnull %retval.0.i) #12
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str.55) #12
  br label %return

return:                                           ; preds = %if.else, %le_type.exit
  %retval.0 = phi i32 [ %call2, %le_type.exit ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reiserfs_printk(ptr noundef %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !289
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @prepare_error_buf(ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @error_buf) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_reiserfs_3_5(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_reiserfs_3_6(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_reiserfs_jr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !167, !169, !170, !171, !173, !174, !175, !177, !178, !180, !182, !183, !184, !186, !187, !188, !190, !192, !194, !196, !197, !198, !200, !201, !203, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !262, !263, !264, !265, !267, !268, !269, !271, !272, !274, !275, !276, !278}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/prints.c", i32 290, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__reiserfs_warning._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__reiserfs_warning._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/reiserfs/prints.c", i32 294, i32 3}
!10 = !{ptr @__reiserfs_warning._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @__reiserfs_warning._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/reiserfs/prints.c", i32 303, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @reiserfs_info._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @reiserfs_info._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/reiserfs/prints.c", i32 306, i32 3}
!19 = !{ptr @reiserfs_info._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @reiserfs_info._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/reiserfs/prints.c", i32 321, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @reiserfs_debug._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @reiserfs_debug._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/reiserfs/prints.c", i32 324, i32 3}
!28 = !{ptr @reiserfs_debug._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @reiserfs_debug._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/reiserfs/prints.c", i32 384, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__reiserfs_panic._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @__reiserfs_panic._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/reiserfs/prints.c", i32 388, i32 3}
!37 = !{ptr @__reiserfs_panic._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @__reiserfs_panic._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/reiserfs/prints.c", i32 404, i32 3}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__reiserfs_error._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @__reiserfs_error._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/reiserfs/prints.c", i32 407, i32 3}
!46 = !{ptr @__reiserfs_error._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @__reiserfs_error._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/reiserfs/prints.c", i32 413, i32 20}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/reiserfs/prints.c", i32 423, i32 9}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/reiserfs/prints.c", i32 430, i32 2}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @reiserfs_abort._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @reiserfs_abort._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/reiserfs/prints.c", i32 536, i32 10}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/reiserfs/prints.c", i32 538, i32 10}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/reiserfs/prints.c", i32 540, i32 10}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/reiserfs/prints.c", i32 542, i32 9}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/reiserfs/prints.c", i32 617, i32 3}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @print_block._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @print_block._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/reiserfs/prints.c", i32 630, i32 6}
!72 = !{ptr @print_block._entry.38, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @print_block._entry_ptr.40, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/reiserfs/prints.c", i32 649, i32 24}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/reiserfs/prints.c", i32 670, i32 4}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/reiserfs/prints.c", i32 690, i32 3}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/reiserfs/prints.c", i32 703, i32 4}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/reiserfs/prints.c", i32 709, i32 3}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/reiserfs/prints.c", i32 716, i32 4}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/reiserfs/prints.c", i32 720, i32 37}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/reiserfs/prints.c", i32 720, i32 44}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/reiserfs/prints.c", i32 723, i32 3}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/reiserfs/prints.c", i32 728, i32 2}
!94 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @print_cur_tb._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @print_cur_tb._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @error_buf, !98, !"error_buf", i1 false, i1 false}
!98 = !{!"../fs/reiserfs/prints.c", i32 13, i32 13}
!99 = !{ptr @print_tb_buf, !100, !"print_tb_buf", i1 false, i1 false}
!100 = !{!"../fs/reiserfs/prints.c", i32 637, i32 13}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/reiserfs/prints.c", i32 214, i32 22}
!103 = !{ptr @fmt_buf, !104, !"fmt_buf", i1 false, i1 false}
!104 = !{!"../fs/reiserfs/prints.c", i32 14, i32 13}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/reiserfs/prints.c", i32 202, i32 8}
!107 = !{ptr @error_lock, !106, !"error_lock", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/reiserfs/prints.c", i32 82, i32 31}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/reiserfs/prints.c", i32 87, i32 31}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/reiserfs/prints.c", i32 37, i32 20}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/reiserfs/prints.c", i32 43, i32 20}
!116 = !{ptr @off_buf, !117, !"off_buf", i1 false, i1 false}
!117 = !{!"../fs/reiserfs/prints.c", i32 15, i32 13}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/reiserfs/prints.c", i32 68, i32 10}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/reiserfs/prints.c", i32 70, i32 10}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/reiserfs/prints.c", i32 72, i32 10}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/reiserfs/prints.c", i32 74, i32 10}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/reiserfs/prints.c", i32 75, i32 9}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/reiserfs/prints.c", i32 122, i32 30}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/reiserfs/prints.c", i32 124, i32 11}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/reiserfs/prints.c", i32 124, i32 22}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/reiserfs/prints.c", i32 129, i32 11}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/reiserfs/prints.c", i32 144, i32 30}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/reiserfs/prints.c", i32 170, i32 30}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/reiserfs/prints.c", i32 151, i32 5}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/reiserfs/prints.c", i32 158, i32 5}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/reiserfs/prints.c", i32 163, i32 27}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/reiserfs/prints.c", i32 163, i32 40}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/reiserfs/prints.c", i32 164, i32 24}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/reiserfs/prints.c", i32 164, i32 34}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/reiserfs/prints.c", i32 165, i32 25}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/reiserfs/prints.c", i32 165, i32 36}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/reiserfs/prints.c", i32 107, i32 6}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/reiserfs/prints.c", i32 494, i32 2}
!160 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @print_leaf._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @print_leaf._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/reiserfs/prints.c", i32 496, i32 18}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/reiserfs/prints.c", i32 499, i32 19}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/reiserfs/prints.c", i32 515, i32 2}
!169 = !{ptr @print_leaf._entry.82, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @print_leaf._entry_ptr.84, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/reiserfs/prints.c", i32 517, i32 2}
!173 = !{ptr @print_leaf._entry.85, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @print_leaf._entry_ptr.87, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @print_leaf._entry.88, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../fs/reiserfs/prints.c", i32 520, i32 3}
!177 = !{ptr @print_leaf._entry_ptr.89, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/reiserfs/prints.c", i32 522, i32 19}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/reiserfs/prints.c", i32 527, i32 2}
!182 = !{ptr @print_leaf._entry.91, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @print_leaf._entry_ptr.93, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/reiserfs/prints.c", i32 313, i32 2}
!186 = !{ptr @reiserfs_printk._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @reiserfs_printk._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/reiserfs/prints.c", i32 462, i32 18}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/reiserfs/prints.c", i32 465, i32 18}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/reiserfs/prints.c", i32 469, i32 19}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/reiserfs/prints.c", i32 471, i32 4}
!196 = !{ptr @print_internal._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @print_internal._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @print_internal._entry.99, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../fs/reiserfs/prints.c", i32 473, i32 2}
!200 = !{ptr @print_internal._entry_ptr.100, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/reiserfs/prints.c", i32 554, i32 13}
!203 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/reiserfs/prints.c", i32 556, i32 13}
!205 = !{ptr @.str.103, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/reiserfs/prints.c", i32 564, i32 2}
!207 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @print_super_block._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @print_super_block._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/reiserfs/prints.c", i32 566, i32 2}
!212 = !{ptr @print_super_block._entry.105, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @print_super_block._entry_ptr.107, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.109, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/reiserfs/prints.c", i32 567, i32 2}
!216 = !{ptr @print_super_block._entry.108, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @print_super_block._entry_ptr.110, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/reiserfs/prints.c", i32 568, i32 2}
!220 = !{ptr @print_super_block._entry.111, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @print_super_block._entry_ptr.113, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.115, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/reiserfs/prints.c", i32 569, i32 2}
!224 = !{ptr @print_super_block._entry.114, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @print_super_block._entry_ptr.116, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.118, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/reiserfs/prints.c", i32 579, i32 2}
!228 = !{ptr @print_super_block._entry.117, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @print_super_block._entry_ptr.119, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.121, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/reiserfs/prints.c", i32 584, i32 2}
!232 = !{ptr @print_super_block._entry.120, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @print_super_block._entry_ptr.122, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.124, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/reiserfs/prints.c", i32 585, i32 2}
!236 = !{ptr @print_super_block._entry.123, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @print_super_block._entry_ptr.125, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.127, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/reiserfs/prints.c", i32 586, i32 2}
!240 = !{ptr @print_super_block._entry.126, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @print_super_block._entry_ptr.128, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.130, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/reiserfs/prints.c", i32 587, i32 2}
!244 = !{ptr @print_super_block._entry.129, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @print_super_block._entry_ptr.131, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.133, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/reiserfs/prints.c", i32 588, i32 2}
!248 = !{ptr @print_super_block._entry.132, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @print_super_block._entry_ptr.134, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.136, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/reiserfs/prints.c", i32 589, i32 2}
!252 = !{ptr @print_super_block._entry.135, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @print_super_block._entry_ptr.137, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.139, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/reiserfs/prints.c", i32 592, i32 2}
!256 = !{ptr @print_super_block._entry.138, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @print_super_block._entry_ptr.140, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.141, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/reiserfs/prints.c", i32 600, i32 41}
!260 = !{ptr @.str.142, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../fs/reiserfs/prints.c", i32 604, i32 2}
!262 = !{ptr @.str.143, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @print_desc_block._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @print_desc_block._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.144, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/reiserfs/prints.c", i32 739, i32 3}
!267 = !{ptr @__func__.check_leaf_block_head, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.145, !266, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.146, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/reiserfs/prints.c", i32 742, i32 3}
!271 = !{ptr @.str.147, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.148, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/reiserfs/prints.c", i32 750, i32 3}
!274 = !{ptr @__func__.check_internal_block_head, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.149, !273, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.150, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/reiserfs/prints.c", i32 753, i32 3}
!278 = !{ptr @.str.151, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/reiserfs/prints.c", i32 758, i32 3}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 1, !"min_enum_size", i32 4}
!282 = !{i32 8, !"branch-target-enforcement", i32 0}
!283 = !{i32 8, !"sign-return-address", i32 0}
!284 = !{i32 8, !"sign-return-address-all", i32 0}
!285 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!286 = !{i32 7, !"uwtable", i32 1}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!289 = !{!"auto-init"}
!290 = !{!"branch_weights", i32 1, i32 2000}
!291 = !{i64 2154125140, i64 2154125625, i64 2154125177, i64 2154125233, i64 2154125267, i64 2154125291, i64 2154125332, i64 2154125353, i64 2154125381, i64 2154125415}
!292 = !{i64 2154126924, i64 2154127409, i64 2154126961, i64 2154127017, i64 2154127051, i64 2154127075, i64 2154127116, i64 2154127137, i64 2154127165, i64 2154127199}
!293 = !{!"branch_weights", i32 2000, i32 1}
