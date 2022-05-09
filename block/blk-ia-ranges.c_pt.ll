; ModuleID = '/llk/IR_all_yes/block/blk-ia-ranges.c_pt.bc'
source_filename = "../block/blk-ia-ranges.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+disk_alloc_independent_access_ranges\22, \22a\22\09"
module asm "\09.weak\09__crc_disk_alloc_independent_access_ranges\09\09\09\09"
module asm "\09.long\09__crc_disk_alloc_independent_access_ranges\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disk_alloc_independent_access_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22disk_alloc_independent_access_ranges\22\09\09\09\09\09"
module asm "__kstrtabns_disk_alloc_independent_access_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+disk_set_independent_access_ranges\22, \22a\22\09"
module asm "\09.weak\09__crc_disk_set_independent_access_ranges\09\09\09\09"
module asm "\09.long\09__crc_disk_set_independent_access_ranges\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disk_set_independent_access_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22disk_set_independent_access_ranges\22\09\09\09\09\09"
module asm "__kstrtabns_disk_set_independent_access_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.blk_ia_range_sysfs_entry = type { %struct.attribute, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.blk_independent_access_ranges = type { %struct.kobject, i8, i32, [0 x %struct.blk_independent_access_range] }
%struct.blk_independent_access_range = type { %struct.kobject, ptr, i64, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"block/blk-ia-ranges.c\00", [42 x i8] zeroinitializer }, align 32
@blk_ia_ranges_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @blk_ia_ranges_sysfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"independent_access_ranges\00", [38 x i8] zeroinitializer }, align 32
@blk_ia_range_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @blk_ia_range_sysfs_nop_release, ptr @blk_ia_range_sysfs_ops, ptr null, ptr @blk_ia_range_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_disk_alloc_independent_access_ranges = external dso_local constant [0 x i8], align 1
@__kstrtabns_disk_alloc_independent_access_ranges = external dso_local constant [0 x i8], align 1
@__ksymtab_disk_alloc_independent_access_ranges = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disk_alloc_independent_access_ranges to i32), ptr @__kstrtab_disk_alloc_independent_access_ranges, ptr @__kstrtabns_disk_alloc_independent_access_ranges }, section "___ksymtab_gpl+disk_alloc_independent_access_ranges", align 4
@disk_set_independent_access_ranges.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_disk_set_independent_access_ranges = external dso_local constant [0 x i8], align 1
@__kstrtabns_disk_set_independent_access_ranges = external dso_local constant [0 x i8], align 1
@__ksymtab_disk_set_independent_access_ranges = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disk_set_independent_access_ranges to i32), ptr @__kstrtab_disk_set_independent_access_ranges, ptr @__kstrtabns_disk_set_independent_access_ranges }, section "___ksymtab_gpl+disk_set_independent_access_ranges", align 4
@blk_ia_range_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @blk_ia_range_sysfs_show, ptr null }, [24 x i8] zeroinitializer }, align 32
@blk_ia_range_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @blk_ia_range_group, ptr null], [24 x i8] zeroinitializer }, align 32
@blk_ia_range_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @blk_ia_range_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@blk_ia_range_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @blk_ia_range_sector_entry, ptr @blk_ia_range_nr_sectors_entry, ptr null], [20 x i8] zeroinitializer }, align 32
@blk_ia_range_sector_entry = internal global { %struct.blk_ia_range_sysfs_entry, [40 x i8] } { %struct.blk_ia_range_sysfs_entry { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @blk_ia_range_sector_show }, [40 x i8] zeroinitializer }, align 32
@blk_ia_range_nr_sectors_entry = internal global { %struct.blk_ia_range_sysfs_entry, [40 x i8] } { %struct.blk_ia_range_sysfs_entry { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @blk_ia_range_nr_sectors_show }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sector\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_sectors\00", [21 x i8] zeroinitializer }, align 32
@disk_check_ia_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014Invalid non-contiguous independent access ranges\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disk_check_ia_ranges\00", [43 x i8] zeroinitializer }, align 32
@disk_check_ia_ranges._entry_ptr = internal global ptr @disk_check_ia_ranges._entry, section ".printk_index", align 4
@disk_check_ia_ranges._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014Independent access ranges do not match disk capacity\0A\00", [40 x i8] zeroinitializer }, align 32
@disk_check_ia_ranges._entry_ptr.11 = internal global ptr @disk_check_ia_ranges._entry.9, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 124, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"blk_ia_ranges_ktype\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 102, i32 25 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 144, i32 18 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 144, i32 24 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"blk_ia_range_ktype\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 83, i32 25 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 155, i32 9 }
@___asan_gen_.30 = private unnamed_addr constant [23 x i8] c"blk_ia_range_sysfs_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 66, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"blk_ia_range_groups\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"blk_ia_range_group\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 48, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"blk_ia_range_attrs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 43, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"blk_ia_range_sector_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 33, i32 40 }
@___asan_gen_.45 = private unnamed_addr constant [30 x i8] c"blk_ia_range_nr_sectors_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 38, i32 40 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 34, i32 20 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 18, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 39, i32 20 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 227, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [25 x i8] c"../block/blk-ia-ranges.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 241, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_disk_alloc_independent_access_ranges, ptr @__ksymtab_disk_set_independent_access_ranges, ptr @disk_check_ia_ranges._entry, ptr @disk_check_ia_ranges._entry.9, ptr @disk_check_ia_ranges._entry_ptr, ptr @disk_check_ia_ranges._entry_ptr.11, ptr @.str, ptr @blk_ia_ranges_ktype, ptr @.str.1, ptr @.str.2, ptr @blk_ia_range_ktype, ptr @.str.3, ptr @blk_ia_range_sysfs_ops, ptr @blk_ia_range_groups, ptr @blk_ia_range_group, ptr @blk_ia_range_attrs, ptr @blk_ia_range_sector_entry, ptr @blk_ia_range_nr_sectors_entry, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_ia_ranges_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_ia_range_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_ia_range_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_ia_range_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_ia_range_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_ia_range_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_ia_range_sector_entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_ia_range_nr_sectors_entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_check_ia_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disk_check_ia_ranges._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @disk_register_independent_access_ranges(ptr nocapture noundef readonly %disk, ptr noundef %new_iars) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end55_crit_edge, label %land.rhs

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 52, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !53

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool26.not = icmp eq i32 %.pr, 0
  br i1 %tobool26.not, label %if.end.if.end55_crit_edge, label %land.rhs27

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.rhs27:                                       ; preds = %if.end
  %dep_map28 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 51, i32 5
  %call.i166 = tail call i32 @lock_is_held_type(ptr noundef %dep_map28, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp30.not = icmp eq i32 %call.i166, 0
  br i1 %cmp30.not, label %do.end49, label %land.rhs27.if.end55_crit_edge, !prof !53

land.rhs27.if.end55_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end49:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 9, ptr noundef null) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %land.rhs27.if.end55_crit_edge, %if.end.if.end55_crit_edge, %entry.if.end55_crit_edge
  %tobool65.not = icmp eq ptr %new_iars, null
  br i1 %tobool65.not, label %if.end55.if.end71_crit_edge, label %if.then66

if.end55.if.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then66:                                        ; preds = %if.end55
  %ia_ranges = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 69
  %3 = ptrtoint ptr %ia_ranges to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ia_ranges, align 8
  %tobool67.not = icmp eq ptr %4, null
  br i1 %tobool67.not, label %if.then66.if.end69_crit_edge, label %if.then68

if.then66.if.end69_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then68:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disk_unregister_independent_access_ranges(ptr noundef %disk)
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.then66.if.end69_crit_edge
  %5 = ptrtoint ptr %ia_ranges to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new_iars, ptr %ia_ranges, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.end69, %if.end55.if.end71_crit_edge
  %ia_ranges72 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 69
  %6 = ptrtoint ptr %ia_ranges72 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ia_ranges72, align 8
  %tobool73.not = icmp eq ptr %7, null
  br i1 %tobool73.not, label %if.end71.cleanup_crit_edge, label %if.end75

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %sysfs_registered = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sysfs_registered to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sysfs_registered, align 8, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool77.not = icmp eq i8 %9, 0
  br i1 %tobool77.not, label %if.end75.if.end99_crit_edge, label %do.end93, !prof !55

if.end75.if.end99_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

do.end93:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #8
  br label %if.end99

if.end99:                                         ; preds = %do.end93, %if.end75.if.end99_crit_edge
  %kobj107 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 16
  %call108 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %7, ptr noundef nonnull @blk_ia_ranges_ktype, ptr noundef %kobj107, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %for.cond.preheader, label %if.then110

for.cond.preheader:                               ; preds = %if.end99
  %nr_ia_ranges = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %nr_ia_ranges to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_ia_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp114169.not = icmp eq i32 %11, 0
  br i1 %cmp114169.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then110:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ia_ranges72 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ia_ranges72, align 8
  tail call void @kobject_put(ptr noundef nonnull %7) #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0170 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.blk_independent_access_ranges, ptr %7, i32 0, i32 3, i32 %i.0170
  %queue115 = getelementptr %struct.blk_independent_access_ranges, ptr %7, i32 0, i32 3, i32 %i.0170, i32 1
  %13 = ptrtoint ptr %queue115 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %queue115, align 8
  %call120 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %arrayidx, ptr noundef nonnull @blk_ia_range_ktype, ptr noundef nonnull %7, ptr noundef nonnull @.str.3, i32 noundef %i.0170) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  %dec171 = add i32 %i.0170, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec171)
  %cmp123172 = icmp sgt i32 %dec171, -1
  br i1 %cmp123172, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec173 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec171, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx125 = getelementptr %struct.blk_independent_access_ranges, ptr %7, i32 0, i32 3, i32 %dec173
  tail call void @kobject_del(ptr noundef %arrayidx125) #8
  %dec = add nsw i32 %dec173, -1
  %cmp123 = icmp sgt i32 %dec173, 0
  br i1 %cmp123, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @kobject_del(ptr noundef nonnull %7) #8
  tail call void @kobject_put(ptr noundef nonnull %7) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0170, 1
  %14 = ptrtoint ptr %nr_ia_ranges to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_ia_ranges, align 4
  %cmp114 = icmp ult i32 %inc, %15
  br i1 %cmp114, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %sysfs_registered to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %sysfs_registered, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %while.end, %if.then110, %if.end71.cleanup_crit_edge
  %retval.0 = phi i32 [ %call108, %if.then110 ], [ %call120, %while.end ], [ 0, %for.end ], [ 0, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disk_unregister_independent_access_ranges(ptr nocapture noundef readonly %disk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %ia_ranges = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 69
  %2 = ptrtoint ptr %ia_ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ia_ranges, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end55_crit_edge, label %land.rhs

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 52, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !53

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool26.not = icmp eq i32 %.pr, 0
  br i1 %tobool26.not, label %if.end.if.end55_crit_edge, label %land.rhs27

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.rhs27:                                       ; preds = %if.end
  %dep_map28 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 51, i32 5
  %call.i90 = tail call i32 @lock_is_held_type(ptr noundef %dep_map28, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp30.not = icmp eq i32 %call.i90, 0
  br i1 %cmp30.not, label %do.end49, label %land.rhs27.if.end55_crit_edge, !prof !53

land.rhs27.if.end55_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end49:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 177, i32 noundef 9, ptr noundef null) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %land.rhs27.if.end55_crit_edge, %if.end.if.end55_crit_edge, %entry.if.end55_crit_edge
  %tobool65.not = icmp eq ptr %3, null
  br i1 %tobool65.not, label %if.end55.cleanup_crit_edge, label %if.end67

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %if.end55
  %sysfs_registered = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %sysfs_registered to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sysfs_registered, align 8, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool68.not = icmp eq i8 %6, 0
  br i1 %tobool68.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end67
  %nr_ia_ranges = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %nr_ia_ranges to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_ia_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7092.not = icmp eq i32 %8, 0
  br i1 %cmp7092.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.093 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.blk_independent_access_ranges, ptr %3, i32 0, i32 3, i32 %i.093
  tail call void @kobject_del(ptr noundef %arrayidx) #8
  %inc = add nuw i32 %i.093, 1
  %9 = ptrtoint ptr %nr_ia_ranges to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_ia_ranges, align 4
  %cmp70 = icmp ult i32 %inc, %10
  br i1 %cmp70, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kobject_del(ptr noundef nonnull %3) #8
  tail call void @kobject_put(ptr noundef nonnull %3) #8
  br label %if.end73

if.else:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %if.end73

if.end73:                                         ; preds = %if.else, %for.end
  %11 = ptrtoint ptr %ia_ranges to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ia_ranges, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end55.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @disk_alloc_independent_access_ranges(ptr nocapture noundef readnone %disk, i32 noundef %nr_ia_ranges) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_ia_ranges, i32 160) #8
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 144) #8
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call.i1.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i1.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nr_ia_ranges2 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %call.i1.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %nr_ia_ranges2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nr_ia_ranges, ptr %nr_ia_ranges2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call.i1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disk_set_independent_access_ranges(ptr nocapture noundef readonly %disk, ptr noundef %iars) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %tobool.not = icmp eq ptr %iars, null
  br i1 %tobool.not, label %entry.if.end42_crit_edge, label %land.rhs

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.rhs:                                         ; preds = %entry
  %nr_ia_ranges = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %iars, i32 0, i32 2
  %2 = ptrtoint ptr %nr_ia_ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_ia_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.rhs5, label %land.rhs.if.end42_crit_edge

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.rhs5:                                        ; preds = %land.rhs
  %.b83 = load i1, ptr @disk_set_independent_access_ranges.__already_done, align 1
  br i1 %.b83, label %land.rhs5.if.then41_crit_edge, label %if.then, !prof !55

land.rhs5.if.then41_crit_edge:                    ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.then:                                          ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @disk_set_independent_access_ranges.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 307, i32 noundef 9, ptr noundef null) #8
  br label %if.then41

if.then41:                                        ; preds = %if.then, %land.rhs5.if.then41_crit_edge
  tail call void @kfree(ptr noundef nonnull %iars) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %land.rhs.if.end42_crit_edge, %entry.if.end42_crit_edge
  %iars.addr.0 = phi ptr [ null, %if.then41 ], [ %iars, %land.rhs.if.end42_crit_edge ], [ null, %entry.if.end42_crit_edge ]
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 52
  tail call void @mutex_lock_nested(ptr noundef %sysfs_dir_lock, i32 noundef 0) #8
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #8
  %tobool43.not = icmp eq ptr %iars.addr.0, null
  br i1 %tobool43.not, label %if.end42.reg_crit_edge, label %if.then44

if.end42.reg_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg

if.then44:                                        ; preds = %if.end42
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %4 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %nr_ia_ranges.i = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %iars.addr.0, i32 0, i32 2
  %8 = ptrtoint ptr %nr_ia_ranges.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_ia_ranges.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp60.not.i = icmp eq i32 %9, 0
  br i1 %cmp60.not.i, label %if.then44.for.end.i_crit_edge, label %if.then44.for.body.i.preheader.i_crit_edge

if.then44.for.body.i.preheader.i_crit_edge:       ; preds = %if.then44
  br label %for.body.i.preheader.i

if.then44.for.end.i_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.preheader.i:                           ; preds = %if.end22.i.for.body.i.preheader.i_crit_edge, %if.then44.for.body.i.preheader.i_crit_edge
  %10 = phi i32 [ %24, %if.end22.i.for.body.i.preheader.i_crit_edge ], [ %9, %if.then44.for.body.i.preheader.i_crit_edge ]
  %i.062.i = phi i32 [ %inc.i, %if.end22.i.for.body.i.preheader.i_crit_edge ], [ 0, %if.then44.for.body.i.preheader.i_crit_edge ]
  %sector.061.i = phi i64 [ %add.i, %if.end22.i.for.body.i.preheader.i_crit_edge ], [ 0, %if.then44.for.body.i.preheader.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.016.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %sector1.i.i = getelementptr %struct.blk_independent_access_ranges, ptr %iars.addr.0, i32 0, i32 3, i32 %i.016.i.i, i32 2
  %11 = ptrtoint ptr %sector1.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sector1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %sector.061.i)
  %cmp2.not.i.i = icmp ugt i64 %12, %sector.061.i
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %nr_sectors.i.i = getelementptr %struct.blk_independent_access_ranges, ptr %iars.addr.0, i32 0, i32 3, i32 %i.016.i.i, i32 3
  %13 = ptrtoint ptr %nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %nr_sectors.i.i, align 8
  %add.i.i = add i64 %14, %12
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %sector.061.i)
  %cmp4.i.i = icmp ugt i64 %add.i.i, %sector.061.i
  br i1 %cmp4.i.i, label %disk_find_ia_range.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %10
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then45_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.then45_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

disk_find_ia_range.exit.i:                        ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.blk_independent_access_ranges, ptr %iars.addr.0, i32 0, i32 3, i32 %i.016.i.i
  %tobool.not.i = icmp ne ptr %arrayidx.le.i.i, null
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %sector.061.i)
  %cmp3.not.i = icmp eq i64 %12, %sector.061.i
  %or.cond = select i1 %tobool.not.i, i1 %cmp3.not.i, i1 false
  br i1 %or.cond, label %if.end.i, label %disk_find_ia_range.exit.i.if.then45_crit_edge

disk_find_ia_range.exit.i.if.then45_crit_edge:    ; preds = %disk_find_ia_range.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.end.i:                                         ; preds = %disk_find_ia_range.exit.i
  %arrayidx.i = getelementptr %struct.blk_independent_access_ranges, ptr %iars.addr.0, i32 0, i32 3, i32 %i.062.i
  %cmp6.not.i = icmp eq ptr %arrayidx.le.i.i, %arrayidx.i
  br i1 %cmp6.not.i, label %if.end.i.if.end22.i_crit_edge, label %do.body8.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

do.body8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sector9.i = getelementptr %struct.blk_independent_access_ranges, ptr %iars.addr.0, i32 0, i32 3, i32 %i.062.i, i32 2
  %15 = ptrtoint ptr %sector9.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sector9.i, align 8
  store i64 %sector.061.i, ptr %sector9.i, align 8
  %17 = ptrtoint ptr %sector1.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %sector1.i.i, align 8
  %nr_sectors.i = getelementptr %struct.blk_independent_access_ranges, ptr %iars.addr.0, i32 0, i32 3, i32 %i.062.i, i32 3
  %18 = ptrtoint ptr %nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %nr_sectors.i, align 8
  store i64 %14, ptr %nr_sectors.i, align 8
  %20 = ptrtoint ptr %nr_sectors.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %nr_sectors.i.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.body8.i, %if.end.i.if.end22.i_crit_edge
  %nr_sectors23.i = getelementptr %struct.blk_independent_access_ranges, ptr %iars.addr.0, i32 0, i32 3, i32 %i.062.i, i32 3
  %21 = ptrtoint ptr %nr_sectors23.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %nr_sectors23.i, align 8
  %add.i = add i64 %22, %sector.061.i
  %inc.i = add nuw i32 %i.062.i, 1
  %23 = ptrtoint ptr %nr_ia_ranges.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_ia_ranges.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %if.end22.i.for.body.i.preheader.i_crit_edge, label %if.end22.i.for.end.i_crit_edge

if.end22.i.for.end.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end22.i.for.body.i.preheader.i_crit_edge:      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i

for.end.i:                                        ; preds = %if.end22.i.for.end.i_crit_edge, %if.then44.for.end.i_crit_edge
  %sector.0.lcssa.i = phi i64 [ 0, %if.then44.for.end.i_crit_edge ], [ %add.i, %if.end22.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %sector.0.lcssa.i, i64 %7)
  %cmp24.not.i = icmp eq i64 %sector.0.lcssa.i, %7
  br i1 %cmp24.not.i, label %if.end46, label %for.end.i.if.then45_crit_edge

for.end.i.if.then45_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.then45:                                        ; preds = %for.end.i.if.then45_crit_edge, %disk_find_ia_range.exit.i.if.then45_crit_edge, %for.inc.i.i.if.then45_crit_edge
  %.str.10.sink.i = phi ptr [ @.str.10, %for.end.i.if.then45_crit_edge ], [ @.str.7, %for.inc.i.i.if.then45_crit_edge ], [ @.str.7, %disk_find_ia_range.exit.i.if.then45_crit_edge ]
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink.i) #12
  tail call void @kfree(ptr noundef nonnull %iars.addr.0) #8
  br label %reg

if.end46:                                         ; preds = %for.end.i
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queue, align 4
  %ia_ranges.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 69
  %27 = ptrtoint ptr %ia_ranges.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ia_ranges.i, align 8
  %tobool.not.i85 = icmp eq ptr %28, null
  br i1 %tobool.not.i85, label %if.end46.reg_crit_edge, label %if.end.i87

if.end46.reg_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg

if.end.i87:                                       ; preds = %if.end46
  %nr_ia_ranges.i86 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %nr_ia_ranges.i86 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_ia_ranges.i86, align 4
  %31 = ptrtoint ptr %nr_ia_ranges.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_ia_ranges.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.not.i = icmp eq i32 %30, %32
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.end.i87.reg_crit_edge

if.end.i87.reg_crit_edge:                         ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg

for.cond.preheader.i:                             ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp530.not.i = icmp eq i32 %30, 0
  br i1 %cmp530.not.i, label %for.cond.preheader.i.if.then48_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then48_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

for.cond.i:                                       ; preds = %lor.lhs.false.i90
  %inc.i88 = add nuw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i88, %30
  br i1 %exitcond.not.i, label %for.cond.i.if.then48_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.if.then48_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i88, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %sector.i = getelementptr %struct.blk_independent_access_ranges, ptr %iars.addr.0, i32 0, i32 3, i32 %i.031.i, i32 2
  %33 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %sector.i, align 8
  %sector8.i = getelementptr %struct.blk_independent_access_ranges, ptr %28, i32 0, i32 3, i32 %i.031.i, i32 2
  %35 = ptrtoint ptr %sector8.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %sector8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %36)
  %cmp9.not.i = icmp eq i64 %34, %36
  br i1 %cmp9.not.i, label %lor.lhs.false.i90, label %for.body.i.reg_crit_edge

for.body.i.reg_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg

lor.lhs.false.i90:                                ; preds = %for.body.i
  %nr_sectors.i89 = getelementptr %struct.blk_independent_access_ranges, ptr %iars.addr.0, i32 0, i32 3, i32 %i.031.i, i32 3
  %37 = ptrtoint ptr %nr_sectors.i89 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %nr_sectors.i89, align 8
  %nr_sectors14.i = getelementptr %struct.blk_independent_access_ranges, ptr %28, i32 0, i32 3, i32 %i.031.i, i32 3
  %39 = ptrtoint ptr %nr_sectors14.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %nr_sectors14.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %40)
  %cmp15.not.i = icmp eq i64 %38, %40
  br i1 %cmp15.not.i, label %for.cond.i, label %lor.lhs.false.i90.reg_crit_edge

lor.lhs.false.i90.reg_crit_edge:                  ; preds = %lor.lhs.false.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg

if.then48:                                        ; preds = %for.cond.i.if.then48_crit_edge, %for.cond.preheader.i.if.then48_crit_edge
  tail call void @kfree(ptr noundef nonnull %iars.addr.0) #8
  br label %unlock

reg:                                              ; preds = %lor.lhs.false.i90.reg_crit_edge, %for.body.i.reg_crit_edge, %if.end.i87.reg_crit_edge, %if.end46.reg_crit_edge, %if.then45, %if.end42.reg_crit_edge
  %iars.addr.1 = phi ptr [ null, %if.then45 ], [ null, %if.end42.reg_crit_edge ], [ %iars.addr.0, %if.end46.reg_crit_edge ], [ %iars.addr.0, %if.end.i87.reg_crit_edge ], [ %iars.addr.0, %lor.lhs.false.i90.reg_crit_edge ], [ %iars.addr.0, %for.body.i.reg_crit_edge ]
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 11
  %41 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %queue_flags, align 4
  %43 = and i32 %42, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool52.not = icmp eq i32 %43, 0
  br i1 %tobool52.not, label %do.body55, label %if.then53

if.then53:                                        ; preds = %reg
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = tail call i32 @disk_register_independent_access_ranges(ptr noundef %disk, ptr noundef %iars.addr.1)
  br label %unlock

do.body55:                                        ; preds = %reg
  call void @__sanitizer_cov_trace_pc() #10
  %ia_ranges = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 69
  %44 = ptrtoint ptr %ia_ranges to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ia_ranges, align 8
  store ptr %iars.addr.1, ptr %ia_ranges, align 8
  tail call void @kfree(ptr noundef %45) #8
  br label %unlock

unlock:                                           ; preds = %do.body55, %if.then53, %if.then48
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #8
  tail call void @mutex_unlock(ptr noundef %sysfs_dir_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_ia_ranges_sysfs_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kobj) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @blk_ia_range_sysfs_nop_release(ptr nocapture noundef %kobj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_ia_range_sysfs_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_independent_access_range, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #8
  %show = getelementptr inbounds %struct.blk_ia_range_sysfs_entry, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %show, align 4
  %call = tail call i32 %3(ptr noundef %kobj, ptr noundef %buf) #8
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 8
  %sysfs_lock6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 51
  tail call void @mutex_unlock(ptr noundef %sysfs_lock6) #8
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_ia_range_sector_show(ptr nocapture noundef readonly %iar, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sector = getelementptr inbounds %struct.blk_independent_access_range, ptr %iar, i32 0, i32 2
  %0 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sector, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_ia_range_nr_sectors_show(ptr nocapture noundef readonly %iar, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_sectors = getelementptr inbounds %struct.blk_independent_access_range, ptr %iar, i32 0, i32 3
  %0 = ptrtoint ptr %nr_sectors to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nr_sectors, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/blk-ia-ranges.c", i32 124, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/blk-ia-ranges.c", i32 144, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/blk-ia-ranges.c", i32 144, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/blk-ia-ranges.c", i32 155, i32 9}
!8 = !{ptr @__ksymtab_disk_alloc_independent_access_ranges, !9, !"__ksymtab_disk_alloc_independent_access_ranges", i1 false, i1 false}
!9 = !{!"../block/blk-ia-ranges.c", i32 289, i32 1}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../block/blk-ia-ranges.c", i32 307, i32 6}
!12 = !{ptr @__ksymtab_disk_set_independent_access_ranges, !13, !"__ksymtab_disk_set_independent_access_ranges", i1 false, i1 false}
!13 = !{!"../block/blk-ia-ranges.c", i32 348, i32 1}
!14 = !{ptr @blk_ia_ranges_ktype, !15, !"blk_ia_ranges_ktype", i1 false, i1 false}
!15 = !{!"../block/blk-ia-ranges.c", i32 102, i32 25}
!16 = !{ptr @blk_ia_range_ktype, !17, !"blk_ia_range_ktype", i1 false, i1 false}
!17 = !{!"../block/blk-ia-ranges.c", i32 83, i32 25}
!18 = !{ptr @blk_ia_range_sysfs_ops, !19, !"blk_ia_range_sysfs_ops", i1 false, i1 false}
!19 = !{!"../block/blk-ia-ranges.c", i32 66, i32 31}
!20 = !{ptr @blk_ia_range_groups, !21, !"blk_ia_range_groups", i1 false, i1 false}
!21 = !{!"../block/blk-ia-ranges.c", i32 48, i32 1}
!22 = !{ptr @blk_ia_range_group, !21, !"blk_ia_range_group", i1 false, i1 false}
!23 = !{ptr @blk_ia_range_attrs, !24, !"blk_ia_range_attrs", i1 false, i1 false}
!24 = !{!"../block/blk-ia-ranges.c", i32 43, i32 26}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../block/blk-ia-ranges.c", i32 34, i32 20}
!27 = !{ptr @blk_ia_range_sector_entry, !28, !"blk_ia_range_sector_entry", i1 false, i1 false}
!28 = !{!"../block/blk-ia-ranges.c", i32 33, i32 40}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../block/blk-ia-ranges.c", i32 18, i32 22}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../block/blk-ia-ranges.c", i32 39, i32 20}
!33 = !{ptr @blk_ia_range_nr_sectors_entry, !34, !"blk_ia_range_nr_sectors_entry", i1 false, i1 false}
!34 = !{!"../block/blk-ia-ranges.c", i32 38, i32 40}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../block/blk-ia-ranges.c", i32 227, i32 4}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @disk_check_ia_ranges._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @disk_check_ia_ranges._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../block/blk-ia-ranges.c", i32 241, i32 3}
!42 = !{ptr @disk_check_ia_ranges._entry.9, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @disk_check_ia_ranges._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i8 0, i8 2}
!55 = !{!"branch_weights", i32 2000, i32 1}
