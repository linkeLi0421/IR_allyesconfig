; ModuleID = '/llk/IR_all_yes/drivers/mtd/mtdsuper.c_pt.bc'
source_filename = "../drivers/mtd/mtdsuper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+get_tree_mtd\22, \22a\22\09"
module asm "\09.weak\09__crc_get_tree_mtd\09\09\09\09"
module asm "\09.long\09__crc_get_tree_mtd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tree_mtd:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tree_mtd\22\09\09\09\09\09"
module asm "__kstrtabns_get_tree_mtd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kill_mtd_super\22, \22a\22\09"
module asm "\09.weak\09__crc_kill_mtd_super\09\09\09\09"
module asm "\09.long\09__crc_kill_mtd_super\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_mtd_super:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_mtd_super\22\09\09\09\09\09"
module asm "__kstrtabns_kill_mtd_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.71 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.71 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.41 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.41 = type { %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No source specified\00", [44 x i8] zeroinitializer }, align 32
@get_tree_mtd.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mtd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_tree_mtd\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mtd/mtdsuper.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MTDSB: dev_name \22%s\22\0A\00", [42 x i8] zeroinitializer }, align 32
@get_tree_mtd.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MTDSB: mtd:%%s, name \22%s\22\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MTD: MTD device with name \22%s\22 not found\00", [55 x i8] zeroinitializer }, align 32
@get_tree_mtd.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MTDSB: mtd%%d, mtdnr %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MTD: Couldn't look up '%s': %d\00", [33 x i8] zeroinitializer }, align 32
@get_tree_mtd.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MTDSB: lookup_bdev() returned 0\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MTD: Attempt to mount non-MTD device \22%s\22\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_get_tree_mtd = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tree_mtd = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tree_mtd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tree_mtd to i32), ptr @__kstrtab_get_tree_mtd, ptr @__kstrtabns_get_tree_mtd }, section "___ksymtab_gpl+get_tree_mtd", align 4
@__kstrtab_kill_mtd_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_mtd_super = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_mtd_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_mtd_super to i32), ptr @__kstrtab_kill_mtd_super, ptr @__kstrtabns_kill_mtd_super }, section "___ksymtab_gpl+kill_mtd_super", align 4
@mtd_get_sb.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mtd_get_sb\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MTDSB: Device %d (\22%s\22) is already mounted\0A\00", [52 x i8] zeroinitializer }, align 32
@mtd_get_sb.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.13, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MTDSB: New superblock for device %d (\22%s\22)\0A\00", [52 x i8] zeroinitializer }, align 32
@mtd_test_super.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtd_test_super\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MTDSB: Match on device %d (\22%s\22)\0A\00", [62 x i8] zeroinitializer }, align 32
@mtd_test_super.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 0, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"MTDSB: No match, device %d (\22%s\22), device %d (\22%s\22)\0A\00", [43 x i8] zeroinitializer }, align 32
@mtd_bdi = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MTDSB: Device #%u doesn't appear to exist\0A\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 130, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 132, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 146, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 153, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 163, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 175, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 178, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 186, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 72, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 77, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 31, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 36, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [26 x i8] c"../drivers/mtd/mtdsuper.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 107, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_get_tree_mtd, ptr @__ksymtab_kill_mtd_super, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_tree_mtd(ptr noundef %fc, ptr nocapture noundef readonly %fill_super) #0 align 64 {
entry:
  %dev = alloca i32, align 4
  %endptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev, align 4, !annotation !52
  %source = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %1 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %source, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %log1 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log1, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %4, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str) #4
  br label %cleanup127

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_tree_mtd.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_tree_mtd, %if.then5)) #4
          to label %do.end [label %if.then5], !srcloc !53

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %source, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_tree_mtd.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.4, ptr noundef %6) #4
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %7 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %source, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %10)
  %cmp = icmp eq i8 %10, 109
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end90_crit_edge

do.end.if.end90_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

land.lhs.true:                                    ; preds = %do.end
  %arrayidx11 = getelementptr i8, ptr %8, i32 1
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %12)
  %cmp13 = icmp eq i8 %12, 116
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true.if.end90_crit_edge

land.lhs.true.if.end90_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

land.lhs.true15:                                  ; preds = %land.lhs.true
  %arrayidx17 = getelementptr i8, ptr %8, i32 2
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %14)
  %cmp19 = icmp eq i8 %14, 100
  br i1 %cmp19, label %if.then21, label %land.lhs.true15.if.end90_crit_edge

land.lhs.true15.if.end90_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

if.then21:                                        ; preds = %land.lhs.true15
  %arrayidx23 = getelementptr i8, ptr %8, i32 3
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %16)
  %cmp25 = icmp eq i8 %16, 58
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_tree_mtd.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_tree_mtd, %if.then40)) #4
          to label %do.end44 [label %if.then40], !srcloc !53

if.then40:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %source, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_tree_mtd.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.5, ptr noundef %add.ptr) #4
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %if.then27
  %19 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %source, align 4
  %add.ptr46 = getelementptr i8, ptr %20, i32 4
  %call47 = tail call ptr @get_mtd_device_nm(ptr noundef %add.ptr46) #4
  %cmp.i = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #6
  %log53 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %log53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log53, align 4
  %23 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %source, align 4
  %add.ptr55 = getelementptr i8, ptr %24, i32 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %22, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.6, ptr noundef %add.ptr55) #4
  br label %if.end90

cleanup:                                          ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #6
  %call50 = tail call fastcc i32 @mtd_get_sb(ptr noundef %fc, ptr noundef %call47, ptr noundef %fill_super)
  br label %cleanup127

if.else:                                          ; preds = %if.then21
  %conv24 = zext i8 %16 to i32
  %25 = add nsw i32 %conv24, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %25)
  %26 = icmp ult i32 %25, -10
  br i1 %26, label %if.else.if.end90_crit_edge, label %if.then61

if.else.if.end90_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

if.then61:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endptr) #4
  %27 = ptrtoint ptr %endptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %endptr, align 4, !annotation !52
  %call64 = call i32 @simple_strtoul(ptr noundef %arrayidx23, ptr noundef nonnull %endptr, i32 noundef 0) #4
  %28 = ptrtoint ptr %endptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %endptr, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool65.not = icmp eq i8 %31, 0
  br i1 %tobool65.not, label %do.body67, label %cleanup85

do.body67:                                        ; preds = %if.then61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_tree_mtd.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_tree_mtd, %if.then79)) #4
          to label %cleanup85.thread [label %if.then79], !srcloc !53

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_tree_mtd.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.7, i32 noundef %call64) #4
  br label %cleanup85.thread

cleanup85.thread:                                 ; preds = %if.then79, %do.body67
  %call83 = call fastcc i32 @mtd_get_sb_by_nr(ptr noundef %fc, i32 noundef %call64, ptr noundef %fill_super)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endptr) #4
  br label %cleanup127

cleanup85:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endptr) #4
  br label %if.end90

if.end90:                                         ; preds = %cleanup85, %if.else.if.end90_crit_edge, %cleanup.thread, %land.lhs.true15.if.end90_crit_edge, %land.lhs.true.if.end90_crit_edge, %do.end.if.end90_crit_edge
  %32 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %source, align 4
  %call92 = call i32 @lookup_bdev(ptr noundef %33, ptr noundef nonnull %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %do.body99, label %if.then94

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  %log96 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %log96 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %log96, align 4
  %36 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %source, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %35, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.8, ptr noundef %37, i32 noundef %call92) #4
  br label %cleanup127

do.body99:                                        ; preds = %if.end90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_tree_mtd.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_tree_mtd, %if.then111)) #4
          to label %do.end114 [label %if.then111], !srcloc !53

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_tree_mtd.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.9) #4
  br label %do.end114

do.end114:                                        ; preds = %if.then111, %do.body99
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev, align 4
  %shr.mask = and i32 %39, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 32505856, i32 %shr.mask)
  %cmp115 = icmp eq i32 %shr.mask, 32505856
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %do.end114
  %and = and i32 %39, 1048575
  %call.i = call ptr @get_mtd_device(ptr noundef null, i32 noundef %and) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #6
  %log2.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %log2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %log2.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %41, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.17, i32 noundef %and) #4
  %42 = ptrtoint ptr %call.i to i32
  br label %cleanup127

if.end.i:                                         ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = call fastcc i32 @mtd_get_sb(ptr noundef %fc, ptr noundef %call.i, ptr noundef %fill_super) #4
  br label %cleanup127

if.end119:                                        ; preds = %do.end114
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %43 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sb_flags, align 4
  %and120 = and i32 %44, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.then122, label %if.end119.cleanup127_crit_edge

if.end119.cleanup127_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup127

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  %log124 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %log124 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %log124, align 4
  %47 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %source, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %46, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.10, ptr noundef %48) #4
  br label %cleanup127

cleanup127:                                       ; preds = %if.then122, %if.end119.cleanup127_crit_edge, %if.end.i, %if.then.i, %if.then94, %cleanup85.thread, %cleanup, %if.then
  %retval.2 = phi i32 [ %call92, %if.then94 ], [ %call50, %cleanup ], [ -22, %if.then ], [ -22, %if.then122 ], [ -22, %if.end119.cleanup127_crit_edge ], [ %call83, %cleanup85.thread ], [ %42, %if.then.i ], [ %call4.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #4
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device_nm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtd_get_sb(ptr noundef %fc, ptr noundef %mtd, ptr nocapture noundef readonly %fill_super) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sget_key = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 4
  %0 = ptrtoint ptr %sget_key to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mtd, ptr %sget_key, align 4
  %call = tail call ptr @sget_fc(ptr noundef %fc, ptr noundef nonnull @mtd_test_super, ptr noundef nonnull @mtd_set_super) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_root = getelementptr inbounds %struct.super_block, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body10, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtd_get_sb.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtd_get_sb, %if.then8)) #4
          to label %do.end [label %if.then8], !srcloc !53

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtd_get_sb.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.12, i32 noundef %5, ptr noundef %7) #4
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call void @put_mtd_device(ptr noundef %mtd) #4
  br label %do.body32

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtd_get_sb.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtd_get_sb, %if.then22)) #4
          to label %do.end27 [label %if.then22], !srcloc !53

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %index23 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %8 = ptrtoint ptr %index23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index23, align 4
  %name24 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %10 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name24, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtd_get_sb.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.13, i32 noundef %9, ptr noundef %11) #4
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body10
  %call28 = tail call i32 %fill_super(ptr noundef %call, ptr noundef %fc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %error_sb, label %if.end30

if.end30:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call, i32 0, i32 10
  %12 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags, align 4
  %or = or i32 %13, 1073741824
  store i32 %or, ptr %s_flags, align 4
  br label %do.body32

do.body32:                                        ; preds = %if.end30, %do.end
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %14 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root, align 4
  %tobool33.not = icmp eq ptr %15, null
  br i1 %tobool33.not, label %do.end49, label %do.body41, !prof !54

do.body41:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdsuper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 87, 0\0A.popsection", ""() #4, !srcloc !55
  unreachable

do.end49:                                         ; preds = %do.body32
  %16 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end49.dget.exit_crit_edge, label %if.then.i

do.end49.dget.exit_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %dget.exit

if.then.i:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #6
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #4
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %do.end49.dget.exit_crit_edge
  %18 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %root, align 4
  br label %cleanup

error_sb:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @deactivate_locked_super(ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %error_sb, %dget.exit, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %dget.exit ], [ %call28, %error_sb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtd_get_sb_by_nr(ptr noundef %fc, i32 noundef %mtdnr, ptr nocapture noundef readonly %fill_super) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_mtd_device(ptr noundef null, i32 noundef %mtdnr) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %log2 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %log2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %1, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.17, i32 noundef %mtdnr) #4
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call fastcc i32 @mtd_get_sb(ptr noundef %fc, ptr noundef %call, ptr noundef %fill_super)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_bdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kill_mtd_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @generic_shutdown_super(ptr noundef %sb) #4
  %s_mtd = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 28
  %0 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_mtd, align 4
  tail call void @put_mtd_device(ptr noundef %1) #4
  %2 = ptrtoint ptr %s_mtd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %s_mtd, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_shutdown_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget_fc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtd_test_super(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sget_key = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 4
  %0 = ptrtoint ptr %sget_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sget_key, align 4
  %s_mtd = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 28
  %2 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_mtd, align 4
  %cmp = icmp eq ptr %3, %1
  br i1 %cmp, label %do.body, label %do.body6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtd_test_super.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtd_test_super, %if.then4)) #4
          to label %cleanup [label %if.then4], !srcloc !53

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %index = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtd_test_super.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.15, i32 noundef %5, ptr noundef %7) #4
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtd_test_super.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtd_test_super, %if.then18)) #4
          to label %cleanup [label %if.then18], !srcloc !53

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_mtd, align 4
  %index20 = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %index20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index20, align 4
  %name22 = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 13
  %12 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name22, align 8
  %index23 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %index23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index23, align 4
  %name24 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name24, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtd_test_super.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.16, i32 noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.body6, %if.then4, %do.body
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 0, %if.then18 ], [ 1, %do.body ], [ 0, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtd_set_super(ptr nocapture noundef writeonly %sb, ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sget_key = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 4
  %0 = ptrtoint ptr %sget_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sget_key, align 4
  %s_mtd = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 28
  %2 = ptrtoint ptr %s_mtd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %s_mtd, align 4
  %index = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %or = or i32 %4, 32505856
  %s_dev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %s_dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mtd_bdi to i32))
  %6 = load ptr, ptr @mtd_bdi, align 4
  %refcnt.i = getelementptr inbounds %struct.backing_dev_info, ptr %6, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #4
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #4, !srcloc !56
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !57

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.bdi_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !54

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.bdi_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bdi_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i.i) #4
  br label %bdi_get.exit

bdi_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.bdi_get.exit_crit_edge
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 27
  %9 = ptrtoint ptr %s_bdi to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %s_bdi, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/mtdsuper.c", i32 130, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/mtdsuper.c", i32 132, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @get_tree_mtd.__UNIQUE_ID_ddebug289, !3, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/mtdsuper.c", i32 146, i32 4}
!10 = !{ptr @get_tree_mtd.__UNIQUE_ID_ddebug290, !9, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/mtdsuper.c", i32 153, i32 4}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mtd/mtdsuper.c", i32 163, i32 5}
!15 = !{ptr @get_tree_mtd.__UNIQUE_ID_ddebug291, !14, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/mtdsuper.c", i32 175, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/mtdsuper.c", i32 178, i32 2}
!20 = !{ptr @get_tree_mtd.__UNIQUE_ID_ddebug292, !19, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/mtdsuper.c", i32 186, i32 3}
!23 = !{ptr @__ksymtab_get_tree_mtd, !24, !"__ksymtab_get_tree_mtd", i1 false, i1 false}
!24 = !{!"../drivers/mtd/mtdsuper.c", i32 190, i32 1}
!25 = !{ptr @__ksymtab_kill_mtd_super, !26, !"__ksymtab_kill_mtd_super", i1 false, i1 false}
!26 = !{!"../drivers/mtd/mtdsuper.c", i32 202, i32 1}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/mtdsuper.c", i32 72, i32 3}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mtd_get_sb.__UNIQUE_ID_ddebug287, !28, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/mtdsuper.c", i32 77, i32 3}
!33 = !{ptr @mtd_get_sb.__UNIQUE_ID_ddebug288, !32, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/mtdsuper.c", i32 31, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mtd_test_super.__UNIQUE_ID_ddebug285, !35, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/mtdsuper.c", i32 36, i32 2}
!40 = !{ptr @mtd_test_super.__UNIQUE_ID_ddebug286, !39, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/mtdsuper.c", i32 107, i32 3}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
!53 = !{i64 2148726853, i64 2148726858, i64 2148726871, i64 2148726915, i64 2148726949, i64 2148726970}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2154958982, i64 2154963529, i64 2154959019, i64 2154959075, i64 2154959109, i64 2154959133, i64 2154959174, i64 2154959195, i64 2154959223, i64 2154959257}
!56 = !{i64 2148246568, i64 2148246600, i64 2148246629, i64 2148246663, i64 2148246694, i64 2148246717}
!57 = !{!"branch_weights", i32 1, i32 2000}
