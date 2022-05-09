; ModuleID = '/llk/IR_all_yes/block/blk-integrity.c_pt.bc'
source_filename = "../block/blk-integrity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+blk_rq_count_integrity_sg\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_rq_count_integrity_sg\09\09\09\09"
module asm "\09.long\09__crc_blk_rq_count_integrity_sg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_count_integrity_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_count_integrity_sg\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_count_integrity_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_rq_map_integrity_sg\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_rq_map_integrity_sg\09\09\09\09"
module asm "\09.long\09__crc_blk_rq_map_integrity_sg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_map_integrity_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_map_integrity_sg\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_map_integrity_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_integrity_compare\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_integrity_compare\09\09\09\09"
module asm "\09.long\09__crc_blk_integrity_compare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_integrity_compare:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_integrity_compare\22\09\09\09\09\09"
module asm "__kstrtabns_blk_integrity_compare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_integrity_register\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_integrity_register\09\09\09\09"
module asm "\09.long\09__crc_blk_integrity_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_integrity_register:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_integrity_register\22\09\09\09\09\09"
module asm "__kstrtabns_blk_integrity_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_integrity_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_integrity_unregister\09\09\09\09"
module asm "\09.long\09__crc_blk_integrity_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_integrity_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_integrity_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_blk_integrity_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.blk_integrity_profile = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.integrity_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio_integrity_payload = type { ptr, %struct.bvec_iter, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, ptr, [0 x %struct.bio_vec] }
%struct.page = type { i32, %union.anon.3, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.75, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.82, %union.anon.83, %union.anon.84, %union.anon.87, ptr, ptr }
%union.anon.75 = type { %struct.list_head }
%union.anon.82 = type { %struct.hlist_node }
%union.anon.83 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.84 = type { %struct.anon.86 }
%struct.anon.86 = type { i32, %struct.list_head, ptr }
%union.anon.87 = type { i64, [8 x i8] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__kstrtab_blk_rq_count_integrity_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_count_integrity_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_count_integrity_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_count_integrity_sg to i32), ptr @__kstrtab_blk_rq_count_integrity_sg, ptr @__kstrtabns_blk_rq_count_integrity_sg }, section "___ksymtab+blk_rq_count_integrity_sg", align 4
@__kstrtab_blk_rq_map_integrity_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_map_integrity_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_map_integrity_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_map_integrity_sg to i32), ptr @__kstrtab_blk_rq_map_integrity_sg, ptr @__kstrtabns_blk_rq_map_integrity_sg }, section "___ksymtab+blk_rq_map_integrity_sg", align 4
@blk_integrity_compare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: %s/%s protection interval %u != %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"blk_integrity_compare\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"block/blk-integrity.c\00", [42 x i8] zeroinitializer }, align 32
@blk_integrity_compare._entry_ptr = internal global ptr @blk_integrity_compare._entry, section ".printk_index", align 4
@blk_integrity_compare._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: %s/%s tuple sz %u != %u\0A\00", [33 x i8] zeroinitializer }, align 32
@blk_integrity_compare._entry_ptr.5 = internal global ptr @blk_integrity_compare._entry.3, section ".printk_index", align 4
@blk_integrity_compare._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: %s/%s tag sz %u != %u\0A\00", [35 x i8] zeroinitializer }, align 32
@blk_integrity_compare._entry_ptr.8 = internal global ptr @blk_integrity_compare._entry.6, section ".printk_index", align 4
@blk_integrity_compare._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: %s/%s type %s != %s\0A\00", [37 x i8] zeroinitializer }, align 32
@blk_integrity_compare._entry_ptr.11 = internal global ptr @blk_integrity_compare._entry.9, section ".printk_index", align 4
@__kstrtab_blk_integrity_compare = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_integrity_compare = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_integrity_compare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_integrity_compare to i32), ptr @__kstrtab_blk_integrity_compare, ptr @__kstrtabns_blk_integrity_compare }, section "___ksymtab+blk_integrity_compare", align 4
@nop_profile = internal constant { %struct.blk_integrity_profile, [44 x i8] } { %struct.blk_integrity_profile { ptr @blk_integrity_nop_fn, ptr @blk_integrity_nop_fn, ptr @blk_integrity_nop_prepare, ptr @blk_integrity_nop_complete, ptr @.str.16 }, [44 x i8] zeroinitializer }, align 32
@blk_integrity_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [125 x i8], [35 x i8] } { [125 x i8] c"\014blk-integrity: Integrity and hardware inline encryption are not supported together. Disabling hardware inline encryption.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"blk_integrity_register\00", [41 x i8] zeroinitializer }, align 32
@blk_integrity_register._entry_ptr = internal global ptr @blk_integrity_register._entry, section ".printk_index", align 4
@__kstrtab_blk_integrity_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_integrity_register = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_integrity_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_integrity_register to i32), ptr @__kstrtab_blk_integrity_register, ptr @__kstrtabns_blk_integrity_register }, section "___ksymtab+blk_integrity_register", align 4
@__kstrtab_blk_integrity_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_integrity_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_integrity_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_integrity_unregister to i32), ptr @__kstrtab_blk_integrity_unregister, ptr @__kstrtabns_blk_integrity_unregister }, section "___ksymtab+blk_integrity_unregister", align 4
@integrity_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @integrity_ops, ptr null, ptr @integrity_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"integrity\00", [22 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nop\00", [28 x i8] zeroinitializer }, align 32
@integrity_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @integrity_attr_show, ptr @integrity_attr_store }, [24 x i8] zeroinitializer }, align 32
@integrity_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @integrity_group, ptr null], [24 x i8] zeroinitializer }, align 32
@integrity_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @integrity_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@integrity_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @integrity_format_entry, ptr @integrity_tag_size_entry, ptr @integrity_interval_entry, ptr @integrity_verify_entry, ptr @integrity_generate_entry, ptr @integrity_device_entry, ptr null], [36 x i8] zeroinitializer }, align 32
@integrity_format_entry = internal global { %struct.integrity_sysfs_entry, [36 x i8] } { %struct.integrity_sysfs_entry { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @integrity_format_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@integrity_tag_size_entry = internal global { %struct.integrity_sysfs_entry, [36 x i8] } { %struct.integrity_sysfs_entry { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @integrity_tag_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@integrity_interval_entry = internal global { %struct.integrity_sysfs_entry, [36 x i8] } { %struct.integrity_sysfs_entry { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @integrity_interval_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@integrity_verify_entry = internal global { %struct.integrity_sysfs_entry, [36 x i8] } { %struct.integrity_sysfs_entry { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @integrity_verify_show, ptr @integrity_verify_store }, [36 x i8] zeroinitializer }, align 32
@integrity_generate_entry = internal global { %struct.integrity_sysfs_entry, [36 x i8] } { %struct.integrity_sysfs_entry { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @integrity_generate_show, ptr @integrity_generate_store }, [36 x i8] zeroinitializer }, align 32
@integrity_device_entry = internal global { %struct.integrity_sysfs_entry, [36 x i8] } { %struct.integrity_sysfs_entry { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @integrity_device_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tag_size\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"protection_interval_bytes\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_verify\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write_generate\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device_is_integrity_capable\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 133, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 140, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 147, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 154, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"nop_profile\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 378, i32 43 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 413, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"integrity_ktype\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 359, i32 25 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 446, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 446, i32 40 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 379, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"integrity_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 354, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"integrity_groups\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"integrity_group\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 352, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"integrity_attrs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 343, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant [23 x i8] c"integrity_format_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 311, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant [25 x i8] c"integrity_tag_size_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 316, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"integrity_interval_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 321, i32 37 }
@___asan_gen_.102 = private unnamed_addr constant [23 x i8] c"integrity_verify_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 326, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"integrity_generate_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 332, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"integrity_device_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 338, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 312, i32 20 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 251, i32 24 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 253, i32 24 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 317, i32 20 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 258, i32 23 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 322, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 327, i32 20 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 283, i32 23 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 333, i32 20 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [25 x i8] c"../block/blk-integrity.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 339, i32 20 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__ksymtab_blk_integrity_compare, ptr @__ksymtab_blk_integrity_register, ptr @__ksymtab_blk_integrity_unregister, ptr @__ksymtab_blk_rq_count_integrity_sg, ptr @__ksymtab_blk_rq_map_integrity_sg, ptr @blk_integrity_compare._entry, ptr @blk_integrity_compare._entry.3, ptr @blk_integrity_compare._entry.6, ptr @blk_integrity_compare._entry.9, ptr @blk_integrity_compare._entry_ptr, ptr @blk_integrity_compare._entry_ptr.11, ptr @blk_integrity_compare._entry_ptr.5, ptr @blk_integrity_compare._entry_ptr.8, ptr @blk_integrity_register._entry, ptr @blk_integrity_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @nop_profile, ptr @.str.12, ptr @.str.13, ptr @integrity_ktype, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @integrity_ops, ptr @integrity_groups, ptr @integrity_group, ptr @integrity_attrs, ptr @integrity_format_entry, ptr @integrity_tag_size_entry, ptr @integrity_interval_entry, ptr @integrity_verify_entry, ptr @integrity_generate_entry, ptr @integrity_device_entry, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_integrity_compare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_integrity_compare._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_integrity_compare._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_integrity_compare._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nop_profile to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_integrity_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_format_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_tag_size_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_interval_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_verify_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_generate_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_device_entry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_rq_count_integrity_sg(ptr nocapture noundef readonly %q, ptr noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not101 = icmp eq ptr %bio, null
  br i1 %tobool.not101, label %entry.for.end50_crit_edge, label %for.body.lr.ph

entry.for.end50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end50

for.body.lr.ph:                                   ; preds = %entry
  %seg_boundary_mask.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 1
  %max_segment_size.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc49.for.body_crit_edge, %for.body.lr.ph
  %bio.addr.0108 = phi ptr [ %bio, %for.body.lr.ph ], [ %37, %for.inc49.for.body_crit_edge ]
  %segments.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %segments.1.lcssa, %for.inc49.for.body_crit_edge ]
  %seg_size.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %seg_size.1.lcssa, %for.inc49.for.body_crit_edge ]
  %prev.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %prev.1.lcssa, %for.inc49.for.body_crit_edge ]
  %ivprv.sroa.6.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %ivprv.sroa.6.1.lcssa, %for.inc49.for.body_crit_edge ]
  %ivprv.sroa.5.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %ivprv.sroa.5.1.lcssa, %for.inc49.for.body_crit_edge ]
  %ivprv.sroa.0.0102 = phi ptr [ null, %for.body.lr.ph ], [ %ivprv.sroa.0.1.lcssa, %for.inc49.for.body_crit_edge ]
  %0 = getelementptr inbounds %struct.bio, ptr %bio.addr.0108, i32 0, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %iter.sroa.4.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %2, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %iter.sroa.4.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %iter.sroa.4.0.copyload = load i32, ptr %iter.sroa.4.0.bip_iter.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.4.0.copyload)
  %tobool2.not85 = icmp eq i32 %iter.sroa.4.0.copyload, 0
  br i1 %tobool2.not85, label %for.body.for.inc49_crit_edge, label %land.rhs.lr.ph

for.body.for.inc49_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49

land.rhs.lr.ph:                                   ; preds = %for.body
  %iter.sroa.14.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %2, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %iter.sroa.14.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %iter.sroa.14.0.copyload = load i32, ptr %iter.sroa.14.0.bip_iter.sroa_idx, align 4
  %iter.sroa.8.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %2, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %iter.sroa.8.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %iter.sroa.8.0.copyload = load i32, ptr %iter.sroa.8.0.bip_iter.sroa_idx, align 4
  %bip_vec = getelementptr inbounds %struct.bio_integrity_payload, ptr %2, i32 0, i32 7
  %6 = ptrtoint ptr %bip_vec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bip_vec, align 4
  %arrayidx.peel = getelementptr %struct.bio_vec, ptr %7, i32 %iter.sroa.8.0.copyload
  %8 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.peel, align 4
  %bv_offset.peel = getelementptr %struct.bio_vec, ptr %7, i32 %iter.sroa.8.0.copyload, i32 2
  %10 = ptrtoint ptr %bv_offset.peel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bv_offset.peel, align 4
  %add.peel = add i32 %11, %iter.sroa.14.0.copyload
  %div66.peel = lshr i32 %add.peel, 12
  %add.ptr.peel = getelementptr %struct.page, ptr %9, i32 %div66.peel
  %bv_len11.peel = getelementptr %struct.bio_vec, ptr %7, i32 %iter.sroa.8.0.copyload, i32 1
  %12 = ptrtoint ptr %bv_len11.peel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_len11.peel, align 4
  %sub.peel = sub i32 %13, %iter.sroa.14.0.copyload
  %14 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.4.0.copyload, i32 %sub.peel)
  %rem.peel = and i32 %add.peel, 4095
  %sub19.peel = sub nuw nsw i32 4096, %rem.peel
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %sub19.peel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev.0105)
  %tobool35.not.peel = icmp eq i32 %prev.0105, 0
  br i1 %tobool35.not.peel, label %land.rhs.lr.ph.new_segment.peel_crit_edge, label %if.then.peel

land.rhs.lr.ph.new_segment.peel_crit_edge:        ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_segment.peel

if.then.peel:                                     ; preds = %land.rhs.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.peel = ptrtoint ptr %ivprv.sroa.0.0102 to i32
  %sub.ptr.rhs.cast.i.peel = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.peel = sub i32 %sub.ptr.lhs.cast.i.peel, %sub.ptr.rhs.cast.i.peel
  %sub.ptr.div.i.peel = sdiv exact i32 %sub.ptr.sub.i.peel, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.peel = add i32 %sub.ptr.div.i.peel, %17
  %shl.i.peel = shl i32 %add.i.peel, 12
  %add1.i.peel = add i32 %shl.i.peel, %ivprv.sroa.6.0104
  %sub.ptr.lhs.cast3.i.peel = ptrtoint ptr %add.ptr.peel to i32
  %sub.ptr.sub5.i.peel = sub i32 %sub.ptr.lhs.cast3.i.peel, %sub.ptr.rhs.cast.i.peel
  %sub.ptr.div6.i.peel = sdiv exact i32 %sub.ptr.sub5.i.peel, 36
  %add7.i.peel = add i32 %sub.ptr.div6.i.peel, %17
  %shl8.i.peel = shl i32 %add7.i.peel, 12
  %add10.i.peel = or i32 %shl8.i.peel, %rem.peel
  %add11.i.peel = add i32 %add1.i.peel, %ivprv.sroa.5.0103
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.peel, i32 %add10.i.peel)
  %cmp.not.i.peel = icmp eq i32 %add11.i.peel, %add10.i.peel
  br i1 %cmp.not.i.peel, label %biovec_phys_mergeable.exit.peel, label %if.then.peel.new_segment.peel_crit_edge

if.then.peel.new_segment.peel_crit_edge:          ; preds = %if.then.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_segment.peel

biovec_phys_mergeable.exit.peel:                  ; preds = %if.then.peel
  %18 = ptrtoint ptr %seg_boundary_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seg_boundary_mask.i.i, align 4
  %or.i.peel = or i32 %19, %add1.i.peel
  %add13.i.peel = add nsw i32 %15, -1
  %sub.i.peel = add i32 %add13.i.peel, %add10.i.peel
  %or14.i.peel = or i32 %19, %sub.i.peel
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.peel, i32 %or14.i.peel)
  %cmp15.not.i.peel = icmp eq i32 %or.i.peel, %or14.i.peel
  br i1 %cmp15.not.i.peel, label %if.end.peel, label %biovec_phys_mergeable.exit.peel.new_segment.peel_crit_edge

biovec_phys_mergeable.exit.peel.new_segment.peel_crit_edge: ; preds = %biovec_phys_mergeable.exit.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_segment.peel

if.end.peel:                                      ; preds = %biovec_phys_mergeable.exit.peel
  %add38.peel = add i32 %15, %seg_size.0106
  %20 = ptrtoint ptr %max_segment_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_segment_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.peel, i32 %21)
  %cmp40.peel = icmp ugt i32 %add38.peel, %21
  br i1 %cmp40.peel, label %if.end.peel.new_segment.peel_crit_edge, label %if.end.peel.if.end46.peel_crit_edge

if.end.peel.if.end46.peel_crit_edge:              ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.peel

if.end.peel.new_segment.peel_crit_edge:           ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_segment.peel

new_segment.peel:                                 ; preds = %if.end.peel.new_segment.peel_crit_edge, %biovec_phys_mergeable.exit.peel.new_segment.peel_crit_edge, %if.then.peel.new_segment.peel_crit_edge, %land.rhs.lr.ph.new_segment.peel_crit_edge
  %inc.peel = add i32 %segments.0107, 1
  br label %if.end46.peel

if.end46.peel:                                    ; preds = %new_segment.peel, %if.end.peel.if.end46.peel_crit_edge
  %seg_size.2.peel = phi i32 [ %15, %new_segment.peel ], [ %add38.peel, %if.end.peel.if.end46.peel_crit_edge ]
  %segments.2.peel = phi i32 [ %inc.peel, %new_segment.peel ], [ %segments.0107, %if.end.peel.if.end46.peel_crit_edge ]
  %sub.i69.peel = sub i32 %iter.sroa.4.0.copyload, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i69.peel)
  %tobool2.not.peel = icmp eq i32 %sub.i69.peel, 0
  br i1 %tobool2.not.peel, label %if.end46.peel.for.inc49_crit_edge, label %land.rhs.peel.next

if.end46.peel.for.inc49_crit_edge:                ; preds = %if.end46.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49

land.rhs.peel.next:                               ; preds = %if.end46.peel
  %add.i67.peel = add i32 %15, %iter.sroa.14.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i67.peel, i32 %13)
  %cmp.i.peel = icmp eq i32 %add.i67.peel, %13
  %spec.select84.peel = select i1 %cmp.i.peel, i32 0, i32 %add.i67.peel
  %inc.i.peel = zext i1 %cmp.i.peel to i32
  %spec.select.peel = add i32 %iter.sroa.8.0.copyload, %inc.i.peel
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %if.then

if.then:                                          ; preds = %if.end46.if.then_crit_edge, %land.rhs.peel.next
  %segments.194 = phi i32 [ %segments.2.peel, %land.rhs.peel.next ], [ %segments.2, %if.end46.if.then_crit_edge ]
  %seg_size.193 = phi i32 [ %seg_size.2.peel, %land.rhs.peel.next ], [ %seg_size.2, %if.end46.if.then_crit_edge ]
  %iter.sroa.4.091 = phi i32 [ %sub.i69.peel, %land.rhs.peel.next ], [ %sub.i69, %if.end46.if.then_crit_edge ]
  %iter.sroa.8.090 = phi i32 [ %spec.select.peel, %land.rhs.peel.next ], [ %spec.select, %if.end46.if.then_crit_edge ]
  %iter.sroa.14.089 = phi i32 [ %spec.select84.peel, %land.rhs.peel.next ], [ %spec.select84, %if.end46.if.then_crit_edge ]
  %ivprv.sroa.6.188 = phi i32 [ %rem.peel, %land.rhs.peel.next ], [ %rem, %if.end46.if.then_crit_edge ]
  %ivprv.sroa.5.187 = phi i32 [ %15, %land.rhs.peel.next ], [ %31, %if.end46.if.then_crit_edge ]
  %ivprv.sroa.0.186 = phi ptr [ %add.ptr.peel, %land.rhs.peel.next ], [ %add.ptr, %if.end46.if.then_crit_edge ]
  %arrayidx = getelementptr %struct.bio_vec, ptr %7, i32 %iter.sroa.8.090
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %7, i32 %iter.sroa.8.090, i32 2
  %26 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bv_offset, align 4
  %add = add i32 %27, %iter.sroa.14.089
  %div66 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %25, i32 %div66
  %bv_len11 = getelementptr %struct.bio_vec, ptr %7, i32 %iter.sroa.8.090, i32 1
  %28 = ptrtoint ptr %bv_len11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bv_len11, align 4
  %sub = sub i32 %29, %iter.sroa.14.089
  %30 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.4.091, i32 %sub)
  %rem = and i32 %add, 4095
  %sub19 = sub nuw nsw i32 4096, %rem
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %sub19)
  %sub.ptr.lhs.cast.i = ptrtoint ptr %ivprv.sroa.0.186 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %add.i = add i32 %sub.ptr.div.i, %23
  %shl.i = shl i32 %add.i, 12
  %add1.i = or i32 %shl.i, %ivprv.sroa.6.188
  %sub.ptr.lhs.cast3.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub5.i = sub i32 %sub.ptr.lhs.cast3.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div6.i = sdiv exact i32 %sub.ptr.sub5.i, 36
  %add7.i = add i32 %sub.ptr.div6.i, %23
  %shl8.i = shl i32 %add7.i, 12
  %add10.i = or i32 %shl8.i, %rem
  %add11.i = add i32 %add1.i, %ivprv.sroa.5.187
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %add10.i)
  %cmp.not.i = icmp eq i32 %add11.i, %add10.i
  br i1 %cmp.not.i, label %biovec_phys_mergeable.exit, label %if.then.new_segment_crit_edge

if.then.new_segment_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_segment

biovec_phys_mergeable.exit:                       ; preds = %if.then
  %32 = ptrtoint ptr %seg_boundary_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %seg_boundary_mask.i.i, align 4
  %or.i = or i32 %33, %add1.i
  %add13.i = add nsw i32 %31, -1
  %sub.i = add i32 %add13.i, %add10.i
  %or14.i = or i32 %33, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %or14.i)
  %cmp15.not.i = icmp eq i32 %or.i, %or14.i
  br i1 %cmp15.not.i, label %if.end, label %biovec_phys_mergeable.exit.new_segment_crit_edge

biovec_phys_mergeable.exit.new_segment_crit_edge: ; preds = %biovec_phys_mergeable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_segment

if.end:                                           ; preds = %biovec_phys_mergeable.exit
  %add38 = add i32 %31, %seg_size.193
  %34 = ptrtoint ptr %max_segment_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_segment_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %35)
  %cmp40 = icmp ugt i32 %add38, %35
  br i1 %cmp40, label %if.end.new_segment_crit_edge, label %if.end.if.end46_crit_edge

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end.new_segment_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_segment

new_segment:                                      ; preds = %if.end.new_segment_crit_edge, %biovec_phys_mergeable.exit.new_segment_crit_edge, %if.then.new_segment_crit_edge
  %inc = add i32 %segments.194, 1
  br label %if.end46

if.end46:                                         ; preds = %new_segment, %if.end.if.end46_crit_edge
  %seg_size.2 = phi i32 [ %31, %new_segment ], [ %add38, %if.end.if.end46_crit_edge ]
  %segments.2 = phi i32 [ %inc, %new_segment ], [ %segments.194, %if.end.if.end46_crit_edge ]
  %add.i67 = add i32 %31, %iter.sroa.14.089
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i67, i32 %29)
  %cmp.i = icmp eq i32 %add.i67, %29
  %inc.i = zext i1 %cmp.i to i32
  %spec.select = add i32 %iter.sroa.8.090, %inc.i
  %spec.select84 = select i1 %cmp.i, i32 0, i32 %add.i67
  %sub.i69 = sub i32 %iter.sroa.4.091, %31
  %tobool2.not = icmp eq i32 %sub.i69, 0
  br i1 %tobool2.not, label %if.end46.for.inc49_crit_edge, label %if.end46.if.then_crit_edge, !llvm.loop !91

if.end46.if.then_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end46.for.inc49_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49

for.inc49:                                        ; preds = %if.end46.for.inc49_crit_edge, %if.end46.peel.for.inc49_crit_edge, %for.body.for.inc49_crit_edge
  %ivprv.sroa.0.1.lcssa = phi ptr [ %ivprv.sroa.0.0102, %for.body.for.inc49_crit_edge ], [ %add.ptr.peel, %if.end46.peel.for.inc49_crit_edge ], [ %add.ptr, %if.end46.for.inc49_crit_edge ]
  %ivprv.sroa.5.1.lcssa = phi i32 [ %ivprv.sroa.5.0103, %for.body.for.inc49_crit_edge ], [ %15, %if.end46.peel.for.inc49_crit_edge ], [ %31, %if.end46.for.inc49_crit_edge ]
  %ivprv.sroa.6.1.lcssa = phi i32 [ %ivprv.sroa.6.0104, %for.body.for.inc49_crit_edge ], [ %rem.peel, %if.end46.peel.for.inc49_crit_edge ], [ %rem, %if.end46.for.inc49_crit_edge ]
  %prev.1.lcssa = phi i32 [ %prev.0105, %for.body.for.inc49_crit_edge ], [ 1, %if.end46.peel.for.inc49_crit_edge ], [ 1, %if.end46.for.inc49_crit_edge ]
  %seg_size.1.lcssa = phi i32 [ %seg_size.0106, %for.body.for.inc49_crit_edge ], [ %seg_size.2.peel, %if.end46.peel.for.inc49_crit_edge ], [ %seg_size.2, %if.end46.for.inc49_crit_edge ]
  %segments.1.lcssa = phi i32 [ %segments.0107, %for.body.for.inc49_crit_edge ], [ %segments.2.peel, %if.end46.peel.for.inc49_crit_edge ], [ %segments.2, %if.end46.for.inc49_crit_edge ]
  %36 = ptrtoint ptr %bio.addr.0108 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bio.addr.0108, align 8
  %tobool.not = icmp eq ptr %37, null
  br i1 %tobool.not, label %for.inc49.for.end50_crit_edge, label %for.inc49.for.body_crit_edge

for.inc49.for.body_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc49.for.end50_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end50

for.end50:                                        ; preds = %for.inc49.for.end50_crit_edge, %entry.for.end50_crit_edge
  %segments.0.lcssa = phi i32 [ 0, %entry.for.end50_crit_edge ], [ %segments.1.lcssa, %for.inc49.for.end50_crit_edge ]
  ret i32 %segments.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_rq_map_integrity_sg(ptr nocapture noundef readonly %q, ptr noundef readonly %bio, ptr noundef %sglist) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not138 = icmp eq ptr %bio, null
  br i1 %tobool.not138, label %entry.if.end61_crit_edge, label %for.body.lr.ph

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

for.body.lr.ph:                                   ; preds = %entry
  %seg_boundary_mask.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 1
  %max_segment_size.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc57.for.body_crit_edge, %for.body.lr.ph
  %bio.addr.0145 = phi ptr [ %bio, %for.body.lr.ph ], [ %42, %for.inc57.for.body_crit_edge ]
  %sg.0144 = phi ptr [ null, %for.body.lr.ph ], [ %sg.1.lcssa, %for.inc57.for.body_crit_edge ]
  %segments.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %segments.1.lcssa, %for.inc57.for.body_crit_edge ]
  %prev.0142 = phi i32 [ 0, %for.body.lr.ph ], [ %prev.1.lcssa, %for.inc57.for.body_crit_edge ]
  %ivprv.sroa.6.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %ivprv.sroa.6.1.lcssa, %for.inc57.for.body_crit_edge ]
  %ivprv.sroa.5.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %ivprv.sroa.5.1.lcssa, %for.inc57.for.body_crit_edge ]
  %ivprv.sroa.0.0139 = phi ptr [ null, %for.body.lr.ph ], [ %ivprv.sroa.0.1.lcssa, %for.inc57.for.body_crit_edge ]
  %0 = getelementptr inbounds %struct.bio, ptr %bio.addr.0145, i32 0, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %iter.sroa.4.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %2, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %iter.sroa.4.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %iter.sroa.4.0.copyload = load i32, ptr %iter.sroa.4.0.bip_iter.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.4.0.copyload)
  %tobool2.not122 = icmp eq i32 %iter.sroa.4.0.copyload, 0
  br i1 %tobool2.not122, label %for.body.for.inc57_crit_edge, label %land.rhs.preheader

for.body.for.inc57_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc57

land.rhs.preheader:                               ; preds = %for.body
  %iter.sroa.14.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %2, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %iter.sroa.14.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %iter.sroa.14.0.copyload = load i32, ptr %iter.sroa.14.0.bip_iter.sroa_idx, align 4
  %iter.sroa.8.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %2, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %iter.sroa.8.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %iter.sroa.8.0.copyload = load i32, ptr %iter.sroa.8.0.bip_iter.sroa_idx, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end54.land.rhs_crit_edge, %land.rhs.preheader
  %sg.1132 = phi ptr [ %sg.3, %if.end54.land.rhs_crit_edge ], [ %sg.0144, %land.rhs.preheader ]
  %segments.1130 = phi i32 [ %segments.2, %if.end54.land.rhs_crit_edge ], [ %segments.0143, %land.rhs.preheader ]
  %prev.1129 = phi i32 [ 1, %if.end54.land.rhs_crit_edge ], [ %prev.0142, %land.rhs.preheader ]
  %iter.sroa.4.0128 = phi i32 [ %sub.i86, %if.end54.land.rhs_crit_edge ], [ %iter.sroa.4.0.copyload, %land.rhs.preheader ]
  %iter.sroa.8.0127 = phi i32 [ %spec.select, %if.end54.land.rhs_crit_edge ], [ %iter.sroa.8.0.copyload, %land.rhs.preheader ]
  %iter.sroa.14.0126 = phi i32 [ %spec.select105, %if.end54.land.rhs_crit_edge ], [ %iter.sroa.14.0.copyload, %land.rhs.preheader ]
  %ivprv.sroa.6.1125 = phi i32 [ %rem, %if.end54.land.rhs_crit_edge ], [ %ivprv.sroa.6.0141, %land.rhs.preheader ]
  %ivprv.sroa.5.1124 = phi i32 [ %17, %if.end54.land.rhs_crit_edge ], [ %ivprv.sroa.5.0140, %land.rhs.preheader ]
  %ivprv.sroa.0.1123 = phi ptr [ %add.ptr, %if.end54.land.rhs_crit_edge ], [ %ivprv.sroa.0.0139, %land.rhs.preheader ]
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %bip_vec = getelementptr inbounds %struct.bio_integrity_payload, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %bip_vec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bip_vec, align 4
  %arrayidx = getelementptr %struct.bio_vec, ptr %9, i32 %iter.sroa.8.0127
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %9, i32 %iter.sroa.8.0127, i32 2
  %12 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_offset, align 4
  %add = add i32 %13, %iter.sroa.14.0126
  %div83 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %11, i32 %div83
  %bv_len11 = getelementptr %struct.bio_vec, ptr %9, i32 %iter.sroa.8.0127, i32 1
  %14 = ptrtoint ptr %bv_len11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bv_len11, align 4
  %sub = sub i32 %15, %iter.sroa.14.0126
  %16 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.4.0128, i32 %sub)
  %rem = and i32 %add, 4095
  %sub19 = sub nuw nsw i32 4096, %rem
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %sub19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev.1129)
  %tobool35.not = icmp eq i32 %prev.1129, 0
  br i1 %tobool35.not, label %land.rhs.new_segment_crit_edge, label %if.then

land.rhs.new_segment_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_segment

if.then:                                          ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %ivprv.sroa.0.1123 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %19
  %shl.i = shl i32 %add.i, 12
  %add1.i = add i32 %shl.i, %ivprv.sroa.6.1125
  %sub.ptr.lhs.cast3.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub5.i = sub i32 %sub.ptr.lhs.cast3.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div6.i = sdiv exact i32 %sub.ptr.sub5.i, 36
  %add7.i = add i32 %sub.ptr.div6.i, %19
  %shl8.i = shl i32 %add7.i, 12
  %add10.i = or i32 %shl8.i, %rem
  %add11.i = add i32 %add1.i, %ivprv.sroa.5.1124
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %add10.i)
  %cmp.not.i = icmp eq i32 %add11.i, %add10.i
  br i1 %cmp.not.i, label %biovec_phys_mergeable.exit, label %if.then.new_segment_crit_edge

if.then.new_segment_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_segment

biovec_phys_mergeable.exit:                       ; preds = %if.then
  %20 = ptrtoint ptr %seg_boundary_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seg_boundary_mask.i.i, align 4
  %or.i = or i32 %21, %add1.i
  %add13.i = add nsw i32 %17, -1
  %sub.i = add i32 %add13.i, %add10.i
  %or14.i = or i32 %21, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %or14.i)
  %cmp15.not.i = icmp eq i32 %or.i, %or14.i
  br i1 %cmp15.not.i, label %if.end, label %biovec_phys_mergeable.exit.new_segment_crit_edge

biovec_phys_mergeable.exit.new_segment_crit_edge: ; preds = %biovec_phys_mergeable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_segment

if.end:                                           ; preds = %biovec_phys_mergeable.exit
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.1132, i32 0, i32 2
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  %add38 = add i32 %23, %17
  %24 = ptrtoint ptr %max_segment_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_segment_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %25)
  %cmp40 = icmp ugt i32 %add38, %25
  br i1 %cmp40, label %if.end.new_segment_crit_edge, label %if.end42

if.end.new_segment_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %new_segment

if.end42:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add38, ptr %length, align 4
  br label %if.end54

new_segment:                                      ; preds = %if.end.new_segment_crit_edge, %biovec_phys_mergeable.exit.new_segment_crit_edge, %if.then.new_segment_crit_edge, %land.rhs.new_segment_crit_edge
  %tobool46.not = icmp eq ptr %sg.1132, null
  br i1 %tobool46.not, label %new_segment.if.end50_crit_edge, label %if.else48

new_segment.if.end50_crit_edge:                   ; preds = %new_segment
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.else48:                                        ; preds = %new_segment
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %sg.1132 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg.1132, align 4
  %and.i = and i32 %28, -3
  store i32 %and.i, ptr %sg.1132, align 4
  %call49 = tail call ptr @sg_next(ptr noundef nonnull %sg.1132) #10
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %new_segment.if.end50_crit_edge
  %sg.2 = phi ptr [ %call49, %if.else48 ], [ %sglist, %new_segment.if.end50_crit_edge ]
  %29 = ptrtoint ptr %sg.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sg.2, align 4
  %31 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !93

do.body5.i.i:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

do.body11.i.i:                                    ; preds = %if.end50
  %and.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !93

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %30, 3
  %or.i.i = or i32 %and.i.i, %31
  %32 = ptrtoint ptr %sg.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i, ptr %sg.2, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.2, i32 0, i32 1
  %33 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rem, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.2, i32 0, i32 2
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %17, ptr %length.i, align 4
  %inc = add i32 %segments.1130, 1
  br label %if.end54

if.end54:                                         ; preds = %sg_set_page.exit, %if.end42
  %segments.2 = phi i32 [ %inc, %sg_set_page.exit ], [ %segments.1130, %if.end42 ]
  %sg.3 = phi ptr [ %sg.2, %sg_set_page.exit ], [ %sg.1132, %if.end42 ]
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %bip_vec55 = getelementptr inbounds %struct.bio_integrity_payload, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %bip_vec55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bip_vec55, align 4
  %add.i84 = add i32 %17, %iter.sroa.14.0126
  %bv_len.i85 = getelementptr %struct.bio_vec, ptr %38, i32 %iter.sroa.8.0127, i32 1
  %39 = ptrtoint ptr %bv_len.i85 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bv_len.i85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i84, i32 %40)
  %cmp.i = icmp eq i32 %add.i84, %40
  %inc.i = zext i1 %cmp.i to i32
  %spec.select = add i32 %iter.sroa.8.0127, %inc.i
  %spec.select105 = select i1 %cmp.i, i32 0, i32 %add.i84
  %sub.i86 = sub i32 %iter.sroa.4.0128, %17
  %tobool2.not = icmp eq i32 %sub.i86, 0
  br i1 %tobool2.not, label %if.end54.for.inc57_crit_edge, label %if.end54.land.rhs_crit_edge

if.end54.land.rhs_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end54.for.inc57_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc57

for.inc57:                                        ; preds = %if.end54.for.inc57_crit_edge, %for.body.for.inc57_crit_edge
  %ivprv.sroa.0.1.lcssa = phi ptr [ %ivprv.sroa.0.0139, %for.body.for.inc57_crit_edge ], [ %add.ptr, %if.end54.for.inc57_crit_edge ]
  %ivprv.sroa.5.1.lcssa = phi i32 [ %ivprv.sroa.5.0140, %for.body.for.inc57_crit_edge ], [ %17, %if.end54.for.inc57_crit_edge ]
  %ivprv.sroa.6.1.lcssa = phi i32 [ %ivprv.sroa.6.0141, %for.body.for.inc57_crit_edge ], [ %rem, %if.end54.for.inc57_crit_edge ]
  %prev.1.lcssa = phi i32 [ %prev.0142, %for.body.for.inc57_crit_edge ], [ 1, %if.end54.for.inc57_crit_edge ]
  %segments.1.lcssa = phi i32 [ %segments.0143, %for.body.for.inc57_crit_edge ], [ %segments.2, %if.end54.for.inc57_crit_edge ]
  %sg.1.lcssa = phi ptr [ %sg.0144, %for.body.for.inc57_crit_edge ], [ %sg.3, %if.end54.for.inc57_crit_edge ]
  %41 = ptrtoint ptr %bio.addr.0145 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bio.addr.0145, align 8
  %tobool.not = icmp eq ptr %42, null
  br i1 %tobool.not, label %for.end58, label %for.inc57.for.body_crit_edge

for.inc57.for.body_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end58:                                        ; preds = %for.inc57
  %tobool59.not = icmp eq ptr %sg.1.lcssa, null
  br i1 %tobool59.not, label %for.end58.if.end61_crit_edge, label %if.then60

for.end58.if.end61_crit_edge:                     ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then60:                                        ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %sg.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sg.1.lcssa, align 4
  %or.i88 = and i32 %44, -4
  %and.i89 = or i32 %or.i88, 2
  store i32 %and.i89, ptr %sg.1.lcssa, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %for.end58.if.end61_crit_edge, %entry.if.end61_crit_edge
  %segments.0.lcssa157 = phi i32 [ %segments.1.lcssa, %if.then60 ], [ %segments.1.lcssa, %for.end58.if.end61_crit_edge ], [ 0, %entry.if.end61_crit_edge ]
  ret i32 %segments.0.lcssa157
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_integrity_compare(ptr noundef %gd1, ptr noundef %gd2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gendisk, ptr %gd1, i32 0, i32 9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %integrity = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18
  %queue1 = getelementptr inbounds %struct.gendisk, ptr %gd2, i32 0, i32 9
  %2 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue1, align 4
  %integrity2 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %integrity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %integrity, align 4
  %tobool.not = icmp eq ptr %5, null
  %6 = ptrtoint ptr %integrity2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %integrity2, align 4
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tobool4.not = icmp ne ptr %7, null
  %spec.select = sext i1 %tobool4.not to i32
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %interval_exp = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18, i32 3
  %8 = ptrtoint ptr %interval_exp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %interval_exp, align 2
  %interval_exp11 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 18, i32 3
  %10 = ptrtoint ptr %interval_exp11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %interval_exp11, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp.not = icmp eq i8 %9, %11
  br i1 %cmp.not, label %if.end22, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv12 = zext i8 %11 to i32
  %conv = zext i8 %9 to i32
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %gd1, i32 0, i32 3
  %disk_name15 = getelementptr inbounds %struct.gendisk, ptr %gd2, i32 0, i32 3
  %shl = shl nuw i32 1, %conv
  %shl21 = shl nuw i32 1, %conv12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %disk_name, ptr noundef %disk_name15, i32 noundef %shl, i32 noundef %shl21) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %tuple_size = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18, i32 2
  %12 = ptrtoint ptr %tuple_size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tuple_size, align 1
  %tuple_size24 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 18, i32 2
  %14 = ptrtoint ptr %tuple_size24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tuple_size24, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp26.not = icmp eq i8 %13, %15
  br i1 %cmp26.not, label %if.end42, label %do.end31

do.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %conv25 = zext i8 %15 to i32
  %conv23 = zext i8 %13 to i32
  %disk_name33 = getelementptr inbounds %struct.gendisk, ptr %gd1, i32 0, i32 3
  %disk_name35 = getelementptr inbounds %struct.gendisk, ptr %gd2, i32 0, i32 3
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %disk_name33, ptr noundef %disk_name35, i32 noundef %conv23, i32 noundef %conv25) #13
  br label %cleanup

if.end42:                                         ; preds = %if.end22
  %tag_size = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18, i32 4
  %16 = ptrtoint ptr %tag_size to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tag_size, align 1
  %conv43 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool44.not = icmp eq i8 %17, 0
  br i1 %tobool44.not, label %if.end42.if.end70_crit_edge, label %land.lhs.true45

if.end42.if.end70_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

land.lhs.true45:                                  ; preds = %if.end42
  %tag_size46 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 18, i32 4
  %18 = ptrtoint ptr %tag_size46 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tag_size46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool48.not = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp54.not = icmp eq i8 %17, %19
  %or.cond = select i1 %tobool48.not, i1 true, i1 %cmp54.not
  br i1 %or.cond, label %land.lhs.true45.if.end70_crit_edge, label %do.end59

land.lhs.true45.if.end70_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.end59:                                         ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  %conv47 = zext i8 %19 to i32
  %disk_name61 = getelementptr inbounds %struct.gendisk, ptr %gd1, i32 0, i32 3
  %disk_name63 = getelementptr inbounds %struct.gendisk, ptr %gd2, i32 0, i32 3
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %disk_name61, ptr noundef %disk_name63, i32 noundef %conv43, i32 noundef %conv47) #13
  br label %cleanup

if.end70:                                         ; preds = %land.lhs.true45.if.end70_crit_edge, %if.end42.if.end70_crit_edge
  %cmp73.not = icmp eq ptr %5, %7
  br i1 %cmp73.not, label %if.end70.cleanup_crit_edge, label %do.end78

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %disk_name80 = getelementptr inbounds %struct.gendisk, ptr %gd1, i32 0, i32 3
  %disk_name82 = getelementptr inbounds %struct.gendisk, ptr %gd2, i32 0, i32 3
  %name = getelementptr inbounds %struct.blk_integrity_profile, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %name86 = getelementptr inbounds %struct.blk_integrity_profile, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %name86 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name86, align 4
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef %disk_name80, ptr noundef %disk_name82, ptr noundef %21, ptr noundef %23) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.end70.cleanup_crit_edge, %do.end59, %do.end31, %do.end, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end31 ], [ -1, %do.end59 ], [ -1, %do.end78 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end70.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @blk_integrity_merge_rq(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %req, ptr nocapture noundef readonly %next) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_flags.i, align 4
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  %cmd_flags.i46 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 3
  %3 = ptrtoint ptr %cmd_flags.i46 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd_flags.i46, align 4
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i47.not = icmp eq i32 %5, 0
  %brmerge = select i1 %tobool.i.not, i1 true, i1 %tobool.i47.not
  %tobool.i47.not.mux = select i1 %tobool.i.not, i1 %tobool.i47.not, i1 false
  br i1 %brmerge, label %entry.return_crit_edge, label %if.end15

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end15:                                         ; preds = %entry
  %bio = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %6 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bio, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_opf.i, align 8
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end15.bio_integrity.exit_crit_edge, label %if.then.i

if.end15.bio_integrity.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_integrity.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %11 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  br label %bio_integrity.exit

bio_integrity.exit:                               ; preds = %if.then.i, %if.end15.bio_integrity.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.then.i ], [ null, %if.end15.bio_integrity.exit_crit_edge ]
  %bip_flags = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 4
  %14 = ptrtoint ptr %bip_flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bip_flags, align 4
  %bio18 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 10
  %16 = ptrtoint ptr %bio18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bio18, align 8
  %bi_opf.i52 = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bi_opf.i52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_opf.i52, align 8
  %20 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i53 = icmp eq i32 %20, 0
  br i1 %tobool.not.i53, label %bio_integrity.exit.bio_integrity.exit56_crit_edge, label %if.then.i54

bio_integrity.exit.bio_integrity.exit56_crit_edge: ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_integrity.exit56

if.then.i54:                                      ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #12
  %21 = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  br label %bio_integrity.exit56

bio_integrity.exit56:                             ; preds = %if.then.i54, %bio_integrity.exit.bio_integrity.exit56_crit_edge
  %retval.0.i55 = phi ptr [ %23, %if.then.i54 ], [ null, %bio_integrity.exit.bio_integrity.exit56_crit_edge ]
  %bip_flags20 = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i55, i32 0, i32 4
  %24 = ptrtoint ptr %bip_flags20 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bip_flags20, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %25)
  %cmp22.not = icmp eq i16 %15, %25
  br i1 %cmp22.not, label %if.end25, label %bio_integrity.exit56.return_crit_edge

bio_integrity.exit56.return_crit_edge:            ; preds = %bio_integrity.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end25:                                         ; preds = %bio_integrity.exit56
  %nr_integrity_segments = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 20
  %26 = ptrtoint ptr %nr_integrity_segments to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nr_integrity_segments, align 2
  %conv26 = zext i16 %27 to i32
  %nr_integrity_segments27 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 20
  %28 = ptrtoint ptr %nr_integrity_segments27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nr_integrity_segments27, align 2
  %conv28 = zext i16 %29 to i32
  %add = add nuw nsw i32 %conv28, %conv26
  %max_integrity_segments = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 22
  %30 = ptrtoint ptr %max_integrity_segments to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_integrity_segments, align 2
  %conv29 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv29)
  %cmp30 = icmp ugt i32 %add, %conv29
  br i1 %cmp30, label %if.end25.return_crit_edge, label %if.end33

if.end25.return_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end33:                                         ; preds = %if.end25
  br i1 %tobool.not.i, label %if.end33.bio_integrity.exit.i_crit_edge, label %if.then.i.i

if.end33.bio_integrity.exit.i_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_integrity.exit.i

if.then.i.i:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %32 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 16
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  br label %bio_integrity.exit.i

bio_integrity.exit.i:                             ; preds = %if.then.i.i, %if.end33.bio_integrity.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.then.i.i ], [ null, %if.end33.bio_integrity.exit.i_crit_edge ]
  br i1 %tobool.not.i53, label %bio_integrity.exit.i.bio_integrity.exit11.i_crit_edge, label %if.then.i9.i

bio_integrity.exit.i.bio_integrity.exit11.i_crit_edge: ; preds = %bio_integrity.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_integrity.exit11.i

if.then.i9.i:                                     ; preds = %bio_integrity.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = getelementptr inbounds %struct.bio, ptr %17, i32 0, i32 16
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  br label %bio_integrity.exit11.i

bio_integrity.exit11.i:                           ; preds = %if.then.i9.i, %bio_integrity.exit.i.bio_integrity.exit11.i_crit_edge
  %retval.0.i10.i = phi ptr [ %37, %if.then.i9.i ], [ null, %bio_integrity.exit.i.bio_integrity.exit11.i_crit_edge ]
  %38 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req, align 8
  %bip_vec.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %bip_vec.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bip_vec.i, align 4
  %bip_vcnt.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %bip_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %bip_vcnt.i, align 4
  %conv.i = zext i16 %43 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %virt_boundary_mask.i.i.i = getelementptr inbounds %struct.request_queue, ptr %39, i32 0, i32 37, i32 2
  %44 = ptrtoint ptr %virt_boundary_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %virt_boundary_mask.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i12.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i12.i, label %bio_integrity.exit11.i.return_crit_edge, label %if.end.i.i

bio_integrity.exit11.i.return_crit_edge:          ; preds = %bio_integrity.exit11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i.i:                                       ; preds = %bio_integrity.exit11.i
  %bip_vec2.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i10.i, i32 0, i32 7
  %46 = ptrtoint ptr %bip_vec2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bip_vec2.i, align 4
  %bv_offset.i = getelementptr inbounds %struct.bio_vec, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bv_offset.i, align 4
  %and.i.i.i = and i32 %49, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %integrity_req_gap_back_merge.exit, label %if.end.i.i.integrity_req_gap_back_merge.exit.thread_crit_edge

if.end.i.i.integrity_req_gap_back_merge.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %integrity_req_gap_back_merge.exit.thread

integrity_req_gap_back_merge.exit:                ; preds = %if.end.i.i
  %bv_offset.i.i.i = getelementptr %struct.bio_vec, ptr %41, i32 %sub.i, i32 2
  %50 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %41, i32 %sub.i, i32 1
  %52 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bv_len.i.i.i, align 4
  %add.i.i.i = add i32 %53, %51
  %and2.i.i.i = and i32 %add.i.i.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.i.i.i.not = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.i.i.i.not, label %integrity_req_gap_back_merge.exit.return_crit_edge, label %integrity_req_gap_back_merge.exit.integrity_req_gap_back_merge.exit.thread_crit_edge

integrity_req_gap_back_merge.exit.integrity_req_gap_back_merge.exit.thread_crit_edge: ; preds = %integrity_req_gap_back_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %integrity_req_gap_back_merge.exit.thread

integrity_req_gap_back_merge.exit.return_crit_edge: ; preds = %integrity_req_gap_back_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

integrity_req_gap_back_merge.exit.thread:         ; preds = %integrity_req_gap_back_merge.exit.integrity_req_gap_back_merge.exit.thread_crit_edge, %if.end.i.i.integrity_req_gap_back_merge.exit.thread_crit_edge
  br label %return

return:                                           ; preds = %integrity_req_gap_back_merge.exit.thread, %integrity_req_gap_back_merge.exit.return_crit_edge, %bio_integrity.exit11.i.return_crit_edge, %if.end25.return_crit_edge, %bio_integrity.exit56.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %bio_integrity.exit56.return_crit_edge ], [ false, %if.end25.return_crit_edge ], [ false, %integrity_req_gap_back_merge.exit.thread ], [ true, %integrity_req_gap_back_merge.exit.return_crit_edge ], [ true, %bio_integrity.exit11.i.return_crit_edge ], [ %tobool.i47.not.mux, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_integrity_merge_bio(ptr nocapture noundef readonly %q, ptr nocapture noundef %req, ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio, align 8
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_flags.i, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %5 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bi_opf.i, align 8
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool.not.i, label %land.lhs.true.cleanup_crit_edge, label %bio_integrity.exit

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bio_integrity.exit:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %8 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %cmp3 = icmp eq ptr %10, null
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %bio_integrity.exit56

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bio_integrity.exit56:                             ; preds = %lor.lhs.false
  %11 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp10 = icmp eq ptr %13, null
  br i1 %cmp10, label %bio_integrity.exit56.cleanup_crit_edge, label %if.end13

bio_integrity.exit56.cleanup_crit_edge:           ; preds = %bio_integrity.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %bio_integrity.exit56
  %bio14 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %14 = ptrtoint ptr %bio14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bio14, align 8
  %bi_opf.i57 = getelementptr inbounds %struct.bio, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bi_opf.i57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_opf.i57, align 8
  %18 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i58 = icmp eq i32 %18, 0
  br i1 %tobool.not.i58, label %if.end13.bio_integrity.exit66_crit_edge, label %if.then.i59

if.end13.bio_integrity.exit66_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_integrity.exit66

if.then.i59:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %19 = getelementptr inbounds %struct.bio, ptr %15, i32 0, i32 16
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  br label %bio_integrity.exit66

bio_integrity.exit66:                             ; preds = %if.then.i59, %if.end13.bio_integrity.exit66_crit_edge
  %retval.0.i60 = phi ptr [ %21, %if.then.i59 ], [ null, %if.end13.bio_integrity.exit66_crit_edge ]
  %bip_flags = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i60, i32 0, i32 4
  %22 = ptrtoint ptr %bip_flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bip_flags, align 4
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %11, align 4
  %bip_flags18 = getelementptr inbounds %struct.bio_integrity_payload, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %bip_flags18 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bip_flags18, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %27)
  %cmp20.not = icmp eq i16 %23, %27
  br i1 %cmp20.not, label %if.end23, label %bio_integrity.exit66.cleanup_crit_edge

bio_integrity.exit66.cleanup_crit_edge:           ; preds = %bio_integrity.exit66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %bio_integrity.exit66
  %28 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %bio, align 8
  %call25 = tail call i32 @blk_rq_count_integrity_sg(ptr noundef %q, ptr noundef %bio)
  %29 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %bio, align 8
  %nr_integrity_segments = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 20
  %30 = ptrtoint ptr %nr_integrity_segments to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nr_integrity_segments, align 2
  %conv27 = zext i16 %31 to i32
  %add = add i32 %call25, %conv27
  %max_integrity_segments = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 22
  %32 = ptrtoint ptr %max_integrity_segments to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max_integrity_segments, align 2
  %conv28 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv28)
  %cmp29 = icmp sgt i32 %add, %conv28
  br i1 %cmp29, label %if.end23.cleanup_crit_edge, label %if.end32

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %conv36 = trunc i32 %add to i16
  %34 = ptrtoint ptr %nr_integrity_segments to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv36, ptr %nr_integrity_segments, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end23.cleanup_crit_edge, %bio_integrity.exit66.cleanup_crit_edge, %bio_integrity.exit56.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %bio_integrity.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end32 ], [ false, %bio_integrity.exit56.cleanup_crit_edge ], [ false, %bio_integrity.exit66.cleanup_crit_edge ], [ false, %if.end23.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ %cmp3, %bio_integrity.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_integrity_register(ptr nocapture noundef readonly %disk, ptr nocapture noundef readonly %template) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %integrity = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18
  %flags = getelementptr inbounds %struct.blk_integrity, ptr %template, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 4
  %4 = or i8 %3, 3
  %flags2 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18, i32 1
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %flags2, align 4
  %interval_exp = getelementptr inbounds %struct.blk_integrity, ptr %template, i32 0, i32 3
  %6 = ptrtoint ptr %interval_exp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %interval_exp, align 2
  %conv3 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %cond.false.queue_logical_block_size.exit_crit_edge, label %land.lhs.true.i

cond.false.queue_logical_block_size.exit_crit_edge: ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_logical_block_size.exit

land.lhs.true.i:                                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 37, i32 9
  %10 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 512, i32 %11
  br label %queue_logical_block_size.exit

queue_logical_block_size.exit:                    ; preds = %land.lhs.true.i, %cond.false.queue_logical_block_size.exit_crit_edge
  %retval1.0.i = phi i32 [ 512, %cond.false.queue_logical_block_size.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %12 = tail call i32 @llvm.ctlz.i32(i32 %retval1.0.i, i1 false) #10, !range !96
  %sub.i = sub nsw i32 31, %12
  br label %cond.end

cond.end:                                         ; preds = %queue_logical_block_size.exit, %entry.cond.end_crit_edge
  %cond = phi i32 [ %sub.i, %queue_logical_block_size.exit ], [ %conv3, %entry.cond.end_crit_edge ]
  %conv6 = trunc i32 %cond to i8
  %interval_exp7 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18, i32 3
  %13 = ptrtoint ptr %interval_exp7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6, ptr %interval_exp7, align 2
  %14 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %template, align 4
  %tobool8.not = icmp eq ptr %15, null
  %spec.select = select i1 %tobool8.not, ptr @nop_profile, ptr %15
  %16 = ptrtoint ptr %integrity to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.select, ptr %integrity, align 4
  %tuple_size = getelementptr inbounds %struct.blk_integrity, ptr %template, i32 0, i32 2
  %17 = ptrtoint ptr %tuple_size to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tuple_size, align 1
  %tuple_size15 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18, i32 2
  %19 = ptrtoint ptr %tuple_size15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %tuple_size15, align 1
  %tag_size = getelementptr inbounds %struct.blk_integrity, ptr %template, i32 0, i32 4
  %20 = ptrtoint ptr %tag_size to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tag_size, align 1
  %tag_size16 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18, i32 4
  %22 = ptrtoint ptr %tag_size16 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tag_size16, align 1
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_flag_set(i32 noundef 15, ptr noundef %24) #10
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queue, align 4
  %crypto_profile = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 24
  %27 = ptrtoint ptr %crypto_profile to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crypto_profile, align 4
  %tobool19.not = icmp eq ptr %28, null
  br i1 %tobool19.not, label %cond.end.if.end_crit_edge, label %do.end

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  %29 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue, align 4
  %crypto_profile22 = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %crypto_profile22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %crypto_profile22, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_integrity_unregister(ptr nocapture noundef readonly %disk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %integrity = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %integrity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %integrity, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @blk_flush_integrity() #10
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_flag_clear(i32 noundef 15, ptr noundef %5) #10
  %6 = ptrtoint ptr %integrity to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %integrity, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_flush_integrity() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_integrity_add(ptr noundef %disk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %integrity_kobj = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 21
  %part0 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %0 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 10
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %integrity_kobj, ptr noundef nonnull @integrity_ktype, ptr noundef %bd_device, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @kobject_uevent(ptr noundef %integrity_kobj, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_integrity_del(ptr noundef %disk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %integrity_kobj = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 21
  %call = tail call i32 @kobject_uevent(ptr noundef %integrity_kobj, i32 noundef 1) #10
  tail call void @kobject_del(ptr noundef %integrity_kobj) #10
  tail call void @kobject_put(ptr noundef %integrity_kobj) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @blk_integrity_nop_fn(ptr nocapture noundef readnone %iter) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @blk_integrity_nop_prepare(ptr nocapture noundef %rq) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @blk_integrity_nop_complete(ptr nocapture noundef %rq, i32 noundef %nr_bytes) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_attr_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr i8, ptr %kobj, i32 -140
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %integrity = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18
  %show = getelementptr inbounds %struct.integrity_sysfs_entry, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %show, align 4
  %call = tail call i32 %3(ptr noundef %integrity, ptr noundef %page) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_attr_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.integrity_sysfs_entry, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %queue = getelementptr i8, ptr %kobj, i32 -140
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %integrity = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 18
  %call = tail call i32 %1(ptr noundef %integrity, ptr noundef %page, i32 noundef %count) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_format_show(ptr nocapture noundef readonly %bi, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.blk_integrity_profile, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.18, ptr noundef nonnull %3)
  br label %return

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %4 = call ptr @memcpy(ptr %page, ptr @.str.19, i32 6)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_tag_size_show(ptr nocapture noundef readonly %bi, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tag_size = getelementptr inbounds %struct.blk_integrity, ptr %bi, i32 0, i32 4
  %0 = ptrtoint ptr %tag_size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tag_size, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_interval_show(ptr nocapture noundef readonly %bi, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %interval_exp = getelementptr inbounds %struct.blk_integrity, ptr %bi, i32 0, i32 3
  %0 = ptrtoint ptr %interval_exp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %interval_exp, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %cond = select i1 %tobool.not, i32 0, i32 %shl
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %cond)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_verify_show(ptr nocapture noundef readonly %bi, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.blk_integrity, ptr %bi, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = and i8 %1, 1
  %3 = zext i8 %2 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.24, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_verify_store(ptr nocapture noundef %bi, ptr noundef %page, i32 noundef returned %count) #2 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #10
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %p, align 4
  %call = call i32 @simple_strtoul(ptr noundef %page, ptr noundef nonnull %p, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %flags2 = getelementptr inbounds %struct.blk_integrity, ptr %bi, i32 0, i32 1
  %1 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags2, align 4
  %3 = and i8 %2, -2
  %masksel = zext i1 %tobool.not to i8
  %.sink = or i8 %3, %masksel
  store i8 %.sink, ptr %flags2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #10
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_generate_show(ptr nocapture noundef readonly %bi, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.blk_integrity, ptr %bi, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = lshr i8 %1, 1
  %.lobit = and i8 %2, 1
  %3 = zext i8 %.lobit to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.24, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_generate_store(ptr nocapture noundef %bi, ptr noundef %page, i32 noundef returned %count) #2 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #10
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %p, align 4
  %call = call i32 @simple_strtoul(ptr noundef %page, ptr noundef nonnull %p, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %flags2 = getelementptr inbounds %struct.blk_integrity, ptr %bi, i32 0, i32 1
  %1 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags2, align 4
  %3 = and i8 %2, -3
  %masksel = select i1 %tobool.not, i8 0, i8 2
  %.sink = or i8 %3, %masksel
  store i8 %.sink, ptr %flags2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #10
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_device_show(ptr nocapture noundef readonly %bi, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.blk_integrity, ptr %bi, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = lshr i8 %1, 2
  %.lobit = and i8 %2, 1
  %3 = zext i8 %.lobit to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__ksymtab_blk_rq_count_integrity_sg, !1, !"__ksymtab_blk_rq_count_integrity_sg", i1 false, i1 false}
!1 = !{!"../block/blk-integrity.c", i32 56, i32 1}
!2 = !{ptr @__ksymtab_blk_rq_map_integrity_sg, !3, !"__ksymtab_blk_rq_map_integrity_sg", i1 false, i1 false}
!3 = !{!"../block/blk-integrity.c", i32 108, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/blk-integrity.c", i32 133, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @blk_integrity_compare._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @blk_integrity_compare._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../block/blk-integrity.c", i32 140, i32 3}
!12 = !{ptr @blk_integrity_compare._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @blk_integrity_compare._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../block/blk-integrity.c", i32 147, i32 3}
!16 = !{ptr @blk_integrity_compare._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @blk_integrity_compare._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../block/blk-integrity.c", i32 154, i32 3}
!20 = !{ptr @blk_integrity_compare._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @blk_integrity_compare._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_blk_integrity_compare, !23, !"__ksymtab_blk_integrity_compare", i1 false, i1 false}
!23 = !{!"../block/blk-integrity.c", i32 162, i32 1}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../block/blk-integrity.c", i32 413, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @blk_integrity_register._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @blk_integrity_register._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_blk_integrity_register, !30, !"__ksymtab_blk_integrity_register", i1 false, i1 false}
!30 = !{!"../block/blk-integrity.c", i32 418, i32 1}
!31 = !{ptr @__ksymtab_blk_integrity_unregister, !32, !"__ksymtab_blk_integrity_unregister", i1 false, i1 false}
!32 = !{!"../block/blk-integrity.c", i32 439, i32 1}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../block/blk-integrity.c", i32 446, i32 34}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../block/blk-integrity.c", i32 446, i32 40}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../block/blk-integrity.c", i32 379, i32 10}
!39 = !{ptr @nop_profile, !40, !"nop_profile", i1 false, i1 false}
!40 = !{!"../block/blk-integrity.c", i32 378, i32 43}
!41 = !{ptr @integrity_ktype, !42, !"integrity_ktype", i1 false, i1 false}
!42 = !{!"../block/blk-integrity.c", i32 359, i32 25}
!43 = !{ptr @integrity_ops, !44, !"integrity_ops", i1 false, i1 false}
!44 = !{!"../block/blk-integrity.c", i32 354, i32 31}
!45 = !{ptr @integrity_groups, !46, !"integrity_groups", i1 false, i1 false}
!46 = !{!"../block/blk-integrity.c", i32 352, i32 1}
!47 = !{ptr @integrity_group, !46, !"integrity_group", i1 false, i1 false}
!48 = !{ptr @integrity_attrs, !49, !"integrity_attrs", i1 false, i1 false}
!49 = !{!"../block/blk-integrity.c", i32 343, i32 26}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../block/blk-integrity.c", i32 312, i32 20}
!52 = !{ptr @integrity_format_entry, !53, !"integrity_format_entry", i1 false, i1 false}
!53 = !{!"../block/blk-integrity.c", i32 311, i32 37}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../block/blk-integrity.c", i32 251, i32 24}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../block/blk-integrity.c", i32 253, i32 24}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../block/blk-integrity.c", i32 317, i32 20}
!60 = !{ptr @integrity_tag_size_entry, !61, !"integrity_tag_size_entry", i1 false, i1 false}
!61 = !{!"../block/blk-integrity.c", i32 316, i32 37}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../block/blk-integrity.c", i32 258, i32 23}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../block/blk-integrity.c", i32 322, i32 20}
!66 = !{ptr @integrity_interval_entry, !67, !"integrity_interval_entry", i1 false, i1 false}
!67 = !{!"../block/blk-integrity.c", i32 321, i32 37}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../block/blk-integrity.c", i32 327, i32 20}
!70 = !{ptr @integrity_verify_entry, !71, !"integrity_verify_entry", i1 false, i1 false}
!71 = !{!"../block/blk-integrity.c", i32 326, i32 37}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../block/blk-integrity.c", i32 283, i32 23}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../block/blk-integrity.c", i32 333, i32 20}
!76 = !{ptr @integrity_generate_entry, !77, !"integrity_generate_entry", i1 false, i1 false}
!77 = !{!"../block/blk-integrity.c", i32 332, i32 37}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../block/blk-integrity.c", i32 339, i32 20}
!80 = !{ptr @integrity_device_entry, !81, !"integrity_device_entry", i1 false, i1 false}
!81 = !{!"../block/blk-integrity.c", i32 338, i32 37}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.peeled.count", i32 1}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2154317175, i64 2154317667, i64 2154317212, i64 2154317268, i64 2154317302, i64 2154317326, i64 2154317367, i64 2154317388, i64 2154317416, i64 2154317450}
!95 = !{i64 2154318785, i64 2154319277, i64 2154318822, i64 2154318878, i64 2154318912, i64 2154318936, i64 2154318977, i64 2154318998, i64 2154319026, i64 2154319060}
!96 = !{i32 0, i32 33}
