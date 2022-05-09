; ModuleID = '/llk/IR_all_yes/fs/orangefs/orangefs-utils.c_pt.bc'
source_filename = "../fs/orangefs/orangefs-utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.39 }
%union.anon.39 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.41, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.orangefs_kernel_op_s = type { i32, i64, %union.anon, %struct.orangefs_upcall_s, %struct.orangefs_downcall_s, %struct.completion, %struct.spinlock, i32, %struct.list_head }
%union.anon = type { i32 }
%struct.orangefs_upcall_s = type { i32, i32, i32, i32, i32, i64, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.orangefs_param_request_s, [6424 x i8] }
%struct.orangefs_param_request_s = type { i32, i32, %union.anon.1, [2048 x i8] }
%union.anon.1 = type { i64 }
%struct.orangefs_downcall_s = type { i32, i32, i64, ptr, %union.anon.2 }
%union.anon.2 = type { %struct.orangefs_listxattr_response, [4016 x i8] }
%struct.orangefs_listxattr_response = type { i32, i32, i64, [4096 x i8], i32, i32, [16 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.85, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.86, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.87, ptr, %struct.address_space, %struct.list_head, %union.anon.88, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.86 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.87 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.88 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.orangefs_sb_info_s = type { %struct.orangefs_khandle, i32, i32, i32, [256 x i8], ptr, i32, i32, %struct.list_head }
%struct.orangefs_khandle = type { [16 x i8] }
%struct.ORANGEFS_sys_attr_s = type { i32, i32, i32, i64, i64, i64, i64, ptr, i32, i32, i32, i32, i32, ptr, ptr, i64, i32, i64, i32, i64 }

@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@orangefs_inode_getattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: called on inode %pU flags %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"orangefs_inode_getattr\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fs/orangefs/orangefs-utils.c\00", [35 x i8] zeroinitializer }, align 32
@orangefs_inode_getattr._entry_ptr = internal global ptr @orangefs_inode_getattr._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@orangefs_inode_getattr._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: in cache or dirty\0A\00", [39 x i8] zeroinitializer }, align 32
@orangefs_inode_getattr._entry_ptr.5 = internal global ptr @orangefs_inode_getattr._entry.3, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@orangefs_getattr_timeout_msecs = external dso_local local_unnamed_addr global i32, align 4
@orangefs_inode_check_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: called on inode %pU\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"orangefs_inode_check_changed\00", [35 x i8] zeroinitializer }, align 32
@orangefs_inode_check_changed._entry_ptr = internal global ptr @orangefs_inode_check_changed._entry, section ".printk_index", align 4
@__func__.orangefs_inode_setattr = private unnamed_addr constant [23 x i8] c"orangefs_inode_setattr\00", align 1
@orangefs_inode_setattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.orangefs_inode_setattr, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017orangefs_inode_setattr: returning %d\0A\00", [56 x i8] zeroinitializer }, align 32
@orangefs_inode_setattr._entry_ptr = internal global ptr @orangefs_inode_setattr._entry, section ".printk_index", align 4
@orangefs_normalize_to_errno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013orangefs: error status received.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"orangefs_normalize_to_errno\00", [36 x i8] zeroinitializer }, align 32
@orangefs_normalize_to_errno._entry_ptr = internal global ptr @orangefs_normalize_to_errno._entry, section ".printk_index", align 4
@orangefs_normalize_to_errno._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013orangefs: assuming error code is inverted.\0A\00", [50 x i8] zeroinitializer }, align 32
@orangefs_normalize_to_errno._entry_ptr.13 = internal global ptr @orangefs_normalize_to_errno._entry.11, section ".printk_index", align 4
@orangefs_normalize_to_errno._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: bad error code :%d:.\0A\00", [36 x i8] zeroinitializer }, align 32
@orangefs_normalize_to_errno._entry_ptr.16 = internal global ptr @orangefs_normalize_to_errno._entry.14, section ".printk_index", align 4
@PINT_errno_mapping = internal constant { [61 x i32], [44 x i8] } { [61 x i32] [i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 9, i32 11, i32 12, i32 14, i32 16, i32 17, i32 19, i32 20, i32 21, i32 22, i32 24, i32 27, i32 28, i32 30, i32 31, i32 32, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 11, i32 42, i32 49, i32 53, i32 35, i32 61, i32 62, i32 64, i32 66, i32 70, i32 71, i32 74, i32 75, i32 85, i32 90, i32 91, i32 92, i32 93, i32 95, i32 98, i32 99, i32 100, i32 101, i32 102, i32 105, i32 110, i32 111, i32 112, i32 113, i32 114, i32 13, i32 104, i32 34], [44 x i8] zeroinitializer }, align 32
@orangefs_normalize_to_errno._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: unknown error code.\0A\00", [37 x i8] zeroinitializer }, align 32
@orangefs_normalize_to_errno._entry_ptr.19 = internal global ptr @orangefs_normalize_to_errno._entry.17, section ".printk_index", align 4
@orangefs_make_bad_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017*** NOT making bad root inode %pU\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"orangefs_make_bad_inode\00", [40 x i8] zeroinitializer }, align 32
@orangefs_make_bad_inode._entry_ptr = internal global ptr @orangefs_make_bad_inode._entry, section ".printk_index", align 4
@orangefs_make_bad_inode._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017*** making bad inode %pU\0A\00", [36 x i8] zeroinitializer }, align 32
@orangefs_make_bad_inode._entry_ptr.24 = internal global ptr @orangefs_make_bad_inode._entry.22, section ".printk_index", align 4
@is_root_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.27, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: root handle: %pU, this handle: %pU:\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"is_root_handle\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/orangefs/orangefs-kernel.h\00", [34 x i8] zeroinitializer }, align 32
@is_root_handle._entry_ptr = internal global ptr @is_root_handle._entry, section ".printk_index", align 4
@copy_attributes_from_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017(UID) %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"copy_attributes_from_inode\00", [37 x i8] zeroinitializer }, align 32
@copy_attributes_from_inode._entry_ptr = internal global ptr @copy_attributes_from_inode._entry, section ".printk_index", align 4
@copy_attributes_from_inode._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017(GID) %d\0A\00", [20 x i8] zeroinitializer }, align 32
@copy_attributes_from_inode._entry_ptr.32 = internal global ptr @copy_attributes_from_inode._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 32, i64 4278190081, i64 4278190082, i64 4278190083, i64 4278190084, i64 4278190085, i64 4278190086, i64 4278190087, i64 4278190088, i64 4278190089, i64 4278190090, i64 4278190091, i64 4278190092, i64 4278190093, i64 4278190095, i64 4278190096, i64 4278190097, i64 4278190098, i64 4278190099, i64 4278251009]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 8]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 243, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 294, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 390, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 443, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 486, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 487, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 511, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"PINT_errno_mapping\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 461, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 530, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 204, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 208, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [33 x i8] c"../fs/orangefs/orangefs-kernel.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 287, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 147, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [32 x i8] c"../fs/orangefs/orangefs-utils.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 152, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @copy_attributes_from_inode._entry, ptr @copy_attributes_from_inode._entry.30, ptr @copy_attributes_from_inode._entry_ptr, ptr @copy_attributes_from_inode._entry_ptr.32, ptr @is_root_handle._entry, ptr @is_root_handle._entry_ptr, ptr @orangefs_inode_check_changed._entry, ptr @orangefs_inode_check_changed._entry_ptr, ptr @orangefs_inode_getattr._entry, ptr @orangefs_inode_getattr._entry.3, ptr @orangefs_inode_getattr._entry_ptr, ptr @orangefs_inode_getattr._entry_ptr.5, ptr @orangefs_inode_setattr._entry, ptr @orangefs_inode_setattr._entry_ptr, ptr @orangefs_make_bad_inode._entry, ptr @orangefs_make_bad_inode._entry.22, ptr @orangefs_make_bad_inode._entry_ptr, ptr @orangefs_make_bad_inode._entry_ptr.24, ptr @orangefs_normalize_to_errno._entry, ptr @orangefs_normalize_to_errno._entry.11, ptr @orangefs_normalize_to_errno._entry.14, ptr @orangefs_normalize_to_errno._entry.17, ptr @orangefs_normalize_to_errno._entry_ptr, ptr @orangefs_normalize_to_errno._entry_ptr.13, ptr @orangefs_normalize_to_errno._entry_ptr.16, ptr @orangefs_normalize_to_errno._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @PINT_errno_mapping, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_getattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_getattr._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_check_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_inode_setattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_normalize_to_errno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_normalize_to_errno._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_normalize_to_errno._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PINT_errno_mapping to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_normalize_to_errno._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_make_bad_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_make_bad_inode._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_root_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_attributes_from_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_attributes_from_inode._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fsid_of_op(ptr noundef readonly %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %op, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %upcall = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3
  %0 = ptrtoint ptr %upcall to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %upcall, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then.if.end_crit_edge [
    i32 -16777215, label %sw.bb
    i32 -16777214, label %sw.bb2
    i32 -16777213, label %sw.bb6
    i32 -16777212, label %sw.bb11
    i32 -16777211, label %sw.bb16
    i32 -16777210, label %sw.bb21
    i32 -16777209, label %sw.bb26
    i32 -16777208, label %sw.bb31
    i32 -16777207, label %sw.bb36
    i32 -16777206, label %sw.bb41
    i32 -16777205, label %sw.bb45
    i32 -16777204, label %sw.bb49
    i32 -16777203, label %sw.bb54
    i32 -16777201, label %sw.bb59
    i32 -16777200, label %sw.bb63
    i32 -16777199, label %sw.bb68
    i32 -16777198, label %sw.bb73
    i32 -16777197, label %sw.bb78
    i32 -16716287, label %sw.bb83
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3, i32 24
  %3 = ptrtoint ptr %fs_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fs_id, align 8
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id5 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %fs_id5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fs_id5, align 8
  br label %if.end

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id10 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %7 = ptrtoint ptr %fs_id10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fs_id10, align 8
  br label %if.end

sw.bb11:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id15 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %9 = ptrtoint ptr %fs_id15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fs_id15, align 8
  br label %if.end

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id20 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %11 = ptrtoint ptr %fs_id20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fs_id20, align 8
  br label %if.end

sw.bb21:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id25 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %13 = ptrtoint ptr %fs_id25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fs_id25, align 8
  br label %if.end

sw.bb26:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id30 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %15 = ptrtoint ptr %fs_id30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fs_id30, align 8
  br label %if.end

sw.bb31:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id35 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %17 = ptrtoint ptr %fs_id35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fs_id35, align 8
  br label %if.end

sw.bb36:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id40 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %19 = ptrtoint ptr %fs_id40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fs_id40, align 8
  br label %if.end

sw.bb41:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id44 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %21 = ptrtoint ptr %fs_id44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fs_id44, align 8
  br label %if.end

sw.bb45:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %req47 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7
  %23 = ptrtoint ptr %req47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %req47, align 8
  br label %if.end

sw.bb49:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id53 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %25 = ptrtoint ptr %fs_id53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fs_id53, align 8
  br label %if.end

sw.bb54:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id58 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %27 = ptrtoint ptr %fs_id58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fs_id58, align 8
  br label %if.end

sw.bb59:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id62 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 1
  %29 = ptrtoint ptr %fs_id62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fs_id62, align 4
  br label %if.end

sw.bb63:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id67 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %31 = ptrtoint ptr %fs_id67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fs_id67, align 8
  br label %if.end

sw.bb68:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id72 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %33 = ptrtoint ptr %fs_id72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fs_id72, align 8
  br label %if.end

sw.bb73:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id77 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %35 = ptrtoint ptr %fs_id77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fs_id77, align 8
  br label %if.end

sw.bb78:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id82 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %37 = ptrtoint ptr %fs_id82 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fs_id82, align 8
  br label %if.end

sw.bb83:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fs_id87 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %op, i32 0, i32 3, i32 7, i32 0, i32 3
  %39 = ptrtoint ptr %fs_id87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fs_id87, align 8
  br label %if.end

if.end:                                           ; preds = %sw.bb83, %sw.bb78, %sw.bb73, %sw.bb68, %sw.bb63, %sw.bb59, %sw.bb54, %sw.bb49, %sw.bb45, %sw.bb41, %sw.bb36, %sw.bb31, %sw.bb26, %sw.bb21, %sw.bb16, %sw.bb11, %sw.bb6, %sw.bb2, %sw.bb, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %fsid.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %40, %sw.bb83 ], [ %38, %sw.bb78 ], [ %36, %sw.bb73 ], [ %34, %sw.bb68 ], [ %32, %sw.bb63 ], [ %30, %sw.bb59 ], [ %28, %sw.bb54 ], [ %26, %sw.bb49 ], [ %24, %sw.bb45 ], [ %22, %sw.bb41 ], [ %20, %sw.bb36 ], [ %18, %sw.bb31 ], [ %16, %sw.bb26 ], [ %14, %sw.bb21 ], [ %12, %sw.bb16 ], [ %10, %sw.bb11 ], [ %8, %sw.bb6 ], [ %6, %sw.bb2 ], [ %4, %sw.bb ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %fsid.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_inode_getattr(ptr noundef %inode, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, i32 noundef %flags) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool6.not = icmp eq i32 %flags, 0
  %getattr_time = getelementptr i8, ptr %inode, i32 792
  %attr_valid = getelementptr i8, ptr %inode, i32 800
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  br label %again

again:                                            ; preds = %if.then14, %do.end5
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #8
  br i1 %tobool6.not, label %land.lhs.true, label %again.lor.lhs.false_crit_edge

again.lor.lhs.false_crit_edge:                    ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %again
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %2 = ptrtoint ptr %getattr_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %getattr_time, align 8
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true.if.then11_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %again.lor.lhs.false_crit_edge
  %4 = ptrtoint ptr %attr_valid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_state, align 8
  %and9 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end19, label %lor.lhs.false8.if.then11_crit_edge

lor.lhs.false8.if.then11_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false8.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  %8 = ptrtoint ptr %attr_valid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr275 = load i32, ptr %attr_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr275)
  %tobool13.not = icmp eq i32 %.pr275, 0
  br i1 %tobool13.not, label %if.end17, label %if.then11.if.then14_crit_edge

if.then11.if.then14_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then14:                                        ; preds = %if.then11.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  %call16 = tail call i32 @write_inode_now(ptr noundef %inode, i32 noundef 1) #8
  br label %again

if.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  %call21 = tail call ptr @op_alloc(i32 noundef -16777212) #8
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 3, i32 7
  %9 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %spec.select = select i1 %tobool6.not, i32 922747007, i32 923795583
  %10 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %flags35 = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags35, align 8
  %and36 = and i32 %17, 1
  %call38 = tail call i32 @service_operation(ptr noundef nonnull %call21, ptr noundef nonnull @.str.1, i32 noundef %and36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.end24.again2_crit_edge, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end24.again2_crit_edge:                        ; preds = %if.end24
  br label %again2

again2:                                           ; preds = %if.then58, %if.end24.again2_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #8
  br i1 %tobool6.not, label %land.lhs.true44, label %again2.lor.lhs.false48_crit_edge

again2.lor.lhs.false48_crit_edge:                 ; preds = %again2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false48

land.lhs.true44:                                  ; preds = %again2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %getattr_time to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %getattr_time, align 8
  %sub46 = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub46)
  %cmp47 = icmp slt i32 %sub46, 0
  br i1 %cmp47, label %land.lhs.true44.if.then55_crit_edge, label %land.lhs.true44.lor.lhs.false48_crit_edge

land.lhs.true44.lor.lhs.false48_crit_edge:        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false48

land.lhs.true44.if.then55_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

lor.lhs.false48:                                  ; preds = %land.lhs.true44.lor.lhs.false48_crit_edge, %again2.lor.lhs.false48_crit_edge
  %21 = ptrtoint ptr %attr_valid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %attr_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool50.not = icmp eq i32 %22, 0
  br i1 %tobool50.not, label %lor.lhs.false51, label %lor.lhs.false48.if.then58_crit_edge

lor.lhs.false48.if.then58_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %23 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_state, align 8
  %and53 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end79, label %lor.lhs.false51.if.then55_crit_edge

lor.lhs.false51.if.then55_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false51.if.then55_crit_edge, %land.lhs.true44.if.then55_crit_edge
  %25 = ptrtoint ptr %attr_valid to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %attr_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool57.not = icmp eq i32 %.pr, 0
  br i1 %tobool57.not, label %if.end61, label %if.then55.if.then58_crit_edge

if.then55.if.then58_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

if.then58:                                        ; preds = %if.then55.if.then58_crit_edge, %lor.lhs.false48.if.then58_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  %call60 = tail call i32 @write_inode_now(ptr noundef %inode, i32 noundef 1) #8
  br label %again2

if.end61:                                         ; preds = %if.then55
  %26 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_state, align 8
  %and63 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body67, label %if.end61.out_unlock_crit_edge

if.end61.out_unlock_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.body67:                                        ; preds = %if.end61
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %28 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and68 = and i64 %28, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and68)
  %tobool69.not = icmp eq i64 %and68, 0
  br i1 %tobool69.not, label %do.body67.out_unlock_crit_edge, label %do.end73

do.body67.out_unlock_crit_edge:                   ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.end73:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #11
  br label %out_unlock

if.end79:                                         ; preds = %lor.lhs.false51
  %and80 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.then82, label %if.end79.if.end89_crit_edge

if.end79.if.end89_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then82:                                        ; preds = %if.end79
  %resp = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4
  %link_target = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4, i32 0, i32 3, i32 104
  %call85 = tail call fastcc i32 @orangefs_inode_is_stale(ptr noundef %inode, ptr noundef %resp, ptr noundef %link_target)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then82.if.end89_crit_edge, label %if.then82.out_unlock_crit_edge

if.then82.out_unlock_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then82.if.end89_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.end89:                                         ; preds = %if.then82.if.end89_crit_edge, %if.end79.if.end89_crit_edge
  %resp91 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4
  %objtype = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4, i32 0, i32 3, i32 72
  %29 = ptrtoint ptr %objtype to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %objtype, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %30, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb110
    i32 8, label %sw.bb116
  ]

sw.bb:                                            ; preds = %if.end89
  %flags1.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4, i32 0, i32 3, i32 80
  %32 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %flags1.i, align 8
  %34 = trunc i64 %33 to i32
  %35 = lshr i32 %34, 1
  %36 = and i32 %35, 8
  %37 = lshr i32 %34, 3
  %38 = and i32 %37, 4
  %39 = or i32 %38, %36
  %40 = lshr i32 %34, 6
  %41 = and i32 %40, 2
  %42 = or i32 %39, %41
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %43 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %i_flags, align 4
  br i1 %tobool6.not, label %sw.bb.sw.epilog_crit_edge, label %if.then99

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then99:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %size = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4, i32 0, i32 3, i32 24
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %size, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %46 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %i_size, align 8
  %blksize = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4, i32 0, i32 3, i32 96
  %47 = ptrtoint ptr %blksize to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %blksize, align 8
  %conv = trunc i64 %48 to i32
  %49 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 true), !range !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %iszero = icmp eq i32 %conv, 0
  %50 = trunc i32 %49 to i8
  %51 = add nuw nsw i8 %50, 1
  %conv106 = select i1 %iszero, i8 0, i8 %51
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %52 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv106, ptr %i_blkbits, align 2
  %conv107 = trunc i64 %45 to i16
  %i_bytes = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 19
  %53 = ptrtoint ptr %i_bytes to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv107, ptr %i_bytes, align 4
  %add = add i64 %45, 512
  %rem = srem i64 %45, 512
  %sub108 = sub i64 %add, %rem
  %div = sdiv i64 %sub108, 512
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %54 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %div, ptr %i_blocks, align 8
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.end89
  br i1 %tobool6.not, label %sw.bb110.if.end115_crit_edge, label %if.then112

sw.bb110.if.end115_crit_edge:                     ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then112:                                       ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #10
  %i_size113 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %55 = ptrtoint ptr %i_size113 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 4096, ptr %i_size113, align 8
  tail call void @inode_set_bytes(ptr noundef %inode, i64 noundef 4096) #8
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %sw.bb110.if.end115_crit_edge
  tail call void @set_nlink(ptr noundef %inode, i32 noundef 1) #8
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.end89
  br i1 %tobool81.not, label %sw.bb116.sw.epilog_crit_edge, label %if.then119

sw.bb116.sw.epilog_crit_edge:                     ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then119:                                       ; preds = %sw.bb116
  %link_target122 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4, i32 0, i32 3, i32 104
  %call124 = tail call i32 @strlen(ptr noundef %link_target122) #12
  %conv125 = zext i32 %call124 to i64
  %i_size126 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %56 = ptrtoint ptr %i_size126 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv125, ptr %i_size126, align 8
  %link_target127 = getelementptr i8, ptr %inode, i32 -352
  %call133 = tail call i32 @strscpy(ptr noundef %link_target127, ptr noundef %link_target122, i32 noundef 256) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %call133)
  %cmp134 = icmp eq i32 %call133, -7
  br i1 %cmp134, label %if.then119.out_unlock_crit_edge, label %if.end137

if.then119.out_unlock_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end137:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %57 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %link_target127, ptr %57, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @orangefs_make_bad_inode(ptr noundef %inode)
  br label %out_unlock

sw.epilog:                                        ; preds = %if.end137, %sw.bb116.sw.epilog_crit_edge, %if.end115, %if.then99, %sw.bb.sw.epilog_crit_edge
  %retval.0.i268 = phi i32 [ 40960, %sw.bb116.sw.epilog_crit_edge ], [ 40960, %if.end137 ], [ 32768, %sw.bb.sw.epilog_crit_edge ], [ 32768, %if.then99 ], [ 16384, %if.end115 ]
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %59 = ptrtoint ptr %resp91 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %resp91, align 8
  %call145 = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %60) #8
  %61 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call145, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %group = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4, i32 0, i32 1
  %62 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %group, align 4
  %call150 = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %63) #8
  %64 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call150, ptr %i_gid, align 8
  %atime = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4, i32 0, i32 3
  %65 = ptrtoint ptr %atime to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %atime, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %67 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %i_atime, align 8
  %mtime = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4, i32 0, i32 3, i32 8
  %68 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %mtime, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %70 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %i_mtime, align 8
  %ctime = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4, i32 0, i32 3, i32 16
  %71 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %ctime, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %73 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %i_ctime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %74 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec165 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %75 = ptrtoint ptr %tv_nsec165 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %tv_nsec165, align 8
  %tv_nsec167 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %76 = ptrtoint ptr %tv_nsec167 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %tv_nsec167, align 8
  %call168 = tail call fastcc i32 @is_root_handle(ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  %cond170 = select i1 %tobool169.not, i32 0, i32 512
  %or = or i32 %cond170, %retval.0.i268
  %perms.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call21, i32 0, i32 4, i32 4, i32 0, i32 2
  %77 = ptrtoint ptr %perms.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %perms.i, align 8
  %79 = and i32 %78, 3583
  %or175 = or i32 %or, %79
  %conv176 = trunc i32 %or175 to i16
  %80 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv176, ptr %inode, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_getattr_timeout_msecs to i32))
  %82 = load i32, ptr @orangefs_getattr_timeout_msecs, align 4
  %mul = mul i32 %82, 100
  %div177 = sdiv i32 %mul, 1000
  %add178 = add i32 %div177, %81
  %83 = ptrtoint ptr %getattr_time to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add178, ptr %getattr_time, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %sw.epilog, %sw.default, %if.then119.out_unlock_crit_edge, %if.then82.out_unlock_crit_edge, %do.end73, %do.body67.out_unlock_crit_edge, %if.end61.out_unlock_crit_edge
  %ret.0 = phi i32 [ -116, %sw.default ], [ 0, %sw.epilog ], [ 0, %if.end61.out_unlock_crit_edge ], [ 0, %do.end73 ], [ 0, %do.body67.out_unlock_crit_edge ], [ -116, %if.then82.out_unlock_crit_edge ], [ -5, %if.then119.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  br label %out

out:                                              ; preds = %out_unlock, %if.end24.out_crit_edge
  %ret.1 = phi i32 [ %call38, %if.end24.out_crit_edge ], [ %ret.0, %out_unlock ]
  tail call void @op_release(ptr noundef nonnull %call21) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end19.cleanup_crit_edge, %if.end17
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %ret.1, %out ], [ -12, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @op_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @service_operation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @orangefs_inode_is_stale(ptr noundef %inode, ptr nocapture noundef readonly %attrs, ptr nocapture noundef readonly %link_target) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  %objtype = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, ptr %attrs, i32 0, i32 16
  %0 = ptrtoint ptr %objtype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %objtype, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %1, label %entry.if.then_crit_edge [
    i32 1, label %entry.lor.lhs.false_crit_edge
    i32 4, label %if.then2.i
    i32 8, label %lor.lhs.false.thread
  ]

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2.i, %entry.lor.lhs.false_crit_edge
  %retval.0.i.ph = phi i16 [ -32768, %entry.lor.lhs.false_crit_edge ], [ 16384, %if.then2.i ]
  %3 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %inode, align 8
  %xor2.i = xor i16 %4, %retval.0.i.ph
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.thread:                             ; preds = %entry
  %5 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %inode, align 8
  %xor2.i35 = xor i16 %6, -24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i35)
  %tobool.i36 = icmp ugt i16 %xor2.i35, 4095
  br i1 %tobool.i36, label %lor.lhs.false.thread.if.then_crit_edge, label %land.lhs.true

lor.lhs.false.thread.if.then_crit_edge:           ; preds = %lor.lhs.false.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.thread.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call fastcc i32 @is_root_handle(ptr noundef %inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %7 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and8.i = and i64 %7, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i)
  %tobool9.not.i = icmp eq i64 %and8.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  br i1 %tobool9.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %add.ptr.i) #11
  br label %cleanup

do.body7.i:                                       ; preds = %if.then
  br i1 %tobool9.not.i, label %do.body7.i.do.end17.i_crit_edge, label %do.end12.i

do.body7.i.do.end17.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i

do.end12.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %add.ptr.i) #11
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end12.i, %do.body7.i.do.end17.i_crit_edge
  tail call void @make_bad_inode(ptr noundef %inode) #8
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false.thread
  %link_target6 = getelementptr i8, ptr %inode, i32 -352
  %call7 = tail call i32 @strncmp(ptr noundef %link_target6, ptr noundef %link_target, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  %call.i16 = tail call fastcc i32 @is_root_handle(ptr noundef %inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %8 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and8.i18 = and i64 %8, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i18)
  %tobool9.not.i19 = icmp eq i64 %and8.i18, 0
  br i1 %tobool.not.i17, label %do.body7.i24, label %do.body.i20

do.body.i20:                                      ; preds = %if.then8
  br i1 %tobool9.not.i19, label %do.body.i20.cleanup_crit_edge, label %do.end.i23

do.body.i20.cleanup_crit_edge:                    ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i23:                                       ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %add.ptr.i) #11
  br label %cleanup

do.body7.i24:                                     ; preds = %if.then8
  br i1 %tobool9.not.i19, label %do.body7.i24.do.end17.i28_crit_edge, label %do.end12.i27

do.body7.i24.do.end17.i28_crit_edge:              ; preds = %do.body7.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i28

do.end12.i27:                                     ; preds = %do.body7.i24
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %add.ptr.i) #11
  br label %do.end17.i28

do.end17.i28:                                     ; preds = %do.end12.i27, %do.body7.i24.do.end17.i28_crit_edge
  tail call void @make_bad_inode(ptr noundef %inode) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end17.i28, %do.end.i23, %do.body.i20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end17.i, %do.end.i, %do.body.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %do.body.i.cleanup_crit_edge ], [ 1, %do.end.i ], [ 1, %do.end17.i ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 1, %do.body.i20.cleanup_crit_edge ], [ 1, %do.end.i23 ], [ 1, %do.end17.i28 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @orangefs_make_bad_inode(ptr noundef %inode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @is_root_handle(ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and8 = and i64 %0, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool9.not, label %do.body.if.end18_crit_edge, label %do.end

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -376
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %add.ptr.i.i) #11
  br label %if.end18

do.body7:                                         ; preds = %entry
  br i1 %tobool9.not, label %do.body7.do.end17_crit_edge, label %do.end12

do.body7.do.end17_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i22 = getelementptr i8, ptr %inode, i32 -376
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %add.ptr.i.i22) #11
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.body7.do.end17_crit_edge
  tail call void @make_bad_inode(ptr noundef %inode) #8
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %do.end, %do.body.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is_root_handle(ptr noundef %inode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -376
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef %4, ptr noundef %add.ptr.i.i) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %i_sb5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb5, align 4
  %s_fs_info.i15 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i15, align 16
  %add.ptr.i.i16 = getelementptr i8, ptr %inode, i32 -376
  %arrayidx.i = getelementptr [16 x i8], ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %inode, i32 -361
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %.not = icmp eq i8 %10, %12
  br i1 %.not, label %for.cond.i, label %do.end4.ORANGEFS_khandle_cmp.exit.thread_crit_edge

do.end4.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.i:                                       ; preds = %do.end4
  %arrayidx.1.i = getelementptr [16 x i8], ptr %8, i32 0, i32 14
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx2.1.i = getelementptr i8, ptr %inode, i32 -362
  %15 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %.not33 = icmp eq i8 %14, %16
  br i1 %.not33, label %for.cond.1.i, label %for.cond.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr [16 x i8], ptr %8, i32 0, i32 13
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx2.2.i = getelementptr i8, ptr %inode, i32 -363
  %19 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx2.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %.not34 = icmp eq i8 %18, %20
  br i1 %.not34, label %for.cond.2.i, label %for.cond.1.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.1.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr [16 x i8], ptr %8, i32 0, i32 12
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx2.3.i = getelementptr i8, ptr %inode, i32 -364
  %23 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %.not35 = icmp eq i8 %22, %24
  br i1 %.not35, label %for.cond.3.i, label %for.cond.2.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.2.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr [16 x i8], ptr %8, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx2.4.i = getelementptr i8, ptr %inode, i32 -365
  %27 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx2.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %.not36 = icmp eq i8 %26, %28
  br i1 %.not36, label %for.cond.4.i, label %for.cond.3.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.3.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr [16 x i8], ptr %8, i32 0, i32 10
  %29 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx2.5.i = getelementptr i8, ptr %inode, i32 -366
  %31 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx2.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %.not37 = icmp eq i8 %30, %32
  br i1 %.not37, label %for.cond.5.i, label %for.cond.4.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.4.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr [16 x i8], ptr %8, i32 0, i32 9
  %33 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.6.i, align 1
  %arrayidx2.6.i = getelementptr i8, ptr %inode, i32 -367
  %35 = ptrtoint ptr %arrayidx2.6.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx2.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %.not38 = icmp eq i8 %34, %36
  br i1 %.not38, label %for.cond.6.i, label %for.cond.5.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.5.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr [16 x i8], ptr %8, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.7.i, align 1
  %arrayidx2.7.i = getelementptr i8, ptr %inode, i32 -368
  %39 = ptrtoint ptr %arrayidx2.7.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx2.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %.not39 = icmp eq i8 %38, %40
  br i1 %.not39, label %for.cond.7.i, label %for.cond.6.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.6.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr [16 x i8], ptr %8, i32 0, i32 7
  %41 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.8.i, align 1
  %arrayidx2.8.i = getelementptr i8, ptr %inode, i32 -369
  %43 = ptrtoint ptr %arrayidx2.8.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx2.8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %44)
  %.not40 = icmp eq i8 %42, %44
  br i1 %.not40, label %for.cond.8.i, label %for.cond.7.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.7.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr [16 x i8], ptr %8, i32 0, i32 6
  %45 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.9.i, align 1
  %arrayidx2.9.i = getelementptr i8, ptr %inode, i32 -370
  %47 = ptrtoint ptr %arrayidx2.9.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %.not41 = icmp eq i8 %46, %48
  br i1 %.not41, label %for.cond.9.i, label %for.cond.8.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.8.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %arrayidx.10.i = getelementptr [16 x i8], ptr %8, i32 0, i32 5
  %49 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.10.i, align 1
  %arrayidx2.10.i = getelementptr i8, ptr %inode, i32 -371
  %51 = ptrtoint ptr %arrayidx2.10.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx2.10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %.not42 = icmp eq i8 %50, %52
  br i1 %.not42, label %for.cond.10.i, label %for.cond.9.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.9.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %arrayidx.11.i = getelementptr [16 x i8], ptr %8, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.11.i, align 1
  %arrayidx2.11.i = getelementptr i8, ptr %inode, i32 -372
  %55 = ptrtoint ptr %arrayidx2.11.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx2.11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %56)
  %.not43 = icmp eq i8 %54, %56
  br i1 %.not43, label %for.cond.11.i, label %for.cond.10.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.10.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %arrayidx.12.i = getelementptr [16 x i8], ptr %8, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.12.i, align 1
  %arrayidx2.12.i = getelementptr i8, ptr %inode, i32 -373
  %59 = ptrtoint ptr %arrayidx2.12.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx2.12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %.not44 = icmp eq i8 %58, %60
  br i1 %.not44, label %for.cond.12.i, label %for.cond.11.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.11.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %arrayidx.13.i = getelementptr [16 x i8], ptr %8, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.13.i, align 1
  %arrayidx2.13.i = getelementptr i8, ptr %inode, i32 -374
  %63 = ptrtoint ptr %arrayidx2.13.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx2.13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %.not45 = icmp eq i8 %62, %64
  br i1 %.not45, label %for.cond.13.i, label %for.cond.12.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.12.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %arrayidx.14.i = getelementptr [16 x i8], ptr %8, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.14.i, align 1
  %arrayidx2.14.i = getelementptr i8, ptr %inode, i32 -375
  %67 = ptrtoint ptr %arrayidx2.14.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx2.14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %68)
  %.not46 = icmp eq i8 %66, %68
  br i1 %.not46, label %for.cond.14.i, label %for.cond.13.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge

for.cond.13.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

for.cond.14.i:                                    ; preds = %for.cond.13.i
  %69 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %8, align 1
  %71 = ptrtoint ptr %add.ptr.i.i16 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %add.ptr.i.i16, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %72)
  %cmp4.15.i = icmp ugt i8 %70, %72
  br i1 %cmp4.15.i, label %for.cond.14.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, label %ORANGEFS_khandle_cmp.exit

for.cond.14.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge: ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ORANGEFS_khandle_cmp.exit.thread

ORANGEFS_khandle_cmp.exit:                        ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %72)
  %cmp12.15.i.not = icmp uge i8 %70, %72
  %spec.select = zext i1 %cmp12.15.i.not to i32
  br label %ORANGEFS_khandle_cmp.exit.thread

ORANGEFS_khandle_cmp.exit.thread:                 ; preds = %ORANGEFS_khandle_cmp.exit, %for.cond.14.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.13.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.12.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.11.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.10.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.9.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.8.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.7.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.6.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.5.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.4.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.3.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.2.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.1.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %for.cond.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge, %do.end4.ORANGEFS_khandle_cmp.exit.thread_crit_edge
  %73 = phi i32 [ 0, %do.end4.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.1.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.2.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.3.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.4.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.5.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.6.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.7.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.8.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.9.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.10.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.11.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.12.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.13.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ 0, %for.cond.14.i.ORANGEFS_khandle_cmp.exit.thread_crit_edge ], [ %spec.select, %ORANGEFS_khandle_cmp.exit ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_inode_check_changed(ptr noundef %inode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %add.ptr.i) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call ptr @op_alloc(i32 noundef -16777212) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end5.cleanup_crit_edge, label %if.end9

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %do.end5
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call6, i32 0, i32 3, i32 7
  %1 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %mask = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call6, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777280, ptr %mask, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and14 = and i32 %8, 1
  %call16 = tail call i32 @service_operation(ptr noundef nonnull %call6, ptr noundef nonnull @.str.7, i32 noundef %and14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp.not = icmp eq i32 %call16, 0
  br i1 %cmp.not, label %if.end18, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %resp = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call6, i32 0, i32 4, i32 4
  %link_target = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call6, i32 0, i32 4, i32 4, i32 0, i32 3, i32 104
  %call21 = tail call fastcc i32 @orangefs_inode_is_stale(ptr noundef %inode, ptr noundef %resp, ptr noundef %link_target)
  br label %out

out:                                              ; preds = %if.end18, %if.end9.out_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end9.out_crit_edge ], [ %call21, %if.end18 ]
  tail call void @op_release(ptr noundef nonnull %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %do.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_inode_setattr(ptr noundef %inode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  %call1 = tail call ptr @op_alloc(i32 noundef -16777208) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #8
  %attr_uid = getelementptr i8, ptr %inode, i32 804
  %0 = ptrtoint ptr %attr_uid to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %attr_uid, align 4
  %1 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call2 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %1) #8
  %uid = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %uid, align 4
  %attr_gid = getelementptr i8, ptr %inode, i32 808
  %3 = ptrtoint ptr %attr_gid to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack57 = load i32, ptr %attr_gid, align 8
  %4 = insertvalue [1 x i32] undef, i32 %.unpack57, 0
  %call4 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %4) #8
  %gid = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call4, ptr %gid, align 8
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7
  %6 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %mask.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 112
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mask.i, align 8
  %attr_valid.i = getelementptr i8, ptr %inode, i32 800
  %8 = ptrtoint ptr %attr_valid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attr_valid.i, align 8
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end11.i_crit_edge, label %if.then.i

if.end.if.end11.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end
  %attributes = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %10 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack105.i = load i32, ptr %i_uid.i, align 4
  %11 = insertvalue [1 x i32] undef, i32 %.unpack105.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %11) #8
  %12 = ptrtoint ptr %attributes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call1.i, ptr %attributes, align 8
  %13 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask.i, align 8
  %or.i = or i32 %14, 1
  store i32 %or.i, ptr %mask.i, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %15 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and3.i = and i64 %15, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end11.i_crit_edge, label %do.end.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call1.i) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.then.i.if.end11.i_crit_edge, %if.end.if.end11.i_crit_edge
  %16 = ptrtoint ptr %attr_valid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attr_valid.i, align 8
  %and13.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end33.i_crit_edge, label %if.then15.i

if.end11.i.if.end33.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then15.i:                                      ; preds = %if.end11.i
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %18 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack.i = load i32, ptr %i_gid.i, align 8
  %19 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call17.i = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %19) #8
  %group.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 12
  %20 = ptrtoint ptr %group.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call17.i, ptr %group.i, align 4
  %21 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask.i, align 8
  %or19.i = or i32 %22, 2
  store i32 %or19.i, ptr %mask.i, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %23 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and21.i = and i64 %23, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21.i)
  %tobool22.not.i = icmp eq i64 %and21.i, 0
  br i1 %tobool22.not.i, label %if.then15.i.if.end33.i_crit_edge, label %do.end26.i

if.then15.i.if.end33.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

do.end26.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %call17.i) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end26.i, %if.then15.i.if.end33.i_crit_edge, %if.end11.i.if.end33.i_crit_edge
  %24 = ptrtoint ptr %attr_valid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %attr_valid.i, align 8
  %and35.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end33.i.if.end47.i_crit_edge, label %if.then37.i

if.end33.i.if.end47.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.then37.i:                                      ; preds = %if.end33.i
  %26 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask.i, align 8
  %or39.i = or i32 %27, 8
  store i32 %or39.i, ptr %mask.i, align 8
  %28 = ptrtoint ptr %attr_valid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %attr_valid.i, align 8
  %and41.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then37.i.if.end47.i_crit_edge, label %if.then43.i

if.then37.i.if.end47.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.then43.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %30 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_atime.i, align 8
  %atime.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 24
  %32 = ptrtoint ptr %atime.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %atime.i, align 8
  %or45.i = or i32 %27, 136
  %33 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or45.i, ptr %mask.i, align 8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then43.i, %if.then37.i.if.end47.i_crit_edge, %if.end33.i.if.end47.i_crit_edge
  %34 = ptrtoint ptr %attr_valid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %attr_valid.i, align 8
  %and49.i = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end47.i.if.end62.i_crit_edge, label %if.then51.i

if.end47.i.if.end62.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then51.i:                                      ; preds = %if.end47.i
  %36 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask.i, align 8
  %or53.i = or i32 %37, 32
  store i32 %or53.i, ptr %mask.i, align 8
  %38 = ptrtoint ptr %attr_valid.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %attr_valid.i, align 8
  %and55.i = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.then51.i.if.end62.i_crit_edge, label %if.then57.i

if.then51.i.if.end62.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then57.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %40 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_mtime.i, align 8
  %mtime.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 32
  %42 = ptrtoint ptr %mtime.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %mtime.i, align 8
  %or60.i = or i32 %37, 288
  %43 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or60.i, ptr %mask.i, align 8
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then57.i, %if.then51.i.if.end62.i_crit_edge, %if.end47.i.if.end62.i_crit_edge
  %44 = ptrtoint ptr %attr_valid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %attr_valid.i, align 8
  %and64.i = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end62.i.if.end69.i_crit_edge, label %if.then66.i

if.end62.i.if.end69.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then66.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask.i, align 8
  %or68.i = or i32 %47, 16
  store i32 %or68.i, ptr %mask.i, align 8
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then66.i, %if.end62.i.if.end69.i_crit_edge
  %48 = ptrtoint ptr %attr_valid.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %attr_valid.i, align 8
  %and71.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.end69.i.copy_attributes_from_inode.exit_crit_edge, label %if.then73.i

if.end69.i.copy_attributes_from_inode.exit_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_attributes_from_inode.exit

if.then73.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %inode, align 8
  %52 = and i16 %51, 3583
  %53 = zext i16 %52 to i32
  %perms.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 16
  %54 = ptrtoint ptr %perms.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %perms.i, align 8
  %55 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mask.i, align 8
  %or76.i = or i32 %56, 4
  store i32 %or76.i, ptr %mask.i, align 8
  br label %copy_attributes_from_inode.exit

copy_attributes_from_inode.exit:                  ; preds = %if.then73.i, %if.end69.i.copy_attributes_from_inode.exit_crit_edge
  %57 = ptrtoint ptr %attr_valid.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %attr_valid.i, align 8
  %58 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool13.not = icmp eq i32 %59, 0
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %copy_attributes_from_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @op_release(ptr noundef nonnull %call1) #8
  br label %cleanup

if.end16:                                         ; preds = %copy_attributes_from_inode.exit
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %60 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 33
  %62 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 8
  %and = and i32 %65, 1
  %or = or i32 %and, 32
  %call20 = tail call i32 @service_operation(ptr noundef nonnull %call1, ptr noundef nonnull @__func__.orangefs_inode_setattr, i32 noundef %or) #8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %66 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and21 = and i64 %66, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.end16.do.end28_crit_edge, label %do.end

if.end16.do.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call20) #11
  br label %do.end28

do.end28:                                         ; preds = %do.end, %if.end16.do.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool29.not = icmp eq i32 %call20, 0
  br i1 %tobool29.not, label %if.then32, label %if.then30

if.then30:                                        ; preds = %do.end28
  %call.i = tail call fastcc i32 @is_root_handle(ptr noundef %inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i58 = icmp eq i32 %call.i, 0
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %67 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and8.i = and i64 %67, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i)
  %tobool9.not.i = icmp eq i64 %and8.i, 0
  br i1 %tobool.not.i58, label %do.body7.i, label %do.body.i

do.body.i:                                        ; preds = %if.then30
  br i1 %tobool9.not.i, label %do.body.i.if.end31.thread_crit_edge, label %do.end.i59

do.body.i.if.end31.thread_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.thread

do.end.i59:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %add.ptr.i) #11
  br label %if.end31.thread

do.body7.i:                                       ; preds = %if.then30
  br i1 %tobool9.not.i, label %do.body7.i.do.end17.i_crit_edge, label %do.end12.i

do.body7.i.do.end17.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i

do.end12.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %add.ptr.i) #11
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end12.i, %do.body7.i.do.end17.i_crit_edge
  tail call void @make_bad_inode(ptr noundef %inode) #8
  br label %if.end31.thread

if.end31.thread:                                  ; preds = %do.end17.i, %do.end.i59, %do.body.i.if.end31.thread_crit_edge
  tail call void @op_release(ptr noundef nonnull %call1) #8
  br label %cleanup

if.then32:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @op_release(ptr noundef nonnull %call1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %68, -1
  %getattr_time = getelementptr i8, ptr %inode, i32 792
  %69 = ptrtoint ptr %getattr_time to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub, ptr %getattr_time, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end31.thread, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then32 ], [ %call20, %if.end31.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_normalize_to_errno(i32 noundef %error_code) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error_code)
  %cmp = icmp eq i32 %error_code, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error_code)
  %cmp1 = icmp sgt i32 %error_code, 0
  br i1 %cmp1, label %do.end, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  %sub = sub nsw i32 0, %error_code
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.else.if.end8_crit_edge
  %error_code.addr.0 = phi i32 [ %sub, %do.end ], [ %error_code, %if.else.if.end8_crit_edge ]
  %sub9 = sub i32 0, %error_code.addr.0
  %and = and i32 %sub9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else22, label %if.then10

if.then10:                                        ; preds = %if.end8
  %and12 = and i32 %sub9, 1610612863
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612737, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 1610612737
  br i1 %cmp13, label %if.then10.cleanup_crit_edge, label %do.end18

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end18:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10, i32 noundef %error_code.addr.0) #11
  br label %cleanup

if.else22:                                        ; preds = %if.end8
  %and24 = and i32 %sub9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.end37, label %if.then26

if.then26:                                        ; preds = %if.else22
  %and28 = and i32 %sub9, -1073742721
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %and28)
  %cmp29 = icmp ult i32 %and28, 61
  br i1 %cmp29, label %if.then30, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [61 x i32], ptr @PINT_errno_mapping, i32 0, i32 %and28
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %sub31 = sub i32 0, %1
  br label %cleanup

do.end37:                                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.then30, %if.then26.cleanup_crit_edge, %do.end18, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %do.end18 ], [ %sub31, %if.then30 ], [ -22, %do.end37 ], [ -110, %if.then10.cleanup_crit_edge ], [ -22, %if.then26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ORANGEFS_util_translate_mode(i32 noundef %mode) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %mode, 3583
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/orangefs/orangefs-utils.c", i32 243, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @orangefs_inode_getattr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @orangefs_inode_getattr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/orangefs/orangefs-utils.c", i32 294, i32 3}
!8 = !{ptr @orangefs_inode_getattr._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @orangefs_inode_getattr._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/orangefs/orangefs-utils.c", i32 390, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @orangefs_inode_check_changed._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @orangefs_inode_check_changed._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__func__.orangefs_inode_setattr, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/orangefs/orangefs-utils.c", i32 441, i32 34}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/orangefs/orangefs-utils.c", i32 443, i32 2}
!19 = !{ptr @orangefs_inode_setattr._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @orangefs_inode_setattr._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/orangefs/orangefs-utils.c", i32 486, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @orangefs_normalize_to_errno._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @orangefs_normalize_to_errno._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/orangefs/orangefs-utils.c", i32 487, i32 3}
!28 = !{ptr @orangefs_normalize_to_errno._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @orangefs_normalize_to_errno._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/orangefs/orangefs-utils.c", i32 511, i32 4}
!32 = !{ptr @orangefs_normalize_to_errno._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @orangefs_normalize_to_errno._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/orangefs/orangefs-utils.c", i32 530, i32 3}
!36 = !{ptr @orangefs_normalize_to_errno._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @orangefs_normalize_to_errno._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"modes", i1 false, i1 false}
!39 = !{!"../fs/orangefs/orangefs-utils.c", i32 541, i32 13}
!40 = distinct !{null, !41, !"orangefs_modes", i1 false, i1 false}
!41 = !{!"../fs/orangefs/orangefs-utils.c", i32 547, i32 13}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/orangefs/orangefs-utils.c", i32 204, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @orangefs_make_bad_inode._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @orangefs_make_bad_inode._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/orangefs/orangefs-utils.c", i32 208, i32 3}
!49 = !{ptr @orangefs_make_bad_inode._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @orangefs_make_bad_inode._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/orangefs/orangefs-kernel.h", i32 287, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @is_root_handle._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @is_root_handle._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/orangefs/orangefs-utils.c", i32 147, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @copy_attributes_from_inode._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @copy_attributes_from_inode._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/orangefs/orangefs-utils.c", i32 152, i32 3}
!64 = !{ptr @copy_attributes_from_inode._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @copy_attributes_from_inode._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @PINT_errno_mapping, !67, !"PINT_errno_mapping", i1 false, i1 false}
!67 = !{!"../fs/orangefs/orangefs-utils.c", i32 461, i32 12}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i32 0, i32 33}
