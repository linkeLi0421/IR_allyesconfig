; ModuleID = '/llk/IR_all_yes/fs/ocfs2/filecheck.c_pt.bc'
source_filename = "../fs/ocfs2/filecheck.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.84, ptr }
%union.anon.84 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.list_head = type { ptr, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ocfs2_filecheck = type { %struct.list_head, %struct.spinlock, i32, i32, i32 }
%struct.ocfs2_filecheck_entry = type { %struct.list_head, i32, i32, i32 }

@ocfs2_filecheck_create_sysfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&fcheck->fc_lock\00", [47 x i8] zeroinitializer }, align 32
@ocfs2_ktype_filecheck = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @ocfs2_filecheck_release, ptr @ocfs2_filecheck_ops, ptr null, ptr @ocfs2_filecheck_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"filecheck\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ocfs2_filecheck_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @ocfs2_filecheck_show, ptr @ocfs2_filecheck_store }, [24 x i8] zeroinitializer }, align 32
@ocfs2_filecheck_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ocfs2_filecheck_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ocfs2_filecheck_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ocfs2_filecheck_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ocfs2_filecheck_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @ocfs2_filecheck_attr_chk, ptr @ocfs2_filecheck_attr_fix, ptr @ocfs2_filecheck_attr_set, ptr null], [16 x i8] zeroinitializer }, align 32
@ocfs2_filecheck_attr_chk = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.3, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ocfs2_filecheck_attr_show, ptr @ocfs2_filecheck_attr_store }, [36 x i8] zeroinitializer }, align 32
@ocfs2_filecheck_attr_fix = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.7, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ocfs2_filecheck_attr_show, ptr @ocfs2_filecheck_attr_store }, [36 x i8] zeroinitializer }, align 32
@ocfs2_filecheck_attr_set = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.8, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ocfs2_filecheck_attr_show, ptr @ocfs2_filecheck_attr_store }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"check\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INO\09\09DONE\09ERROR\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%lu\09\09%u\09%s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fix\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@ocfs2_filecheck_errs = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUCCESS\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INPROGRESS\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"READONLY\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"INJBD\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INVALIDINO\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BLOCKECC\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BLOCKNO\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VALIDFLAG\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GENERATION\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UNSUPPORTED\00", [20 x i8] zeroinitializer }, align 32
@__func__.ocfs2_filecheck_attr_store = private unnamed_addr constant [27 x i8] c"ocfs2_filecheck_attr_store\00", align 1
@.str.20 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Cannot do more file check since file check queue(%u) is full now\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.ocfs2_filecheck_adjust_max = private unnamed_addr constant [27 x i8] c"ocfs2_filecheck_adjust_max\00", align 1
@.str.21 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"Cannot set online file check maximum entry number to %u due to too many pending entries(%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 177, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"ocfs2_ktype_filecheck\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 141, i32 25 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 185, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 87, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"ocfs2_filecheck_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 136, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"ocfs2_filecheck_groups\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"ocfs2_filecheck_group\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 97, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"ocfs2_filecheck_attrs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 91, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant [25 x i8] c"ocfs2_filecheck_attr_chk\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 79, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"ocfs2_filecheck_attr_fix\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 83, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant [25 x i8] c"ocfs2_filecheck_attr_set\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 87, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 80, i32 6 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 314, i32 33 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 319, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 327, i32 39 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 258, i32 21 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 262, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"ocfs2_filecheck_errs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 32, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 33, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 34, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 35, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 36, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 37, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 38, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 39, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 40, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 41, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 42, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 43, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 479, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [24 x i8] c"../fs/ocfs2/filecheck.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 221, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @ocfs2_filecheck_create_sysfs.__key, ptr @.str, ptr @ocfs2_ktype_filecheck, ptr @.str.1, ptr @init_completion.__key, ptr @.str.2, ptr @ocfs2_filecheck_ops, ptr @ocfs2_filecheck_groups, ptr @ocfs2_filecheck_group, ptr @ocfs2_filecheck_attrs, ptr @ocfs2_filecheck_attr_chk, ptr @ocfs2_filecheck_attr_fix, ptr @ocfs2_filecheck_attr_set, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ocfs2_filecheck_errs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_filecheck_create_sysfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_ktype_filecheck to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_filecheck_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_filecheck_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_filecheck_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_filecheck_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_filecheck_attr_chk to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_filecheck_attr_fix to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_filecheck_attr_set to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_filecheck_errs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_filecheck_create_sysfs(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_fc_ent = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 64) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %prev.i, align 4
  %fc_lock = getelementptr inbounds %struct.ocfs2_filecheck, ptr %call7.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %fc_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ocfs2_filecheck_create_sysfs.__key, i16 noundef signext 3) #7
  %fc_max = getelementptr inbounds %struct.ocfs2_filecheck, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %fc_max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %fc_max, align 4
  %fc_size = getelementptr inbounds %struct.ocfs2_filecheck, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %fc_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fc_size, align 8
  %fc_done = getelementptr inbounds %struct.ocfs2_filecheck, ptr %call7.i, i32 0, i32 4
  %5 = ptrtoint ptr %fc_done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fc_done, align 4
  %osb_dev_kset = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 102
  %6 = ptrtoint ptr %osb_dev_kset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %osb_dev_kset, align 8
  %kset = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 103, i32 0, i32 3
  %8 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %kset, align 4
  %fs_kobj_unregister = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 103, i32 1
  %9 = ptrtoint ptr %fs_kobj_unregister to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fs_kobj_unregister, align 4
  %wait.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 103, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #7
  %call4 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %osb_fc_ent, ptr noundef nonnull @ocfs2_ktype_filecheck, ptr noundef null, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kobject_put(ptr noundef %osb_fc_ent) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fs_fcheck = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 103, i32 2
  %10 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %fs_fcheck, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_filecheck_remove_sysfs(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_fcheck = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 103, i32 2
  %0 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_fcheck, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %osb_fc_ent = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 103
  tail call void @kobject_del(ptr noundef %osb_fc_ent) #7
  tail call void @kobject_put(ptr noundef %osb_fc_ent) #7
  %fs_kobj_unregister = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 103, i32 1
  tail call void @wait_for_completion(ptr noundef %fs_kobj_unregister) #7
  %2 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_fcheck, align 4
  %fc_lock.i = getelementptr inbounds %struct.ocfs2_filecheck, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %fc_lock.i) #7
  %4 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_fcheck, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %cmp.i.not28.i = icmp eq ptr %7, %5
  br i1 %cmp.i.not28.i, label %if.end.ocfs2_filecheck_sysfs_free.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.ocfs2_filecheck_sysfs_free.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocfs2_filecheck_sysfs_free.exit

while.body.i:                                     ; preds = %do.end15.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %8 = phi ptr [ %21, %do.end15.i.while.body.i_crit_edge ], [ %7, %if.end.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %fe_done.i = getelementptr inbounds %struct.ocfs2_filecheck_entry, ptr %8, i32 0, i32 3
  %17 = ptrtoint ptr %fe_done.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %fe_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool5.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool5.not.i, label %do.body10.i, label %do.end15.i, !prof !74

do.body10.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/filecheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #7, !srcloc !75
  unreachable

do.end15.i:                                       ; preds = %list_del.exit.i
  tail call void @kfree(ptr noundef %8) #7
  %18 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fs_fcheck, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %19, align 4
  %cmp.i.not.i = icmp eq ptr %21, %19
  br i1 %cmp.i.not.i, label %do.end15.i.ocfs2_filecheck_sysfs_free.exit_crit_edge, label %do.end15.i.while.body.i_crit_edge

do.end15.i.while.body.i_crit_edge:                ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

do.end15.i.ocfs2_filecheck_sysfs_free.exit_crit_edge: ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocfs2_filecheck_sysfs_free.exit

ocfs2_filecheck_sysfs_free.exit:                  ; preds = %do.end15.i.ocfs2_filecheck_sysfs_free.exit_crit_edge, %if.end.ocfs2_filecheck_sysfs_free.exit_crit_edge
  %.lcssa.i = phi ptr [ %5, %if.end.ocfs2_filecheck_sysfs_free.exit_crit_edge ], [ %19, %do.end15.i.ocfs2_filecheck_sysfs_free.exit_crit_edge ]
  %fc_lock17.i = getelementptr inbounds %struct.ocfs2_filecheck, ptr %.lcssa.i, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %fc_lock17.i) #7
  %22 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fs_fcheck, align 4
  tail call void @kfree(ptr noundef %23) #7
  %24 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %fs_fcheck, align 4
  br label %return

return:                                           ; preds = %ocfs2_filecheck_sysfs_free.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_filecheck_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_kobj_unregister = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, ptr %kobj, i32 0, i32 1
  tail call void @complete(ptr noundef %fs_kobj_unregister) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_filecheck_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kobject_get(ptr noundef %kobj) #7
  %show = getelementptr inbounds %struct.kobj_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 %1(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ -5, %entry.if.end_crit_edge ]
  tail call void @kobject_put(ptr noundef %kobj) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_filecheck_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kobject_get(ptr noundef %kobj) #7
  %store = getelementptr inbounds %struct.kobj_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 %1(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ -5, %entry.if.end_crit_edge ]
  tail call void @kobject_put(ptr noundef %kobj) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_filecheck_attr_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call.i = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.7, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end7_crit_edge, label %if.else.i

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.else.i:                                        ; preds = %entry
  %call1.i = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.3, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.else.i.if.end7_crit_edge, label %if.else4.i

if.else.i.if.end7_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.else4.i:                                       ; preds = %if.else.i
  %call5.i = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.8, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then2, label %if.else4.i.cleanup_crit_edge

if.else4.i.cleanup_crit_edge:                     ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #9
  %fs_fcheck = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_fcheck, align 4
  %fc_lock = getelementptr inbounds %struct.ocfs2_filecheck, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %fc_lock) #7
  %4 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_fcheck, align 4
  %fc_max = getelementptr inbounds %struct.ocfs2_filecheck, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fc_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fc_max, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %7)
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.else.i.if.end7_crit_edge, %entry.if.end7_crit_edge
  %.sink.i.ph = phi i32 [ 0, %if.else.i.if.end7_crit_edge ], [ 1, %entry.if.end7_crit_edge ]
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.5, i32 17)
  %fs_fcheck9 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, ptr %kobj, i32 0, i32 2
  %9 = ptrtoint ptr %fs_fcheck9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_fcheck9, align 4
  %fc_lock10 = getelementptr inbounds %struct.ocfs2_filecheck, ptr %10, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %fc_lock10) #7
  %11 = ptrtoint ptr %fs_fcheck9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_fcheck9, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %p.077 = load ptr, ptr %12, align 4
  %cmp17.not78 = icmp eq ptr %p.077, %12
  br i1 %cmp17.not78, label %if.end7.cleanup.sink.split_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %p.081 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.077, %if.end7.for.body_crit_edge ]
  %total.080 = phi i32 [ %total.1, %for.inc.for.body_crit_edge ], [ 16, %if.end7.for.body_crit_edge ]
  %remain.079 = phi i32 [ %remain.1, %for.inc.for.body_crit_edge ], [ 4080, %if.end7.for.body_crit_edge ]
  %fe_type = getelementptr inbounds %struct.ocfs2_filecheck_entry, ptr %p.081, i32 0, i32 2
  %14 = ptrtoint ptr %fe_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fe_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %.sink.i.ph)
  %cmp18.not = icmp eq i32 %15, %.sink.i.ph
  br i1 %cmp18.not, label %if.end20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %add.ptr21 = getelementptr i8, ptr %buf, i32 %total.080
  %fe_ino = getelementptr inbounds %struct.ocfs2_filecheck_entry, ptr %p.081, i32 0, i32 1
  %16 = ptrtoint ptr %fe_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fe_ino, align 4
  %fe_done = getelementptr inbounds %struct.ocfs2_filecheck_entry, ptr %p.081, i32 0, i32 3
  %18 = ptrtoint ptr %fe_done to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %fe_done, align 4
  %bf.lshr = lshr i32 %bf.load, 31
  %bf.clear = and i32 %bf.load, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear)
  %tobool.not.i67 = icmp eq i32 %bf.clear, 0
  br i1 %tobool.not.i67, label %if.end20.ocfs2_filecheck_error.exit_crit_edge, label %do.body.i

if.end20.ocfs2_filecheck_error.exit_crit_edge:    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocfs2_filecheck_error.exit

do.body.i:                                        ; preds = %if.end20
  %19 = add nsw i32 %bf.clear, -1010
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %19)
  %20 = icmp ult i32 %19, -10
  br i1 %20, label %do.body5.i, label %do.end9.i, !prof !74

do.body5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/filecheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 69, 0\0A.popsection", ""() #7, !srcloc !76
  unreachable

do.end9.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nsw i32 %bf.clear, -999
  %arrayidx10.i = getelementptr [11 x ptr], ptr @ocfs2_filecheck_errs, i32 0, i32 %add.i
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx10.i, align 4
  br label %ocfs2_filecheck_error.exit

ocfs2_filecheck_error.exit:                       ; preds = %do.end9.i, %if.end20.ocfs2_filecheck_error.exit_crit_edge
  %retval.0.i68 = phi ptr [ %22, %do.end9.i ], [ @.str.9, %if.end20.ocfs2_filecheck_error.exit_crit_edge ]
  %call24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr21, i32 noundef %remain.079, ptr noundef nonnull @.str.6, i32 noundef %17, i32 noundef %bf.lshr, ptr noundef %retval.0.i68)
  call void @__sanitizer_cov_trace_cmp4(i32 %remain.079, i32 %call24)
  %cmp25.not = icmp sgt i32 %remain.079, %call24
  br i1 %cmp25.not, label %if.end27, label %ocfs2_filecheck_error.exit.cleanup.sink.split_crit_edge

ocfs2_filecheck_error.exit.cleanup.sink.split_crit_edge: ; preds = %ocfs2_filecheck_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end27:                                         ; preds = %ocfs2_filecheck_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add28 = add i32 %call24, %total.080
  %sub29 = sub i32 %remain.079, %call24
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %for.body.for.inc_crit_edge
  %remain.1 = phi i32 [ %remain.079, %for.body.for.inc_crit_edge ], [ %sub29, %if.end27 ]
  %total.1 = phi i32 [ %total.080, %for.body.for.inc_crit_edge ], [ %add28, %if.end27 ]
  %23 = ptrtoint ptr %p.081 to i32
  call void @__asan_load4_noabort(i32 %23)
  %p.0 = load ptr, ptr %p.081, align 4
  %24 = ptrtoint ptr %fs_fcheck9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fs_fcheck9, align 4
  %cmp17.not = icmp eq ptr %p.0, %25
  br i1 %cmp17.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %ocfs2_filecheck_error.exit.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.then2
  %fs_fcheck.sink = phi ptr [ %fs_fcheck, %if.then2 ], [ %fs_fcheck9, %if.end7.cleanup.sink.split_crit_edge ], [ %fs_fcheck9, %for.inc.cleanup.sink.split_crit_edge ], [ %fs_fcheck9, %ocfs2_filecheck_error.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call4, %if.then2 ], [ 16, %if.end7.cleanup.sink.split_crit_edge ], [ -7, %ocfs2_filecheck_error.exit.cleanup.sink.split_crit_edge ], [ %total.1, %for.inc.cleanup.sink.split_crit_edge ]
  %26 = ptrtoint ptr %fs_fcheck.sink to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fs_fcheck.sink, align 4
  %fc_lock6 = getelementptr inbounds %struct.ocfs2_filecheck, ptr %27, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %fc_lock6) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else4.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_filecheck_attr_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %buffer.i.i = alloca [24 x i8], align 1
  %val.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %count)
  %cmp1.i = icmp ugt i32 %count, 23
  br i1 %cmp1.i, label %if.end.ocfs2_filecheck_args_parse.exit.thread_crit_edge, label %if.end.i

if.end.ocfs2_filecheck_args_parse.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocfs2_filecheck_args_parse.exit.thread

if.end.i:                                         ; preds = %if.end
  %call.i.i = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.7, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end3.i_crit_edge, label %if.else.i.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.else.i.i:                                      ; preds = %if.end.i
  %call1.i.i = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.3, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i.if.end3.i_crit_edge, label %if.else4.i.i

if.else.i.i.if.end3.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %call5.i.i = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.8, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else4.i.i.if.end3.i_crit_edge, label %if.else4.i.i.ocfs2_filecheck_args_parse.exit.thread_crit_edge

if.else4.i.i.ocfs2_filecheck_args_parse.exit.thread_crit_edge: ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocfs2_filecheck_args_parse.exit.thread

if.else4.i.i.if.end3.i_crit_edge:                 ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.else4.i.i.if.end3.i_crit_edge, %if.else.i.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %cmp5 = phi i1 [ true, %if.else4.i.i.if.end3.i_crit_edge ], [ false, %if.else.i.i.if.end3.i_crit_edge ], [ false, %if.end.i.if.end3.i_crit_edge ]
  %.sink.i.i = phi i32 [ 100, %if.else4.i.i.if.end3.i_crit_edge ], [ 0, %if.else.i.i.if.end3.i_crit_edge ], [ 1, %if.end.i.if.end3.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buffer.i.i) #7
  %3 = zext i32 %count to i64
  %4 = sub nuw nsw i64 24, %3
  %5 = getelementptr i8, ptr %buffer.i.i, i32 %count
  %6 = trunc i64 %4 to i32
  %7 = call ptr @memset(ptr %5, i32 255, i32 %6)
  %8 = call ptr @memcpy(ptr %buffer.i.i, ptr %buf, i32 %count)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %5, align 1
  %call.i.i.i = call i32 @_kstrtoul(ptr noundef nonnull %buffer.i.i, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i19.not.i = icmp eq i32 %call.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buffer.i.i) #7
  br i1 %tobool.not.i19.not.i, label %if.end7.i, label %if.end3.i.ocfs2_filecheck_args_parse.exit.thread_crit_edge

if.end3.i.ocfs2_filecheck_args_parse.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocfs2_filecheck_args_parse.exit.thread

if.end7.i:                                        ; preds = %if.end3.i
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8.i = icmp eq i32 %11, 0
  br i1 %cmp8.i, label %if.end7.i.ocfs2_filecheck_args_parse.exit.thread_crit_edge, label %if.end4

if.end7.i.ocfs2_filecheck_args_parse.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocfs2_filecheck_args_parse.exit.thread

ocfs2_filecheck_args_parse.exit.thread:           ; preds = %if.end7.i.ocfs2_filecheck_args_parse.exit.thread_crit_edge, %if.end3.i.ocfs2_filecheck_args_parse.exit.thread_crit_edge, %if.else4.i.i.ocfs2_filecheck_args_parse.exit.thread_crit_edge, %if.end.ocfs2_filecheck_args_parse.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end7.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %12 = add i32 %11, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -91, i32 %12)
  %13 = icmp ult i32 %12, -91
  br i1 %13, label %if.then6.cleanup_crit_edge, label %if.end.i100

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i100:                                      ; preds = %if.then6
  %fs_fcheck.i = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, ptr %kobj, i32 0, i32 2
  %14 = ptrtoint ptr %fs_fcheck.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fs_fcheck.i, align 4
  %fc_lock.i = getelementptr inbounds %struct.ocfs2_filecheck, ptr %15, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %fc_lock.i) #7
  %16 = ptrtoint ptr %fs_fcheck.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fs_fcheck.i, align 4
  %fc_size.i = getelementptr inbounds %struct.ocfs2_filecheck, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %fc_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fc_size.i, align 4
  %fc_done.i = getelementptr inbounds %struct.ocfs2_filecheck, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %fc_done.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fc_done.i, align 4
  %sub.i = sub i32 %19, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp4.i = icmp ugt i32 %sub.i, %11
  br i1 %cmp4.i, label %exit.thread, label %if.else.i

exit.thread:                                      ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #7
  %22 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 2305843009213693952, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_filecheck_adjust_max, i32 noundef 224, ptr noundef nonnull @.str.21, i32 noundef %11, i32 noundef %sub.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #7
  %23 = ptrtoint ptr %fs_fcheck.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fs_fcheck.i, align 4
  %fc_lock39.i136 = getelementptr inbounds %struct.ocfs2_filecheck, ptr %24, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %fc_lock39.i136) #7
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp15.i = icmp ugt i32 %19, %11
  br i1 %cmp15.i, label %do.body17.i, label %.critedge

do.body17.i:                                      ; preds = %if.else.i
  %sub20.i = sub i32 %19, %11
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.then.i.i.while.body.i.i_crit_edge, %do.body17.i
  %ret.013.i.i = phi i32 [ %inc1.i.i, %if.then.i.i.while.body.i.i_crit_edge ], [ 0, %do.body17.i ]
  %25 = ptrtoint ptr %fs_fcheck.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fs_fcheck.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %while.body.i.i
  %p.0.in.i.i.i = phi ptr [ %26, %while.body.i.i ], [ %p.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %27 = ptrtoint ptr %p.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %p.0.i.i.i = load ptr, ptr %p.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %p.0.i.i.i, %26
  br i1 %cmp.not.i.i.i, label %ocfs2_filecheck_erase_entries.exit.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %fe_done.i.i.i = getelementptr inbounds %struct.ocfs2_filecheck_entry, ptr %p.0.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %fe_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.i.i.i = load i32, ptr %fe_done.i.i.i, align 4
  %tobool.not.i.i.i = icmp sgt i32 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %p.0.i.i.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.if.then.i.i_crit_edge

if.then.i.i.i.if.then.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.0.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %p.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %p.0.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.if.then.i.i_crit_edge
  %35 = ptrtoint ptr %p.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %p.0.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.0.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  call void @kfree(ptr noundef %p.0.i.i.i) #7
  %37 = ptrtoint ptr %fs_fcheck.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fs_fcheck.i, align 4
  %fc_size.i.i.i = getelementptr inbounds %struct.ocfs2_filecheck, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %fc_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fc_size.i.i.i, align 4
  %dec.i.i.i = add i32 %40, -1
  store i32 %dec.i.i.i, ptr %fc_size.i.i.i, align 4
  %41 = load ptr, ptr %fs_fcheck.i, align 4
  %fc_done.i.i.i = getelementptr inbounds %struct.ocfs2_filecheck, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %fc_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fc_done.i.i.i, align 4
  %dec6.i.i.i = add i32 %43, -1
  store i32 %dec6.i.i.i, ptr %fc_done.i.i.i, align 4
  %inc1.i.i = add nuw i32 %ret.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc1.i.i, %sub20.i
  br i1 %exitcond.not.i.i, label %if.then.i.i.exit_crit_edge, label %if.then.i.i.while.body.i.i_crit_edge

if.then.i.i.while.body.i.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

if.then.i.i.exit_crit_edge:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

ocfs2_filecheck_erase_entries.exit.i:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.013.i.i, i32 %sub20.i)
  %cmp2.i.not.i = icmp eq i32 %ret.013.i.i, %sub20.i
  br i1 %cmp2.i.not.i, label %ocfs2_filecheck_erase_entries.exit.i.exit_crit_edge, label %do.body26.i, !prof !77

ocfs2_filecheck_erase_entries.exit.i.exit_crit_edge: ; preds = %ocfs2_filecheck_erase_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.body26.i:                                      ; preds = %ocfs2_filecheck_erase_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/filecheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #7, !srcloc !78
  unreachable

if.end8:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3136, i32 noundef 20) #10
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %fs_fcheck = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, ptr %kobj, i32 0, i32 2
  %45 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fs_fcheck, align 4
  %fc_lock = getelementptr inbounds %struct.ocfs2_filecheck, ptr %46, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %fc_lock) #7
  %47 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fs_fcheck, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %p.015.i = load ptr, ptr %48, align 4
  %cmp.not16.i = icmp eq ptr %p.015.i, %48
  br i1 %cmp.not16.i, label %if.end12.if.else_crit_edge, label %if.end12.for.body.i_crit_edge

if.end12.for.body.i_crit_edge:                    ; preds = %if.end12
  br label %for.body.i

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12.for.body.i_crit_edge
  %p.017.i = phi ptr [ %p.0.i, %for.inc.i.for.body.i_crit_edge ], [ %p.015.i, %if.end12.for.body.i_crit_edge ]
  %fe_done.i = getelementptr inbounds %struct.ocfs2_filecheck_entry, ptr %p.017.i, i32 0, i32 3
  %50 = ptrtoint ptr %fe_done.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load.i = load i32, ptr %fe_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %fe_ino.i = getelementptr inbounds %struct.ocfs2_filecheck_entry, ptr %p.017.i, i32 0, i32 1
  %51 = ptrtoint ptr %fe_ino.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fe_ino.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %11)
  %cmp3.i = icmp eq i32 %52, %11
  br i1 %cmp3.i, label %if.then.i.if.end63.thread_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i.if.end63.thread_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.thread

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %53 = ptrtoint ptr %p.017.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %p.0.i = load ptr, ptr %p.017.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, %48
  br i1 %cmp.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %for.inc.i.if.else_crit_edge, %if.end12.if.else_crit_edge
  %fc_size = getelementptr inbounds %struct.ocfs2_filecheck, ptr %48, i32 0, i32 3
  %54 = ptrtoint ptr %fc_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fc_size, align 4
  %fc_max = getelementptr inbounds %struct.ocfs2_filecheck, ptr %48, i32 0, i32 2
  %56 = ptrtoint ptr %fc_max to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fc_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp18.not = icmp ult i32 %55, %57
  br i1 %cmp18.not, label %if.else.if.end54_crit_edge, label %land.lhs.true

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true:                                    ; preds = %if.else
  %fc_done = getelementptr inbounds %struct.ocfs2_filecheck, ptr %48, i32 0, i32 4
  %58 = ptrtoint ptr %fc_done to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fc_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp20 = icmp eq i32 %59, 0
  br i1 %cmp20, label %do.body, label %land.lhs.true33

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #7
  %60 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 2305843009213693952, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_filecheck_attr_store, i32 noundef 482, ptr noundef nonnull @.str.20, i32 noundef %57) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #7
  br label %if.end63.thread

land.lhs.true33:                                  ; preds = %land.lhs.true
  %61 = ptrtoint ptr %fc_done to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fc_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp36.not = icmp eq i32 %62, 0
  br i1 %cmp36.not, label %land.lhs.true33.if.end54_crit_edge, label %do.body38

land.lhs.true33.if.end54_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.body38:                                        ; preds = %land.lhs.true33
  %call39 = call fastcc i32 @ocfs2_filecheck_erase_entry(ptr noundef %kobj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body45, label %do.body38.if.end54_crit_edge, !prof !74

do.body38.if.end54_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.body45:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/filecheck.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 492, 0\0A.popsection", ""() #7, !srcloc !79
  unreachable

if.end54:                                         ; preds = %do.body38.if.end54_crit_edge, %land.lhs.true33.if.end54_crit_edge, %if.else.if.end54_crit_edge
  %fe_ino = getelementptr inbounds %struct.ocfs2_filecheck_entry, ptr %call7.i, i32 0, i32 1
  %63 = ptrtoint ptr %fe_ino to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %11, ptr %fe_ino, align 8
  %fe_type = getelementptr inbounds %struct.ocfs2_filecheck_entry, ptr %call7.i, i32 0, i32 2
  %64 = ptrtoint ptr %fe_type to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink.i.i, ptr %fe_type, align 4
  %fe_done = getelementptr inbounds %struct.ocfs2_filecheck_entry, ptr %call7.i, i32 0, i32 3
  %65 = ptrtoint ptr %fe_done to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1001, ptr %fe_done, align 8
  %66 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fs_fcheck, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i, align 4
  %call.i.i104 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %69, ptr noundef %67) #7
  br i1 %call.i.i104, label %if.end.i.i, label %if.end54.if.then67_crit_edge

if.end54.if.then67_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

if.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i, ptr %prev.i, align 4
  %71 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %67, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %call7.i, ptr %69, align 4
  br label %if.then67

if.end63.thread:                                  ; preds = %do.body, %if.then.i.if.end63.thread_crit_edge
  %ret.0.ph = phi i32 [ -11, %do.body ], [ -17, %if.then.i.if.end63.thread_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #7
  %74 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fs_fcheck, align 4
  %fc_lock65123 = getelementptr inbounds %struct.ocfs2_filecheck, ptr %75, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %fc_lock65123) #7
  br label %cleanup

if.then67:                                        ; preds = %if.end.i.i, %if.end54.if.then67_crit_edge
  %76 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fs_fcheck, align 4
  %fc_size61 = getelementptr inbounds %struct.ocfs2_filecheck, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %fc_size61 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fc_size61, align 4
  %inc = add i32 %79, 1
  store i32 %inc, ptr %fc_size61, align 4
  %80 = load ptr, ptr %fs_fcheck, align 4
  %fc_lock65 = getelementptr inbounds %struct.ocfs2_filecheck, ptr %80, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %fc_lock65) #7
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -3812
  %81 = ptrtoint ptr %fe_type to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fe_type, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values)
  switch i32 %82, label %if.then67.exit.thread126_crit_edge [
    i32 0, label %if.then.i107
    i32 1, label %if.then4.i
  ]

if.then67.exit.thread126_crit_edge:               ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.thread126

if.then.i107:                                     ; preds = %if.then67
  %84 = ptrtoint ptr %fe_ino to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %fe_ino, align 8
  %conv.i.i = zext i32 %85 to i64
  %call.i.i106 = call ptr @ocfs2_iget(ptr noundef %add.ptr.i, i64 noundef %conv.i.i, i32 noundef 4, i32 noundef 0) #7
  %cmp.i.i.i = icmp ugt ptr %call.i.i106, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i108, label %if.else6.i.i

if.then.i.i108:                                   ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %call.i.i106 to i32
  %sub.i.i = sub i32 0, %86
  %87 = add i32 %86, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %87)
  %88 = icmp ult i32 %87, 9
  %sub.i.op.i = and i32 %sub.i.i, 2147483647
  %phi.bo36.i = select i1 %88, i32 %sub.i.op.i, i32 1000
  br label %exit.thread126

if.else6.i.i:                                     ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #9
  call void @iput(ptr noundef %call.i.i106) #7
  br label %exit.thread126

if.then4.i:                                       ; preds = %if.then67
  %89 = ptrtoint ptr %fe_ino to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fe_ino, align 8
  %conv.i27.i = zext i32 %90 to i64
  %call.i28.i = call ptr @ocfs2_iget(ptr noundef %add.ptr.i, i64 noundef %conv.i27.i, i32 noundef 8, i32 noundef 0) #7
  %cmp.i.i29.i = icmp ugt ptr %call.i28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i29.i, label %if.then.i32.i, label %if.else6.i33.i

if.then.i32.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %call.i28.i to i32
  %sub.i30.i = sub i32 0, %91
  %92 = add i32 %91, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %92)
  %93 = icmp ult i32 %92, 9
  %sub.i30.op.i = and i32 %sub.i30.i, 2147483647
  %phi.bo.i = select i1 %93, i32 %sub.i30.op.i, i32 1000
  br label %exit.thread126

if.else6.i33.i:                                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @iput(ptr noundef %call.i28.i) #7
  br label %exit.thread126

exit.thread126:                                   ; preds = %if.else6.i33.i, %if.then.i32.i, %if.else6.i.i, %if.then.i.i108, %if.then67.exit.thread126_crit_edge
  %ret.0.i34.sink.i = phi i32 [ 0, %if.else6.i.i ], [ %phi.bo36.i, %if.then.i.i108 ], [ 0, %if.else6.i33.i ], [ %phi.bo.i, %if.then.i32.i ], [ 1009, %if.then67.exit.thread126_crit_edge ]
  %94 = ptrtoint ptr %fe_done to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load8.i = load i32, ptr %fe_done, align 8
  %bf.clear10.i = and i32 %bf.load8.i, -2147483648
  %bf.set11.i = or i32 %bf.clear10.i, %ret.0.i34.sink.i
  store i32 %bf.set11.i, ptr %fe_done, align 8
  %95 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fs_fcheck, align 4
  %fc_lock.i.i = getelementptr inbounds %struct.ocfs2_filecheck, ptr %96, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %fc_lock.i.i) #7
  %97 = ptrtoint ptr %fe_done to i32
  call void @__asan_load4_noabort(i32 %97)
  %bf.load.i.i = load i32, ptr %fe_done, align 8
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %fe_done, align 8
  %98 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fs_fcheck, align 4
  %fc_done.i.i = getelementptr inbounds %struct.ocfs2_filecheck, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %fc_done.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fc_done.i.i, align 4
  %inc.i.i = add i32 %101, 1
  store i32 %inc.i.i, ptr %fc_done.i.i, align 4
  br label %.sink.split

exit:                                             ; preds = %ocfs2_filecheck_erase_entries.exit.i.exit_crit_edge, %if.then.i.i.exit_crit_edge
  %102 = ptrtoint ptr %fs_fcheck.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fs_fcheck.i, align 4
  %fc_max.i = getelementptr inbounds %struct.ocfs2_filecheck, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %fc_max.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %11, ptr %fc_max.i, align 4
  %105 = load ptr, ptr %fs_fcheck.i, align 4
  %fc_lock39.i = getelementptr inbounds %struct.ocfs2_filecheck, ptr %105, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %fc_lock39.i) #7
  br i1 %cmp4.i, label %exit.cleanup_crit_edge, label %exit._crit_edge

exit._crit_edge:                                  ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %111

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

.critedge:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %fs_fcheck.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fs_fcheck.i, align 4
  %fc_max.i.c = getelementptr inbounds %struct.ocfs2_filecheck, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %fc_max.i.c to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %11, ptr %fc_max.i.c, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %exit.thread126
  %fs_fcheck.i.sink = phi ptr [ %fs_fcheck.i, %.critedge ], [ %fs_fcheck, %exit.thread126 ]
  %109 = ptrtoint ptr %fs_fcheck.i.sink to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fs_fcheck.i.sink, align 4
  %fc_lock39.i.c = getelementptr inbounds %struct.ocfs2_filecheck, ptr %110, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %fc_lock39.i.c) #7
  br label %111

111:                                              ; preds = %.sink.split, %exit._crit_edge
  br label %cleanup

cleanup:                                          ; preds = %111, %exit.cleanup_crit_edge, %if.end63.thread, %if.end8.cleanup_crit_edge, %exit.thread, %if.then6.cleanup_crit_edge, %ocfs2_filecheck_args_parse.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %ocfs2_filecheck_args_parse.exit.thread ], [ %count, %111 ], [ 0, %exit.cleanup_crit_edge ], [ %ret.0.ph, %if.end63.thread ], [ -22, %if.then6.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ -16, %exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_filecheck_erase_entry(ptr nocapture noundef readonly %ent) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %fs_fcheck = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, ptr %ent, i32 0, i32 2
  %0 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_fcheck, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %p.0.in = phi ptr [ %1, %entry ], [ %p.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp.not = icmp eq ptr %p.0, %1
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %fe_done = getelementptr inbounds %struct.ocfs2_filecheck_entry, ptr %p.0, i32 0, i32 3
  %3 = ptrtoint ptr %fe_done to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %fe_done, align 4
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %if.then

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.0) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %p.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %p.0) #7
  %12 = ptrtoint ptr %fs_fcheck to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs_fcheck, align 4
  %fc_size = getelementptr inbounds %struct.ocfs2_filecheck, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %fc_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fc_size, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %fc_size, align 4
  %16 = load ptr, ptr %fs_fcheck, align 4
  %fc_done = getelementptr inbounds %struct.ocfs2_filecheck, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %fc_done to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fc_done, align 4
  %dec6 = add i32 %18, -1
  store i32 %dec6, ptr %fc_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %list_del.exit ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_iget(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @ocfs2_filecheck_create_sysfs.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/filecheck.c", i32 177, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/filecheck.c", i32 185, i32 12}
!5 = !{ptr @init_completion.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../include/linux/completion.h", i32 87, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ocfs2_ktype_filecheck, !9, !"ocfs2_ktype_filecheck", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/filecheck.c", i32 141, i32 25}
!10 = !{ptr @ocfs2_filecheck_ops, !11, !"ocfs2_filecheck_ops", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/filecheck.c", i32 136, i32 31}
!12 = !{ptr @ocfs2_filecheck_groups, !13, !"ocfs2_filecheck_groups", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/filecheck.c", i32 97, i32 1}
!14 = !{ptr @ocfs2_filecheck_group, !13, !"ocfs2_filecheck_group", i1 false, i1 false}
!15 = !{ptr @ocfs2_filecheck_attrs, !16, !"ocfs2_filecheck_attrs", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/filecheck.c", i32 91, i32 26}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/filecheck.c", i32 80, i32 6}
!19 = !{ptr @ocfs2_filecheck_attr_chk, !20, !"ocfs2_filecheck_attr_chk", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/filecheck.c", i32 79, i32 30}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/filecheck.c", i32 314, i32 33}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/filecheck.c", i32 319, i32 30}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/filecheck.c", i32 327, i32 39}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/filecheck.c", i32 258, i32 21}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/filecheck.c", i32 262, i32 26}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/filecheck.c", i32 33, i32 2}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/filecheck.c", i32 34, i32 2}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/filecheck.c", i32 35, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/filecheck.c", i32 36, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/filecheck.c", i32 37, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/filecheck.c", i32 38, i32 2}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/filecheck.c", i32 39, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ocfs2/filecheck.c", i32 40, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/filecheck.c", i32 41, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/filecheck.c", i32 42, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/filecheck.c", i32 43, i32 2}
!53 = !{ptr @ocfs2_filecheck_errs, !54, !"ocfs2_filecheck_errs", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/filecheck.c", i32 32, i32 27}
!55 = !{ptr @__func__.ocfs2_filecheck_attr_store, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/filecheck.c", i32 479, i32 3}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__func__.ocfs2_filecheck_adjust_max, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ocfs2/filecheck.c", i32 221, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ocfs2_filecheck_attr_fix, !62, !"ocfs2_filecheck_attr_fix", i1 false, i1 false}
!62 = !{!"../fs/ocfs2/filecheck.c", i32 83, i32 30}
!63 = !{ptr @ocfs2_filecheck_attr_set, !64, !"ocfs2_filecheck_attr_set", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/filecheck.c", i32 87, i32 30}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 2154745167, i64 2154745652, i64 2154745204, i64 2154745260, i64 2154745294, i64 2154745318, i64 2154745359, i64 2154745380, i64 2154745408, i64 2154745442}
!76 = !{i64 2154729270, i64 2154729754, i64 2154729307, i64 2154729363, i64 2154729397, i64 2154729421, i64 2154729462, i64 2154729483, i64 2154729511, i64 2154729545}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2154747640, i64 2154748125, i64 2154747677, i64 2154747733, i64 2154747767, i64 2154747791, i64 2154747832, i64 2154747853, i64 2154747881, i64 2154747915}
!79 = !{i64 2154764336, i64 2154764821, i64 2154764373, i64 2154764429, i64 2154764463, i64 2154764487, i64 2154764528, i64 2154764549, i64 2154764577, i64 2154764611}
