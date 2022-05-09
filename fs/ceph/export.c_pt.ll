; ModuleID = '/llk/IR_all_yes/fs/ceph/export.c_pt.bc'
source_filename = "../fs/ceph/export.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.105, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.106, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.107, ptr, %struct.address_space, %struct.list_head, %union.anon.108, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.105 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.106 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.107 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.108 = type { ptr }
%struct.ceph_vino = type { i64, i64 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.103, %struct.list_head, %struct.list_head, %union.anon.104 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.103 = type { %struct.list_head }
%union.anon.104 = type { %struct.hlist_node }
%struct.ceph_mds_request = type { i64, %struct.rb_node, ptr, %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ceph_vino, %struct.ceph_vino, ptr, ptr, i32, %struct.mutex, %union.ceph_mds_request_args, i32, ptr, i32, %struct.timespec64, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.ceph_mds_reply_info_parsed, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i32, i64, %struct.list_head, %struct.completion, %struct.completion, ptr, ptr, %struct.list_head, i64, i64, i32, %struct.ceph_cap_reservation }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%union.ceph_mds_request_args = type { %struct.anon.139, [16 x i8] }
%struct.anon.139 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_mds_reply_info_parsed = type { ptr, %struct.ceph_mds_reply_info_in, %struct.ceph_mds_reply_info_in, ptr, ptr, i32, ptr, %union.anon.144, ptr, i32 }
%struct.ceph_mds_reply_info_in = type { ptr, %struct.ceph_dir_layout, i32, ptr, i32, ptr, i64, i32, ptr, i32, ptr, i64, i64, i32, %struct.ceph_timespec, %struct.ceph_timespec, i64, i64 }
%struct.ceph_dir_layout = type { i8, i8, i16, i32 }
%struct.ceph_timespec = type { i32, i32 }
%union.anon.144 = type { %struct.anon.146, [8 x i8] }
%struct.anon.146 = type { i8, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_cap_reservation = type { i32, i32 }
%struct.ceph_nfs_confh = type { i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ceph_nfs_snapfh = type <{ i64, i64, i64, i32 }>
%struct.ceph_mount_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_mds_reply_dir_entry = type { ptr, i32, ptr, %struct.ceph_mds_reply_info_in, i64 }
%struct.ceph_mds_reply_inode = type <{ i64, i64, i32, i64, i64, %struct.ceph_mds_reply_cap, %struct.ceph_file_layout_legacy, %struct.ceph_timespec, %struct.ceph_timespec, %struct.ceph_timespec, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.ceph_timespec, %struct.ceph_frag_tree_head }>
%struct.ceph_mds_reply_cap = type <{ i32, i32, i64, i32, i32, i64, i8 }>
%struct.ceph_file_layout_legacy = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_frag_tree_head = type { i32, [0 x %struct.ceph_frag_tree_split] }
%struct.ceph_frag_tree_split = type { i32, i32 }
%struct.anon.145 = type { ptr, i32, i32, i8, i8, i8, i8, ptr }

@ceph_export_ops = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @ceph_encode_fh, ptr @ceph_fh_to_dentry, ptr @ceph_fh_to_parent, ptr @ceph_get_name, ptr @ceph_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@ceph_vino_is_reserved._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ceph_vino_is_reserved = private unnamed_addr constant [22 x i8] c"ceph_vino_is_reserved\00", align 1
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ceph/super.h\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Attempt to access reserved inode number 0x%llx\00", [49 x i8] zeroinitializer }, align 32
@ceph_encode_fh.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_encode_fh\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ceph/export.c\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d : encode_fh %llx with parent %llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ceph: %.*s %12.12s:%-4d : encode_fh %llx with parent %llx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_encode_fh.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%.*s %12.12s:%-4d : encode_fh %llx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ceph: %.*s %12.12s:%-4d : encode_fh %llx\0A\00", [54 x i8] zeroinitializer }, align 32
@ceph_encode_snapfh.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_encode_snapfh\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : encode_snapfh %llx.%llx ret=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d : encode_snapfh %llx.%llx ret=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ceph_fh_to_dentry.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.5, ptr @.str.18, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_fh_to_dentry\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : fh_to_dentry %llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ceph: %.*s %12.12s:%-4d : fh_to_dentry %llx\0A\00", [51 x i8] zeroinitializer }, align 32
@__snapfh_to_dentry.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__snapfh_to_dentry\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : snapfh_to_parent %llx.%llx\0A err=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d : snapfh_to_parent %llx.%llx\0A err=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@__snapfh_to_dentry.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str.23, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%.*s %12.12s:%-4d : snapfh_to_dentry %llx.%llx parent %llx hash %x err=%d\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"ceph: %.*s %12.12s:%-4d : snapfh_to_dentry %llx.%llx parent %llx hash %x err=%d\00", [48 x i8] zeroinitializer }, align 32
@ceph_fh_to_parent.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_fh_to_parent\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : fh_to_parent %llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ceph: %.*s %12.12s:%-4d : fh_to_parent %llx\0A\00", [51 x i8] zeroinitializer }, align 32
@ceph_get_name.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.28, ptr @.str.5, ptr @.str.29, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph_get_name\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%.*s %12.12s:%-4d : get_name %p ino %llx.%llx name %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ceph: %.*s %12.12s:%-4d : get_name %p ino %llx.%llx name %s\0A\00", [35 x i8] zeroinitializer }, align 32
@ceph_get_name.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.28, ptr @.str.5, ptr @.str.31, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : get_name %p ino %llx.%llx err %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : get_name %p ino %llx.%llx err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__get_snap_name.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__get_snap_name\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%.*s %12.12s:%-4d : get_snap_name %p ino %llx.%llx err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ceph: %.*s %12.12s:%-4d : get_snap_name %p ino %llx.%llx err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@ceph_get_parent.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.36, ptr @.str.5, ptr @.str.37, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_get_parent\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%.*s %12.12s:%-4d : get_parent %p ino %llx.%llx err=%ld\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ceph: %.*s %12.12s:%-4d : get_parent %p ino %llx.%llx err=%ld\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 78]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 78]
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"ceph_export_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 577, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"../fs/ceph/super.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 552, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 107, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 115, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 81, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 695, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 723, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 311, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 279, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 282, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 428, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 566, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 569, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 527, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [20 x i8] c"../fs/ceph/export.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 403, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @ceph_export_ops, ptr @ceph_vino_is_reserved._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_vino_is_reserved._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_lookup_inode(ptr noundef %sb, i64 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__lookup_inode(ptr noundef %sb, i64 noundef %ino)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iput(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -116 to ptr), %if.then2 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__lookup_inode(ptr noundef %sb, i64 noundef %ino) unnamed_addr #0 align 64 {
entry:
  %vino.i = alloca %struct.ceph_vino, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc1 = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc1, align 8
  %4 = add i64 %ino, -512
  call void @__sanitizer_cov_trace_const_cmp8(i64 3584, i64 %4)
  %5 = icmp ult i64 %4, 3584
  br i1 %5, label %land.rhs.i, label %ceph_vino_is_reserved.exit

land.rhs.i:                                       ; preds = %entry
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @ceph_vino_is_reserved._rs, ptr noundef nonnull @__func__.ceph_vino_is_reserved) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %land.rhs.i.cleanup32_crit_edge, label %do.end.critedge.i, !prof !86

land.rhs.i.cleanup32_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 554, i32 noundef 9, ptr noundef nonnull @.str.2, i64 noundef %ino) #9
  br label %cleanup32

ceph_vino_is_reserved.exit:                       ; preds = %entry
  %6 = add i64 %ino, -256
  call void @__sanitizer_cov_trace_const_cmp8(i64 3840, i64 %6)
  %7 = icmp ult i64 %6, 3840
  br i1 %7, label %ceph_vino_is_reserved.exit.cleanup32_crit_edge, label %ceph_find_inode.exit

ceph_vino_is_reserved.exit.cleanup32_crit_edge:   ; preds = %ceph_vino_is_reserved.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

ceph_find_inode.exit:                             ; preds = %ceph_vino_is_reserved.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vino.i)
  %8 = ptrtoint ptr %vino.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %ino, ptr %vino.i, align 8
  %vino.coerce.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %vino.i, i32 0, i32 1
  %9 = ptrtoint ptr %vino.coerce.fca.1.gep.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -2, ptr %vino.coerce.fca.1.gep.i, align 8
  %conv.i = trunc i64 %ino to i32
  %call1.i = call ptr @ilookup5(ptr noundef %sb, i32 noundef %conv.i, ptr noundef nonnull @ceph_ino_compare, ptr noundef nonnull %vino.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vino.i)
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %ceph_find_inode.exit
  %call7 = call ptr @ceph_mdsc_create_request(ptr noundef %3, i32 noundef 260, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6.cleanup32_crit_edge, label %if.end11

if.then6.cleanup32_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

if.end11:                                         ; preds = %if.then6
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %10 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %call13 = call zeroext i1 @ceph_security_xattr_wanted(ptr noundef %13) #9
  %spec.select = select i1 %call13, i32 1090519040, i32 16777216
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call7, i32 0, i32 17
  %14 = ptrtoint ptr %r_args to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %r_args, align 8
  %r_ino1 = getelementptr inbounds %struct.ceph_mds_request, ptr %call7, i32 0, i32 11
  %15 = ptrtoint ptr %r_ino1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %ino, ptr %r_ino1, align 8
  %vino.sroa.7.0.r_ino1.sroa_idx = getelementptr inbounds %struct.ceph_mds_request, ptr %call7, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %vino.sroa.7.0.r_ino1.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -2, ptr %vino.sroa.7.0.r_ino1.sroa_idx, align 8
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call7, i32 0, i32 40
  %17 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %r_num_caps, align 4
  %call17 = call i32 @ceph_mdsc_do_request(ptr noundef %3, ptr noundef null, ptr noundef %call7) #9
  %r_target_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call7, i32 0, i32 14
  %18 = ptrtoint ptr %r_target_inode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %r_target_inode, align 4
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %if.then22.critedge, label %if.then19

if.then19:                                        ; preds = %if.end11
  call void @ihold(ptr noundef nonnull %19) #9
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call7, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #9
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup32_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.cleanup32_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #9
  br label %cleanup32

if.then.i.i:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #9
  br label %cleanup32

if.then22.critedge:                               ; preds = %if.end11
  %r_kref.i62 = getelementptr inbounds %struct.ceph_mds_request, ptr %call7, i32 0, i32 3
  %call.i.i.i.i.i.i.i63 = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i62, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @llvm.prefetch.p0(ptr %r_kref.i62, i32 1, i32 3, i32 1) #9
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i62, ptr %r_kref.i62, i32 1, ptr elementtype(i32) %r_kref.i62) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i64 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i64)
  %cmp.i.i.i.i.i65 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i64, 1
  br i1 %cmp.i.i.i.i.i65, label %if.then.i.i69, label %if.end5.i.i.i.i.i67

if.end5.i.i.i.i.i67:                              ; preds = %if.then22.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i64)
  %.not.i.i.i.i.i66 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i64, 0
  br i1 %.not.i.i.i.i.i66, label %if.end5.i.i.i.i.i67.ceph_mdsc_put_request.exit70_crit_edge, label %if.then10.i.i.i.i.i68, !prof !86

if.end5.i.i.i.i.i67.ceph_mdsc_put_request.exit70_crit_edge: ; preds = %if.end5.i.i.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %ceph_mdsc_put_request.exit70

if.then10.i.i.i.i.i68:                            ; preds = %if.end5.i.i.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %r_kref.i62, i32 noundef 3) #9
  br label %ceph_mdsc_put_request.exit70

if.then.i.i69:                                    ; preds = %if.then22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i62) #9
  br label %ceph_mdsc_put_request.exit70

ceph_mdsc_put_request.exit70:                     ; preds = %if.then.i.i69, %if.then10.i.i.i.i.i68, %if.end5.i.i.i.i.i67.ceph_mdsc_put_request.exit70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %cond.true, label %ceph_mdsc_put_request.exit70.cleanup32_crit_edge

ceph_mdsc_put_request.exit70.cleanup32_crit_edge: ; preds = %ceph_mdsc_put_request.exit70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

cond.true:                                        ; preds = %ceph_mdsc_put_request.exit70
  call void @__sanitizer_cov_trace_pc() #11
  %22 = inttoptr i32 %call17 to ptr
  br label %cleanup32

if.else:                                          ; preds = %ceph_find_inode.exit
  %i_ceph_flags.i = getelementptr i8, ptr %call1.i, i32 -868
  %23 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp.i71 = icmp sgt i32 %30, 3
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i71
  br i1 %spec.select.i, label %if.then28, label %if.else.cleanup32_crit_edge

if.else.cleanup32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @iput(ptr noundef nonnull %call1.i) #9
  br label %cleanup32

cleanup32:                                        ; preds = %if.then28, %if.else.cleanup32_crit_edge, %cond.true, %ceph_mdsc_put_request.exit70.cleanup32_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup32_crit_edge, %if.then6.cleanup32_crit_edge, %ceph_vino_is_reserved.exit.cleanup32_crit_edge, %do.end.critedge.i, %land.rhs.i.cleanup32_crit_edge
  %retval.1 = phi ptr [ inttoptr (i32 -116 to ptr), %if.then28 ], [ inttoptr (i32 -116 to ptr), %ceph_vino_is_reserved.exit.cleanup32_crit_edge ], [ %22, %cond.true ], [ %call7, %if.then6.cleanup32_crit_edge ], [ inttoptr (i32 -116 to ptr), %ceph_mdsc_put_request.exit70.cleanup32_crit_edge ], [ %call1.i, %if.else.cleanup32_crit_edge ], [ inttoptr (i32 -116 to ptr), %land.rhs.i.cleanup32_crit_edge ], [ inttoptr (i32 -116 to ptr), %do.end.critedge.i ], [ %19, %if.end5.i.i.i.i.i.cleanup32_crit_edge ], [ %19, %if.then10.i.i.i.i.i ], [ %19, %if.then.i.i ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_encode_fh(ptr noundef %inode, ptr nocapture noundef %rawfh, ptr nocapture noundef %max_len, ptr noundef readonly %parent_inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %snap.i = getelementptr i8, ptr %inode, i32 -944
  %0 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %1)
  %cmp.not = icmp eq i64 %1, -2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call fastcc i32 @ceph_encode_snapfh(ptr noundef %inode, ptr noundef %rawfh, ptr noundef %max_len)
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %parent_inode, null
  %2 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %max_len, align 4
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp2 = icmp slt i32 %.pr, 4
  br i1 %cmp2, label %if.then3, label %if.then9

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %max_len, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp4 = icmp slt i32 %.pr, 2
  br i1 %cmp4, label %if.then5, label %if.else21

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %max_len, align 4
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_encode_fh.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_encode_fh, %if.then14)) #9
          to label %do.end [label %if.then14], !srcloc !90

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -952
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i.i, align 8
  %add.ptr.i.i64 = getelementptr i8, ptr %parent_inode, i32 -952
  %7 = ptrtoint ptr %add.ptr.i.i64 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i.i64, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_encode_fh.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.7, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.5, i32 0, i32 8), i32 noundef 108, i64 noundef %6, i64 noundef %8) #9
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.then9
  %add.ptr.i.i65 = getelementptr i8, ptr %inode, i32 -952
  %9 = ptrtoint ptr %add.ptr.i.i65 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.i.i65, align 8
  %11 = ptrtoint ptr %rawfh to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %rawfh, align 1
  %add.ptr.i.i66 = getelementptr i8, ptr %parent_inode, i32 -952
  %12 = ptrtoint ptr %add.ptr.i.i66 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.i.i66, align 8
  %parent_ino = getelementptr inbounds %struct.ceph_nfs_confh, ptr %rawfh, i32 0, i32 1
  %14 = ptrtoint ptr %parent_ino to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %parent_ino, align 1
  br label %if.end42

if.else21:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_encode_fh.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_encode_fh, %if.then34)) #9
          to label %do.end39 [label %if.then34], !srcloc !90

if.then34:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i67 = getelementptr i8, ptr %inode, i32 -952
  %15 = ptrtoint ptr %add.ptr.i.i67 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.i.i67, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_encode_fh.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.10, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.5, i32 0, i32 8), i32 noundef 115, i64 noundef %16) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %if.else21
  %add.ptr.i.i68 = getelementptr i8, ptr %inode, i32 -952
  %17 = ptrtoint ptr %add.ptr.i.i68 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr.i.i68, align 8
  %19 = ptrtoint ptr %rawfh to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %rawfh, align 1
  br label %if.end42

if.end42:                                         ; preds = %do.end39, %do.end
  %storemerge = phi i32 [ 2, %do.end39 ], [ 4, %do.end ]
  %type.0 = phi i32 [ 1, %do.end39 ], [ 2, %do.end ]
  %20 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %max_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then5, %if.then3, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 255, %if.then3 ], [ 255, %if.then5 ], [ %type.0, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ceph_fh_to_dentry(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fh_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fh_type, label %entry.cleanup_crit_edge [
    i32 78, label %if.then
    i32 1, label %entry.if.end5_crit_edge
    i32 2, label %entry.if.end5_crit_edge23
  ]

entry.if.end5_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc ptr @__snapfh_to_dentry(ptr noundef %sb, ptr noundef %fid, i1 noundef zeroext false)
  br label %cleanup

if.end5:                                          ; preds = %entry.if.end5_crit_edge, %entry.if.end5_crit_edge23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_len)
  %cmp6 = icmp ult i32 %fh_len, 2
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fh_to_dentry.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fh_to_dentry, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !90

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %fid to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %fid, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fh_to_dentry.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.19, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.5, i32 0, i32 8), i32 noundef 311, i64 noundef %2) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %3 = ptrtoint ptr %fid to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %fid, align 1
  %call16 = tail call fastcc ptr @__fh_to_dentry(ptr noundef %sb, i64 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.then ], [ %call16, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ceph_fh_to_parent(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fh_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %fh_type, label %entry.cleanup_crit_edge [
    i32 78, label %if.then
    i32 2, label %if.end4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc ptr @__snapfh_to_dentry(ptr noundef %sb, ptr noundef %fid, i1 noundef zeroext true)
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fh_len)
  %cmp5 = icmp ult i32 %fh_len, 4
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fh_to_parent.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fh_to_parent, %if.then11)) #9
          to label %do.end [label %if.then11], !srcloc !90

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %parent_ino = getelementptr inbounds %struct.ceph_nfs_confh, ptr %fid, i32 0, i32 1
  %1 = ptrtoint ptr %parent_ino to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %parent_ino, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fh_to_parent.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.27, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.5, i32 0, i32 8), i32 noundef 428, i64 noundef %2) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %3 = ptrtoint ptr %fid to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %fid, align 1
  %call14 = tail call fastcc ptr @__get_parent(ptr noundef %sb, ptr noundef null, i64 noundef %4)
  %cmp16 = icmp eq ptr %call14, inttoptr (i32 -2 to ptr)
  br i1 %cmp16, label %if.then23, label %do.end.cleanup_crit_edge, !prof !91

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %parent_ino24 = getelementptr inbounds %struct.ceph_nfs_confh, ptr %fid, i32 0, i32 1
  %5 = ptrtoint ptr %parent_ino24 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %parent_ino24, align 1
  %call25 = tail call fastcc ptr @__fh_to_dentry(ptr noundef %sb, i64 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ %call25, %if.then23 ], [ %call14, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_get_name(ptr noundef %parent, ptr noundef %name, ptr noundef %child) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %snap.i = getelementptr i8, ptr %1, i32 -944
  %2 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %3)
  %cmp.not = icmp eq i64 %3, -2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc i32 @__get_snap_name(ptr noundef %parent, ptr noundef %name, ptr noundef %child)
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc4 = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %mdsc4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdsc4, align 8
  %call5 = tail call ptr @ceph_mdsc_create_request(ptr noundef %9, i32 noundef 261, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %d_inode.i91 = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i91 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i91, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %r_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 5
  %13 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %r_inode, align 8
  tail call void @ihold(ptr noundef %1) #9
  %r_ino2 = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 12
  %14 = ptrtoint ptr %d_inode.i91 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i91, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 -952
  %16 = call ptr @memmove(ptr %r_ino2, ptr %add.ptr.i.i, i32 16)
  %17 = load ptr, ptr %d_inode.i91, align 8
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 13
  %18 = ptrtoint ptr %r_parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %r_parent, align 8
  tail call void @ihold(ptr noundef %17) #9
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 7, ptr noundef %r_req_flags) #9
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 40
  %19 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %r_num_caps, align 4
  %call14 = tail call i32 @ceph_mdsc_do_request(ptr noundef %9, ptr noundef null, ptr noundef %call5) #9
  %20 = ptrtoint ptr %d_inode.i91 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i91, align 8
  %i_rwsem.i95 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i95) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then16, label %do.body29

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %dname = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 36, i32 4
  %22 = ptrtoint ptr %dname to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dname, align 4
  %dname_len = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 36, i32 5
  %24 = ptrtoint ptr %dname_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dname_len, align 8
  %26 = call ptr @memcpy(ptr %name, ptr %23, i32 %25)
  %27 = load i32, ptr %dname_len, align 8
  %arrayidx = getelementptr i8, ptr %name, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_name.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_name, %if.then23)) #9
          to label %if.end52 [label %if.then23], !srcloc !90

if.then23:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 -952
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr.i, align 8
  %31 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %snap.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_name.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.30, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.5, i32 0, i32 8), i32 noundef 567, ptr noundef %child, i64 noundef %30, i64 noundef %32, ptr noundef %name) #9
  br label %if.end52

do.body29:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_name.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_name, %if.then41)) #9
          to label %if.end52 [label %if.then41], !srcloc !90

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i97 = getelementptr i8, ptr %1, i32 -952
  %33 = ptrtoint ptr %add.ptr.i97 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr.i97, align 8
  %35 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %snap.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_name.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.32, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.5, i32 0, i32 8), i32 noundef 570, ptr noundef %child, i64 noundef %34, i64 noundef %36, i32 noundef %call14) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then41, %do.body29, %if.then23, %if.then16
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #9
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %10, %if.then7 ], [ %call14, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %call14, %if.then10.i.i.i.i.i ], [ %call14, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ceph_get_parent(ptr noundef %child) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %snap.i = getelementptr i8, ptr %1, i32 -944
  %2 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %3)
  %cmp.not = icmp eq i64 %3, -2
  br i1 %cmp.not, label %if.else31, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %child, align 8
  %6 = and i32 %5, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %6)
  %7 = icmp eq i32 %6, 2097152
  br i1 %7, label %if.end, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end:                                           ; preds = %if.then
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -952
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.i.i, align 8
  %call6 = tail call fastcc ptr @__lookup_inode(ptr noundef %9, i64 noundef %11)
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.do.body_crit_edge, label %if.end10

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end10:                                         ; preds = %if.end
  %12 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp12.not = icmp eq i64 %13, -1
  br i1 %cmp12.not, label %if.end10.if.else_crit_edge, label %if.then13

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then13:                                        ; preds = %if.end10
  %call14 = tail call ptr @ceph_get_snapdir(ptr noundef %call6) #9
  %14 = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  tail call void @iput(ptr noundef %call6) #9
  %cmp.i67 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then13.do.body_crit_edge, label %if.end22

if.then13.do.body_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end22:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %if.then23, label %if.end22.if.else_crit_edge

if.end22.if.else_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then23:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call ptr @d_obtain_root(ptr noundef %call14) #9
  br label %do.body

if.else:                                          ; preds = %if.end22.if.else_crit_edge, %if.end10.if.else_crit_edge
  %dir.174 = phi ptr [ %call14, %if.end22.if.else_crit_edge ], [ %call6, %if.end10.if.else_crit_edge ]
  %call25 = tail call ptr @d_obtain_alias(ptr noundef %dir.174) #9
  br label %do.body

if.else31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %d_sb = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 9
  %17 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_sb, align 4
  %call32 = tail call fastcc ptr @__get_parent(ptr noundef %18, ptr noundef %child, i64 noundef 0)
  br label %do.body

do.body:                                          ; preds = %if.else31, %if.else, %if.then23, %if.then13.do.body_crit_edge, %if.end.do.body_crit_edge, %if.then.do.body_crit_edge
  %dn.3 = phi ptr [ %call32, %if.else31 ], [ %call24, %if.then23 ], [ %call25, %if.else ], [ inttoptr (i32 -22 to ptr), %if.then.do.body_crit_edge ], [ %call6, %if.end.do.body_crit_edge ], [ %call14, %if.then13.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_parent.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_parent, %if.then38)) #9
          to label %cleanup45 [label %if.then38], !srcloc !90

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 -952
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr.i, align 8
  %21 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %snap.i, align 8
  %cmp.i.i = icmp ugt ptr %dn.3, inttoptr (i32 -4096 to ptr)
  %23 = ptrtoint ptr %dn.3 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %23, i32 0
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_parent.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.38, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.5, i32 0, i32 8), i32 noundef 404, ptr noundef %child, i64 noundef %20, i64 noundef %22, i32 noundef %spec.select.i) #9
  br label %cleanup45

cleanup45:                                        ; preds = %if.then38, %do.body
  ret ptr %dn.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mdsc_create_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_security_xattr_wanted(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mdsc_do_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_mdsc_put_request(ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %r_kref = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !86

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ceph_ino_compare(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %snap = getelementptr i8, ptr %inode, i32 -944
  %4 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %snap, align 8
  %snap3 = getelementptr inbounds %struct.ceph_vino, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %snap3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %snap3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp4 = icmp eq i64 %5, %7
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_release_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_encode_snapfh(ptr noundef %inode, ptr nocapture noundef %rawfh, ptr nocapture noundef %max_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %snap.i = getelementptr i8, ptr %inode, i32 -944
  %0 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %snap.i, align 8
  %2 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp slt i32 %3, 7
  br i1 %cmp, label %entry.do.body.sink.split_crit_edge, label %if.end

entry.do.body.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %cmp1.not = icmp eq i64 %1, -1
  br i1 %cmp1.not, label %if.end.if.then16_crit_edge, label %if.then2

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @d_find_alias(ptr noundef %inode) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then2.do.body_crit_edge, label %if.end5

if.then2.do.body_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5:                                          ; preds = %if.then2
  %4 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end5.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end5.rcu_read_lock.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end5.rcu_read_lock.exit_crit_edge
  %d_parent = getelementptr inbounds %struct.dentry, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %d_inode.i, align 8
  %snap.i2 = getelementptr i8, ptr %11, i32 -944
  %12 = ptrtoint ptr %snap.i2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %snap.i2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp8.not = icmp eq i64 %13, -1
  br i1 %cmp8.not, label %rcu_read_lock.exit.if.end12_crit_edge, label %if.then9

rcu_read_lock.exit.if.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 -952
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i.i, align 8
  %parent_ino = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %rawfh, i32 0, i32 2
  %16 = ptrtoint ptr %parent_ino to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %parent_ino, align 1
  %call11 = tail call i32 @ceph_dentry_hash(ptr noundef %11, ptr noundef nonnull %call3) #9
  %hash = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %rawfh, i32 0, i32 3
  %17 = ptrtoint ptr %hash to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %call11, ptr %hash, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %rcu_read_lock.exit.if.end12_crit_edge
  %call.i3 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i3, label %if.end12.if.end14_crit_edge, label %land.lhs.true.i6

if.end12.if.end14_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true.i6:                                 ; preds = %if.end12
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.if.end14_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.if.end14_crit_edge:              ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.if.end14_crit_edge, label %if.then.i9

land.lhs.true2.i8.if.end14_crit_edge:             ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then.i9, %land.lhs.true2.i8.if.end14_crit_edge, %land.lhs.true.i6.if.end14_crit_edge, %if.end12.if.end14_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  %18 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i10 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @dput(ptr noundef nonnull %call3) #9
  br i1 %cmp8.not, label %if.end14.if.then16_crit_edge, label %if.end14.if.end23_crit_edge

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %if.end.if.then16_crit_edge
  %22 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %inode, align 8
  %24 = and i16 %23, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %24)
  %cmp17 = icmp eq i16 %24, 16384
  br i1 %cmp17, label %if.end20, label %if.then16.do.body_crit_edge

if.then16.do.body_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end20:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %rawfh to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %rawfh, align 1
  %parent_ino21 = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %rawfh, i32 0, i32 2
  %27 = ptrtoint ptr %parent_ino21 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %parent_ino21, align 1
  %hash22 = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %rawfh, i32 0, i32 3
  %28 = ptrtoint ptr %hash22 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %hash22, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.end14.if.end23_crit_edge
  %add.ptr.i.i12 = getelementptr i8, ptr %inode, i32 -952
  %29 = ptrtoint ptr %add.ptr.i.i12 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr.i.i12, align 8
  %31 = ptrtoint ptr %rawfh to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %rawfh, align 1
  %snapid26 = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %rawfh, i32 0, i32 1
  %32 = ptrtoint ptr %snapid26 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %1, ptr %snapid26, align 1
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %if.end23, %entry.do.body.sink.split_crit_edge
  %ret.0.ph = phi i32 [ 78, %if.end23 ], [ 255, %entry.do.body.sink.split_crit_edge ]
  %33 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 7, ptr %max_len, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.then16.do.body_crit_edge, %if.then2.do.body_crit_edge
  %ret.0 = phi i32 [ -22, %if.then16.do.body_crit_edge ], [ -22, %if.then2.do.body_crit_edge ], [ %ret.0.ph, %do.body.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_encode_snapfh.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_encode_snapfh, %if.then31)) #9
          to label %cleanup38 [label %if.then31], !srcloc !90

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.i, align 8
  %36 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %snap.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_encode_snapfh.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.13, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.5, i32 0, i32 8), i32 noundef 81, i64 noundef %35, i64 noundef %37, i32 noundef %ret.0) #9
  br label %cleanup38

cleanup38:                                        ; preds = %if.then31, %do.body
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_dentry_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__snapfh_to_dentry(ptr noundef %sb, ptr nocapture noundef readonly %sfh, i1 noundef zeroext %want_parent) unnamed_addr #0 align 64 {
entry:
  %vino.i = alloca %struct.ceph_vino, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc1 = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc1, align 8
  br i1 %want_parent, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %parent_ino = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %sfh, i32 0, i32 2
  %4 = ptrtoint ptr %parent_ino to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %parent_ino, align 1
  %snapid = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %sfh, i32 0, i32 1
  %6 = ptrtoint ptr %snapid to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %snapid, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp = icmp eq i64 %7, -1
  br i1 %cmp, label %if.then.if.end17_crit_edge, label %if.else

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %sfh to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %sfh, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %5)
  %cmp5 = icmp eq i64 %9, %5
  %. = select i1 %cmp5, i64 -1, i64 %7
  br label %if.end17

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %sfh to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %sfh, align 1
  %snapid15 = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %sfh, i32 0, i32 1
  %12 = ptrtoint ptr %snapid15 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %snapid15, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.else12, %if.else, %if.then.if.end17_crit_edge
  %vino.sroa.10.0 = phi i64 [ %13, %if.else12 ], [ -2, %if.then.if.end17_crit_edge ], [ %., %if.else ]
  %vino.sroa.0.0 = phi i64 [ %11, %if.else12 ], [ %5, %if.then.if.end17_crit_edge ], [ %5, %if.else ]
  %14 = add i64 %vino.sroa.0.0, -512
  call void @__sanitizer_cov_trace_const_cmp8(i64 3584, i64 %14)
  %15 = icmp ult i64 %14, 3584
  br i1 %15, label %land.rhs.i, label %ceph_vino_is_reserved.exit

land.rhs.i:                                       ; preds = %if.end17
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @ceph_vino_is_reserved._rs, ptr noundef nonnull @__func__.ceph_vino_is_reserved) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %land.rhs.i.cleanup_crit_edge, label %do.end.critedge.i, !prof !86

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 554, i32 noundef 9, ptr noundef nonnull @.str.2, i64 noundef %vino.sroa.0.0) #9
  br label %cleanup

ceph_vino_is_reserved.exit:                       ; preds = %if.end17
  %16 = add i64 %vino.sroa.0.0, -256
  call void @__sanitizer_cov_trace_const_cmp8(i64 3840, i64 %16)
  %17 = icmp ult i64 %16, 3840
  br i1 %17, label %ceph_vino_is_reserved.exit.cleanup_crit_edge, label %ceph_find_inode.exit

ceph_vino_is_reserved.exit.cleanup_crit_edge:     ; preds = %ceph_vino_is_reserved.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ceph_find_inode.exit:                             ; preds = %ceph_vino_is_reserved.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vino.i)
  %18 = ptrtoint ptr %vino.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %vino.sroa.0.0, ptr %vino.i, align 8
  %vino.coerce.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %vino.i, i32 0, i32 1
  %19 = ptrtoint ptr %vino.coerce.fca.1.gep.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %vino.sroa.10.0, ptr %vino.coerce.fca.1.gep.i, align 8
  %conv.i = trunc i64 %vino.sroa.0.0 to i32
  %call1.i = call ptr @ilookup5(ptr noundef %sb, i32 noundef %conv.i, ptr noundef nonnull @ceph_ino_compare, ptr noundef nonnull %vino.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vino.i)
  %tobool23.not = icmp eq ptr %call1.i, null
  br i1 %tobool23.not, label %if.end30, label %if.then24

if.then24:                                        ; preds = %ceph_find_inode.exit
  %i_ceph_flags.i = getelementptr i8, ptr %call1.i, i32 -868
  %20 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i = icmp sgt i32 %27, 3
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %spec.select.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  call void @iput(ptr noundef nonnull %call1.i) #9
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call ptr @d_obtain_alias(ptr noundef nonnull %call1.i) #9
  br label %cleanup

if.end30:                                         ; preds = %ceph_find_inode.exit
  %call31 = call ptr @ceph_mdsc_create_request(ptr noundef %3, i32 noundef 260, i32 noundef 0) #9
  %cmp.i190 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %28 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i, align 8
  %call37 = call zeroext i1 @ceph_security_xattr_wanted(ptr noundef %31) #9
  %spec.select = select i1 %call37, i32 1090519040, i32 16777216
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call31, i32 0, i32 17
  %32 = ptrtoint ptr %r_args to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select, ptr %r_args, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %vino.sroa.10.0)
  %cmp42 = icmp ult i64 %vino.sroa.10.0, -2
  br i1 %cmp42, label %if.then43, label %if.end35.if.end57_crit_edge

if.end35.if.end57_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then43:                                        ; preds = %if.end35
  %33 = call i64 @llvm.bswap.i64(i64 %vino.sroa.10.0)
  %snapid46 = getelementptr inbounds %struct.ceph_mds_request, ptr %call31, i32 0, i32 17, i32 0, i32 1
  %34 = ptrtoint ptr %snapid46 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %snapid46, align 4
  br i1 %want_parent, label %if.then43.if.end57_crit_edge, label %land.lhs.true

if.then43.if.end57_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

land.lhs.true:                                    ; preds = %if.then43
  %35 = ptrtoint ptr %sfh to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %sfh, align 1
  %parent_ino49 = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %sfh, i32 0, i32 2
  %37 = ptrtoint ptr %parent_ino49 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %parent_ino49, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp50.not = icmp eq i64 %36, %38
  br i1 %cmp50.not, label %land.lhs.true.if.end57_crit_edge, label %if.then51

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %39 = call i64 @llvm.bswap.i64(i64 %38)
  %parent = getelementptr inbounds %struct.ceph_mds_request, ptr %call31, i32 0, i32 17, i32 0, i32 3
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %parent, align 4
  %hash = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %sfh, i32 0, i32 3
  %41 = ptrtoint ptr %hash to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %hash, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %hash55 = getelementptr inbounds %struct.ceph_mds_request, ptr %call31, i32 0, i32 17, i32 0, i32 5
  %44 = ptrtoint ptr %hash55 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %hash55, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %land.lhs.true.if.end57_crit_edge, %if.then43.if.end57_crit_edge, %if.end35.if.end57_crit_edge
  %r_ino1 = getelementptr inbounds %struct.ceph_mds_request, ptr %call31, i32 0, i32 11
  %45 = ptrtoint ptr %r_ino1 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %vino.sroa.0.0, ptr %r_ino1, align 8
  %vino.sroa.10.0.r_ino1.sroa_idx = getelementptr inbounds %struct.ceph_mds_request, ptr %call31, i32 0, i32 11, i32 1
  %46 = ptrtoint ptr %vino.sroa.10.0.r_ino1.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %vino.sroa.10.0, ptr %vino.sroa.10.0.r_ino1.sroa_idx, align 8
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call31, i32 0, i32 40
  %47 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %r_num_caps, align 4
  %call58 = call i32 @ceph_mdsc_do_request(ptr noundef %3, ptr noundef null, ptr noundef %call31) #9
  %r_target_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call31, i32 0, i32 14
  %48 = ptrtoint ptr %r_target_inode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %r_target_inode, align 4
  %tobool59.not = icmp eq ptr %49, null
  br i1 %tobool59.not, label %if.end57.if.end79_crit_edge, label %if.then60

if.end57.if.end79_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %vino.sroa.10.0)
  %cmp62 = icmp eq i64 %vino.sroa.10.0, -1
  br i1 %cmp62, label %if.then63, label %if.else68

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %50 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 12
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp64 = icmp eq i32 %52, 0
  %call67 = call ptr @ceph_get_snapdir(ptr noundef nonnull %49) #9
  br label %if.end79

if.else68:                                        ; preds = %if.then60
  %snap.i = getelementptr i8, ptr %49, i32 -944
  %53 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %vino.sroa.10.0)
  %cmp71 = icmp eq i64 %54, %vino.sroa.10.0
  br i1 %cmp71, label %if.then72, label %if.else68.if.end79_crit_edge

if.else68.if.end79_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then72:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  call void @ihold(ptr noundef nonnull %49) #9
  br label %if.end79

if.end79:                                         ; preds = %if.then72, %if.else68.if.end79_crit_edge, %if.then63, %if.end57.if.end79_crit_edge
  %unlinked.1.off0 = phi i1 [ %cmp64, %if.then63 ], [ false, %if.then72 ], [ false, %if.else68.if.end79_crit_edge ], [ false, %if.end57.if.end79_crit_edge ]
  %inode.0 = phi ptr [ %call67, %if.then63 ], [ %49, %if.then72 ], [ inttoptr (i32 -95 to ptr), %if.else68.if.end79_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.end57.if.end79_crit_edge ]
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call31, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #9
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #9
  br label %ceph_mdsc_put_request.exit

if.then.i.i:                                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #9
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  br i1 %want_parent, label %do.body, label %do.body93

do.body:                                          ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__snapfh_to_dentry.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__snapfh_to_dentry, %if.then87)) #9
          to label %if.end114 [label %if.then87], !srcloc !90

if.then87:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__snapfh_to_dentry.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.22, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.5, i32 0, i32 8), i32 noundef 280, i64 noundef %vino.sroa.0.0, i64 noundef %vino.sroa.10.0, i32 noundef %call58) #9
  br label %if.end114

do.body93:                                        ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__snapfh_to_dentry.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__snapfh_to_dentry, %if.then105)) #9
          to label %if.end114 [label %if.then105], !srcloc !90

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  %parent_ino109 = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %sfh, i32 0, i32 2
  %56 = ptrtoint ptr %parent_ino109 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %parent_ino109, align 1
  %hash110 = getelementptr inbounds %struct.ceph_nfs_snapfh, ptr %sfh, i32 0, i32 3
  %58 = ptrtoint ptr %hash110 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %hash110, align 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__snapfh_to_dentry.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.24, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.5, i32 0, i32 8), i32 noundef 283, i64 noundef %vino.sroa.0.0, i64 noundef %vino.sroa.10.0, i64 noundef %57, i32 noundef %59, i32 noundef %call58) #9
  br label %if.end114

if.end114:                                        ; preds = %if.then105, %do.body93, %if.then87, %do.body
  %cmp.i191 = icmp ugt ptr %inode.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.end114.cleanup_crit_edge, label %if.end118

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end118:                                        ; preds = %if.end114
  br i1 %unlinked.1.off0, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %call120 = call ptr @d_obtain_root(ptr noundef %inode.0) #9
  br label %cleanup

cond.false:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %call121 = call ptr @d_obtain_alias(ptr noundef %inode.0) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %cond.true, %if.end114.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end28, %if.then26, %ceph_vino_is_reserved.exit.cleanup_crit_edge, %do.end.critedge.i, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -116 to ptr), %if.then26 ], [ %call29, %if.end28 ], [ %call120, %cond.true ], [ %call121, %cond.false ], [ inttoptr (i32 -116 to ptr), %ceph_vino_is_reserved.exit.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %inode.0, %if.end114.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %land.rhs.i.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %do.end.critedge.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__fh_to_dentry(ptr noundef %sb, i64 noundef %ino) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__lookup_inode(ptr noundef %sb, i64 noundef %ino)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__ceph_do_getattr(ptr noundef %call, ptr noundef null, i32 noundef 16, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iput(ptr noundef %call) #9
  %0 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %1 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %i_count = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_count, i32 noundef 4) #9
  %4 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp8 = icmp eq i32 %5, 1
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iput(ptr noundef %call) #9
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %call12 = tail call ptr @d_obtain_alias(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.then4 ], [ inttoptr (i32 -116 to ptr), %if.then9 ], [ %call12, %if.end11 ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_snapdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_do_getattr(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__get_parent(ptr nocapture noundef readonly %sb, ptr noundef readonly %child, i64 noundef %ino) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc1 = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc1, align 8
  %call2 = tail call ptr @ceph_mdsc_create_request(ptr noundef %3, i32 noundef 259, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %child, null
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %r_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call2, i32 0, i32 5
  %6 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %r_inode, align 8
  %7 = load ptr, ptr %d_inode.i, align 8
  tail call void @ihold(ptr noundef %7) #9
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %r_ino1 = getelementptr inbounds %struct.ceph_mds_request, ptr %call2, i32 0, i32 11
  %8 = ptrtoint ptr %r_ino1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %ino, ptr %r_ino1, align 8
  %.compoundliteral.sroa.2.0.r_ino1.sroa_idx = getelementptr inbounds %struct.ceph_mds_request, ptr %call2, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %.compoundliteral.sroa.2.0.r_ino1.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -2, ptr %.compoundliteral.sroa.2.0.r_ino1.sroa_idx, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %10 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_root, align 64
  %d_inode.i51 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i51, align 8
  %call11 = tail call zeroext i1 @ceph_security_xattr_wanted(ptr noundef %13) #9
  %spec.select = select i1 %call11, i32 1090519040, i32 16777216
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call2, i32 0, i32 17
  %14 = ptrtoint ptr %r_args to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %r_args, align 8
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call2, i32 0, i32 40
  %15 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %r_num_caps, align 4
  %call15 = tail call i32 @ceph_mdsc_do_request(ptr noundef %3, ptr noundef null, ptr noundef %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end9
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call2, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #9
  br label %ceph_mdsc_put_request.exit

if.then.i.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #9
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  %17 = inttoptr i32 %call15 to ptr
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %r_target_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call2, i32 0, i32 14
  %18 = ptrtoint ptr %r_target_inode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %r_target_inode, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %if.then24.critedge, label %if.then21

if.then21:                                        ; preds = %if.end19
  tail call void @ihold(ptr noundef nonnull %19) #9
  %r_kref.i52 = getelementptr inbounds %struct.ceph_mds_request, ptr %call2, i32 0, i32 3
  %call.i.i.i.i.i.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i52, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %r_kref.i52, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i52, ptr %r_kref.i52, i32 1, ptr elementtype(i32) %r_kref.i52) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i54 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i54)
  %cmp.i.i.i.i.i55 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i54, 1
  br i1 %cmp.i.i.i.i.i55, label %if.then.i.i59, label %if.end5.i.i.i.i.i57

if.end5.i.i.i.i.i57:                              ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i54)
  %.not.i.i.i.i.i56 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i54, 0
  br i1 %.not.i.i.i.i.i56, label %if.end5.i.i.i.i.i57.ceph_mdsc_put_request.exit60_crit_edge, label %if.then10.i.i.i.i.i58, !prof !86

if.end5.i.i.i.i.i57.ceph_mdsc_put_request.exit60_crit_edge: ; preds = %if.end5.i.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %ceph_mdsc_put_request.exit60

if.then10.i.i.i.i.i58:                            ; preds = %if.end5.i.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i52, i32 noundef 3) #9
  br label %ceph_mdsc_put_request.exit60

if.then.i.i59:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i52) #9
  br label %ceph_mdsc_put_request.exit60

ceph_mdsc_put_request.exit60:                     ; preds = %if.then.i.i59, %if.then10.i.i.i.i.i58, %if.end5.i.i.i.i.i57.ceph_mdsc_put_request.exit60_crit_edge
  %call27 = tail call ptr @d_obtain_alias(ptr noundef nonnull %19) #9
  br label %cleanup

if.then24.critedge:                               ; preds = %if.end19
  %r_kref.i61 = getelementptr inbounds %struct.ceph_mds_request, ptr %call2, i32 0, i32 3
  %call.i.i.i.i.i.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i61, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %r_kref.i61, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i61, ptr %r_kref.i61, i32 1, ptr elementtype(i32) %r_kref.i61) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i63 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i63)
  %cmp.i.i.i.i.i64 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i63, 1
  br i1 %cmp.i.i.i.i.i64, label %if.then.i.i68, label %if.end5.i.i.i.i.i66

if.end5.i.i.i.i.i66:                              ; preds = %if.then24.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i63)
  %.not.i.i.i.i.i65 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i63, 0
  br i1 %.not.i.i.i.i.i65, label %if.end5.i.i.i.i.i66.cleanup_crit_edge, label %if.then10.i.i.i.i.i67, !prof !86

if.end5.i.i.i.i.i66.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i67:                            ; preds = %if.end5.i.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i61, i32 noundef 3) #9
  br label %cleanup

if.then.i.i68:                                    ; preds = %if.then24.critedge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i61) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i68, %if.then10.i.i.i.i.i67, %if.end5.i.i.i.i.i66.cleanup_crit_edge, %ceph_mdsc_put_request.exit60, %ceph_mdsc_put_request.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %ceph_mdsc_put_request.exit ], [ %call27, %ceph_mdsc_put_request.exit60 ], [ %call2, %entry.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end5.i.i.i.i.i66.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then10.i.i.i.i.i67 ], [ inttoptr (i32 -2 to ptr), %if.then.i.i68 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__get_snap_name(ptr noundef %parent, ptr noundef %name, ptr noundef %child) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i170 = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i170 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i170, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -952
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i.i, align 8
  %add.ptr.i.i171 = getelementptr i8, ptr %3, i32 -952
  %10 = ptrtoint ptr %add.ptr.i.i171 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.i.i171, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp.not = icmp eq i64 %9, %11
  br i1 %cmp.not, label %if.end, label %entry.if.end93_crit_edge

entry.if.end93_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.end:                                           ; preds = %entry
  %snap.i = getelementptr i8, ptr %1, i32 -944
  %12 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp6 = icmp eq i64 %13, -1
  %snap.i172 = getelementptr i8, ptr %3, i32 -944
  %14 = ptrtoint ptr %snap.i172 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %snap.i172, align 8
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %15)
  %cmp9 = icmp eq i64 %15, -2
  br i1 %cmp9, label %if.then10, label %if.then7.if.end93_crit_edge

if.then7.if.end93_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mount_options, align 4
  %snapdir_name = getelementptr inbounds %struct.ceph_mount_options, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %snapdir_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %snapdir_name, align 4
  %call11 = tail call ptr @strcpy(ptr noundef %name, ptr noundef %19) #12
  br label %if.end93

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %15)
  %cmp15.not = icmp eq i64 %15, -1
  br i1 %cmp15.not, label %while.cond.preheader, label %if.end13.if.end93_crit_edge

if.end13.if.end93_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

while.cond.preheader:                             ; preds = %if.end13
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 9
  %20 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdsc, align 8
  %call18222 = tail call ptr @ceph_mdsc_create_request(ptr noundef %21, i32 noundef 1026, i32 noundef 2) #9
  %cmp.i223 = icmp ugt ptr %call18222, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %while.cond.preheader.out.thread198_crit_edge, label %if.end22.lr.ph

while.cond.preheader.out.thread198_crit_edge:     ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread198

if.end22.lr.ph:                                   ; preds = %while.cond.preheader
  %tobool.not.i = icmp eq ptr %parent, null
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 7
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  br label %if.end22

out.thread198:                                    ; preds = %cleanup.out.thread198_crit_edge, %while.cond.preheader.out.thread198_crit_edge
  %last_name.0.lcssa = phi ptr [ null, %while.cond.preheader.out.thread198_crit_edge ], [ %call85, %cleanup.out.thread198_crit_edge ]
  %call18.lcssa = phi ptr [ %call18222, %while.cond.preheader.out.thread198_crit_edge ], [ %call18, %cleanup.out.thread198_crit_edge ]
  %22 = ptrtoint ptr %call18.lcssa to i32
  br label %if.end93

if.end22:                                         ; preds = %cleanup.if.end22_crit_edge, %if.end22.lr.ph
  %call18226 = phi ptr [ %call18222, %if.end22.lr.ph ], [ %call18, %cleanup.if.end22_crit_edge ]
  %next_offset.0225 = phi i32 [ 2, %if.end22.lr.ph ], [ %add, %cleanup.if.end22_crit_edge ]
  %last_name.0224 = phi ptr [ null, %if.end22.lr.ph ], [ %call85, %cleanup.if.end22_crit_edge ]
  %call23 = tail call i32 @ceph_alloc_readdir_reply_buffer(ptr noundef %call18226, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.end25, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end25:                                         ; preds = %if.end22
  %r_direct_mode = getelementptr inbounds %struct.ceph_mds_request, ptr %call18226, i32 0, i32 22
  %23 = ptrtoint ptr %r_direct_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %r_direct_mode, align 8
  %r_readdir_offset = getelementptr inbounds %struct.ceph_mds_request, ptr %call18226, i32 0, i32 41
  %24 = ptrtoint ptr %r_readdir_offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %next_offset.0225, ptr %r_readdir_offset, align 8
  %flags = getelementptr inbounds %struct.ceph_mds_request, ptr %call18226, i32 0, i32 17, i32 0, i32 3
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 256, ptr %flags, align 4
  %tobool26.not = icmp eq ptr %last_name.0224, null
  br i1 %tobool26.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %r_path2 = getelementptr inbounds %struct.ceph_mds_request, ptr %call18226, i32 0, i32 10
  %26 = ptrtoint ptr %r_path2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %last_name.0224, ptr %r_path2, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge
  %r_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call18226, i32 0, i32 5
  %27 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %3, ptr %r_inode, align 8
  tail call void @ihold(ptr noundef %3) #9
  br i1 %tobool.not.i, label %if.end28.dget.exit_crit_edge, label %if.then.i

if.end28.dget.exit_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %dget.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lockref_get(ptr noundef %d_lockref.i) #9
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end28.dget.exit_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call18226, i32 0, i32 6
  %28 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %parent, ptr %r_dentry, align 4
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %29 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdsc, align 8
  %call31 = tail call i32 @ceph_mdsc_do_request(ptr noundef %30, ptr noundef null, ptr noundef %call18226) #9
  tail call void @up_write(ptr noundef %i_rwsem.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %dget.exit.out_crit_edge, label %for.cond.preheader

dget.exit.out_crit_edge:                          ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %dget.exit
  %dir_nr = getelementptr inbounds %struct.ceph_mds_request, ptr %call18226, i32 0, i32 36, i32 7, i32 0, i32 1
  %31 = ptrtoint ptr %dir_nr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dir_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp35220 = icmp sgt i32 %32, 0
  br i1 %cmp35220, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dir_entries = getelementptr inbounds %struct.ceph_mds_request, ptr %call18226, i32 0, i32 36, i32 7, i32 1
  %33 = ptrtoint ptr %dir_entries to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dir_entries, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inode36 = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %34, i32 %i.0221, i32 3
  %35 = ptrtoint ptr %inode36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inode36, align 8
  %tobool37.not = icmp eq ptr %36, null
  br i1 %tobool37.not, label %do.body42, label %do.end48, !prof !91

do.body42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/export.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 497, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

do.end48:                                         ; preds = %for.body
  %37 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %snap.i, align 8
  %snapid = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %snapid to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %snapid, align 1
  %41 = tail call i64 @llvm.bswap.i64(i64 %40)
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %41)
  %cmp52 = icmp eq i64 %38, %41
  br i1 %cmp52, label %if.then53, label %for.inc

if.then53:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.le = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %34, i32 %i.0221
  %42 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.le, align 8
  %name_len = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %34, i32 %i.0221, i32 1
  %44 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %name_len, align 4
  %46 = call ptr @memcpy(ptr %name, ptr %43, i32 %45)
  %47 = load i32, ptr %name_len, align 4
  %arrayidx = getelementptr i8, ptr %name, i32 %47
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx, align 1
  br label %out

for.inc:                                          ; preds = %do.end48
  %inc = add nuw nsw i32 %i.0221, 1
  %exitcond.not = icmp eq i32 %inc, %32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %49 = getelementptr inbounds %struct.ceph_mds_request, ptr %call18226, i32 0, i32 36, i32 7
  %dir_end = getelementptr inbounds %struct.anon.145, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %dir_end to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dir_end, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool57.not = icmp eq i8 %51, 0
  br i1 %tobool57.not, label %do.body60, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp62 = icmp slt i32 %32, 1
  br i1 %cmp62, label %do.body70, label %do.end78, !prof !91

do.body70:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/export.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 510, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end78:                                         ; preds = %do.body60
  %dir_entries79 = getelementptr inbounds %struct.ceph_mds_request, ptr %call18226, i32 0, i32 36, i32 7, i32 1
  %52 = ptrtoint ptr %dir_entries79 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dir_entries79, align 8
  %sub = add nsw i32 %32, -1
  %add.ptr81 = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %53, i32 %sub
  %54 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr81, align 8
  %name_len84 = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %53, i32 %sub, i32 1
  %56 = ptrtoint ptr %name_len84 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %name_len84, align 4
  %call85 = tail call ptr @kstrndup(ptr noundef %55, i32 noundef %57, i32 noundef 3264) #9
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %do.end78.out_crit_edge, label %cleanup

do.end78.out_crit_edge:                           ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cleanup:                                          ; preds = %do.end78
  %add = add i32 %32, %next_offset.0225
  tail call fastcc void @ceph_mdsc_put_request(ptr noundef %call18226)
  %58 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mdsc, align 8
  %call18 = tail call ptr @ceph_mdsc_create_request(ptr noundef %59, i32 noundef 1026, i32 noundef 2) #9
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.out.thread198_crit_edge, label %cleanup.if.end22_crit_edge

cleanup.if.end22_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

cleanup.out.thread198_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread198

out:                                              ; preds = %do.end78.out_crit_edge, %for.end.out_crit_edge, %if.then53, %dget.exit.out_crit_edge, %if.end22.out_crit_edge
  %last_name.3 = phi ptr [ null, %if.then53 ], [ null, %for.end.out_crit_edge ], [ %last_name.0224, %if.end22.out_crit_edge ], [ null, %dget.exit.out_crit_edge ], [ null, %do.end78.out_crit_edge ]
  %err.1 = phi i32 [ 0, %if.then53 ], [ -2, %for.end.out_crit_edge ], [ %call23, %if.end22.out_crit_edge ], [ %call31, %dget.exit.out_crit_edge ], [ -12, %do.end78.out_crit_edge ]
  %tobool91.not = icmp eq ptr %call18226, null
  br i1 %tobool91.not, label %out.if.end93_crit_edge, label %if.then92

out.if.end93_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then92:                                        ; preds = %out
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call18226, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #9
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end93_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.if.end93_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #9
  br label %if.end93

if.then.i.i:                                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #9
  br label %if.end93

if.end93:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end93_crit_edge, %out.if.end93_crit_edge, %out.thread198, %if.end13.if.end93_crit_edge, %if.then10, %if.then7.if.end93_crit_edge, %entry.if.end93_crit_edge
  %err.1195 = phi i32 [ %err.1, %out.if.end93_crit_edge ], [ %err.1, %if.end5.i.i.i.i.i.if.end93_crit_edge ], [ %err.1, %if.then10.i.i.i.i.i ], [ %err.1, %if.then.i.i ], [ -22, %if.end13.if.end93_crit_edge ], [ -22, %if.then7.if.end93_crit_edge ], [ 0, %if.then10 ], [ -22, %entry.if.end93_crit_edge ], [ %22, %out.thread198 ]
  %last_name.3194 = phi ptr [ %last_name.3, %out.if.end93_crit_edge ], [ %last_name.3, %if.end5.i.i.i.i.i.if.end93_crit_edge ], [ %last_name.3, %if.then10.i.i.i.i.i ], [ %last_name.3, %if.then.i.i ], [ null, %if.end13.if.end93_crit_edge ], [ null, %if.then7.if.end93_crit_edge ], [ null, %if.then10 ], [ null, %entry.if.end93_crit_edge ], [ %last_name.0.lcssa, %out.thread198 ]
  tail call void @kfree(ptr noundef %last_name.3194) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__get_snap_name.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__get_snap_name, %if.then103)) #9
          to label %cleanup111 [label %if.then103], !srcloc !90

if.then103:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %add.ptr.i.i, align 8
  %snap = getelementptr i8, ptr %1, i32 -944
  %63 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %snap, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__get_snap_name.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.35, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.5, i32 0, i32 8), i32 noundef 528, ptr noundef %child, i64 noundef %62, i64 noundef %64, i32 noundef %err.1195) #9
  br label %cleanup111

cleanup111:                                       ; preds = %if.then103, %if.end93
  ret i32 %err.1195
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_alloc_readdir_reply_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @ceph_export_ops, !1, !"ceph_export_ops", i1 false, i1 false}
!1 = !{!"../fs/ceph/export.c", i32 577, i32 32}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ceph/super.h", i32 552, i32 2}
!4 = !{ptr @ceph_vino_is_reserved._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.ceph_vino_is_reserved, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"handle_length", i1 false, i1 false}
!9 = !{!"../fs/ceph/export.c", i32 88, i32 19}
!10 = distinct !{null, !11, !"connected_handle_length", i1 false, i1 false}
!11 = !{!"../fs/ceph/export.c", i32 90, i32 19}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ceph/export.c", i32 107, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ceph_encode_fh.__UNIQUE_ID_ddebug315, !13, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!18 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ceph/export.c", i32 115, i32 3}
!22 = !{ptr @ceph_encode_fh.__UNIQUE_ID_ddebug316, !21, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"snap_handle_length", i1 false, i1 false}
!25 = !{!"../fs/ceph/export.c", i32 38, i32 19}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ceph/export.c", i32 81, i32 2}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ceph_encode_snapfh.__UNIQUE_ID_ddebug314, !27, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!30 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ceph/export.c", i32 311, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ceph_fh_to_dentry.__UNIQUE_ID_ddebug319, !39, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!42 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ceph/export.c", i32 279, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__snapfh_to_dentry.__UNIQUE_ID_ddebug317, !44, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!47 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ceph/export.c", i32 282, i32 3}
!50 = !{ptr @__snapfh_to_dentry.__UNIQUE_ID_ddebug318, !49, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!51 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ceph/export.c", i32 428, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ceph_fh_to_parent.__UNIQUE_ID_ddebug321, !53, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!56 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ceph/export.c", i32 566, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ceph_get_name.__UNIQUE_ID_ddebug323, !58, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!61 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ceph/export.c", i32 569, i32 3}
!64 = !{ptr @ceph_get_name.__UNIQUE_ID_ddebug324, !63, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!65 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ceph/export.c", i32 527, i32 2}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__get_snap_name.__UNIQUE_ID_ddebug322, !67, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!70 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ceph/export.c", i32 403, i32 2}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ceph_get_parent.__UNIQUE_ID_ddebug320, !72, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!75 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2148706653}
!88 = !{i64 2148621093, i64 2148621125, i64 2148621154, i64 2148621188, i64 2148621219, i64 2148621242}
!89 = !{i64 2149889077}
!90 = !{i64 2148245086, i64 2148245091, i64 2148245104, i64 2148245148, i64 2148245182, i64 2148245203}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2149938620}
!93 = !{i64 2149938886}
!94 = !{i64 2155890018, i64 2155890499, i64 2155890055, i64 2155890111, i64 2155890145, i64 2155890169, i64 2155890210, i64 2155890231, i64 2155890259, i64 2155890293}
!95 = !{i8 0, i8 2}
!96 = !{i64 2155891760, i64 2155892241, i64 2155891797, i64 2155891853, i64 2155891887, i64 2155891911, i64 2155891952, i64 2155891973, i64 2155892001, i64 2155892035}
