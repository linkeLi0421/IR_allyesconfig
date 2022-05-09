; ModuleID = '/llk/IR_all_yes/fs/erofs/sysfs.c_pt.bc'
source_filename = "../fs/erofs/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.erofs_attr = type { %struct.attribute, i16, i32, i32 }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.erofs_sb_info = type { %struct.erofs_mount_opts, %struct.list_head, %struct.mutex, %struct.xarray, i32, i16, ptr, %struct.erofs_sb_lz4_info, ptr, ptr, i64, i64, i32, i32, i32, i16, i8, i32, i32, i64, i64, i64, [16 x i8], [16 x i8], i32, i32, %struct.kobject, %struct.completion }
%struct.erofs_mount_opts = type { i8, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.erofs_sb_lz4_info = type { i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@erofs_root = internal global { %struct.kset, [32 x i8] } { %struct.kset { %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, %struct.kobject { ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @erofs_ktype, ptr null, %struct.kref zeroinitializer, %struct.delayed_work zeroinitializer, i8 0 }, ptr null }, [32 x i8] zeroinitializer }, align 32
@erofs_sb_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @erofs_sb_release, ptr @erofs_attr_ops, ptr null, ptr @erofs_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"erofs\00", [26 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@erofs_feat = internal global { %struct.kobject, [56 x i8] } { %struct.kobject { ptr null, %struct.list_head zeroinitializer, ptr null, ptr @erofs_root, ptr null, ptr null, %struct.kref zeroinitializer, %struct.delayed_work zeroinitializer, i8 0 }, [56 x i8] zeroinitializer }, align 32
@erofs_feat_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @erofs_attr_ops, ptr null, ptr @erofs_feat_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@erofs_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @erofs_attr_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@erofs_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @erofs_attr_show, ptr @erofs_attr_store }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"supported\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sync_decompress\00", [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@erofs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @erofs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@erofs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @erofs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@erofs_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @erofs_attr_sync_decompress, ptr null], [24 x i8] zeroinitializer }, align 32
@erofs_attr_sync_decompress = internal global { %struct.erofs_attr, [32 x i8] } { %struct.erofs_attr { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 1, i32 1, i32 4 }, [32 x i8] zeroinitializer }, align 32
@erofs_feat_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @erofs_feat_group, ptr null], [24 x i8] zeroinitializer }, align 32
@erofs_feat_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @erofs_feat_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@erofs_feat_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @erofs_attr_zero_padding, ptr @erofs_attr_compr_cfgs, ptr @erofs_attr_big_pcluster, ptr @erofs_attr_chunked_file, ptr @erofs_attr_device_table, ptr @erofs_attr_compr_head2, ptr @erofs_attr_sb_chksum, ptr @erofs_attr_ztailpacking, ptr null], [60 x i8] zeroinitializer }, align 32
@erofs_attr_zero_padding = internal global { %struct.erofs_attr, [32 x i8] } { %struct.erofs_attr { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@erofs_attr_compr_cfgs = internal global { %struct.erofs_attr, [32 x i8] } { %struct.erofs_attr { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@erofs_attr_big_pcluster = internal global { %struct.erofs_attr, [32 x i8] } { %struct.erofs_attr { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@erofs_attr_chunked_file = internal global { %struct.erofs_attr, [32 x i8] } { %struct.erofs_attr { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@erofs_attr_device_table = internal global { %struct.erofs_attr, [32 x i8] } { %struct.erofs_attr { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@erofs_attr_compr_head2 = internal global { %struct.erofs_attr, [32 x i8] } { %struct.erofs_attr { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@erofs_attr_sb_chksum = internal global { %struct.erofs_attr, [32 x i8] } { %struct.erofs_attr { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@erofs_attr_ztailpacking = internal global { %struct.erofs_attr, [32 x i8] } { %struct.erofs_attr { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i16 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zero_padding\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compr_cfgs\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"big_pcluster\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chunked_file\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_table\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"compr_head2\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sb_chksum\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ztailpacking\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"erofs_root\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 188, i32 20 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"erofs_sb_ktype\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 178, i32 25 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 209, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 233, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"erofs_feat\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 197, i32 23 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"erofs_feat_ktype\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 192, i32 25 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 240, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"erofs_ktype\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 184, i32 25 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"erofs_attr_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 173, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 113, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 117, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 121, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 146, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 87, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"erofs_groups\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"erofs_group\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 68, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"erofs_attrs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 62, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"erofs_attr_sync_decompress\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 59, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"erofs_feat_groups\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"erofs_feat_group\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 91, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"erofs_feat_attrs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 80, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant [24 x i8] c"erofs_attr_zero_padding\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"erofs_attr_compr_cfgs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"erofs_attr_big_pcluster\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"erofs_attr_chunked_file\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [24 x i8] c"erofs_attr_device_table\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [23 x i8] c"erofs_attr_compr_head2\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [21 x i8] c"erofs_attr_sb_chksum\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [24 x i8] c"erofs_attr_ztailpacking\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 71, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 72, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 73, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 74, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 75, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 76, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 77, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [20 x i8] c"../fs/erofs/sysfs.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 78, i32 1 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @erofs_root, ptr @erofs_sb_ktype, ptr @.str, ptr @.str.1, ptr @erofs_feat, ptr @erofs_feat_ktype, ptr @.str.2, ptr @erofs_ktype, ptr @erofs_attr_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @init_completion.__key, ptr @.str.7, ptr @erofs_groups, ptr @erofs_group, ptr @erofs_attrs, ptr @erofs_attr_sync_decompress, ptr @erofs_feat_groups, ptr @erofs_feat_group, ptr @erofs_feat_attrs, ptr @erofs_attr_zero_padding, ptr @erofs_attr_compr_cfgs, ptr @erofs_attr_big_pcluster, ptr @erofs_attr_chunked_file, ptr @erofs_attr_device_table, ptr @erofs_attr_compr_head2, ptr @erofs_attr_sb_chksum, ptr @erofs_attr_ztailpacking, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_root to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_sb_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_feat to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_feat_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_attr_sync_decompress to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_feat_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_feat_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_feat_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_attr_zero_padding to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_attr_compr_cfgs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_attr_big_pcluster to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_attr_chunked_file to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_attr_device_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_attr_compr_head2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_attr_sb_chksum to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_attr_ztailpacking to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_register_sysfs(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_kobj = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 26
  %kset = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 26, i32 3
  %2 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @erofs_root, ptr %kset, align 8
  %s_kobj_unregister = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %s_kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %s_kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 27, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #5
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %s_kobj, ptr noundef nonnull @erofs_sb_ktype, ptr noundef null, ptr noundef nonnull @.str, ptr noundef %s_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %put_sb_kobj

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

put_sb_kobj:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kobject_put(ptr noundef %s_kobj) #5
  tail call void @wait_for_completion(ptr noundef %s_kobj_unregister) #5
  br label %cleanup

cleanup:                                          ; preds = %put_sb_kobj, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_unregister_sysfs(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_kobj = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 26
  tail call void @kobject_del(ptr noundef %s_kobj) #5
  tail call void @kobject_put(ptr noundef %s_kobj) #5
  %s_kobj_unregister = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 27
  tail call void @wait_for_completion(ptr noundef %s_kobj_unregister) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_init_sysfs() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef getelementptr inbounds (%struct.kset, ptr @erofs_root, i32 0, i32 2), ptr noundef nonnull @.str.1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  store ptr %0, ptr getelementptr inbounds (%struct.kset, ptr @erofs_root, i32 0, i32 2, i32 2), align 4
  %call1 = tail call i32 @kset_register(ptr noundef nonnull @erofs_root) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull @erofs_feat, ptr noundef nonnull @erofs_feat_ktype, ptr noundef null, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %feat_err

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

feat_err:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kobject_put(ptr noundef nonnull @erofs_feat) #5
  tail call void @kset_unregister(ptr noundef nonnull @erofs_root) #5
  br label %cleanup

cleanup:                                          ; preds = %feat_err, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %feat_err ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kset_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_exit_sysfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kobject_put(ptr noundef nonnull @erofs_feat) #5
  tail call void @kset_unregister(ptr noundef nonnull @erofs_root) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_attr_show(ptr noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -296
  %struct_type = getelementptr inbounds %struct.erofs_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %struct_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %struct_type, align 4
  %offset = getelementptr inbounds %struct.erofs_attr, ptr %attr, i32 0, i32 3
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.__struct_ptr.exit_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then2.i
  ]

entry.__struct_ptr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__struct_ptr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %3
  br label %__struct_ptr.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr3.i = getelementptr i8, ptr %add.ptr, i32 %3
  br label %__struct_ptr.exit

__struct_ptr.exit:                                ; preds = %if.then2.i, %if.then.i, %entry.__struct_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr3.i, %if.then2.i ], [ null, %entry.__struct_ptr.exit_crit_edge ]
  %attr_id = getelementptr inbounds %struct.erofs_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %attr_id, align 4
  %conv = sext i16 %6 to i32
  %7 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %conv, label %__struct_ptr.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
  ]

__struct_ptr.exit.cleanup_crit_edge:              ; preds = %__struct_ptr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %__struct_ptr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3) #5
  br label %cleanup

sw.bb5:                                           ; preds = %__struct_ptr.exit
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %sw.bb5.cleanup_crit_edge, label %if.end

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval.0.i, align 4
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.4, i32 noundef %9) #5
  br label %cleanup

sw.bb7:                                           ; preds = %__struct_ptr.exit
  %tobool8.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool8.not, label %sw.bb7.cleanup_crit_edge, label %if.end10

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %retval.0.i, align 1, !range !74
  %12 = zext i8 %11 to i32
  %call13 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %12) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %sw.bb7.cleanup_crit_edge, %if.end, %sw.bb5.cleanup_crit_edge, %sw.bb, %__struct_ptr.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ %call6, %if.end ], [ %call4, %sw.bb ], [ 0, %sw.bb5.cleanup_crit_edge ], [ 0, %sw.bb7.cleanup_crit_edge ], [ 0, %__struct_ptr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_attr_store(ptr noundef writeonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %t = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -296
  %struct_type = getelementptr inbounds %struct.erofs_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %struct_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %struct_type, align 4
  %offset = getelementptr inbounds %struct.erofs_attr, ptr %attr, i32 0, i32 3
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %1, label %entry.__struct_ptr.exit_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then2.i
  ]

entry.__struct_ptr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__struct_ptr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %3
  br label %__struct_ptr.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr3.i = getelementptr i8, ptr %add.ptr, i32 %3
  br label %__struct_ptr.exit

__struct_ptr.exit:                                ; preds = %if.then2.i, %if.then.i, %entry.__struct_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr3.i, %if.then2.i ], [ null, %entry.__struct_ptr.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #5
  %5 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %t, align 4, !annotation !75
  %attr_id = getelementptr inbounds %struct.erofs_attr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %attr_id, align 4
  %conv = sext i16 %7 to i32
  %8 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %conv, label %__struct_ptr.exit.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
  ]

__struct_ptr.exit.cleanup_crit_edge:              ; preds = %__struct_ptr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %__struct_ptr.exit
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call4 = tail call ptr @skip_spaces(ptr noundef %buf) #5
  %call.i = call i32 @_kstrtoul(ptr noundef %call4, i32 noundef 0, ptr noundef nonnull %t) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t, align 4
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr, align 4
  %call13 = call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(16) @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp15 = icmp ugt i32 %10, 2
  %or.cond = select i1 %tobool14.not, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.end18

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %retval.0.i, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %__struct_ptr.exit
  %tobool20.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool20.not, label %sw.bb19.cleanup_crit_edge, label %if.end22

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %sw.bb19
  %call23 = tail call ptr @skip_spaces(ptr noundef %buf) #5
  %call.i52 = call i32 @_kstrtoul(ptr noundef %call23, i32 noundef 0, ptr noundef nonnull %t) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool25.not = icmp eq i32 %call.i52, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch = icmp ult i32 %15, 2
  br i1 %switch, label %if.end34, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool35 = icmp ne i32 %15, 0
  %frombool = zext i1 %tobool35 to i8
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %retval.0.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %if.end18, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %__struct_ptr.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end34 ], [ %len, %if.end18 ], [ 0, %sw.bb.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %sw.bb19.cleanup_crit_edge ], [ %call.i52, %if.end22.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ 0, %__struct_ptr.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @erofs_sb_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_kobj_unregister = getelementptr i8, ptr %kobj, i32 136
  tail call void @complete(ptr noundef %s_kobj_unregister) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/erofs/sysfs.c", i32 209, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/erofs/sysfs.c", i32 233, i32 37}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/erofs/sysfs.c", i32 240, i32 14}
!6 = !{ptr @erofs_root, !7, !"erofs_root", i1 false, i1 false}
!7 = !{!"../fs/erofs/sysfs.c", i32 188, i32 20}
!8 = !{ptr @erofs_ktype, !9, !"erofs_ktype", i1 false, i1 false}
!9 = !{!"../fs/erofs/sysfs.c", i32 184, i32 25}
!10 = !{ptr @erofs_attr_ops, !11, !"erofs_attr_ops", i1 false, i1 false}
!11 = !{!"../fs/erofs/sysfs.c", i32 173, i32 31}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/erofs/sysfs.c", i32 113, i32 26}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/erofs/sysfs.c", i32 117, i32 26}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/erofs/sysfs.c", i32 121, i32 26}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/erofs/sysfs.c", i32 146, i32 29}
!20 = !{ptr @init_completion.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../include/linux/completion.h", i32 87, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @erofs_sb_ktype, !24, !"erofs_sb_ktype", i1 false, i1 false}
!24 = !{!"../fs/erofs/sysfs.c", i32 178, i32 25}
!25 = !{ptr @erofs_groups, !26, !"erofs_groups", i1 false, i1 false}
!26 = !{!"../fs/erofs/sysfs.c", i32 68, i32 1}
!27 = !{ptr @erofs_group, !26, !"erofs_group", i1 false, i1 false}
!28 = !{ptr @erofs_attrs, !29, !"erofs_attrs", i1 false, i1 false}
!29 = !{!"../fs/erofs/sysfs.c", i32 62, i32 26}
!30 = !{ptr @erofs_attr_sync_decompress, !31, !"erofs_attr_sync_decompress", i1 false, i1 false}
!31 = !{!"../fs/erofs/sysfs.c", i32 59, i32 1}
!32 = !{ptr @erofs_feat, !33, !"erofs_feat", i1 false, i1 false}
!33 = !{!"../fs/erofs/sysfs.c", i32 197, i32 23}
!34 = !{ptr @erofs_feat_ktype, !35, !"erofs_feat_ktype", i1 false, i1 false}
!35 = !{!"../fs/erofs/sysfs.c", i32 192, i32 25}
!36 = !{ptr @erofs_feat_groups, !37, !"erofs_feat_groups", i1 false, i1 false}
!37 = !{!"../fs/erofs/sysfs.c", i32 91, i32 1}
!38 = !{ptr @erofs_feat_group, !37, !"erofs_feat_group", i1 false, i1 false}
!39 = !{ptr @erofs_feat_attrs, !40, !"erofs_feat_attrs", i1 false, i1 false}
!40 = !{!"../fs/erofs/sysfs.c", i32 80, i32 26}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/erofs/sysfs.c", i32 71, i32 1}
!43 = !{ptr @erofs_attr_zero_padding, !42, !"erofs_attr_zero_padding", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/erofs/sysfs.c", i32 72, i32 1}
!46 = !{ptr @erofs_attr_compr_cfgs, !45, !"erofs_attr_compr_cfgs", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/erofs/sysfs.c", i32 73, i32 1}
!49 = !{ptr @erofs_attr_big_pcluster, !48, !"erofs_attr_big_pcluster", i1 false, i1 false}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/erofs/sysfs.c", i32 74, i32 1}
!52 = !{ptr @erofs_attr_chunked_file, !51, !"erofs_attr_chunked_file", i1 false, i1 false}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/erofs/sysfs.c", i32 75, i32 1}
!55 = !{ptr @erofs_attr_device_table, !54, !"erofs_attr_device_table", i1 false, i1 false}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/erofs/sysfs.c", i32 76, i32 1}
!58 = !{ptr @erofs_attr_compr_head2, !57, !"erofs_attr_compr_head2", i1 false, i1 false}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/erofs/sysfs.c", i32 77, i32 1}
!61 = !{ptr @erofs_attr_sb_chksum, !60, !"erofs_attr_sb_chksum", i1 false, i1 false}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/erofs/sysfs.c", i32 78, i32 1}
!64 = !{ptr @erofs_attr_ztailpacking, !63, !"erofs_attr_ztailpacking", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i8 0, i8 2}
!75 = !{!"auto-init"}
