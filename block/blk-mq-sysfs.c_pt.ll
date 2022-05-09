; ModuleID = '/llk/IR_all_yes/block/blk-mq-sysfs.c_pt.bc'
source_filename = "../block/blk-mq-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_hw_ctx_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.blk_mq_hw_ctx = type { %struct.anon.87, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.87 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.blk_mq_ctx = type { %struct.anon.88, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [88 x i8] }
%struct.anon.88 = type { %struct.spinlock, [3 x %struct.list_head], [60 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.blk_mq_ctxs = type { %struct.kobject, ptr }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"block/blk-mq-sysfs.c\00", [43 x i8] zeroinitializer }, align 32
@blk_mq_hw_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @blk_mq_hw_sysfs_release, ptr @blk_mq_hw_sysfs_ops, ptr null, ptr @default_hw_ctx_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@blk_mq_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @blk_mq_sysfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@blk_mq_ctx_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @blk_mq_ctx_sysfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__blk_mq_register_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mq\00", [29 x i8] zeroinitializer }, align 32
@blk_mq_hw_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @blk_mq_hw_sysfs_show, ptr @blk_mq_hw_sysfs_store }, [24 x i8] zeroinitializer }, align 32
@default_hw_ctx_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @default_hw_ctx_group, ptr null], [24 x i8] zeroinitializer }, align 32
@default_hw_ctx_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @default_hw_ctx_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@default_hw_ctx_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @blk_mq_hw_sysfs_nr_tags, ptr @blk_mq_hw_sysfs_nr_reserved_tags, ptr @blk_mq_hw_sysfs_cpus, ptr null], [16 x i8] zeroinitializer }, align 32
@blk_mq_hw_sysfs_nr_tags = internal global { %struct.blk_mq_hw_ctx_sysfs_entry, [36 x i8] } { %struct.blk_mq_hw_ctx_sysfs_entry { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @blk_mq_hw_sysfs_nr_tags_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@blk_mq_hw_sysfs_nr_reserved_tags = internal global { %struct.blk_mq_hw_ctx_sysfs_entry, [36 x i8] } { %struct.blk_mq_hw_ctx_sysfs_entry { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @blk_mq_hw_sysfs_nr_reserved_tags_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@blk_mq_hw_sysfs_cpus = internal global { %struct.blk_mq_hw_ctx_sysfs_entry, [36 x i8] } { %struct.blk_mq_hw_ctx_sysfs_entry { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @blk_mq_hw_sysfs_cpus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nr_tags\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nr_reserved_tags\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu_list\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c", %u\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpu%u\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 211, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"blk_mq_hw_ktype\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 164, i32 25 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"blk_mq_ktype\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 156, i32 25 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"blk_mq_ctx_ktype\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 160, i32 25 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 263, i32 57 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 263, i32 63 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"blk_mq_hw_sysfs_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 151, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"default_hw_ctx_groups\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"default_hw_ctx_group\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 149, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"default_hw_ctx_attrs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 143, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant [24 x i8] c"blk_mq_hw_sysfs_nr_tags\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 130, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant [33 x i8] c"blk_mq_hw_sysfs_nr_reserved_tags\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 134, i32 41 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"blk_mq_hw_sysfs_cpus\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 138, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 131, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 98, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 135, i32 19 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 139, i32 19 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 115, i32 43 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 117, i32 43 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 126, i32 45 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [24 x i8] c"../block/blk-mq-sysfs.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 198, i32 46 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @blk_mq_hw_ktype, ptr @blk_mq_ktype, ptr @blk_mq_ctx_ktype, ptr @.str.1, ptr @.str.2, ptr @blk_mq_hw_sysfs_ops, ptr @default_hw_ctx_groups, ptr @default_hw_ctx_group, ptr @default_hw_ctx_attrs, ptr @blk_mq_hw_sysfs_nr_tags, ptr @blk_mq_hw_sysfs_nr_reserved_tags, ptr @blk_mq_hw_sysfs_cpus, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_hw_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_ctx_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_hw_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_hw_ctx_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_hw_ctx_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_hw_ctx_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_hw_sysfs_nr_tags to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_hw_sysfs_nr_reserved_tags to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_hw_sysfs_cpus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_unregister_dev(ptr noundef %dev, ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 52, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !52

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 9
  %1 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2439.not = icmp eq i32 %2, 0
  br i1 %cmp2439.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %blk_mq_unregister_hctx.exit.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %blk_mq_unregister_hctx.exit.for.body_crit_edge ]
  %3 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.040
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %nr_ctx.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nr_ctx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i, label %for.body.blk_mq_unregister_hctx.exit_crit_edge, label %for.body.lr.ph.i

for.body.blk_mq_unregister_hctx.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_mq_unregister_hctx.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %ctxs.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %ctxs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctxs.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %i.013.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %kobj.i = getelementptr inbounds %struct.blk_mq_ctx, ptr %12, i32 0, i32 6
  tail call void @kobject_del(ptr noundef %kobj.i) #5
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %13 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nr_ctx.i, align 2
  %conv.i = zext i16 %14 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %kobj4.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 28
  tail call void @kobject_del(ptr noundef %kobj4.i) #5
  br label %blk_mq_unregister_hctx.exit

blk_mq_unregister_hctx.exit:                      ; preds = %for.end.i, %for.body.blk_mq_unregister_hctx.exit_crit_edge
  %inc = add nuw i32 %i.040, 1
  %15 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_hw_queues, align 8
  %cmp24 = icmp ult i32 %inc, %16
  br i1 %cmp24, label %blk_mq_unregister_hctx.exit.for.body_crit_edge, label %blk_mq_unregister_hctx.exit.for.end_crit_edge

blk_mq_unregister_hctx.exit.for.end_crit_edge:    ; preds = %blk_mq_unregister_hctx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

blk_mq_unregister_hctx.exit.for.body_crit_edge:   ; preds = %blk_mq_unregister_hctx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %blk_mq_unregister_hctx.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %mq_kobj = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 17
  %17 = ptrtoint ptr %mq_kobj to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mq_kobj, align 4
  %call29 = tail call i32 @kobject_uevent(ptr noundef %18, i32 noundef 1) #5
  %19 = ptrtoint ptr %mq_kobj to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mq_kobj, align 4
  tail call void @kobject_del(ptr noundef %20) #5
  tail call void @kobject_put(ptr noundef %dev) #5
  %mq_sysfs_init_done = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 67
  %21 = ptrtoint ptr %mq_sysfs_init_done to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %mq_sysfs_init_done, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_hctx_kobj_init(ptr noundef %hctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 28
  tail call void @kobject_init(ptr noundef %kobj, ptr noundef nonnull @blk_mq_hw_ktype) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_sysfs_deinit(ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %0)
  %cmp6 = icmp ult i32 %call5, %0
  br i1 %cmp6, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %queue_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call7 = phi i32 [ %call5, %do.body.lr.ph ], [ %call, %do.body.do.body_crit_edge ]
  %1 = ptrtoint ptr %queue_ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %queue_ctx, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %kobj = getelementptr inbounds %struct.blk_mq_ctx, ptr %6, i32 0, i32 6
  tail call void @kobject_put(ptr noundef %kobj) #5
  %call = tail call i32 @cpumask_next(i32 noundef %call7, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mq_kobj = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 17
  %8 = ptrtoint ptr %mq_kobj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mq_kobj, align 4
  tail call void @kobject_put(ptr noundef %9) #5
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_sysfs_init(ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mq_kobj = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 17
  %0 = ptrtoint ptr %mq_kobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq_kobj, align 4
  tail call void @kobject_init(ptr noundef %1, ptr noundef nonnull @blk_mq_ktype) #5
  %call8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %2)
  %cmp9 = icmp ult i32 %call8, %2
  br i1 %cmp9, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %queue_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call10 = phi i32 [ %call8, %do.body.lr.ph ], [ %call, %do.body.do.body_crit_edge ]
  %3 = ptrtoint ptr %queue_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue_ctx, align 4
  %5 = ptrtoint ptr %4 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %5
  %8 = inttoptr i32 %add to ptr
  %9 = ptrtoint ptr %mq_kobj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mq_kobj, align 4
  %call3 = tail call ptr @kobject_get(ptr noundef %10) #5
  %kobj = getelementptr inbounds %struct.blk_mq_ctx, ptr %8, i32 0, i32 6
  tail call void @kobject_init(ptr noundef %kobj, ptr noundef nonnull @blk_mq_ctx_ktype) #5
  %call = tail call i32 @cpumask_next(i32 noundef %call10, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %11
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__blk_mq_register_dev(ptr noundef %dev, ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 16, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b121 = load i1, ptr @__blk_mq_register_dev.__already_done, align 1
  br i1 %.b121, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !53

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @__blk_mq_register_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 260, i32 noundef 9, ptr noundef null) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool39.not = icmp eq i32 %2, 0
  br i1 %tobool39.not, label %if.end29.if.end65_crit_edge, label %land.rhs40

if.end29.if.end65_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

land.rhs40:                                       ; preds = %if.end29
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 52, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end59, label %land.rhs40.if.end65_crit_edge, !prof !52

land.rhs40.if.end65_crit_edge:                    ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

do.end59:                                         ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %land.rhs40.if.end65_crit_edge, %if.end29.if.end65_crit_edge
  %mq_kobj = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 17
  %3 = ptrtoint ptr %mq_kobj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mq_kobj, align 4
  %call76 = tail call ptr @kobject_get(ptr noundef %dev) #5
  %call77 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %4, ptr noundef %call76, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.end65.cleanup_crit_edge, label %if.end80

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end80:                                         ; preds = %if.end65
  %5 = ptrtoint ptr %mq_kobj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mq_kobj, align 4
  %call82 = tail call i32 @kobject_uevent(ptr noundef %6, i32 noundef 0) #5
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 9
  %7 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp83146.not = icmp eq i32 %8, 0
  br i1 %cmp83146.not, label %if.end80.for.end_crit_edge, label %land.rhs84.lr.ph

if.end80.for.end_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.rhs84.lr.ph:                                 ; preds = %if.end80
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %land.rhs84

land.rhs84:                                       ; preds = %for.inc.land.rhs84_crit_edge, %land.rhs84.lr.ph
  %i.0147 = phi i32 [ 0, %land.rhs84.lr.ph ], [ %inc, %for.inc.land.rhs84_crit_edge ]
  %9 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.0147
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %nr_ctx.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nr_ctx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %land.rhs84.for.inc_crit_edge, label %if.end.i

land.rhs84.for.inc_crit_edge:                     ; preds = %land.rhs84
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i:                                         ; preds = %land.rhs84
  %queue.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue.i, align 8
  %kobj.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 28
  %mq_kobj.i = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %mq_kobj.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mq_kobj.i, align 4
  %queue_num.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 24
  %19 = ptrtoint ptr %queue_num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %queue_num.i, align 4
  %call.i122 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj.i, ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool1.not.i = icmp eq i32 %call.i122, 0
  br i1 %tobool1.not.i, label %for.cond.preheader.i, label %if.end.i.blk_mq_register_hctx.exit_crit_edge

if.end.i.blk_mq_register_hctx.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_mq_register_hctx.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %ctxs.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 15
  %21 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nr_ctx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp29.not.i = icmp eq i16 %22, 0
  br i1 %cmp29.not.i, label %for.cond.preheader.i.for.inc_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.inc_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %23 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nr_ctx.i, align 2
  %conv.i = zext i16 %24 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.inc_crit_edge

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %ctxs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctxs.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %26, i32 %i.030.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %kobj7.i = getelementptr inbounds %struct.blk_mq_ctx, ptr %28, i32 0, i32 6
  %cpu.i = getelementptr inbounds %struct.blk_mq_ctx, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i, align 128
  %call9.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj7.i, ptr noundef %kobj.i, ptr noundef nonnull @.str.10, i32 noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %for.cond.i, label %for.body.i.blk_mq_register_hctx.exit_crit_edge

for.body.i.blk_mq_register_hctx.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_mq_register_hctx.exit

blk_mq_register_hctx.exit:                        ; preds = %for.body.i.blk_mq_register_hctx.exit_crit_edge, %if.end.i.blk_mq_register_hctx.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i, %for.body.i.blk_mq_register_hctx.exit_crit_edge ], [ %call.i122, %if.end.i.blk_mq_register_hctx.exit_crit_edge ]
  %dec149 = add i32 %i.0147, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec149)
  %cmp92150 = icmp sgt i32 %dec149, -1
  br i1 %cmp92150, label %blk_mq_register_hctx.exit.while.body_crit_edge, label %blk_mq_register_hctx.exit.while.end_crit_edge

blk_mq_register_hctx.exit.while.end_crit_edge:    ; preds = %blk_mq_register_hctx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

blk_mq_register_hctx.exit.while.body_crit_edge:   ; preds = %blk_mq_register_hctx.exit
  br label %while.body

for.inc:                                          ; preds = %for.cond.i.for.inc_crit_edge, %for.cond.preheader.i.for.inc_crit_edge, %land.rhs84.for.inc_crit_edge
  %inc = add nuw i32 %i.0147, 1
  %31 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_hw_queues, align 8
  %cmp83 = icmp ult i32 %inc, %32
  br i1 %cmp83, label %for.inc.land.rhs84_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.land.rhs84_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs84

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end80.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call77, %if.end80.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %mq_sysfs_init_done = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 67
  %33 = ptrtoint ptr %mq_sysfs_init_done to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %mq_sysfs_init_done, align 4
  br label %cleanup

while.body:                                       ; preds = %blk_mq_unregister_hctx.exit.while.body_crit_edge, %blk_mq_register_hctx.exit.while.body_crit_edge
  %dec151 = phi i32 [ %dec, %blk_mq_unregister_hctx.exit.while.body_crit_edge ], [ %dec149, %blk_mq_register_hctx.exit.while.body_crit_edge ]
  %34 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx94 = getelementptr ptr, ptr %35, i32 %dec151
  %36 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx94, align 4
  %nr_ctx.i123 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %nr_ctx.i123 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nr_ctx.i123, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i124 = icmp eq i16 %39, 0
  br i1 %tobool.not.i124, label %while.body.blk_mq_unregister_hctx.exit_crit_edge, label %for.body.lr.ph.i

while.body.blk_mq_unregister_hctx.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_mq_unregister_hctx.exit

for.body.lr.ph.i:                                 ; preds = %while.body
  %ctxs.i126 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %37, i32 0, i32 15
  br label %for.body.i132

for.body.i132:                                    ; preds = %for.body.i132.for.body.i132_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i129, %for.body.i132.for.body.i132_crit_edge ]
  %40 = ptrtoint ptr %ctxs.i126 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctxs.i126, align 8
  %arrayidx.i127 = getelementptr ptr, ptr %41, i32 %i.013.i
  %42 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i127, align 4
  %kobj.i128 = getelementptr inbounds %struct.blk_mq_ctx, ptr %43, i32 0, i32 6
  tail call void @kobject_del(ptr noundef %kobj.i128) #5
  %inc.i129 = add nuw nsw i32 %i.013.i, 1
  %44 = ptrtoint ptr %nr_ctx.i123 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %nr_ctx.i123, align 2
  %conv.i130 = zext i16 %45 to i32
  %cmp.i131 = icmp ult i32 %inc.i129, %conv.i130
  br i1 %cmp.i131, label %for.body.i132.for.body.i132_crit_edge, label %for.end.i

for.body.i132.for.body.i132_crit_edge:            ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i132

for.end.i:                                        ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #7
  %kobj4.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %37, i32 0, i32 28
  tail call void @kobject_del(ptr noundef %kobj4.i) #5
  br label %blk_mq_unregister_hctx.exit

blk_mq_unregister_hctx.exit:                      ; preds = %for.end.i, %while.body.blk_mq_unregister_hctx.exit_crit_edge
  %dec = add i32 %dec151, -1
  %cmp92 = icmp sgt i32 %dec, -1
  br i1 %cmp92, label %blk_mq_unregister_hctx.exit.while.body_crit_edge, label %blk_mq_unregister_hctx.exit.while.end_crit_edge

blk_mq_unregister_hctx.exit.while.end_crit_edge:  ; preds = %blk_mq_unregister_hctx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

blk_mq_unregister_hctx.exit.while.body_crit_edge: ; preds = %blk_mq_unregister_hctx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %blk_mq_unregister_hctx.exit.while.end_crit_edge, %blk_mq_register_hctx.exit.while.end_crit_edge
  %46 = ptrtoint ptr %mq_kobj to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mq_kobj, align 4
  %call96 = tail call i32 @kobject_uevent(ptr noundef %47, i32 noundef 1) #5
  %48 = ptrtoint ptr %mq_kobj to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mq_kobj, align 4
  tail call void @kobject_del(ptr noundef %49) #5
  tail call void @kobject_put(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end, %if.end65.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %while.end ], [ %call77, %if.end65.cleanup_crit_edge ], [ %ret.0.lcssa, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_sysfs_unregister(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 52
  tail call void @mutex_lock_nested(ptr noundef %sysfs_dir_lock, i32 noundef 0) #5
  %mq_sysfs_init_done = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 67
  %0 = ptrtoint ptr %mq_sysfs_init_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mq_sysfs_init_done, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %for.cond.preheader

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

for.cond.preheader:                               ; preds = %entry
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 9
  %2 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %for.cond.preheader.unlock_crit_edge, label %for.body.lr.ph

for.cond.preheader.unlock_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %blk_mq_unregister_hctx.exit.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %blk_mq_unregister_hctx.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.010
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %nr_ctx.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nr_ctx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %for.body.blk_mq_unregister_hctx.exit_crit_edge, label %for.body.lr.ph.i

for.body.blk_mq_unregister_hctx.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_mq_unregister_hctx.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %ctxs.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %ctxs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctxs.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %i.013.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %kobj.i = getelementptr inbounds %struct.blk_mq_ctx, ptr %13, i32 0, i32 6
  tail call void @kobject_del(ptr noundef %kobj.i) #5
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %14 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nr_ctx.i, align 2
  %conv.i = zext i16 %15 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %kobj4.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 28
  tail call void @kobject_del(ptr noundef %kobj4.i) #5
  br label %blk_mq_unregister_hctx.exit

blk_mq_unregister_hctx.exit:                      ; preds = %for.end.i, %for.body.blk_mq_unregister_hctx.exit_crit_edge
  %inc = add nuw i32 %i.010, 1
  %16 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %blk_mq_unregister_hctx.exit.for.body_crit_edge, label %blk_mq_unregister_hctx.exit.unlock_crit_edge

blk_mq_unregister_hctx.exit.unlock_crit_edge:     ; preds = %blk_mq_unregister_hctx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

blk_mq_unregister_hctx.exit.for.body_crit_edge:   ; preds = %blk_mq_unregister_hctx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

unlock:                                           ; preds = %blk_mq_unregister_hctx.exit.unlock_crit_edge, %for.cond.preheader.unlock_crit_edge, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %sysfs_dir_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_mq_sysfs_register(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sysfs_dir_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 52
  tail call void @mutex_lock_nested(ptr noundef %sysfs_dir_lock, i32 noundef 0) #5
  %mq_sysfs_init_done = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 67
  %0 = ptrtoint ptr %mq_sysfs_init_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mq_sysfs_init_done, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %for.cond.preheader

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

for.cond.preheader:                               ; preds = %entry
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 9
  %2 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %for.cond.preheader.unlock_crit_edge, label %for.body.lr.ph

for.cond.preheader.unlock_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.018
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %nr_ctx.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nr_ctx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %queue.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue.i, align 8
  %kobj.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 28
  %mq_kobj.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %mq_kobj.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mq_kobj.i, align 4
  %queue_num.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 24
  %14 = ptrtoint ptr %queue_num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queue_num.i, align 4
  %call.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj.i, ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %for.cond.preheader.i, label %if.end.i.unlock_crit_edge

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

for.cond.preheader.i:                             ; preds = %if.end.i
  %ctxs.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 15
  %16 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nr_ctx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp29.not.i = icmp eq i16 %17, 0
  br i1 %cmp29.not.i, label %for.cond.preheader.i.for.inc_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.inc_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %18 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nr_ctx.i, align 2
  %conv.i = zext i16 %19 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.inc_crit_edge

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %ctxs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctxs.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %i.030.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %kobj7.i = getelementptr inbounds %struct.blk_mq_ctx, ptr %23, i32 0, i32 6
  %cpu.i = getelementptr inbounds %struct.blk_mq_ctx, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 128
  %call9.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj7.i, ptr noundef %kobj.i, ptr noundef nonnull @.str.10, i32 noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %for.cond.i, label %for.body.i.unlock_crit_edge

for.body.i.unlock_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

for.inc:                                          ; preds = %for.cond.i.for.inc_crit_edge, %for.cond.preheader.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.018, 1
  %26 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.unlock_crit_edge

for.inc.unlock_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

unlock:                                           ; preds = %for.inc.unlock_crit_edge, %for.body.i.unlock_crit_edge, %if.end.i.unlock_crit_edge, %for.cond.preheader.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.1 = phi i32 [ 0, %entry.unlock_crit_edge ], [ 0, %for.cond.preheader.unlock_crit_edge ], [ %call9.i, %for.body.i.unlock_crit_edge ], [ 0, %for.inc.unlock_crit_edge ], [ %call.i, %if.end.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sysfs_dir_lock) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_mq_hw_sysfs_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -412
  %fq = getelementptr i8, ptr %kobj, i32 -160
  %0 = ptrtoint ptr %fq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fq, align 4
  tail call void @blk_free_flush_queue(ptr noundef %1) #5
  %alloc_hint.i = getelementptr i8, ptr %kobj, i32 -132
  %2 = ptrtoint ptr %alloc_hint.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_hint.i, align 4
  tail call void @free_percpu(ptr noundef %3) #5
  %map.i = getelementptr i8, ptr %kobj, i32 -136
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 4
  tail call void @kfree(ptr noundef %5) #5
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %map.i, align 4
  %cpumask = getelementptr i8, ptr %kobj, i32 -184
  %7 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpumask, align 4
  tail call void @free_cpumask_var(ptr noundef %8) #5
  %ctxs = getelementptr i8, ptr %kobj, i32 -116
  %9 = ptrtoint ptr %ctxs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctxs, align 8
  tail call void @kfree(ptr noundef %10) #5
  tail call void @kfree(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_free_flush_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_mq_hw_sysfs_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.blk_mq_hw_ctx_sysfs_entry, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %queue = getelementptr i8, ptr %kobj, i32 -164
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 8
  %add.ptr4 = getelementptr i8, ptr %kobj, i32 -412
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #5
  %4 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %show, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr4, ptr noundef %page) #5
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_mq_hw_sysfs_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %page, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.blk_mq_hw_ctx_sysfs_entry, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %queue = getelementptr i8, ptr %kobj, i32 -164
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 8
  %add.ptr4 = getelementptr i8, ptr %kobj, i32 -412
  %sysfs_lock = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %sysfs_lock, i32 noundef 0) #5
  %4 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %store, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr4, ptr noundef %page, i32 noundef %length) #5
  tail call void @mutex_unlock(ptr noundef %sysfs_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_mq_hw_sysfs_nr_tags_show(ptr nocapture noundef readonly %hctx, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 19
  %0 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tags, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_mq_hw_sysfs_nr_reserved_tags_show(ptr nocapture noundef readonly %hctx, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 19
  %0 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tags, align 16
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr_reserved_tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_reserved_tags, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_mq_hw_sysfs_cpus_show(ptr nocapture noundef readonly %hctx, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cpumask = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 2
  %0 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpumask, align 4
  %call28 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %2)
  %cmp29 = icmp ult i32 %call28, %2
  br i1 %cmp29, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add = add i32 %call4, %pos.031
  %3 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpumask, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call32, ptr noundef %4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %call32 = phi i32 [ %call, %for.cond.for.body_crit_edge ], [ %call28, %entry.for.body_crit_edge ]
  %pos.031 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tobool.not30 = phi ptr [ @.str.8, %for.cond.for.body_crit_edge ], [ @.str.7, %entry.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %page, i32 %pos.031
  %sub3 = sub i32 4095, %pos.031
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull %tobool.not30, i32 noundef %call32)
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %sub3)
  %cmp6.not = icmp ult i32 %call4, %sub3
  br i1 %cmp6.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pos.031, %for.body.for.end_crit_edge ], [ %add, %for.cond.for.end_crit_edge ]
  %add.ptr9 = getelementptr i8, ptr %page, i32 %pos.0.lcssa
  %sub10 = sub i32 4096, %pos.0.lcssa
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.9)
  %add12 = add i32 %call11, %pos.0.lcssa
  ret i32 %add12
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_mq_sysfs_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_ctx = getelementptr inbounds %struct.blk_mq_ctxs, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %queue_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue_ctx, align 4
  tail call void @free_percpu(ptr noundef %1) #5
  tail call void @kfree(ptr noundef %kobj) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_mq_ctx_sysfs_release(ptr nocapture noundef readonly %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctxs = getelementptr i8, ptr %kobj, i32 -4
  %0 = ptrtoint ptr %ctxs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctxs, align 4
  tail call void @kobject_put(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/blk-mq-sysfs.c", i32 211, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../block/blk-mq-sysfs.c", i32 260, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/blk-mq-sysfs.c", i32 263, i32 57}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/blk-mq-sysfs.c", i32 263, i32 63}
!8 = !{ptr @blk_mq_hw_ktype, !9, !"blk_mq_hw_ktype", i1 false, i1 false}
!9 = !{!"../block/blk-mq-sysfs.c", i32 164, i32 25}
!10 = !{ptr @blk_mq_hw_sysfs_ops, !11, !"blk_mq_hw_sysfs_ops", i1 false, i1 false}
!11 = !{!"../block/blk-mq-sysfs.c", i32 151, i32 31}
!12 = !{ptr @default_hw_ctx_groups, !13, !"default_hw_ctx_groups", i1 false, i1 false}
!13 = !{!"../block/blk-mq-sysfs.c", i32 149, i32 1}
!14 = !{ptr @default_hw_ctx_group, !13, !"default_hw_ctx_group", i1 false, i1 false}
!15 = !{ptr @default_hw_ctx_attrs, !16, !"default_hw_ctx_attrs", i1 false, i1 false}
!16 = !{!"../block/blk-mq-sysfs.c", i32 143, i32 26}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../block/blk-mq-sysfs.c", i32 131, i32 19}
!19 = !{ptr @blk_mq_hw_sysfs_nr_tags, !20, !"blk_mq_hw_sysfs_nr_tags", i1 false, i1 false}
!20 = !{!"../block/blk-mq-sysfs.c", i32 130, i32 41}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../block/blk-mq-sysfs.c", i32 98, i32 23}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../block/blk-mq-sysfs.c", i32 135, i32 19}
!25 = !{ptr @blk_mq_hw_sysfs_nr_reserved_tags, !26, !"blk_mq_hw_sysfs_nr_reserved_tags", i1 false, i1 false}
!26 = !{!"../block/blk-mq-sysfs.c", i32 134, i32 41}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../block/blk-mq-sysfs.c", i32 139, i32 19}
!29 = !{ptr @blk_mq_hw_sysfs_cpus, !30, !"blk_mq_hw_sysfs_cpus", i1 false, i1 false}
!30 = !{!"../block/blk-mq-sysfs.c", i32 138, i32 41}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../block/blk-mq-sysfs.c", i32 115, i32 43}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../block/blk-mq-sysfs.c", i32 117, i32 43}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../block/blk-mq-sysfs.c", i32 126, i32 45}
!37 = !{ptr @blk_mq_ktype, !38, !"blk_mq_ktype", i1 false, i1 false}
!38 = !{!"../block/blk-mq-sysfs.c", i32 156, i32 25}
!39 = !{ptr @blk_mq_ctx_ktype, !40, !"blk_mq_ctx_ktype", i1 false, i1 false}
!40 = !{!"../block/blk-mq-sysfs.c", i32 160, i32 25}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../block/blk-mq-sysfs.c", i32 198, i32 46}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i8 0, i8 2}
