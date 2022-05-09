; ModuleID = '/llk/IR_all_yes/drivers/mtd/mtd_blkdevs.c_pt.bc'
source_filename = "../drivers/mtd/mtd_blkdevs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mtd_blktrans_cease_background\22, \22a\22\09"
module asm "\09.weak\09__crc_mtd_blktrans_cease_background\09\09\09\09"
module asm "\09.long\09__crc_mtd_blktrans_cease_background\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_blktrans_cease_background:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_blktrans_cease_background\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_blktrans_cease_background:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_mtd_blktrans\22, \22a\22\09"
module asm "\09.weak\09__crc_register_mtd_blktrans\09\09\09\09"
module asm "\09.long\09__crc_register_mtd_blktrans\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_mtd_blktrans:\09\09\09\09\09"
module asm "\09.asciz \09\22register_mtd_blktrans\22\09\09\09\09\09"
module asm "__kstrtabns_register_mtd_blktrans:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+deregister_mtd_blktrans\22, \22a\22\09"
module asm "\09.weak\09__crc_deregister_mtd_blktrans\09\09\09\09"
module asm "\09.long\09__crc_deregister_mtd_blktrans\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_deregister_mtd_blktrans:\09\09\09\09\09"
module asm "\09.asciz \09\22deregister_mtd_blktrans\22\09\09\09\09\09"
module asm "__kstrtabns_deregister_mtd_blktrans:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+add_mtd_blktrans_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_add_mtd_blktrans_dev\09\09\09\09"
module asm "\09.long\09__crc_add_mtd_blktrans_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_mtd_blktrans_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22add_mtd_blktrans_dev\22\09\09\09\09\09"
module asm "__kstrtabns_add_mtd_blktrans_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+del_mtd_blktrans_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_del_mtd_blktrans_dev\09\09\09\09"
module asm "\09.long\09__crc_del_mtd_blktrans_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_del_mtd_blktrans_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22del_mtd_blktrans_dev\22\09\09\09\09\09"
module asm "__kstrtabns_del_mtd_blktrans_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtd_notifier = type { ptr, ptr, %struct.list_head }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_blktrans_ops = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.78 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.78 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.blk_mq_hw_ctx = type { %struct.anon.83, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.83 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }

@__kstrtab_mtd_blktrans_cease_background = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_blktrans_cease_background = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_blktrans_cease_background = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_blktrans_cease_background to i32), ptr @__kstrtab_mtd_blktrans_cease_background, ptr @__kstrtabns_mtd_blktrans_cease_background }, section "___ksymtab_gpl+mtd_blktrans_cease_background", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@mtd_table_mutex = external dso_local global %struct.mutex, align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mtd/mtd_blkdevs.c\00", [38 x i8] zeroinitializer }, align 32
@add_mtd_blktrans_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&new->lock\00", [21 x i8] zeroinitializer }, align 32
@mtd_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @mtd_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@add_mtd_blktrans_dev.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mtd_block_ops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @blktrans_open, ptr @blktrans_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @blktrans_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%c\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%c%c\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@add_mtd_blktrans_dev.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&new->queue_lock\00", [47 x i8] zeroinitializer }, align 32
@blktrans_notifier = internal global { %struct.mtd_notifier, [16 x i8] } { %struct.mtd_notifier { ptr @blktrans_notify_add, ptr @blktrans_notify_remove, %struct.list_head zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@register_mtd_blktrans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014Unable to register %s block device on major %d: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"register_mtd_blktrans\00", [42 x i8] zeroinitializer }, align 32
@register_mtd_blktrans._entry_ptr = internal global ptr @register_mtd_blktrans._entry, section ".printk_index", align 4
@blktrans_majors = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @blktrans_majors, ptr @blktrans_majors }, [24 x i8] zeroinitializer }, align 32
@__exitcall_mtd_blktrans_exit = internal global ptr @mtd_blktrans_exit, section ".exitcall.exit", align 4
@__kstrtab_register_mtd_blktrans = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_mtd_blktrans = external dso_local constant [0 x i8], align 1
@__ksymtab_register_mtd_blktrans = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_mtd_blktrans to i32), ptr @__kstrtab_register_mtd_blktrans, ptr @__kstrtabns_register_mtd_blktrans }, section "___ksymtab_gpl+register_mtd_blktrans", align 4
@__kstrtab_deregister_mtd_blktrans = external dso_local constant [0 x i8], align 1
@__kstrtabns_deregister_mtd_blktrans = external dso_local constant [0 x i8], align 1
@__ksymtab_deregister_mtd_blktrans = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @deregister_mtd_blktrans to i32), ptr @__kstrtab_deregister_mtd_blktrans, ptr @__kstrtabns_deregister_mtd_blktrans }, section "___ksymtab_gpl+deregister_mtd_blktrans", align 4
@__kstrtab_add_mtd_blktrans_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_mtd_blktrans_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_add_mtd_blktrans_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_mtd_blktrans_dev to i32), ptr @__kstrtab_add_mtd_blktrans_dev, ptr @__kstrtabns_add_mtd_blktrans_dev }, section "___ksymtab_gpl+add_mtd_blktrans_dev", align 4
@__kstrtab_del_mtd_blktrans_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_del_mtd_blktrans_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_del_mtd_blktrans_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @del_mtd_blktrans_dev to i32), ptr @__kstrtab_del_mtd_blktrans_dev, ptr @__kstrtabns_del_mtd_blktrans_dev }, section "___ksymtab_gpl+del_mtd_blktrans_dev", align 4
@__UNIQUE_ID_author287 = internal constant [57 x i8] c"mtd_blkdevs.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file288 = internal constant [41 x i8] c"mtd_blkdevs.file=drivers/mtd/mtd_blkdevs\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [24 x i8] c"mtd_blkdevs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [85 x i8] c"mtd_blkdevs.description=Common interface to block layer for MTD 'translation layers'\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 283, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 319, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"mtd_mq_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 271, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 335, i32 7 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"mtd_block_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 264, i32 45 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 352, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 355, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 360, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 367, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"blktrans_notifier\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 473, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 491, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"blktrans_majors\00", align 1
@___asan_gen_.65 = private constant [29 x i8] c"../drivers/mtd/mtd_blkdevs.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 25, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 44, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_mtd_blktrans_exit, ptr @__ksymtab_add_mtd_blktrans_dev, ptr @__ksymtab_del_mtd_blktrans_dev, ptr @__ksymtab_deregister_mtd_blktrans, ptr @__ksymtab_mtd_blktrans_cease_background, ptr @__ksymtab_register_mtd_blktrans, ptr @mtd_blktrans_exit, ptr @register_mtd_blktrans._entry, ptr @register_mtd_blktrans._entry_ptr, ptr @.str, ptr @add_mtd_blktrans_dev.__key, ptr @.str.1, ptr @mtd_mq_ops, ptr @add_mtd_blktrans_dev.__key.2, ptr @mtd_block_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @add_mtd_blktrans_dev.__key.6, ptr @.str.7, ptr @blktrans_notifier, ptr @.str.8, ptr @.str.9, ptr @blktrans_majors, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_mtd_blktrans_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_mtd_blktrans_dev.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_block_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_mtd_blktrans_dev.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blktrans_notifier to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_mtd_blktrans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blktrans_majors to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mtd_blktrans_cease_background(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bg_stop = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %bg_stop to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bg_stop, align 4, !range !59
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_mtd_blktrans_dev(ptr noundef %new) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %new, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @mtd_table_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !60

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 283, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %devs = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn330 = load ptr, ptr %devs, align 4
  %cmp27.not331 = icmp eq ptr %.pn330, %devs
  br i1 %cmp27.not331, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 4
  %4 = ptrtoint ptr %devnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp30 = icmp eq i32 %5, -1
  br label %for.body

for.body:                                         ; preds = %if.end53.for.body_crit_edge, %for.body.lr.ph
  %.pn333 = phi ptr [ %.pn330, %for.body.lr.ph ], [ %.pn, %if.end53.for.body_crit_edge ]
  %last_devnum.0332 = phi i32 [ -1, %for.body.lr.ph ], [ %22, %if.end53.for.body_crit_edge ]
  %devnum32 = getelementptr i8, ptr %.pn333, i32 104
  %6 = ptrtoint ptr %devnum32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devnum32, align 4
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.body
  %add = add i32 %last_devnum.0332, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp33.not = icmp eq i32 %7, %add
  br i1 %cmp33.not, label %if.then31.if.end53_crit_edge, label %if.then34

if.then31.if.end53_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then34:                                        ; preds = %if.then31
  %8 = ptrtoint ptr %devnum to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %devnum, align 4
  %list37 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn333, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list37, ptr noundef %10, ptr noundef %.pn333) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.do.body76_crit_edge

if.then34.do.body76_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

if.end.i.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list37, ptr %prev.i, align 4
  %12 = ptrtoint ptr %list37 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.pn333, ptr %list37, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list37, ptr %10, align 4
  br label %do.body76

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp42 = icmp eq i32 %7, %5
  br i1 %cmp42, label %if.else.cleanup_crit_edge, label %if.else44

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp47 = icmp sgt i32 %7, %5
  br i1 %cmp47, label %if.then48, label %if.else44.if.end53_crit_edge

if.else44.if.end53_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then48:                                        ; preds = %if.else44
  %list49 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 1
  %prev.i306 = getelementptr inbounds %struct.list_head, ptr %.pn333, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i306 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i306, align 4
  %call.i.i307 = tail call zeroext i1 @__list_add_valid(ptr noundef %list49, ptr noundef %16, ptr noundef %.pn333) #9
  br i1 %call.i.i307, label %if.end.i.i309, label %if.then48.do.body76_crit_edge

if.then48.do.body76_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

if.end.i.i309:                                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i306 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list49, ptr %prev.i306, align 4
  %18 = ptrtoint ptr %list49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.pn333, ptr %list49, align 4
  %prev3.i.i308 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev3.i.i308 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i308, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list49, ptr %16, align 4
  br label %do.body76

if.end53:                                         ; preds = %if.else44.if.end53_crit_edge, %if.then31.if.end53_crit_edge
  %devnum54 = getelementptr i8, ptr %.pn333, i32 104
  %21 = ptrtoint ptr %devnum54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devnum54, align 4
  %23 = ptrtoint ptr %.pn333 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn333, align 4
  %cmp27.not = icmp eq ptr %.pn, %devs
  br i1 %cmp27.not, label %if.end53.for.end_crit_edge, label %if.end53.for.body_crit_edge

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end53.for.end_crit_edge, %if.end.for.end_crit_edge
  %last_devnum.0.lcssa = phi i32 [ -1, %if.end.for.end_crit_edge ], [ %22, %if.end53.for.end_crit_edge ]
  %devnum60 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 4
  %24 = ptrtoint ptr %devnum60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devnum60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp61 = icmp eq i32 %25, -1
  br i1 %cmp61, label %if.then62, label %for.end.if.end65_crit_edge

for.end.if.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then62:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %add63 = add i32 %last_devnum.0.lcssa, 1
  %26 = ptrtoint ptr %devnum60 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add63, ptr %devnum60, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %for.end.if.end65_crit_edge
  %27 = ptrtoint ptr %devnum60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %devnum60, align 4
  %part_bits = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %part_bits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %part_bits, align 4
  %shr = lshr i32 1048575, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %shr)
  %cmp67 = icmp ugt i32 %28, %shr
  br i1 %cmp67, label %if.end65.cleanup_crit_edge, label %lor.lhs.false

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool69.not = icmp ne i32 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 701, i32 %28)
  %cmp71 = icmp sgt i32 %28, 701
  %or.cond = select i1 %tobool69.not, i1 %cmp71, i1 false
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end73

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end73:                                         ; preds = %lor.lhs.false
  %list74 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 1
  %prev.i311 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %1, i32 0, i32 15, i32 1
  %31 = ptrtoint ptr %prev.i311 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i311, align 4
  %call.i.i312 = tail call zeroext i1 @__list_add_valid(ptr noundef %list74, ptr noundef %32, ptr noundef %devs) #9
  br i1 %call.i.i312, label %if.end.i.i314, label %if.end73.do.body76_crit_edge

if.end73.do.body76_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

if.end.i.i314:                                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %prev.i311 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list74, ptr %prev.i311, align 4
  %34 = ptrtoint ptr %list74 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %devs, ptr %list74, align 4
  %prev3.i.i313 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev3.i.i313 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i313, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list74, ptr %32, align 4
  br label %do.body76

do.body76:                                        ; preds = %if.end.i.i314, %if.end73.do.body76_crit_edge, %if.end.i.i309, %if.then48.do.body76_crit_edge, %if.end.i.i, %if.then34.do.body76_crit_edge
  %lock = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @add_mtd_blktrans_dev.__key) #9
  %ref = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #9
  %37 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 1, ptr %ref, align 4
  %writesect = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %writesect to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %writesect, align 4
  %tobool79.not = icmp eq ptr %39, null
  br i1 %tobool79.not, label %if.then80, label %do.body76.if.end81_crit_edge

do.body76.if.end81_crit_edge:                     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then80:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %readonly = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 7
  %40 = ptrtoint ptr %readonly to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %readonly, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %do.body76.if.end81_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 184) #12
  %tag_set = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 14
  %42 = ptrtoint ptr %tag_set to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %tag_set, align 4
  %tobool84.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool84.not, label %if.end81.out_list_del_crit_edge, label %if.end86

if.end81.out_list_del_crit_edge:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_list_del

if.end86:                                         ; preds = %if.end81
  %call88 = tail call i32 @blk_mq_alloc_sq_tag_set(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mtd_mq_ops, i32 noundef 2, i32 noundef 33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end86.out_kfree_tag_set_crit_edge

if.end86.out_kfree_tag_set_crit_edge:             ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_kfree_tag_set

if.end91:                                         ; preds = %if.end86
  %43 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tag_set, align 4
  %call94 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %44, ptr noundef %new, ptr noundef nonnull @add_mtd_blktrans_dev.__key.2) #9
  %cmp.i = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %call94 to i32
  br label %out_free_tag_set

if.end98:                                         ; preds = %if.end91
  %disk = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 10
  %46 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call94, ptr %disk, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %call94, i32 0, i32 9
  %47 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %queue, align 4
  %rq = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 12
  %49 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %rq, align 4
  %private_data = getelementptr inbounds %struct.gendisk, ptr %call94, i32 0, i32 10
  %50 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %new, ptr %private_data, align 8
  %major = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %major, align 4
  %53 = ptrtoint ptr %call94 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %call94, align 8
  %devnum101 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 4
  %54 = ptrtoint ptr %devnum101 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %devnum101, align 4
  %part_bits102 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %part_bits102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %part_bits102, align 4
  %shl = shl i32 %55, %57
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call94, i32 0, i32 1
  %58 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shl, ptr %first_minor, align 4
  %59 = load i32, ptr %part_bits102, align 4
  %shl104 = shl nuw i32 1, %59
  %minors = getelementptr inbounds %struct.gendisk, ptr %call94, i32 0, i32 2
  %60 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %shl104, ptr %minors, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %call94, i32 0, i32 8
  %61 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @mtd_block_ops, ptr %fops, align 8
  %62 = load i32, ptr %part_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool106.not = icmp eq i32 %62, 0
  br i1 %tobool106.not, label %if.else124, label %if.then107

if.then107:                                       ; preds = %if.end98
  %63 = ptrtoint ptr %devnum101 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %devnum101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %64)
  %cmp109 = icmp slt i32 %64, 26
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call94, i32 0, i32 3
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  br i1 %cmp109, label %if.then110, label %if.else114

if.then110:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  %add112 = add nsw i32 %64, 97
  %call113 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %disk_name, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %66, i32 noundef %add112)
  br label %if.end130

if.else114:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  %.frozen = freeze i32 %64
  %div320 = udiv i32 %.frozen, 26
  %add119 = add nuw nsw i32 %div320, 96
  %67 = mul i32 %div320, 26
  %rem321.decomposed = sub i32 %.frozen, %67
  %add121 = add nuw nsw i32 %rem321.decomposed, 97
  %call122 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %disk_name, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %66, i32 noundef %add119, i32 noundef %add121)
  br label %if.end130

if.else124:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %disk_name125 = getelementptr inbounds %struct.gendisk, ptr %call94, i32 0, i32 3
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %70 = ptrtoint ptr %devnum101 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %devnum101, align 4
  %call129 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %disk_name125, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %69, i32 noundef %71)
  %flags = getelementptr inbounds %struct.gendisk, ptr %call94, i32 0, i32 11
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags, align 4
  %or = or i32 %73, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.else124, %if.else114, %if.then110
  %size = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 6
  %74 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size, align 4
  %conv = zext i32 %75 to i64
  %blksize = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %blksize, align 4
  %conv131 = sext i32 %77 to i64
  %mul = mul nsw i64 %conv131, %conv
  %shr132 = lshr i64 %mul, 9
  tail call void @set_capacity(ptr noundef %call94, i64 noundef %shr132) #9
  %queue_lock = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @add_mtd_blktrans_dev.__key.6, i16 noundef signext 3) #9
  %rq_list = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 13
  %78 = ptrtoint ptr %rq_list to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %rq_list, ptr %rq_list, align 4
  %prev.i316 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 13, i32 1
  %79 = ptrtoint ptr %prev.i316 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %rq_list, ptr %prev.i316, align 4
  %flush = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %1, i32 0, i32 10
  %80 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %flush, align 4
  %tobool137.not = icmp eq ptr %81, null
  br i1 %tobool137.not, label %if.end130.if.end140_crit_edge, label %if.then138

if.end130.if.end140_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then138:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rq, align 4
  tail call void @blk_queue_write_cache(ptr noundef %83, i1 noundef zeroext true, i1 noundef zeroext false) #9
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.end130.if.end140_crit_edge
  %84 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rq, align 4
  %86 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %blksize, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %85, i32 noundef %87) #9
  %88 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rq, align 4
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %89) #9
  %90 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rq, align 4
  tail call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %91) #9
  %discard = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %1, i32 0, i32 7
  %92 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %discard, align 4
  %tobool145.not = icmp eq ptr %93, null
  br i1 %tobool145.not, label %if.end140.if.end151_crit_edge, label %if.then146

if.end140.if.end151_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then146:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rq, align 4
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %95) #9
  %96 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rq, align 4
  tail call void @blk_queue_max_discard_sectors(ptr noundef %97, i32 noundef -1) #9
  %98 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %blksize, align 4
  %100 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rq, align 4
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %101, i32 0, i32 37, i32 18
  %102 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %99, ptr %discard_granularity, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %if.end140.if.end151_crit_edge
  %103 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rq, align 4
  %105 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %queue, align 4
  %readonly154 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 7
  %106 = ptrtoint ptr %readonly154 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %readonly154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool155.not = icmp eq i32 %107, 0
  br i1 %tobool155.not, label %if.end151.if.end157_crit_edge, label %if.then156

if.end151.if.end157_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

if.then156:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @set_disk_ro(ptr noundef %call94, i1 noundef zeroext true) #9
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end151.if.end157_crit_edge
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 2
  %108 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mtd, align 4
  %dev = getelementptr inbounds %struct.mtd_info, ptr %109, i32 0, i32 56
  %call158 = tail call i32 @device_add_disk(ptr noundef %dev, ptr noundef %call94, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %out_cleanup_disk

if.end161:                                        ; preds = %if.end157
  %disk_attributes = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 11
  %110 = ptrtoint ptr %disk_attributes to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %disk_attributes, align 4
  %tobool162.not = icmp eq ptr %111, null
  br i1 %tobool162.not, label %if.end161.cleanup_crit_edge, label %if.then163

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then163:                                       ; preds = %if.end161
  %part0 = getelementptr inbounds %struct.gendisk, ptr %call94, i32 0, i32 7
  %112 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %113, i32 0, i32 10
  %call165 = tail call i32 @sysfs_create_group(ptr noundef %bd_device, ptr noundef nonnull %111) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool167.not = icmp eq i32 %call165, 0
  br i1 %tobool167.not, label %if.then163.cleanup_crit_edge, label %do.end183, !prof !61

if.then163.cleanup_crit_edge:                     ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end183:                                        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

out_cleanup_disk:                                 ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %disk, align 4
  tail call void @blk_cleanup_disk(ptr noundef %115) #9
  br label %out_free_tag_set

out_free_tag_set:                                 ; preds = %out_cleanup_disk, %if.then96
  %ret.0 = phi i32 [ %45, %if.then96 ], [ %call158, %out_cleanup_disk ]
  %116 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tag_set, align 4
  tail call void @blk_mq_free_tag_set(ptr noundef %117) #9
  br label %out_kfree_tag_set

out_kfree_tag_set:                                ; preds = %out_free_tag_set, %if.end86.out_kfree_tag_set_crit_edge
  %ret.1 = phi i32 [ %call88, %if.end86.out_kfree_tag_set_crit_edge ], [ %ret.0, %out_free_tag_set ]
  %118 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tag_set, align 4
  tail call void @kfree(ptr noundef %119) #9
  br label %out_list_del

out_list_del:                                     ; preds = %out_kfree_tag_set, %if.end81.out_list_del_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_kfree_tag_set ], [ -12, %if.end81.out_list_del_crit_edge ]
  %list201 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 1
  %call.i.i317 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list201) #9
  br i1 %call.i.i317, label %if.end.i.i318, label %out_list_del.list_del.exit_crit_edge

out_list_del.list_del.exit_crit_edge:             ; preds = %out_list_del
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i318:                                    ; preds = %out_list_del
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i, align 4
  %122 = ptrtoint ptr %list201 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %list201, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev1.i.i.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %123, ptr %121, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i318, %out_list_del.list_del.exit_crit_edge
  %126 = ptrtoint ptr %list201 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr inttoptr (i32 256 to ptr), ptr %list201, align 4
  %prev.i319 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %new, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %prev.i319 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i319, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %do.end183, %if.then163.cleanup_crit_edge, %if.end161.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %list_del.exit ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end65.cleanup_crit_edge ], [ 0, %if.then163.cleanup_crit_edge ], [ 0, %do.end183 ], [ 0, %if.end161.cleanup_crit_edge ], [ -16, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_sq_tag_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @del_mtd_blktrans_dev(ptr noundef %old) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @mtd_table_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !60

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 415, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %disk_attributes = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %old, i32 0, i32 11
  %1 = ptrtoint ptr %disk_attributes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disk_attributes, align 4
  %tobool24.not = icmp eq ptr %2, null
  br i1 %tobool24.not, label %if.end.if.end27_crit_edge, label %if.then25

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %disk = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %old, i32 0, i32 10
  %3 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 10
  tail call void @sysfs_remove_group(ptr noundef %bd_device, ptr noundef nonnull %2) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end.if.end27_crit_edge
  %disk28 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %old, i32 0, i32 10
  %7 = ptrtoint ptr %disk28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disk28, align 4
  tail call void @del_gendisk(ptr noundef %8) #9
  %queue_lock = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %old, i32 0, i32 15
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #9
  %rq = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %old, i32 0, i32 12
  %9 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rq, align 4
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %queuedata to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %queuedata, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call34) #9
  %12 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %13) #9
  %14 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq, align 4
  tail call void @blk_mq_quiesce_queue(ptr noundef %15) #9
  %16 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rq, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %17) #9
  %18 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rq, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %19) #9
  %lock = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %old, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %open = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %old, i32 0, i32 8
  %20 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool44.not = icmp eq i32 %21, 0
  br i1 %tobool44.not, label %if.end27.if.end51_crit_edge, label %if.then45

if.end27.if.end51_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then45:                                        ; preds = %if.end27
  %22 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %old, align 4
  %release = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release, align 4
  %tobool46.not = icmp eq ptr %25, null
  br i1 %tobool46.not, label %if.then45.if.end50_crit_edge, label %if.then47

if.then45.if.end50_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %25(ptr noundef %old) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.then45.if.end50_crit_edge
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %old, i32 0, i32 2
  %26 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mtd, align 4
  tail call void @__put_mtd_device(ptr noundef %27) #9
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end27.if.end51_crit_edge
  %mtd52 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %old, i32 0, i32 2
  %28 = ptrtoint ptr %mtd52 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %mtd52, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  tail call fastcc void @blktrans_dev_put(ptr noundef %old)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blktrans_dev_put(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #9, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !61

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  %disk.i.i = getelementptr %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disk.i.i, align 4
  tail call void @blk_cleanup_disk(ptr noundef %2) #9
  %tag_set.i.i = getelementptr %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %tag_set.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tag_set.i.i, align 4
  tail call void @blk_mq_free_tag_set(ptr noundef %4) #9
  %5 = ptrtoint ptr %tag_set.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tag_set.i.i, align 4
  tail call void @kfree(ptr noundef %6) #9
  %list.i.i = getelementptr %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.blktrans_dev_release.exit.i_crit_edge

if.then.i.blktrans_dev_release.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blktrans_dev_release.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %blktrans_dev_release.exit.i

blktrans_dev_release.exit.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.blktrans_dev_release.exit.i_crit_edge
  %13 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr %struct.mtd_blktrans_dev, ptr %dev, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %dev) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %blktrans_dev_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_mtd_blktrans(ptr noundef %tr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.mtd_notifier, ptr @blktrans_notifier, i32 0, i32 2), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @register_mtd_user(ptr noundef nonnull @blktrans_notifier) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %major = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 1
  %1 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %major, align 4
  %3 = ptrtoint ptr %tr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tr, align 4
  %call = tail call i32 @__register_blkdev(i32 noundef %2, ptr noundef %4, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %tr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tr, align 4
  %7 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %major, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %6, i32 noundef %8, i32 noundef %call) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %major, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %blksize = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 3
  %10 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blksize, align 4
  %12 = tail call i32 @llvm.cttz.i32(i32 %11, i1 true), !range !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %iszero = icmp eq i32 %11, 0
  %sub = select i1 %iszero, i32 -1, i32 %12
  %blkshift = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 4
  %13 = ptrtoint ptr %blkshift to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %blkshift, align 4
  %devs = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 15
  %14 = ptrtoint ptr %devs to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %devs, ptr %devs, align 4
  %prev.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 15, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %devs, ptr %prev.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mtd_table_mutex, i32 noundef 0) #9
  %list = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 16
  %16 = load ptr, ptr @blktrans_majors, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @blktrans_majors, ptr noundef %16) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add.exit_crit_edge

if.end9.list_add.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev1.i.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 16, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @blktrans_majors, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @blktrans_majors, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end9.list_add.exit_crit_edge
  %call10 = tail call ptr @__mtd_next_device(i32 noundef 0) #9
  %cmp11.not35 = icmp eq ptr %call10, null
  br i1 %cmp11.not35, label %list_add.exit.for.end_crit_edge, label %for.body.lr.ph

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_add.exit
  %add_mtd = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mtd.036 = phi ptr [ %call10, %for.body.lr.ph ], [ %call16, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %mtd.036 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mtd.036, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp12.not = icmp eq i8 %21, 0
  br i1 %cmp12.not, label %for.body.for.inc_crit_edge, label %if.then14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %add_mtd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add_mtd, align 4
  tail call void %23(ptr noundef %tr, ptr noundef nonnull %mtd.036) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %for.body.for.inc_crit_edge
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd.036, i32 0, i32 14
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  %add = add i32 %25, 1
  %call16 = tail call ptr @__mtd_next_device(i32 noundef %add) #9
  %cmp11.not = icmp eq ptr %call16, null
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_add.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_mtd_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__mtd_next_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @deregister_mtd_blktrans(ptr noundef %tr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mtd_table_mutex, i32 noundef 0) #9
  %list = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 16, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %devs = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 15
  %8 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devs, align 4
  %cmp.not35 = icmp eq ptr %9, %devs
  br i1 %cmp.not35, label %list_del.exit.for.end_crit_edge, label %for.body.lr.ph

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_del.exit
  %remove_dev = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn.in36 = phi ptr [ %9, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %dev.0 = getelementptr i8, ptr %.pn.in36, i32 -4
  %10 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in36, align 4
  %11 = ptrtoint ptr %remove_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remove_dev, align 4
  tail call void %12(ptr noundef %dev.0) #9
  %cmp.not = icmp eq ptr %.pn, %devs
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #9
  %major = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %tr, i32 0, i32 1
  %13 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %major, align 4
  %15 = ptrtoint ptr %tr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tr, align 4
  tail call void @unregister_blkdev(i32 noundef %14, ptr noundef %16) #9
  %17 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %devs, align 4
  %cmp.i.not = icmp eq ptr %18, %devs
  br i1 %cmp.i.not, label %do.end24, label %do.body19, !prof !61

do.body19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtd_blkdevs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 527, 0\0A.popsection", ""() #9, !srcloc !66
  unreachable

do.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtd_blktrans_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr getelementptr inbounds (%struct.mtd_notifier, ptr @blktrans_notifier, i32 0, i32 2), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @unregister_mtd_user(ptr noundef nonnull @blktrans_notifier) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_mtd_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mtd_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd, align 4
  tail call void @blk_mq_start_request(ptr noundef %5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue_lock = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #9
  %6 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd, align 4
  %8 = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 12
  %rq_list = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %10, ptr noundef %rq_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rq_list, ptr %8, align 4
  %prev3.i.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 12, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %8, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %bg_stop.i = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 5
  %lock14.i = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 3
  %background.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %16, i32 0, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %list_add_tail.exit
  %req.0.i = phi ptr [ null, %list_add_tail.exit ], [ %req.0.i.be, %while.cond.i.backedge ]
  %background_done.0.i = phi i32 [ 0, %list_add_tail.exit ], [ %background_done.0.i.be, %while.cond.i.backedge ]
  %17 = ptrtoint ptr %bg_stop.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %bg_stop.i, align 4
  %tobool.not.i = icmp eq ptr %req.0.i, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %while.cond.i.if.end12.i_crit_edge

while.cond.i.if.end12.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %while.cond.i
  %18 = ptrtoint ptr %rq_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %rq_list, align 4
  %cmp.not.i.i = icmp eq ptr %19, %rq_list
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 -56
  %tobool.not8.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i.i = or i1 %cmp.not.i.i, %tobool.not8.i.i
  br i1 %tobool.not.i.i, label %if.then.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.mtd_next_request.exit.i_crit_edge

if.then.i.i.mtd_next_request.exit.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtd_next_request.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %mtd_next_request.exit.i

mtd_next_request.exit.i:                          ; preds = %if.end.i.i.i.i, %if.then.i.i.mtd_next_request.exit.i_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %prev.i3.i.i.i, align 4
  tail call void @blk_mq_start_request(ptr noundef nonnull %add.ptr.i.i) #9
  br label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %28 = ptrtoint ptr %background.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %background.i, align 4
  %tobool3.not.i = icmp ne ptr %29, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %background_done.0.i)
  %tobool5.not.i = icmp eq i32 %background_done.0.i, 0
  %or.cond.i = select i1 %tobool3.not.i, i1 %tobool5.not.i, i1 false
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #9
  br i1 %or.cond.i, label %if.then6.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock14.i, i32 noundef 0) #9
  %30 = ptrtoint ptr %background.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %background.i, align 4
  tail call void %31(ptr noundef nonnull %3) #9
  tail call void @mutex_unlock(ptr noundef %lock14.i) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #9
  %32 = ptrtoint ptr %bg_stop.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bg_stop.i, align 4, !range !59
  %34 = xor i8 %33, 1
  %35 = zext i8 %34 to i32
  br label %while.cond.i.backedge

if.end12.i:                                       ; preds = %mtd_next_request.exit.i, %while.cond.i.if.end12.i_crit_edge
  %req.1.i = phi ptr [ %req.0.i, %while.cond.i.if.end12.i_crit_edge ], [ %add.ptr.i.i, %mtd_next_request.exit.i ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #9
  tail call void @mutex_lock_nested(ptr noundef %lock14.i, i32 noundef 0) #9
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %__sector.i.i.i = getelementptr inbounds %struct.request, ptr %req.1.i, i32 0, i32 9
  %38 = ptrtoint ptr %__sector.i.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %__sector.i.i.i, align 8
  %shl.i.i = shl i64 %39, 9
  %blkshift.i.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %blkshift.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %blkshift.i.i, align 4
  %sh_prom.i.i = zext i32 %41 to i64
  %shr.i.i = lshr i64 %shl.i.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %bio.i.i.i = getelementptr inbounds %struct.request, ptr %req.1.i, i32 0, i32 10
  %42 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bio.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %if.end12.i.blk_rq_cur_bytes.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end12.i.blk_rq_cur_bytes.exit.i.i_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end12.i
  %bi_size.i.i.i.i = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %bi_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bi_size.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool1.not.i.i.i.i = icmp eq i32 %45, 0
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 2
  %46 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %trunc.i.i.i.i = trunc i32 %47 to i8
  %48 = zext i8 %trunc.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i.i.i.i, label %if.end4.i.i.i [
    i8 3, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge8
    i8 9, label %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge9
  ]

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge9: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge8: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i.i

if.end4.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i.i.i = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 20
  %49 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  %bi_idx.i.i.i = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 8, i32 2
  %51 = ptrtoint ptr %bi_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bi_idx.i.i.i, align 4
  %bi_bvec_done.i.i.i = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 8, i32 3
  %53 = ptrtoint ptr %bi_bvec_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bi_bvec_done.i.i.i, align 8
  %bv_len26.i.i.i = getelementptr %struct.bio_vec, ptr %50, i32 %52, i32 1
  %55 = ptrtoint ptr %bv_len26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bv_len26.i.i.i, align 4
  %sub.i.i.i = sub i32 %56, %54
  %57 = tail call i32 @llvm.umin.i32(i32 %45, i32 %sub.i.i.i) #9
  %bv_offset36.i.i.i = getelementptr %struct.bio_vec, ptr %50, i32 %52, i32 2
  %58 = ptrtoint ptr %bv_offset36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bv_offset36.i.i.i, align 4
  %add40.i.i.i = add i32 %59, %54
  %rem.i.i.i = and i32 %add40.i.i.i, 4095
  %sub41.i.i.i = sub nuw nsw i32 4096, %rem.i.i.i
  %60 = tail call i32 @llvm.umin.i32(i32 %57, i32 %sub41.i.i.i) #9
  br label %blk_rq_cur_bytes.exit.i.i

blk_rq_cur_bytes.exit.i.i:                        ; preds = %if.end4.i.i.i, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge8, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge9, %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge, %if.end12.i.blk_rq_cur_bytes.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %60, %if.end4.i.i.i ], [ 0, %if.end12.i.blk_rq_cur_bytes.exit.i.i_crit_edge ], [ %45, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ], [ %45, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge8 ], [ %45, %land.lhs.true2.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge9 ], [ 0, %land.lhs.true.i.i.i.i.blk_rq_cur_bytes.exit.i.i_crit_edge ]
  %shr3.i.i = ashr i32 %retval.0.i.i.i, %41
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %req.1.i, i32 0, i32 3
  %61 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cmd_flags.i.i, align 4
  %trunc.i.i = trunc i32 %62 to i8
  %63 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %trunc.i.i, label %blk_rq_cur_bytes.exit.i.i.do_blktrans_request.exit.i_crit_edge [
    i8 2, label %sw.bb.i.i
    i8 3, label %sw.bb5.i.i
    i8 0, label %sw.bb10.i.i
    i8 1, label %sw.bb165.i.i
  ]

blk_rq_cur_bytes.exit.i.i.do_blktrans_request.exit.i_crit_edge: ; preds = %blk_rq_cur_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_blktrans_request.exit.i

sw.bb.i.i:                                        ; preds = %blk_rq_cur_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %flush.i.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %37, i32 0, i32 10
  %64 = ptrtoint ptr %flush.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %flush.i.i, align 4
  %call4.i.i = tail call i32 %65(ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i43.i = icmp eq i32 %call4.i.i, 0
  %..i.i = select i1 %tobool.not.i43.i, i8 0, i8 10
  br label %do_blktrans_request.exit.i

sw.bb5.i.i:                                       ; preds = %blk_rq_cur_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %discard.i.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %37, i32 0, i32 7
  %66 = ptrtoint ptr %discard.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %discard.i.i, align 4
  %call6.i.i = tail call i32 %67(ptr noundef nonnull %3, i32 noundef %conv.i.i, i32 noundef %shr3.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  %.448.i.i = select i1 %tobool7.not.i.i, i8 0, i8 10
  br label %do_blktrans_request.exit.i

sw.bb10.i.i:                                      ; preds = %blk_rq_cur_bytes.exit.i.i
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 20
  %68 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bi_io_vec.i.i, align 8
  %bi_idx.i.i = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 8, i32 2
  %70 = ptrtoint ptr %bi_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bi_idx.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.bio_vec, ptr %69, i32 %71
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %69, i32 %71, i32 2
  %74 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bv_offset.i.i, align 4
  %bi_bvec_done.i.i = getelementptr inbounds %struct.bio, ptr %43, i32 0, i32 8, i32 3
  %76 = ptrtoint ptr %bi_bvec_done.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bi_bvec_done.i.i, align 8
  %add.i.i = add i32 %77, %75
  %div443.i.i = lshr i32 %add.i.i, 12
  %add.ptr.i44.i = getelementptr %struct.page, ptr %73, i32 %div443.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 44) #9
  %78 = ptrtoint ptr %add.ptr.i44.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i44.i, align 4
  %shr.i.i.i.i = lshr i32 %79, 30
  %80 = zext i32 %shr.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr.i.i.i.i, label %sw.bb10.i.i.if.then.i.i.i_crit_edge [
    i32 2, label %sw.bb10.i.i.if.else.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i
  ]

sw.bb10.i.i.if.else.i.i.i_crit_edge:              ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i.i

sw.bb10.i.i.if.then.i.i.i_crit_edge:              ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

is_highmem_idx.exit.i.i.i:                        ; preds = %sw.bb10.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %81 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp2.i.not.i.i.i = icmp eq i32 %81, 2
  br i1 %cmp2.i.not.i.i.i, label %is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.if.then.i.i.i_crit_edge

is_highmem_idx.exit.i.i.i.if.then.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %is_highmem_idx.exit.i.i.i.if.then.i.i.i_crit_edge, %sw.bb10.i.i.if.then.i.i.i_crit_edge
  %call5.i.i.i = tail call ptr @page_address(ptr noundef %add.ptr.i44.i) #9
  br label %kmap.exit.i.i

if.else.i.i.i:                                    ; preds = %is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge, %sw.bb10.i.i.if.else.i.i.i_crit_edge
  %call6.i.i.i = tail call ptr @kmap_high(ptr noundef %add.ptr.i44.i) #9
  br label %kmap.exit.i.i

kmap.exit.i.i:                                    ; preds = %if.else.i.i.i, %if.then.i.i.i
  %addr.0.i.i.i = phi ptr [ %call6.i.i.i, %if.else.i.i.i ], [ %call5.i.i.i, %if.then.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr3.i.i)
  %cmp.not543.i.i = icmp eq i32 %shr3.i.i, 0
  br i1 %cmp.not543.i.i, label %kmap.exit.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

kmap.exit.i.i.for.end.i.i_crit_edge:              ; preds = %kmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %kmap.exit.i.i
  %82 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bio.i.i.i, align 8
  %bi_bvec_done30.i.i = getelementptr inbounds %struct.bio, ptr %83, i32 0, i32 8, i32 3
  %84 = ptrtoint ptr %bi_bvec_done30.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bi_bvec_done30.i.i, align 8
  %bi_io_vec22.i.i = getelementptr inbounds %struct.bio, ptr %83, i32 0, i32 20
  %86 = ptrtoint ptr %bi_io_vec22.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bi_io_vec22.i.i, align 8
  %bi_idx25.i.i = getelementptr inbounds %struct.bio, ptr %83, i32 0, i32 8, i32 2
  %88 = ptrtoint ptr %bi_idx25.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bi_idx25.i.i, align 4
  %bv_offset27.i.i = getelementptr %struct.bio_vec, ptr %87, i32 %89, i32 2
  %90 = ptrtoint ptr %bv_offset27.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bv_offset27.i.i, align 4
  %add31.i.i = add i32 %91, %85
  %rem.i.i = and i32 %add31.i.i, 4095
  %add.ptr32.i.i = getelementptr i8, ptr %addr.0.i.i.i, i32 %rem.i.i
  %readsect.i.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %37, i32 0, i32 5
  %blksize.i.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %37, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %block.0546.i.i = phi i32 [ %conv.i.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %nsect.0545.i.i = phi i32 [ %shr3.i.i, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %buf.0544.i.i = phi ptr [ %add.ptr32.i.i, %for.body.lr.ph.i.i ], [ %add.ptr58.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %92 = ptrtoint ptr %readsect.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %readsect.i.i, align 4
  %call34.i.i = tail call i32 %93(ptr noundef nonnull %3, i32 noundef %block.0546.i.i, ptr noundef %buf.0544.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.not.i.i, label %for.inc.i.i, label %if.then36.i.i

if.then36.i.i:                                    ; preds = %for.body.i.i
  %94 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bio.i.i.i, align 8
  %bi_io_vec38.i.i = getelementptr inbounds %struct.bio, ptr %95, i32 0, i32 20
  %96 = ptrtoint ptr %bi_io_vec38.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bi_io_vec38.i.i, align 8
  %bi_idx41.i.i = getelementptr inbounds %struct.bio, ptr %95, i32 0, i32 8, i32 2
  %98 = ptrtoint ptr %bi_idx41.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bi_idx41.i.i, align 4
  %arrayidx42.i.i = getelementptr %struct.bio_vec, ptr %97, i32 %99
  %100 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx42.i.i, align 4
  %bv_offset50.i.i = getelementptr %struct.bio_vec, ptr %97, i32 %99, i32 2
  %102 = ptrtoint ptr %bv_offset50.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bv_offset50.i.i, align 4
  %bi_bvec_done53.i.i = getelementptr inbounds %struct.bio, ptr %95, i32 0, i32 8, i32 3
  %104 = ptrtoint ptr %bi_bvec_done53.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bi_bvec_done53.i.i, align 8
  %add54.i.i = add i32 %105, %103
  %div55447.i.i = lshr i32 %add54.i.i, 12
  %add.ptr56.i.i = getelementptr %struct.page, ptr %101, i32 %div55447.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 55) #9
  %106 = ptrtoint ptr %add.ptr56.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr56.i.i, align 4
  %shr.i.i449.i.i = lshr i32 %107, 30
  %108 = zext i32 %shr.i.i449.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr.i.i449.i.i, label %if.then36.i.i.do_blktrans_request.exit.i_crit_edge [
    i32 2, label %if.then36.i.i.if.end.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i451.i.i
  ]

if.then36.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then36.i.i.do_blktrans_request.exit.i_crit_edge: ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_blktrans_request.exit.i

is_highmem_idx.exit.i451.i.i:                     ; preds = %if.then36.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %109 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp2.i.not.i450.i.i = icmp eq i32 %109, 2
  br i1 %cmp2.i.not.i450.i.i, label %is_highmem_idx.exit.i451.i.i.if.end.i.i.i_crit_edge, label %is_highmem_idx.exit.i451.i.i.do_blktrans_request.exit.i_crit_edge

is_highmem_idx.exit.i451.i.i.do_blktrans_request.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i451.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_blktrans_request.exit.i

is_highmem_idx.exit.i451.i.i.if.end.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i451.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %is_highmem_idx.exit.i451.i.i.if.end.i.i.i_crit_edge, %if.then36.i.i.if.end.i.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %add.ptr56.i.i) #9
  br label %do_blktrans_request.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add i32 %nsect.0545.i.i, -1
  %inc.i.i = add i32 %block.0546.i.i, 1
  %110 = ptrtoint ptr %blksize.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %blksize.i.i, align 4
  %add.ptr58.i.i = getelementptr i8, ptr %buf.0544.i.i, i32 %111
  %cmp.not.i45.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i45.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %kmap.exit.i.i.for.end.i.i_crit_edge
  %112 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bio.i.i.i, align 8
  %bi_io_vec60.i.i = getelementptr inbounds %struct.bio, ptr %113, i32 0, i32 20
  %114 = ptrtoint ptr %bi_io_vec60.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bi_io_vec60.i.i, align 8
  %bi_idx63.i.i = getelementptr inbounds %struct.bio, ptr %113, i32 0, i32 8, i32 2
  %116 = ptrtoint ptr %bi_idx63.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bi_idx63.i.i, align 4
  %arrayidx64.i.i = getelementptr %struct.bio_vec, ptr %115, i32 %117
  %118 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx64.i.i, align 4
  %bv_offset72.i.i = getelementptr %struct.bio_vec, ptr %115, i32 %117, i32 2
  %120 = ptrtoint ptr %bv_offset72.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bv_offset72.i.i, align 4
  %bi_bvec_done75.i.i = getelementptr inbounds %struct.bio, ptr %113, i32 0, i32 8, i32 3
  %122 = ptrtoint ptr %bi_bvec_done75.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bi_bvec_done75.i.i, align 8
  %add76.i.i = add i32 %123, %121
  %div77444.i.i = lshr i32 %add76.i.i, 12
  %add.ptr78.i.i = getelementptr %struct.page, ptr %119, i32 %div77444.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 55) #9
  %124 = ptrtoint ptr %add.ptr78.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr78.i.i, align 4
  %shr.i.i452.i.i = lshr i32 %125, 30
  %126 = zext i32 %shr.i.i452.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr.i.i452.i.i, label %for.end.i.i.kunmap.exit456.i.i_crit_edge [
    i32 2, label %for.end.i.i.if.end.i455.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i454.i.i
  ]

for.end.i.i.if.end.i455.i.i_crit_edge:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i455.i.i

for.end.i.i.kunmap.exit456.i.i_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit456.i.i

is_highmem_idx.exit.i454.i.i:                     ; preds = %for.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %127 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp2.i.not.i453.i.i = icmp eq i32 %127, 2
  br i1 %cmp2.i.not.i453.i.i, label %is_highmem_idx.exit.i454.i.i.if.end.i455.i.i_crit_edge, label %is_highmem_idx.exit.i454.i.i.kunmap.exit456.i.i_crit_edge

is_highmem_idx.exit.i454.i.i.kunmap.exit456.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i454.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit456.i.i

is_highmem_idx.exit.i454.i.i.if.end.i455.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i454.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i455.i.i

if.end.i455.i.i:                                  ; preds = %is_highmem_idx.exit.i454.i.i.if.end.i455.i.i_crit_edge, %for.end.i.i.if.end.i455.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %add.ptr78.i.i) #9
  br label %kunmap.exit456.i.i

kunmap.exit456.i.i:                               ; preds = %if.end.i455.i.i, %is_highmem_idx.exit.i454.i.i.kunmap.exit456.i.i_crit_edge, %for.end.i.i.kunmap.exit456.i.i_crit_edge
  %128 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bio.i.i.i, align 8
  %tobool80.not.i.i = icmp eq ptr %129, null
  br i1 %tobool80.not.i.i, label %kunmap.exit456.i.i.do_blktrans_request.exit.i_crit_edge, label %kunmap.exit456.i.i.for.body87.i.i_crit_edge

kunmap.exit456.i.i.for.body87.i.i_crit_edge:      ; preds = %kunmap.exit456.i.i
  br label %for.body87.i.i

kunmap.exit456.i.i.do_blktrans_request.exit.i_crit_edge: ; preds = %kunmap.exit456.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_blktrans_request.exit.i

for.body87.i.i:                                   ; preds = %for.inc160.i.i.for.body87.i.i_crit_edge, %kunmap.exit456.i.i.for.body87.i.i_crit_edge
  %storemerge445552.i.i = phi ptr [ %151, %for.inc160.i.i.for.body87.i.i_crit_edge ], [ %129, %kunmap.exit456.i.i.for.body87.i.i_crit_edge ]
  %iter.sroa.9.0.bi_iter90.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %storemerge445552.i.i, i32 0, i32 8, i32 1
  %130 = ptrtoint ptr %iter.sroa.9.0.bi_iter90.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %iter.sroa.9.0.copyload.i.i = load i32, ptr %iter.sroa.9.0.bi_iter90.sroa_idx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.9.0.copyload.i.i)
  %tobool93.not547.i.i = icmp eq i32 %iter.sroa.9.0.copyload.i.i, 0
  br i1 %tobool93.not547.i.i, label %for.body87.i.i.for.inc160.i.i_crit_edge, label %land.rhs.lr.ph.i.i

for.body87.i.i.for.inc160.i.i_crit_edge:          ; preds = %for.body87.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc160.i.i

land.rhs.lr.ph.i.i:                               ; preds = %for.body87.i.i
  %iter.sroa.25.0.bi_iter90.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %storemerge445552.i.i, i32 0, i32 8, i32 3
  %131 = ptrtoint ptr %iter.sroa.25.0.bi_iter90.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %iter.sroa.25.0.copyload.i.i = load i32, ptr %iter.sroa.25.0.bi_iter90.sroa_idx.i.i, align 8
  %iter.sroa.16.0.bi_iter90.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %storemerge445552.i.i, i32 0, i32 8, i32 2
  %132 = ptrtoint ptr %iter.sroa.16.0.bi_iter90.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %iter.sroa.16.0.copyload.i.i = load i32, ptr %iter.sroa.16.0.bi_iter90.sroa_idx.i.i, align 4
  %bi_io_vec96.i.i = getelementptr inbounds %struct.bio, ptr %storemerge445552.i.i, i32 0, i32 20
  %bi_opf.i.i457.i.i = getelementptr inbounds %struct.bio, ptr %storemerge445552.i.i, i32 0, i32 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %iter.sroa.9.0550.i.i = phi i32 [ %iter.sroa.9.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %sub.i.i.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.16.0549.i.i = phi i32 [ %iter.sroa.16.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %iter.sroa.16.2.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.25.0548.i.i = phi i32 [ %iter.sroa.25.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %iter.sroa.25.1.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %133 = ptrtoint ptr %bi_io_vec96.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bi_io_vec96.i.i, align 8
  %arrayidx99.i.i = getelementptr %struct.bio_vec, ptr %134, i32 %iter.sroa.16.0549.i.i
  %135 = ptrtoint ptr %arrayidx99.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx99.i.i, align 4
  %bv_offset106.i.i = getelementptr %struct.bio_vec, ptr %134, i32 %iter.sroa.16.0549.i.i, i32 2
  %137 = ptrtoint ptr %bv_offset106.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bv_offset106.i.i, align 4
  %add109.i.i = add i32 %138, %iter.sroa.25.0548.i.i
  %div110446.i.i = lshr i32 %add109.i.i, 12
  %add.ptr111.i.i = getelementptr %struct.page, ptr %136, i32 %div110446.i.i
  %bv_len119.i.i = getelementptr %struct.bio_vec, ptr %134, i32 %iter.sroa.16.0549.i.i, i32 1
  %139 = ptrtoint ptr %bv_len119.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bv_len119.i.i, align 4
  %sub.i.i = sub i32 %140, %iter.sroa.25.0548.i.i
  %141 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.9.0550.i.i, i32 %sub.i.i) #9
  %rem133.i.i = and i32 %add109.i.i, 4095
  %sub134.i.i = sub nuw nsw i32 4096, %rem133.i.i
  %142 = tail call i32 @llvm.umin.i32(i32 %141, i32 %sub134.i.i) #9
  tail call void @flush_dcache_page(ptr noundef %add.ptr111.i.i) #9
  %143 = ptrtoint ptr %bi_opf.i.i457.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bi_opf.i.i457.i.i, align 8
  %and.i.i.i.i = and i32 %144, 255
  %145 = add nsw i32 %and.i.i.i.i, -3
  %switch.and.i.i.i.i = and i32 %145, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i.i)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %switch.and.i.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i.i, label %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge, label %if.else.i459.i.i

land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_advance_iter_single.exit.i.i

if.else.i459.i.i:                                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %bi_io_vec96.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bi_io_vec96.i.i, align 8
  %add.i.i.i.i = add i32 %142, %iter.sroa.25.0548.i.i
  %bv_len.i.i.i.i = getelementptr %struct.bio_vec, ptr %147, i32 %iter.sroa.16.0549.i.i, i32 1
  %148 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %bv_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %149)
  %cmp.i.i.i.i = icmp eq i32 %add.i.i.i.i, %149
  %spec.select.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %inc.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %spec.select529.i.i = add i32 %iter.sroa.16.0549.i.i, %inc.i.i.i.i
  br label %bio_advance_iter_single.exit.i.i

bio_advance_iter_single.exit.i.i:                 ; preds = %if.else.i459.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge
  %iter.sroa.25.1.i.i = phi i32 [ %iter.sroa.25.0548.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select.i.i, %if.else.i459.i.i ]
  %iter.sroa.16.2.i.i = phi i32 [ %iter.sroa.16.0549.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select529.i.i, %if.else.i459.i.i ]
  %sub.i.i.i.i = sub i32 %iter.sroa.9.0550.i.i, %142
  %tobool93.not.i.i = icmp eq i32 %sub.i.i.i.i, 0
  br i1 %tobool93.not.i.i, label %bio_advance_iter_single.exit.i.i.for.inc160.i.i_crit_edge, label %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge

bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

bio_advance_iter_single.exit.i.i.for.inc160.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc160.i.i

for.inc160.i.i:                                   ; preds = %bio_advance_iter_single.exit.i.i.for.inc160.i.i_crit_edge, %for.body87.i.i.for.inc160.i.i_crit_edge
  %150 = ptrtoint ptr %storemerge445552.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %storemerge445552.i.i, align 8
  %tobool86.not.i.i = icmp eq ptr %151, null
  br i1 %tobool86.not.i.i, label %for.inc160.i.i.do_blktrans_request.exit.i_crit_edge, label %for.inc160.i.i.for.body87.i.i_crit_edge

for.inc160.i.i.for.body87.i.i_crit_edge:          ; preds = %for.inc160.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body87.i.i

for.inc160.i.i.do_blktrans_request.exit.i_crit_edge: ; preds = %for.inc160.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_blktrans_request.exit.i

sw.bb165.i.i:                                     ; preds = %blk_rq_cur_bytes.exit.i.i
  %writesect.i.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %37, i32 0, i32 6
  %152 = ptrtoint ptr %writesect.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %writesect.i.i, align 4
  %tobool166.not.i.i = icmp eq ptr %153, null
  br i1 %tobool166.not.i.i, label %sw.bb165.i.i.do_blktrans_request.exit.i_crit_edge, label %if.end168.i.i

sw.bb165.i.i.do_blktrans_request.exit.i_crit_edge: ; preds = %sw.bb165.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_blktrans_request.exit.i

if.end168.i.i:                                    ; preds = %sw.bb165.i.i
  br i1 %tobool.not.i.i.i, label %if.end168.i.i.if.end266.i.i_crit_edge, label %if.end168.i.i.for.body177.i.i_crit_edge

if.end168.i.i.for.body177.i.i_crit_edge:          ; preds = %if.end168.i.i
  br label %for.body177.i.i

if.end168.i.i.if.end266.i.i_crit_edge:            ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end266.i.i

for.body177.i.i:                                  ; preds = %for.inc261.i.i.for.body177.i.i_crit_edge, %if.end168.i.i.for.body177.i.i_crit_edge
  %storemerge537.i.i = phi ptr [ %175, %for.inc261.i.i.for.body177.i.i_crit_edge ], [ %43, %if.end168.i.i.for.body177.i.i_crit_edge ]
  %iter.sroa.9.0.bi_iter180.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %storemerge537.i.i, i32 0, i32 8, i32 1
  %154 = ptrtoint ptr %iter.sroa.9.0.bi_iter180.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %iter.sroa.9.0.copyload506.i.i = load i32, ptr %iter.sroa.9.0.bi_iter180.sroa_idx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.9.0.copyload506.i.i)
  %tobool184.not532.i.i = icmp eq i32 %iter.sroa.9.0.copyload506.i.i, 0
  br i1 %tobool184.not532.i.i, label %for.body177.i.i.for.inc261.i.i_crit_edge, label %land.rhs185.lr.ph.i.i

for.body177.i.i.for.inc261.i.i_crit_edge:         ; preds = %for.body177.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc261.i.i

land.rhs185.lr.ph.i.i:                            ; preds = %for.body177.i.i
  %iter.sroa.25.0.bi_iter180.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %storemerge537.i.i, i32 0, i32 8, i32 3
  %155 = ptrtoint ptr %iter.sroa.25.0.bi_iter180.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %iter.sroa.25.0.copyload516.i.i = load i32, ptr %iter.sroa.25.0.bi_iter180.sroa_idx.i.i, align 8
  %iter.sroa.16.0.bi_iter180.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %storemerge537.i.i, i32 0, i32 8, i32 2
  %156 = ptrtoint ptr %iter.sroa.16.0.bi_iter180.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %iter.sroa.16.0.copyload510.i.i = load i32, ptr %iter.sroa.16.0.bi_iter180.sroa_idx.i.i, align 4
  %bi_io_vec189.i.i = getelementptr inbounds %struct.bio, ptr %storemerge537.i.i, i32 0, i32 20
  %bi_opf.i.i465.i.i = getelementptr inbounds %struct.bio, ptr %storemerge537.i.i, i32 0, i32 2
  br label %land.rhs185.i.i

land.rhs185.i.i:                                  ; preds = %bio_advance_iter_single.exit483.i.i.land.rhs185.i.i_crit_edge, %land.rhs185.lr.ph.i.i
  %iter.sroa.9.1535.i.i = phi i32 [ %iter.sroa.9.0.copyload506.i.i, %land.rhs185.lr.ph.i.i ], [ %sub.i.i481.i.i, %bio_advance_iter_single.exit483.i.i.land.rhs185.i.i_crit_edge ]
  %iter.sroa.16.3534.i.i = phi i32 [ %iter.sroa.16.0.copyload510.i.i, %land.rhs185.lr.ph.i.i ], [ %iter.sroa.16.5.i.i, %bio_advance_iter_single.exit483.i.i.land.rhs185.i.i_crit_edge ]
  %iter.sroa.25.2533.i.i = phi i32 [ %iter.sroa.25.0.copyload516.i.i, %land.rhs185.lr.ph.i.i ], [ %iter.sroa.25.3.i.i, %bio_advance_iter_single.exit483.i.i.land.rhs185.i.i_crit_edge ]
  %157 = ptrtoint ptr %bi_io_vec189.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bi_io_vec189.i.i, align 8
  %arrayidx192.i.i = getelementptr %struct.bio_vec, ptr %158, i32 %iter.sroa.16.3534.i.i
  %159 = ptrtoint ptr %arrayidx192.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx192.i.i, align 4
  %bv_offset199.i.i = getelementptr %struct.bio_vec, ptr %158, i32 %iter.sroa.16.3534.i.i, i32 2
  %161 = ptrtoint ptr %bv_offset199.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bv_offset199.i.i, align 4
  %add202.i.i = add i32 %162, %iter.sroa.25.2533.i.i
  %div203442.i.i = lshr i32 %add202.i.i, 12
  %add.ptr204.i.i = getelementptr %struct.page, ptr %160, i32 %div203442.i.i
  %bv_len213.i.i = getelementptr %struct.bio_vec, ptr %158, i32 %iter.sroa.16.3534.i.i, i32 1
  %163 = ptrtoint ptr %bv_len213.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %bv_len213.i.i, align 4
  %sub216.i.i = sub i32 %164, %iter.sroa.25.2533.i.i
  %165 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.9.1535.i.i, i32 %sub216.i.i) #9
  %rem233.i.i = and i32 %add202.i.i, 4095
  %sub234.i.i = sub nuw nsw i32 4096, %rem233.i.i
  %166 = tail call i32 @llvm.umin.i32(i32 %165, i32 %sub234.i.i) #9
  tail call void @flush_dcache_page(ptr noundef %add.ptr204.i.i) #9
  %167 = ptrtoint ptr %bi_opf.i.i465.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %bi_opf.i.i465.i.i, align 8
  %and.i.i466.i.i = and i32 %168, 255
  %169 = add nsw i32 %and.i.i466.i.i, -3
  %switch.and.i.i467.i.i = and i32 %169, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i467.i.i)
  %switch.selectcmp.i.i468.i.i = icmp eq i32 %switch.and.i.i467.i.i, 0
  br i1 %switch.selectcmp.i.i468.i.i, label %land.rhs185.i.i.bio_advance_iter_single.exit483.i.i_crit_edge, label %if.else.i475.i.i

land.rhs185.i.i.bio_advance_iter_single.exit483.i.i_crit_edge: ; preds = %land.rhs185.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_advance_iter_single.exit483.i.i

if.else.i475.i.i:                                 ; preds = %land.rhs185.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %bi_io_vec189.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bi_io_vec189.i.i, align 8
  %add.i.i471.i.i = add i32 %166, %iter.sroa.25.2533.i.i
  %bv_len.i.i473.i.i = getelementptr %struct.bio_vec, ptr %171, i32 %iter.sroa.16.3534.i.i, i32 1
  %172 = ptrtoint ptr %bv_len.i.i473.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %bv_len.i.i473.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i471.i.i, i32 %173)
  %cmp.i.i474.i.i = icmp eq i32 %add.i.i471.i.i, %173
  %spec.select530.i.i = select i1 %cmp.i.i474.i.i, i32 0, i32 %add.i.i471.i.i
  %inc.i.i476.i.i = zext i1 %cmp.i.i474.i.i to i32
  %spec.select531.i.i = add i32 %iter.sroa.16.3534.i.i, %inc.i.i476.i.i
  br label %bio_advance_iter_single.exit483.i.i

bio_advance_iter_single.exit483.i.i:              ; preds = %if.else.i475.i.i, %land.rhs185.i.i.bio_advance_iter_single.exit483.i.i_crit_edge
  %iter.sroa.25.3.i.i = phi i32 [ %iter.sroa.25.2533.i.i, %land.rhs185.i.i.bio_advance_iter_single.exit483.i.i_crit_edge ], [ %spec.select530.i.i, %if.else.i475.i.i ]
  %iter.sroa.16.5.i.i = phi i32 [ %iter.sroa.16.3534.i.i, %land.rhs185.i.i.bio_advance_iter_single.exit483.i.i_crit_edge ], [ %spec.select531.i.i, %if.else.i475.i.i ]
  %sub.i.i481.i.i = sub i32 %iter.sroa.9.1535.i.i, %166
  %tobool184.not.i.i = icmp eq i32 %sub.i.i481.i.i, 0
  br i1 %tobool184.not.i.i, label %bio_advance_iter_single.exit483.i.i.for.inc261.i.i_crit_edge, label %bio_advance_iter_single.exit483.i.i.land.rhs185.i.i_crit_edge

bio_advance_iter_single.exit483.i.i.land.rhs185.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit483.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs185.i.i

bio_advance_iter_single.exit483.i.i.for.inc261.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit483.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc261.i.i

for.inc261.i.i:                                   ; preds = %bio_advance_iter_single.exit483.i.i.for.inc261.i.i_crit_edge, %for.body177.i.i.for.inc261.i.i_crit_edge
  %174 = ptrtoint ptr %storemerge537.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %storemerge537.i.i, align 8
  %tobool176.not.i.i = icmp eq ptr %175, null
  br i1 %tobool176.not.i.i, label %for.inc261.i.i.if.end266.i.i_crit_edge, label %for.inc261.i.i.for.body177.i.i_crit_edge

for.inc261.i.i.for.body177.i.i_crit_edge:         ; preds = %for.inc261.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body177.i.i

for.inc261.i.i.if.end266.i.i_crit_edge:           ; preds = %for.inc261.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end266.i.i

if.end266.i.i:                                    ; preds = %for.inc261.i.i.if.end266.i.i_crit_edge, %if.end168.i.i.if.end266.i.i_crit_edge
  %176 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %bio.i.i.i, align 8
  %bi_io_vec268.i.i = getelementptr inbounds %struct.bio, ptr %177, i32 0, i32 20
  %178 = ptrtoint ptr %bi_io_vec268.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bi_io_vec268.i.i, align 8
  %bi_idx271.i.i = getelementptr inbounds %struct.bio, ptr %177, i32 0, i32 8, i32 2
  %180 = ptrtoint ptr %bi_idx271.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %bi_idx271.i.i, align 4
  %arrayidx272.i.i = getelementptr %struct.bio_vec, ptr %179, i32 %181
  %182 = ptrtoint ptr %arrayidx272.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx272.i.i, align 4
  %bv_offset280.i.i = getelementptr %struct.bio_vec, ptr %179, i32 %181, i32 2
  %184 = ptrtoint ptr %bv_offset280.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %bv_offset280.i.i, align 4
  %bi_bvec_done283.i.i = getelementptr inbounds %struct.bio, ptr %177, i32 0, i32 8, i32 3
  %186 = ptrtoint ptr %bi_bvec_done283.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %bi_bvec_done283.i.i, align 8
  %add284.i.i = add i32 %187, %185
  %div285439.i.i = lshr i32 %add284.i.i, 12
  %add.ptr286.i.i = getelementptr %struct.page, ptr %183, i32 %div285439.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 44) #9
  %188 = ptrtoint ptr %add.ptr286.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %add.ptr286.i.i, align 4
  %shr.i.i484.i.i = lshr i32 %189, 30
  %190 = zext i32 %shr.i.i484.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr.i.i484.i.i, label %if.end266.i.i.if.then.i488.i.i_crit_edge [
    i32 2, label %if.end266.i.i.if.else.i490.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i486.i.i
  ]

if.end266.i.i.if.else.i490.i.i_crit_edge:         ; preds = %if.end266.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i490.i.i

if.end266.i.i.if.then.i488.i.i_crit_edge:         ; preds = %if.end266.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i488.i.i

is_highmem_idx.exit.i486.i.i:                     ; preds = %if.end266.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %191 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %191)
  %cmp2.i.not.i485.i.i = icmp eq i32 %191, 2
  br i1 %cmp2.i.not.i485.i.i, label %is_highmem_idx.exit.i486.i.i.if.else.i490.i.i_crit_edge, label %is_highmem_idx.exit.i486.i.i.if.then.i488.i.i_crit_edge

is_highmem_idx.exit.i486.i.i.if.then.i488.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i486.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i488.i.i

is_highmem_idx.exit.i486.i.i.if.else.i490.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i486.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i490.i.i

if.then.i488.i.i:                                 ; preds = %is_highmem_idx.exit.i486.i.i.if.then.i488.i.i_crit_edge, %if.end266.i.i.if.then.i488.i.i_crit_edge
  %call5.i487.i.i = tail call ptr @page_address(ptr noundef %add.ptr286.i.i) #9
  br label %kmap.exit493.i.i

if.else.i490.i.i:                                 ; preds = %is_highmem_idx.exit.i486.i.i.if.else.i490.i.i_crit_edge, %if.end266.i.i.if.else.i490.i.i_crit_edge
  %call6.i489.i.i = tail call ptr @kmap_high(ptr noundef %add.ptr286.i.i) #9
  br label %kmap.exit493.i.i

kmap.exit493.i.i:                                 ; preds = %if.else.i490.i.i, %if.then.i488.i.i
  %addr.0.i491.i.i = phi ptr [ %call6.i489.i.i, %if.else.i490.i.i ], [ %call5.i487.i.i, %if.then.i488.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr3.i.i)
  %cmp302.not539.i.i = icmp eq i32 %shr3.i.i, 0
  br i1 %cmp302.not539.i.i, label %kmap.exit493.i.i.for.end335.i.i_crit_edge, label %for.body304.lr.ph.i.i

kmap.exit493.i.i.for.end335.i.i_crit_edge:        ; preds = %kmap.exit493.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end335.i.i

for.body304.lr.ph.i.i:                            ; preds = %kmap.exit493.i.i
  %192 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bio.i.i.i, align 8
  %bi_bvec_done297.i.i = getelementptr inbounds %struct.bio, ptr %193, i32 0, i32 8, i32 3
  %194 = ptrtoint ptr %bi_bvec_done297.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %bi_bvec_done297.i.i, align 8
  %bi_io_vec289.i.i = getelementptr inbounds %struct.bio, ptr %193, i32 0, i32 20
  %196 = ptrtoint ptr %bi_io_vec289.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %bi_io_vec289.i.i, align 8
  %bi_idx292.i.i = getelementptr inbounds %struct.bio, ptr %193, i32 0, i32 8, i32 2
  %198 = ptrtoint ptr %bi_idx292.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %bi_idx292.i.i, align 4
  %bv_offset294.i.i = getelementptr %struct.bio_vec, ptr %197, i32 %199, i32 2
  %200 = ptrtoint ptr %bv_offset294.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %bv_offset294.i.i, align 4
  %add298.i.i = add i32 %201, %195
  %rem299.i.i = and i32 %add298.i.i, 4095
  %add.ptr300.i.i = getelementptr i8, ptr %addr.0.i491.i.i, i32 %rem299.i.i
  %blksize333.i.i = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %37, i32 0, i32 3
  br label %for.body304.i.i

for.body304.i.i:                                  ; preds = %for.inc330.i.i.for.body304.i.i_crit_edge, %for.body304.lr.ph.i.i
  %block.1542.i.i = phi i32 [ %conv.i.i, %for.body304.lr.ph.i.i ], [ %inc332.i.i, %for.inc330.i.i.for.body304.i.i_crit_edge ]
  %nsect.1541.i.i = phi i32 [ %shr3.i.i, %for.body304.lr.ph.i.i ], [ %dec331.i.i, %for.inc330.i.i.for.body304.i.i_crit_edge ]
  %buf.1540.i.i = phi ptr [ %add.ptr300.i.i, %for.body304.lr.ph.i.i ], [ %add.ptr334.i.i, %for.inc330.i.i.for.body304.i.i_crit_edge ]
  %202 = ptrtoint ptr %writesect.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %writesect.i.i, align 4
  %call306.i.i = tail call i32 %203(ptr noundef nonnull %3, i32 noundef %block.1542.i.i, ptr noundef %buf.1540.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306.i.i)
  %tobool307.not.i.i = icmp eq i32 %call306.i.i, 0
  br i1 %tobool307.not.i.i, label %for.inc330.i.i, label %if.then308.i.i

if.then308.i.i:                                   ; preds = %for.body304.i.i
  %204 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %bio.i.i.i, align 8
  %bi_io_vec310.i.i = getelementptr inbounds %struct.bio, ptr %205, i32 0, i32 20
  %206 = ptrtoint ptr %bi_io_vec310.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %bi_io_vec310.i.i, align 8
  %bi_idx313.i.i = getelementptr inbounds %struct.bio, ptr %205, i32 0, i32 8, i32 2
  %208 = ptrtoint ptr %bi_idx313.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %bi_idx313.i.i, align 4
  %arrayidx314.i.i = getelementptr %struct.bio_vec, ptr %207, i32 %209
  %210 = ptrtoint ptr %arrayidx314.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx314.i.i, align 4
  %bv_offset322.i.i = getelementptr %struct.bio_vec, ptr %207, i32 %209, i32 2
  %212 = ptrtoint ptr %bv_offset322.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %bv_offset322.i.i, align 4
  %bi_bvec_done325.i.i = getelementptr inbounds %struct.bio, ptr %205, i32 0, i32 8, i32 3
  %214 = ptrtoint ptr %bi_bvec_done325.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %bi_bvec_done325.i.i, align 8
  %add326.i.i = add i32 %215, %213
  %div327441.i.i = lshr i32 %add326.i.i, 12
  %add.ptr328.i.i = getelementptr %struct.page, ptr %211, i32 %div327441.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 55) #9
  %216 = ptrtoint ptr %add.ptr328.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %add.ptr328.i.i, align 4
  %shr.i.i494.i.i = lshr i32 %217, 30
  %218 = zext i32 %shr.i.i494.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr.i.i494.i.i, label %if.then308.i.i.do_blktrans_request.exit.i_crit_edge [
    i32 2, label %if.then308.i.i.if.end.i497.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i496.i.i
  ]

if.then308.i.i.if.end.i497.i.i_crit_edge:         ; preds = %if.then308.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i497.i.i

if.then308.i.i.do_blktrans_request.exit.i_crit_edge: ; preds = %if.then308.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_blktrans_request.exit.i

is_highmem_idx.exit.i496.i.i:                     ; preds = %if.then308.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %219 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %219)
  %cmp2.i.not.i495.i.i = icmp eq i32 %219, 2
  br i1 %cmp2.i.not.i495.i.i, label %is_highmem_idx.exit.i496.i.i.if.end.i497.i.i_crit_edge, label %is_highmem_idx.exit.i496.i.i.do_blktrans_request.exit.i_crit_edge

is_highmem_idx.exit.i496.i.i.do_blktrans_request.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i496.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_blktrans_request.exit.i

is_highmem_idx.exit.i496.i.i.if.end.i497.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i496.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i497.i.i

if.end.i497.i.i:                                  ; preds = %is_highmem_idx.exit.i496.i.i.if.end.i497.i.i_crit_edge, %if.then308.i.i.if.end.i497.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %add.ptr328.i.i) #9
  br label %do_blktrans_request.exit.i

for.inc330.i.i:                                   ; preds = %for.body304.i.i
  %dec331.i.i = add i32 %nsect.1541.i.i, -1
  %inc332.i.i = add i32 %block.1542.i.i, 1
  %220 = ptrtoint ptr %blksize333.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %blksize333.i.i, align 4
  %add.ptr334.i.i = getelementptr i8, ptr %buf.1540.i.i, i32 %221
  %cmp302.not.i.i = icmp eq i32 %dec331.i.i, 0
  br i1 %cmp302.not.i.i, label %for.inc330.i.i.for.end335.i.i_crit_edge, label %for.inc330.i.i.for.body304.i.i_crit_edge

for.inc330.i.i.for.body304.i.i_crit_edge:         ; preds = %for.inc330.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body304.i.i

for.inc330.i.i.for.end335.i.i_crit_edge:          ; preds = %for.inc330.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end335.i.i

for.end335.i.i:                                   ; preds = %for.inc330.i.i.for.end335.i.i_crit_edge, %kmap.exit493.i.i.for.end335.i.i_crit_edge
  %222 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %bio.i.i.i, align 8
  %bi_io_vec337.i.i = getelementptr inbounds %struct.bio, ptr %223, i32 0, i32 20
  %224 = ptrtoint ptr %bi_io_vec337.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %bi_io_vec337.i.i, align 8
  %bi_idx340.i.i = getelementptr inbounds %struct.bio, ptr %223, i32 0, i32 8, i32 2
  %226 = ptrtoint ptr %bi_idx340.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %bi_idx340.i.i, align 4
  %arrayidx341.i.i = getelementptr %struct.bio_vec, ptr %225, i32 %227
  %228 = ptrtoint ptr %arrayidx341.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx341.i.i, align 4
  %bv_offset349.i.i = getelementptr %struct.bio_vec, ptr %225, i32 %227, i32 2
  %230 = ptrtoint ptr %bv_offset349.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %bv_offset349.i.i, align 4
  %bi_bvec_done352.i.i = getelementptr inbounds %struct.bio, ptr %223, i32 0, i32 8, i32 3
  %232 = ptrtoint ptr %bi_bvec_done352.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %bi_bvec_done352.i.i, align 8
  %add353.i.i = add i32 %233, %231
  %div354440.i.i = lshr i32 %add353.i.i, 12
  %add.ptr355.i.i = getelementptr %struct.page, ptr %229, i32 %div354440.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 55) #9
  %234 = ptrtoint ptr %add.ptr355.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %add.ptr355.i.i, align 4
  %shr.i.i499.i.i = lshr i32 %235, 30
  %236 = zext i32 %shr.i.i499.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i.i499.i.i, label %for.end335.i.i.do_blktrans_request.exit.i_crit_edge [
    i32 2, label %for.end335.i.i.if.end.i502.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i501.i.i
  ]

for.end335.i.i.if.end.i502.i.i_crit_edge:         ; preds = %for.end335.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i502.i.i

for.end335.i.i.do_blktrans_request.exit.i_crit_edge: ; preds = %for.end335.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_blktrans_request.exit.i

is_highmem_idx.exit.i501.i.i:                     ; preds = %for.end335.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %237 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %237)
  %cmp2.i.not.i500.i.i = icmp eq i32 %237, 2
  br i1 %cmp2.i.not.i500.i.i, label %is_highmem_idx.exit.i501.i.i.if.end.i502.i.i_crit_edge, label %is_highmem_idx.exit.i501.i.i.do_blktrans_request.exit.i_crit_edge

is_highmem_idx.exit.i501.i.i.do_blktrans_request.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i501.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_blktrans_request.exit.i

is_highmem_idx.exit.i501.i.i.if.end.i502.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i501.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i502.i.i

if.end.i502.i.i:                                  ; preds = %is_highmem_idx.exit.i501.i.i.if.end.i502.i.i_crit_edge, %for.end335.i.i.if.end.i502.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %add.ptr355.i.i) #9
  br label %do_blktrans_request.exit.i

do_blktrans_request.exit.i:                       ; preds = %if.end.i502.i.i, %is_highmem_idx.exit.i501.i.i.do_blktrans_request.exit.i_crit_edge, %for.end335.i.i.do_blktrans_request.exit.i_crit_edge, %if.end.i497.i.i, %is_highmem_idx.exit.i496.i.i.do_blktrans_request.exit.i_crit_edge, %if.then308.i.i.do_blktrans_request.exit.i_crit_edge, %sw.bb165.i.i.do_blktrans_request.exit.i_crit_edge, %for.inc160.i.i.do_blktrans_request.exit.i_crit_edge, %kunmap.exit456.i.i.do_blktrans_request.exit.i_crit_edge, %if.end.i.i.i, %is_highmem_idx.exit.i451.i.i.do_blktrans_request.exit.i_crit_edge, %if.then36.i.i.do_blktrans_request.exit.i_crit_edge, %sw.bb5.i.i, %sw.bb.i.i, %blk_rq_cur_bytes.exit.i.i.do_blktrans_request.exit.i_crit_edge
  %retval.0.i46.i = phi i8 [ %..i.i, %sw.bb.i.i ], [ %.448.i.i, %sw.bb5.i.i ], [ 0, %kunmap.exit456.i.i.do_blktrans_request.exit.i_crit_edge ], [ 10, %sw.bb165.i.i.do_blktrans_request.exit.i_crit_edge ], [ 10, %blk_rq_cur_bytes.exit.i.i.do_blktrans_request.exit.i_crit_edge ], [ 10, %if.then36.i.i.do_blktrans_request.exit.i_crit_edge ], [ 10, %is_highmem_idx.exit.i451.i.i.do_blktrans_request.exit.i_crit_edge ], [ 10, %if.end.i.i.i ], [ 10, %if.then308.i.i.do_blktrans_request.exit.i_crit_edge ], [ 10, %is_highmem_idx.exit.i496.i.i.do_blktrans_request.exit.i_crit_edge ], [ 10, %if.end.i497.i.i ], [ 0, %for.end335.i.i.do_blktrans_request.exit.i_crit_edge ], [ 0, %is_highmem_idx.exit.i501.i.i.do_blktrans_request.exit.i_crit_edge ], [ 0, %if.end.i502.i.i ], [ 0, %for.inc160.i.i.do_blktrans_request.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock14.i) #9
  %238 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %bio.i.i.i, align 8
  %tobool.not.i47.i = icmp eq ptr %239, null
  br i1 %tobool.not.i47.i, label %do_blktrans_request.exit.i.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true.i.i.i

do_blktrans_request.exit.i.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %do_blktrans_request.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true.i.i.i:                              ; preds = %do_blktrans_request.exit.i
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %239, i32 0, i32 8, i32 1
  %240 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool1.not.i.i.i = icmp eq i32 %241, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %239, i32 0, i32 2
  %242 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %bi_opf.i.i.i, align 8
  %trunc.i.i.i = trunc i32 %243 to i8
  %244 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %244, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %trunc.i.i.i, label %if.end4.i.i [
    i8 3, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10
    i8 9, label %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge11
  ]

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge11: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_cur_bytes.exit.i

if.end4.i.i:                                      ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_io_vec.i48.i = getelementptr inbounds %struct.bio, ptr %239, i32 0, i32 20
  %245 = ptrtoint ptr %bi_io_vec.i48.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %bi_io_vec.i48.i, align 8
  %bi_idx.i49.i = getelementptr inbounds %struct.bio, ptr %239, i32 0, i32 8, i32 2
  %247 = ptrtoint ptr %bi_idx.i49.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %bi_idx.i49.i, align 4
  %bi_bvec_done.i50.i = getelementptr inbounds %struct.bio, ptr %239, i32 0, i32 8, i32 3
  %249 = ptrtoint ptr %bi_bvec_done.i50.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %bi_bvec_done.i50.i, align 8
  %bv_len26.i.i = getelementptr %struct.bio_vec, ptr %246, i32 %248, i32 1
  %251 = ptrtoint ptr %bv_len26.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %bv_len26.i.i, align 4
  %sub.i51.i = sub i32 %252, %250
  %253 = tail call i32 @llvm.umin.i32(i32 %241, i32 %sub.i51.i) #9
  %bv_offset36.i.i = getelementptr %struct.bio_vec, ptr %246, i32 %248, i32 2
  %254 = ptrtoint ptr %bv_offset36.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %bv_offset36.i.i, align 4
  %add40.i.i = add i32 %255, %250
  %rem.i52.i = and i32 %add40.i.i, 4095
  %sub41.i.i = sub nuw nsw i32 4096, %rem.i52.i
  %256 = tail call i32 @llvm.umin.i32(i32 %253, i32 %sub41.i.i) #9
  br label %blk_rq_cur_bytes.exit.i

blk_rq_cur_bytes.exit.i:                          ; preds = %if.end4.i.i, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge11, %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge, %do_blktrans_request.exit.i.blk_rq_cur_bytes.exit.i_crit_edge
  %retval.0.i53.i = phi i32 [ %256, %if.end4.i.i ], [ 0, %do_blktrans_request.exit.i.blk_rq_cur_bytes.exit.i_crit_edge ], [ %241, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge ], [ %241, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge10 ], [ %241, %land.lhs.true2.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge11 ], [ 0, %land.lhs.true.i.i.i.blk_rq_cur_bytes.exit.i_crit_edge ]
  %call19.i = tail call zeroext i1 @blk_update_request(ptr noundef %req.1.i, i8 noundef zeroext %retval.0.i46.i, i32 noundef %retval.0.i53.i) #9
  br i1 %call19.i, label %blk_rq_cur_bytes.exit.i.if.end21.i_crit_edge, label %if.then20.i

blk_rq_cur_bytes.exit.i.if.end21.i_crit_edge:     ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then20.i:                                      ; preds = %blk_rq_cur_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__blk_mq_end_request(ptr noundef %req.1.i, i8 noundef zeroext %retval.0.i46.i) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %blk_rq_cur_bytes.exit.i.if.end21.i_crit_edge
  %req.2.i = phi ptr [ %req.1.i, %blk_rq_cur_bytes.exit.i.if.end21.i_crit_edge ], [ null, %if.then20.i ]
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #9
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.end21.i, %if.then6.i
  %req.0.i.be = phi ptr [ %req.2.i, %if.end21.i ], [ null, %if.then6.i ]
  %background_done.0.i.be = phi i32 [ 0, %if.end21.i ], [ %35, %if.then6.i ]
  br label %while.cond.i

cleanup:                                          ; preds = %if.then.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i8 [ 10, %if.then ], [ 0, %if.then.i.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blktrans_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %ref = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !60

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %lock = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %open = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %kref_get.exit.unlock_crit_edge

kref_get.exit.unlock_crit_edge:                   ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %kref_get.exit
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %owner = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner, align 4
  tail call void @__module_get(ptr noundef %11) #9
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtd, align 4
  %tobool1.not = icmp eq ptr %13, null
  br i1 %tobool1.not, label %if.end.unlock_crit_edge, label %if.end3

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end3:                                          ; preds = %if.end
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %open5 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %open5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %open5, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end3.if.end13_crit_edge, label %if.then7

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then7:                                         ; preds = %if.end3
  %call = tail call i32 %17(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then7.error_put_crit_edge

if.then7.error_put_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_put

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %18 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mtd, align 4
  %call15 = tail call i32 @__get_mtd_device(ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %error_release

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %file_mode = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 17
  %20 = ptrtoint ptr %file_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mode, ptr %file_mode, align 4
  br label %unlock

unlock:                                           ; preds = %if.end18, %if.end.unlock_crit_edge, %kref_get.exit.unlock_crit_edge
  %21 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %open, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %open, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

error_release:                                    ; preds = %if.end13
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %release = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %release, align 4
  %tobool22.not = icmp eq ptr %26, null
  br i1 %tobool22.not, label %error_release.error_put_crit_edge, label %if.then23

error_release.error_put_crit_edge:                ; preds = %error_release
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_put

if.then23:                                        ; preds = %error_release
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %26(ptr noundef %3) #9
  br label %error_put

error_put:                                        ; preds = %if.then23, %error_release.error_put_crit_edge, %if.then7.error_put_crit_edge
  %ret.1 = phi i32 [ %call, %if.then7.error_put_crit_edge ], [ %call15, %if.then23 ], [ %call15, %error_release.error_put_crit_edge ]
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %owner28 = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %owner28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %owner28, align 4
  tail call void @module_put(ptr noundef %30) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  tail call fastcc void @blktrans_dev_put(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %error_put, %unlock
  %retval.0 = phi i32 [ 0, %unlock ], [ %ret.1, %error_put ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blktrans_release(ptr nocapture noundef readonly %disk, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %lock = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %open = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %owner = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %7) #9
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mtd, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.unlock_crit_edge, label %if.then2

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then2:                                         ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %release = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.then2.if.end8_crit_edge, label %if.then5

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %1) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then2.if.end8_crit_edge
  %14 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mtd, align 4
  tail call void @__put_mtd_device(ptr noundef %15) #9
  br label %unlock

unlock:                                           ; preds = %if.end8, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  tail call fastcc void @blktrans_dev_put(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blktrans_getgeo(ptr nocapture noundef readonly %bdev, ptr noundef %geo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %lock = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %getgeo = getelementptr inbounds %struct.mtd_blktrans_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %getgeo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %getgeo, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.unlock_crit_edge, label %cond.true

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %9(ptr noundef %3, ptr noundef %geo) #9
  br label %unlock

unlock:                                           ; preds = %cond.true, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ -6, %entry.unlock_crit_edge ], [ %call, %cond.true ], [ -25, %if.end.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_mtd_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blktrans_notify_add(ptr noundef %mtd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mtd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mtd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %.pn12 = load ptr, ptr @blktrans_majors, align 4
  %cmp2.not13 = icmp eq ptr %.pn12, @blktrans_majors
  br i1 %cmp2.not13, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn14 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn12, %for.cond.preheader.for.body_crit_edge ]
  %tr.0 = getelementptr i8, ptr %.pn14, i32 -68
  %add_mtd = getelementptr i8, ptr %.pn14, i32 -16
  %2 = ptrtoint ptr %add_mtd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add_mtd, align 4
  tail call void %3(ptr noundef %tr.0, ptr noundef %mtd) #9
  %4 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn14, align 4
  %cmp2.not = icmp eq ptr %.pn, @blktrans_majors
  br i1 %cmp2.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blktrans_notify_remove(ptr noundef readnone %mtd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn46 = load ptr, ptr @blktrans_majors, align 4
  %cmp.not47 = icmp eq ptr %.pn46, @blktrans_majors
  br i1 %cmp.not47, label %entry.for.end29_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn48, align 4
  %cmp.not = icmp eq ptr %.pn, @blktrans_majors
  br i1 %cmp.not, label %for.cond.loopexit.for.end29_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.loopexit.for.end29_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn48 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn46, %entry.for.body_crit_edge ]
  %devs = getelementptr i8, ptr %.pn48, i32 -8
  %1 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devs, align 4
  %cmp13.not42 = icmp eq ptr %2, %devs
  br i1 %cmp13.not42, label %for.body.for.cond.loopexit_crit_edge, label %for.body15.lr.ph

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body15.lr.ph:                                 ; preds = %for.body
  %remove_dev = getelementptr i8, ptr %.pn48, i32 -12
  br label %for.body15

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.body15.lr.ph
  %.pn38.in43 = phi ptr [ %2, %for.body15.lr.ph ], [ %.pn3845, %for.inc.for.body15_crit_edge ]
  %3 = ptrtoint ptr %.pn38.in43 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn3845 = load ptr, ptr %.pn38.in43, align 4
  %mtd16 = getelementptr i8, ptr %.pn38.in43, i32 8
  %4 = ptrtoint ptr %mtd16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtd16, align 4
  %cmp17 = icmp eq ptr %5, %mtd
  br i1 %cmp17, label %if.then, label %for.body15.for.inc_crit_edge

for.body15.for.inc_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  %dev.044 = getelementptr i8, ptr %.pn38.in43, i32 -4
  %6 = ptrtoint ptr %remove_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remove_dev, align 4
  tail call void %7(ptr noundef %dev.044) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body15.for.inc_crit_edge
  %cmp13.not = icmp eq ptr %.pn3845, %devs
  br i1 %cmp13.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body15_crit_edge

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.end29:                                        ; preds = %for.cond.loopexit.for.end29_crit_edge, %entry.for.end29_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__ksymtab_mtd_blktrans_cease_background, !1, !"__ksymtab_mtd_blktrans_cease_background", i1 false, i1 false}
!1 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 104, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 283, i32 2}
!4 = !{ptr @add_mtd_blktrans_dev.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 319, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @add_mtd_blktrans_dev.__key.2, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 335, i32 7}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 352, i32 6}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 355, i32 6}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 360, i32 5}
!15 = !{ptr @add_mtd_blktrans_dev.__key.6, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 367, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 491, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @register_mtd_blktrans._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @register_mtd_blktrans._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__exitcall_mtd_blktrans_exit, !24, !"__exitcall_mtd_blktrans_exit", i1 false, i1 false}
!24 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 539, i32 1}
!25 = !{ptr @__ksymtab_register_mtd_blktrans, !26, !"__ksymtab_register_mtd_blktrans", i1 false, i1 false}
!26 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 541, i32 1}
!27 = !{ptr @__ksymtab_deregister_mtd_blktrans, !28, !"__ksymtab_deregister_mtd_blktrans", i1 false, i1 false}
!28 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 542, i32 1}
!29 = !{ptr @__ksymtab_add_mtd_blktrans_dev, !30, !"__ksymtab_add_mtd_blktrans_dev", i1 false, i1 false}
!30 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 543, i32 1}
!31 = !{ptr @__ksymtab_del_mtd_blktrans_dev, !32, !"__ksymtab_del_mtd_blktrans_dev", i1 false, i1 false}
!32 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 544, i32 1}
!33 = !{ptr @__UNIQUE_ID_author287, !34, !"__UNIQUE_ID_author287", i1 false, i1 false}
!34 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 546, i32 1}
!35 = !{ptr @__UNIQUE_ID_file288, !36, !"__UNIQUE_ID_file288", i1 false, i1 false}
!36 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 547, i32 1}
!37 = !{ptr @__UNIQUE_ID_license289, !36, !"__UNIQUE_ID_license289", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_description290, !39, !"__UNIQUE_ID_description290", i1 false, i1 false}
!39 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 548, i32 1}
!40 = !{ptr @mtd_mq_ops, !41, !"mtd_mq_ops", i1 false, i1 false}
!41 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 271, i32 32}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!44 = !{ptr @mtd_block_ops, !45, !"mtd_block_ops", i1 false, i1 false}
!45 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 264, i32 45}
!46 = !{ptr @blktrans_notifier, !47, !"blktrans_notifier", i1 false, i1 false}
!47 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 473, i32 28}
!48 = !{ptr @blktrans_majors, !49, !"blktrans_majors", i1 false, i1 false}
!49 = !{!"../drivers/mtd/mtd_blkdevs.c", i32 25, i32 8}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i8 0, i8 2}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2148309811}
!63 = !{i64 2148224275, i64 2148224307, i64 2148224336, i64 2148224370, i64 2148224401, i64 2148224424}
!64 = !{i64 2149878400}
!65 = !{i32 0, i32 33}
!66 = !{i64 2154795709, i64 2154796199, i64 2154795746, i64 2154795802, i64 2154795836, i64 2154795860, i64 2154795901, i64 2154795922, i64 2154795950, i64 2154795984}
!67 = !{i64 2148221810, i64 2148221842, i64 2148221871, i64 2148221905, i64 2148221936, i64 2148221959}
