; ModuleID = '/llk/IR_all_yes/fs/overlayfs/namei.c_pt.bc'
source_filename = "../fs/overlayfs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ovl_fb = type <{ i8, i8, i8, i8, i8, %struct.uuid_t, [0 x i32] }>
%struct.ovl_fs = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.ovl_config, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32 }
%struct.ovl_config = type { ptr, ptr, ptr, i8, i8, i8, ptr, i8, i8, i8, i32, i8, i8, i8 }
%struct.ovl_fh = type { [3 x i8], %union.anon.75 }
%union.anon.75 = type { %struct.ovl_fb }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.73, %struct.list_head, %struct.list_head, %union.anon.74 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { %struct.spinlock, i32 }
%union.anon.73 = type { %struct.list_head }
%union.anon.74 = type { %struct.hlist_node }
%struct.ovl_layer = type { ptr, ptr, ptr, i32, i32 }
%struct.ovl_sb = type { ptr, i32, i8, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.70 = type { ptr }
%struct.ovl_path = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.ovl_entry = type { %union.anon.76, i32, [0 x %struct.ovl_path] }
%union.anon.76 = type { %struct.callback_head }
%struct.ovl_lookup_data = type { ptr, %struct.qstr, i8, i8, i8, i8, ptr, i8 }
%struct.ovl_inode_params = type { ptr, ptr, ptr, i8, i32, ptr, ptr }

@ovl_check_origin_fh._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ovl_check_origin_fh = private unnamed_addr constant [20 x i8] c"ovl_check_origin_fh\00", align 1
@ovl_check_origin_fh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.ovl_check_origin_fh, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014overlayfs: invalid origin (%pd2, ftype=%x, origin ftype=%x).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/overlayfs/namei.c\00", [43 x i8] zeroinitializer }, align 32
@ovl_check_origin_fh._entry_ptr = internal global ptr @ovl_check_origin_fh._entry, section ".printk_index", align 4
@ovl_verify_set_fh._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_verify_set_fh = private unnamed_addr constant [18 x i8] c"ovl_verify_set_fh\00", align 1
@ovl_verify_set_fh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.ovl_verify_set_fh, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014overlayfs: failed to verify %s (%pd2, ino=%lu, err=%i)\0A\00", [38 x i8] zeroinitializer }, align 32
@ovl_verify_set_fh._entry_ptr = internal global ptr @ovl_verify_set_fh._entry, section ".printk_index", align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"upper\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"origin\00", [25 x i8] zeroinitializer }, align 32
@ovl_index_upper._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_index_upper = private unnamed_addr constant [16 x i8] c"ovl_index_upper\00", align 1
@ovl_index_upper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.ovl_index_upper, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014overlayfs: invalid index upper (%pd2, upper=%pd2).\0A\00", [42 x i8] zeroinitializer }, align 32
@ovl_index_upper._entry_ptr = internal global ptr @ovl_index_upper._entry, section ".printk_index", align 4
@ovl_verify_index._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_verify_index = private unnamed_addr constant [17 x i8] c"ovl_verify_index\00", align 1
@ovl_verify_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.ovl_verify_index, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014overlayfs: failed to verify index (%pd2, ftype=%x, err=%i)\0A\00", [34 x i8] zeroinitializer }, align 32
@ovl_verify_index._entry_ptr = internal global ptr @ovl_verify_index._entry, section ".printk_index", align 4
@ovl_verify_index._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ovl_verify_index._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.ovl_verify_index, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014overlayfs: orphan index entry (%pd2, ftype=%x, nlink=%u)\0A\00", [36 x i8] zeroinitializer }, align 32
@ovl_verify_index._entry_ptr.11 = internal global ptr @ovl_verify_index._entry.9, section ".printk_index", align 4
@ovl_lookup_index._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_lookup_index = private unnamed_addr constant [17 x i8] c"ovl_lookup_index\00", align 1
@ovl_lookup_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.ovl_lookup_index, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"\014overlayfs: failed inode index lookup (ino=%lu, key=%.*s, err=%i);\0Aoverlayfs: mount with '-o index=off' to disable inodes index.\0A\00", [61 x i8] zeroinitializer }, align 32
@ovl_lookup_index._entry_ptr = internal global ptr @ovl_lookup_index._entry, section ".printk_index", align 4
@ovl_lookup_index._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ovl_lookup_index._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.ovl_lookup_index, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014overlayfs: bad index found (index=%pd2, ftype=%x, origin ftype=%x).\0A\00", [57 x i8] zeroinitializer }, align 32
@ovl_lookup_index._entry_ptr.16 = internal global ptr @ovl_lookup_index._entry.14, section ".printk_index", align 4
@ovl_lookup_index._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ovl_lookup_index._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.ovl_lookup_index, ptr @.str.2, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014overlayfs: suspected uncovered redirected dir found (origin=%pd2, index=%pd2).\0A\00", [46 x i8] zeroinitializer }, align 32
@ovl_lookup_index._entry_ptr.20 = internal global ptr @ovl_lookup_index._entry.18, section ".printk_index", align 4
@ovl_lookup_index._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ovl_lookup_index._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ovl_lookup_index, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\014overlayfs: suspected multiply redirected dir found (upper=%pd2, origin=%pd2, index=%pd2).\0A\00", [35 x i8] zeroinitializer }, align 32
@ovl_lookup_index._entry_ptr.24 = internal global ptr @ovl_lookup_index._entry.22, section ".printk_index", align 4
@ovl_lookup._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_lookup = private unnamed_addr constant [11 x i8] c"ovl_lookup\00", align 1
@ovl_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.ovl_lookup, ptr @.str.2, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014overlayfs: refusing to follow metacopy origin for (%pd2)\0A\00", [36 x i8] zeroinitializer }, align 32
@ovl_lookup._entry_ptr = internal global ptr @ovl_lookup._entry, section ".printk_index", align 4
@ovl_lookup._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ovl_lookup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.ovl_lookup, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014overlayfs: refusing to follow redirect for (%pd2)\0A\00", [43 x i8] zeroinitializer }, align 32
@ovl_lookup._entry_ptr.29 = internal global ptr @ovl_lookup._entry.27, section ".printk_index", align 4
@ovl_lookup._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ovl_lookup._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.ovl_lookup, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014overlayfs: metacopy with no lower data found - abort lookup (%pd2)\0A\00", [58 x i8] zeroinitializer }, align 32
@ovl_lookup._entry_ptr.33 = internal global ptr @ovl_lookup._entry.31, section ".printk_index", align 4
@uuid_null = external dso_local constant %struct.uuid_t, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ovl_do_setxattr.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_do_setxattr\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/overlayfs/overlayfs.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"setxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"overlayfs: setxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [42 x i8] zeroinitializer }, align 32
@ovl_xattr_table = external dso_local local_unnamed_addr constant [0 x [2 x ptr]], align 4
@ovl_get_fh._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_get_fh = private unnamed_addr constant [11 x i8] c"ovl_get_fh\00", align 1
@ovl_get_fh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.ovl_get_fh, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014overlayfs: failed to get origin (%i)\0A\00", [56 x i8] zeroinitializer }, align 32
@ovl_get_fh._entry_ptr = internal global ptr @ovl_get_fh._entry, section ".printk_index", align 4
@ovl_get_fh._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ovl_get_fh._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.ovl_get_fh, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014overlayfs: invalid origin (%*phN)\0A\00", [59 x i8] zeroinitializer }, align 32
@ovl_get_fh._entry_ptr.43 = internal global ptr @ovl_get_fh._entry.41, section ".printk_index", align 4
@ovl_do_getxattr.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.44, ptr @.str.36, ptr @.str.45, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_do_getxattr\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"getxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"overlayfs: getxattr(%pd2, \22%s\22, \22%*pE\22, %zu, 0) = %i\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967235]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967180]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967180]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 4294967260, i64 4294967294]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 4294967260, i64 4294967294]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 391, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 477, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 503, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 606, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 611, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 714, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 741, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 747, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 756, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 924, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 989, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1013, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 204, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 146, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 149, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [28 x i8] c"../fs/overlayfs/overlayfs.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 193, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [24 x i8] c"../fs/overlayfs/namei.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 315, i32 10 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @ovl_check_origin_fh._entry, ptr @ovl_check_origin_fh._entry_ptr, ptr @ovl_get_fh._entry, ptr @ovl_get_fh._entry.41, ptr @ovl_get_fh._entry_ptr, ptr @ovl_get_fh._entry_ptr.43, ptr @ovl_index_upper._entry, ptr @ovl_index_upper._entry_ptr, ptr @ovl_lookup._entry, ptr @ovl_lookup._entry.27, ptr @ovl_lookup._entry.31, ptr @ovl_lookup._entry_ptr, ptr @ovl_lookup._entry_ptr.29, ptr @ovl_lookup._entry_ptr.33, ptr @ovl_lookup_index._entry, ptr @ovl_lookup_index._entry.14, ptr @ovl_lookup_index._entry.18, ptr @ovl_lookup_index._entry.22, ptr @ovl_lookup_index._entry_ptr, ptr @ovl_lookup_index._entry_ptr.16, ptr @ovl_lookup_index._entry_ptr.20, ptr @ovl_lookup_index._entry_ptr.24, ptr @ovl_verify_index._entry, ptr @ovl_verify_index._entry.9, ptr @ovl_verify_index._entry_ptr, ptr @ovl_verify_index._entry_ptr.11, ptr @ovl_verify_set_fh._entry, ptr @ovl_verify_set_fh._entry_ptr, ptr @ovl_check_origin_fh._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ovl_verify_set_fh._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ovl_index_upper._rs, ptr @.str.6, ptr @ovl_verify_index._rs, ptr @.str.7, ptr @ovl_verify_index._rs.8, ptr @.str.10, ptr @ovl_lookup_index._rs, ptr @.str.12, ptr @ovl_lookup_index._rs.13, ptr @.str.15, ptr @ovl_lookup_index._rs.17, ptr @.str.19, ptr @ovl_lookup_index._rs.21, ptr @.str.23, ptr @ovl_lookup._rs, ptr @.str.25, ptr @ovl_lookup._rs.26, ptr @.str.28, ptr @ovl_lookup._rs.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @ovl_get_fh._rs, ptr @.str.39, ptr @ovl_get_fh._rs.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_check_origin_fh._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_check_origin_fh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_verify_set_fh._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_verify_set_fh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_index_upper._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_index_upper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_verify_index._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_verify_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_verify_index._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_verify_index._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_index._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_index._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_index._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_index._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_index._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_index._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_index._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_fh._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_fh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_fh._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_get_fh._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ovl_check_fb_len(ptr nocapture noundef readonly %fb, i32 noundef %fb_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %fb_len)
  %cmp = icmp ult i32 %fb_len, 21
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.ovl_fb, ptr %fb, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %len, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %fb_len)
  %cmp1 = icmp sgt i32 %conv, %fb_len
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %magic = getelementptr inbounds %struct.ovl_fb, ptr %fb, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %magic, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %3)
  %cmp4.not = icmp eq i8 %3, -5
  br i1 %cmp4.not, label %if.end7, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not = icmp eq i8 %5, 0
  br i1 %cmp9.not, label %lor.lhs.false11, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false11:                                  ; preds = %if.end7
  %flags = getelementptr inbounds %struct.ovl_fb, ptr %fb, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  %conv12 = zext i8 %7 to i32
  %and = and i32 %conv12, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14, label %lor.lhs.false11.return_crit_edge

lor.lhs.false11.return_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end14:                                         ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  %8 = and i32 %conv12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %spec.select = select i1 %9, i32 -61, i32 0
  br label %return

return:                                           ; preds = %if.end14, %lor.lhs.false11.return_crit_edge, %if.end7.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -61, %lor.lhs.false11.return_crit_edge ], [ -61, %if.end7.return_crit_edge ], [ %spec.select, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_decode_real_fh(ptr nocapture noundef readonly %ofs, ptr noundef %fh, ptr noundef %mnt, i1 noundef zeroext %connected) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 2) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %uuid = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 8
  %0 = ptrtoint ptr %uuid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uuid, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %uuid3 = getelementptr inbounds %struct.ovl_fh, ptr %fh, i32 0, i32 1, i32 0, i32 5
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 1
  %2 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mnt_sb, align 4
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 40
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid3, ptr noundef dereferenceable(16) %s_uuid, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %cond.true.if.end6_crit_edge, label %cond.true.cleanup_crit_edge

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.true.if.end6_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

cond.false:                                       ; preds = %if.end
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid3, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %cond.false.if.end6_crit_edge, label %cond.false.cleanup_crit_edge

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false.if.end6_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %cond.false.if.end6_crit_edge, %cond.true.if.end6_crit_edge
  %len = getelementptr inbounds %struct.ovl_fh, ptr %fh, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -21
  %fid = getelementptr inbounds %struct.ovl_fh, ptr %fh, i32 1
  %shr = ashr i32 %sub, 2
  %type = getelementptr inbounds %struct.ovl_fh, ptr %fh, i32 0, i32 1, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 1
  %conv7 = zext i8 %7 to i32
  %cond = select i1 %connected, ptr @ovl_acceptable, ptr null
  %call10 = tail call ptr @exportfs_decode_fh(ptr noundef %mnt, ptr noundef %fid, i32 noundef %shr, i32 noundef %conv7, ptr noundef %cond, ptr noundef %mnt) #11
  %cmp.i36 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.end6
  %cmp = icmp eq ptr %call10, inttoptr (i32 -116 to ptr)
  br i1 %cmp, label %land.lhs.true, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.ovl_fh, ptr %fh, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 1
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  %spec.select = select i1 %tobool16.not, ptr null, ptr inttoptr (i32 -116 to ptr)
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  %call20 = tail call zeroext i1 @ovl_dentry_weird(ptr noundef %call10) #11
  br i1 %call20, label %if.then21, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dput(ptr noundef %call10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end19.cleanup_crit_edge, %land.lhs.true, %if.then12.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %cond.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then21 ], [ null, %entry.cleanup_crit_edge ], [ null, %cond.false.cleanup_crit_edge ], [ null, %cond.true.cleanup_crit_edge ], [ %call10, %if.then12.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ], [ %call10, %if.end19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exportfs_decode_fh(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_acceptable(ptr nocapture noundef readonly %ctx, ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %2 = and i32 %1, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %3 = icmp eq i32 %2, 2097152
  br i1 %3, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %call4 = tail call zeroext i1 @is_subdir(ptr noundef %dentry, ptr noundef %7) #11
  %conv = zext i1 %call4 to i32
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end3 ], [ 1, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_dentry_weird(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_check_origin_fh(ptr nocapture noundef readonly %ofs, ptr noundef %fh, i1 noundef zeroext %connected, ptr noundef %upperdentry, ptr nocapture noundef %stackp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp79 = icmp ugt i32 %1, 1
  br i1 %cmp79, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %layers = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layers, align 4
  %fsid = getelementptr %struct.ovl_layer, ptr %3, i32 %i.080, i32 4
  %4 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %fs = getelementptr %struct.ovl_layer, ptr %3, i32 %i.080, i32 2
  %6 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs, align 4
  %bad_uuid = getelementptr inbounds %struct.ovl_sb, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bad_uuid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bad_uuid, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %arrayidx5 = getelementptr %struct.ovl_layer, ptr %3, i32 %i.080
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  %call = tail call ptr @ovl_decode_real_fh(ptr noundef %ofs, ptr noundef %fh, ptr noundef %11, i1 noundef zeroext %connected)
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.end.for.inc_crit_edge, label %if.else

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw i32 %i.080, 1
  %12 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ofs, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else:                                          ; preds = %if.end
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call to i32
  br label %cleanup

if.end16:                                         ; preds = %if.else
  %tobool17.not = icmp eq ptr %upperdentry, null
  br i1 %tobool17.not, label %if.end16.if.end25_crit_edge, label %land.lhs.true18

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true18:                                  ; preds = %if.end16
  %call19 = tail call zeroext i1 @ovl_is_whiteout(ptr noundef nonnull %upperdentry) #11
  br i1 %call19, label %land.lhs.true18.if.end25_crit_edge, label %land.lhs.true20

land.lhs.true18.if.end25_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %upperdentry, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i72 = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i72 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i72, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 8
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %16, align 8
  %xor2.i = xor i16 %22, %20
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %invalid, label %land.lhs.true20.if.end25_crit_edge

land.lhs.true20.if.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true20.if.end25_crit_edge, %land.lhs.true18.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  %23 = ptrtoint ptr %stackp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stackp, align 4
  %tobool26.not = icmp eq ptr %24, null
  br i1 %tobool26.not, label %if.end29, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end29:                                         ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 8) #15
  %26 = ptrtoint ptr %stackp to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i, ptr %stackp, align 4
  %tobool30.not = icmp eq ptr %call7.i, null
  br i1 %tobool30.not, label %if.then31, label %if.end29.if.end32_crit_edge

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dput(ptr noundef nonnull %call) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end29.if.end32_crit_edge, %if.end25.if.end32_crit_edge
  %27 = phi ptr [ %call7.i, %if.end29.if.end32_crit_edge ], [ %24, %if.end25.if.end32_crit_edge ]
  %28 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %layers, align 4
  %arrayidx34 = getelementptr %struct.ovl_layer, ptr %29, i32 %i.080
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx34, ptr %27, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %27, i32 4
  %31 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  br label %cleanup

invalid:                                          ; preds = %land.lhs.true20
  %call35 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_check_origin_fh._rs, ptr noundef nonnull @__func__.ovl_check_origin_fh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %invalid.if.end45_crit_edge, label %do.end

invalid.if.end45_crit_edge:                       ; preds = %invalid
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

do.end:                                           ; preds = %invalid
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 8
  %36 = and i16 %35, -4096
  %and = zext i16 %36 to i32
  %37 = ptrtoint ptr %d_inode.i72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i72, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %38, align 8
  %41 = and i16 %40, -4096
  %and43 = zext i16 %41 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %upperdentry, i32 noundef %and, i32 noundef %and43) #16
  br label %if.end45

if.end45:                                         ; preds = %do.end, %invalid.if.end45_crit_edge
  tail call void @dput(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end32, %if.then31, %if.then13, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then13 ], [ 0, %if.end32 ], [ -12, %if.then31 ], [ -116, %if.end45 ], [ -116, %entry.cleanup_crit_edge ], [ -116, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_is_whiteout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_verify_set_fh(ptr noundef %ofs, ptr noundef %dentry, i32 noundef %ox, ptr noundef %real, i1 noundef zeroext %is_upper, i1 noundef zeroext %set) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_encode_real_fh(ptr noundef %ofs, ptr noundef %real, i1 noundef zeroext %is_upper) #11
  %0 = ptrtoint ptr %call to i32
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @ovl_get_fh(ptr noundef %ofs, ptr noundef %dentry, i32 noundef %ox) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.ovl_verify_fh.exit_crit_edge, label %if.end.i

if.end.ovl_verify_fh.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_verify_fh.exit

if.end.i:                                         ; preds = %if.end
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call.i to i32
  br label %ovl_verify_fh.exit

if.end4.i:                                        ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.ovl_fh, ptr %call, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len.i, align 1
  %len5.i = getelementptr inbounds %struct.ovl_fh, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %len5.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp.not.i = icmp eq i8 %3, %5
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end4.i.if.then12.i_crit_edge

if.end4.i.if.then12.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %conv.i = zext i8 %3 to i32
  %6 = getelementptr inbounds %struct.ovl_fh, ptr %call.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ovl_fh, ptr %call, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr %7, ptr %6, i32 %conv.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool11.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.ovl_verify_fh.exit.thread_crit_edge, label %lor.lhs.false.i.if.then12.i_crit_edge

lor.lhs.false.i.if.then12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

lor.lhs.false.i.ovl_verify_fh.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_verify_fh.exit.thread

if.then12.i:                                      ; preds = %lor.lhs.false.i.if.then12.i_crit_edge, %if.end4.i.if.then12.i_crit_edge
  br label %ovl_verify_fh.exit.thread

ovl_verify_fh.exit.thread:                        ; preds = %if.then12.i, %lor.lhs.false.i.ovl_verify_fh.exit.thread_crit_edge
  %err.0.i = phi i32 [ -116, %if.then12.i ], [ 0, %lor.lhs.false.i.ovl_verify_fh.exit.thread_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #11
  br label %if.end8

ovl_verify_fh.exit:                               ; preds = %if.then2.i, %if.end.ovl_verify_fh.exit_crit_edge
  %retval.0.i = phi i32 [ %1, %if.then2.i ], [ -61, %if.end.ovl_verify_fh.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, -61
  %or.cond = select i1 %set, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then6, label %ovl_verify_fh.exit.if.end8_crit_edge

ovl_verify_fh.exit.if.end8_crit_edge:             ; preds = %ovl_verify_fh.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %ovl_verify_fh.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = getelementptr inbounds %struct.ovl_fh, ptr %call, i32 0, i32 1
  %len = getelementptr inbounds %struct.ovl_fh, ptr %call, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 1
  %conv = zext i8 %10 to i32
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 12
  %11 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %userxattr.i.i, align 1, !range !104
  %13 = zext i8 %12 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 %ox, i32 %13
  %14 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = tail call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %15, ptr noundef %8, i32 noundef %conv, i32 noundef 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_verify_set_fh, %if.then.i)) #11
          to label %if.end8 [label %if.then.i], !srcloc !105

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %16 = tail call i32 @llvm.smin.i32(i32 %conv, i32 48) #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_setxattr.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.38, ptr noundef %dentry, ptr noundef %15, i32 noundef %16, ptr noundef %8, i32 noundef %conv, i32 noundef %call1.i) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then.i, %if.then6, %ovl_verify_fh.exit.if.end8_crit_edge, %ovl_verify_fh.exit.thread
  %err.0 = phi i32 [ %retval.0.i, %ovl_verify_fh.exit.if.end8_crit_edge ], [ %err.0.i, %ovl_verify_fh.exit.thread ], [ %call1.i, %if.then6 ], [ %call1.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool9.not = icmp eq i32 %err.0, 0
  br i1 %tobool9.not, label %if.end8.out_crit_edge, label %if.end8.fail_crit_edge

if.end8.fail_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %cond.end, %fail.out_crit_edge, %if.end8.out_crit_edge
  %fh.0 = phi ptr [ %fh.1, %cond.end ], [ %fh.1, %fail.out_crit_edge ], [ %call, %if.end8.out_crit_edge ]
  %err.1 = phi i32 [ %err.2, %cond.end ], [ %err.2, %fail.out_crit_edge ], [ 0, %if.end8.out_crit_edge ]
  tail call void @kfree(ptr noundef %fh.0) #11
  ret i32 %err.1

fail:                                             ; preds = %if.end8.fail_crit_edge, %entry.fail_crit_edge
  %fh.1 = phi ptr [ %call, %if.end8.fail_crit_edge ], [ null, %entry.fail_crit_edge ]
  %err.2 = phi i32 [ %err.0, %if.end8.fail_crit_edge ], [ %0, %entry.fail_crit_edge ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %real, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_verify_set_fh._rs, ptr noundef nonnull @__func__.ovl_verify_set_fh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %fail.out_crit_edge, label %do.end

fail.out_crit_edge:                               ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end:                                           ; preds = %fail
  %cond = select i1 %is_upper, ptr @.str.4, ptr @.str.5
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond19 = phi i32 [ %20, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %cond, ptr noundef %real, i32 noundef %cond19, i32 noundef %err.2) #16
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_encode_real_fh(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_verify_fh(ptr nocapture noundef readonly %ofs, ptr noundef %dentry, i32 noundef %ox, ptr nocapture noundef readonly %fh) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ovl_get_fh(ptr noundef %ofs, ptr noundef %dentry, i32 noundef %ox)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.ovl_fh, ptr %fh, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %len, align 1
  %len5 = getelementptr inbounds %struct.ovl_fh, ptr %call, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %len5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %len5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp.not = icmp eq i8 %2, %4
  br i1 %cmp.not, label %lor.lhs.false, label %if.end4.if.then12_crit_edge

if.end4.if.then12_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end4
  %conv = zext i8 %2 to i32
  %5 = getelementptr inbounds %struct.ovl_fh, ptr %call, i32 0, i32 1
  %6 = getelementptr inbounds %struct.ovl_fh, ptr %fh, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr %6, ptr %5, i32 %conv) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end4.if.then12_crit_edge
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false.if.end13_crit_edge
  %err.0 = phi i32 [ -116, %if.then12 ], [ 0, %lor.lhs.false.if.end13_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then2 ], [ %err.0, %if.end13 ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_index_upper(ptr nocapture noundef readonly %ofs, ptr noundef %index) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 8
  %2 = and i32 %1, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %3 = icmp eq i32 %2, 2097152
  br i1 %3, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %index, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %index, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @ovl_get_fh(ptr noundef %ofs, ptr noundef %index, i32 noundef 5)
  %tobool.not.i36 = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i36, %cmp.i
  br i1 %spec.select.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 2
  %4 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layers.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call8 = tail call ptr @ovl_decode_real_fh(ptr noundef %ofs, ptr noundef nonnull %call2, ptr noundef %7, i1 noundef zeroext true)
  tail call void @kfree(ptr noundef nonnull %call2) #11
  %tobool.not.i37 = icmp eq ptr %call8, null
  %cmp.i38 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  %spec.select.i39 = or i1 %tobool.not.i37, %cmp.i38
  br i1 %spec.select.i39, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %tobool.not.i37, ptr inttoptr (i32 -116 to ptr), ptr %call8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call8, align 8
  %10 = and i32 %9, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %10)
  %11 = icmp eq i32 %10, 2097152
  br i1 %11, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_index_upper._rs, ptr noundef nonnull @__func__.ovl_index_upper) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %do.end

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %index, ptr noundef nonnull %call8) #16
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then14.if.end19_crit_edge
  tail call void @dput(ptr noundef nonnull %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end12.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %if.end19 ], [ %call8, %if.end12.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ], [ %index, %if.then.i ], [ %call2, %if.end.cleanup_crit_edge ], [ %spec.select, %if.then10 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_get_fh(ptr nocapture noundef readonly %ofs, ptr noundef %dentry, i32 noundef %ox) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %userxattr.i.i = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 12
  %0 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %userxattr.i.i, align 1, !range !104
  %2 = zext i8 %1 to i32
  %arrayidx1.i.i = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 %ox, i32 %2
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1.i.i, align 4
  %call1.i = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %4, ptr noundef null, i32 noundef 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_get_fh, %if.then.i)) #11
          to label %ovl_do_getxattr.exit [label %if.then.i], !srcloc !105

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_getxattr.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.46, ptr noundef %dentry, ptr noundef %4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %call1.i) #11
  br label %ovl_do_getxattr.exit

ovl_do_getxattr.exit:                             ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %ovl_do_getxattr.exit
  %5 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %if.then.fail_crit_edge [
    i32 -61, label %if.then.cleanup_crit_edge
    i32 -95, label %if.then.cleanup_crit_edge71
  ]

if.then.cleanup_crit_edge71:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.fail_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end4:                                          ; preds = %ovl_do_getxattr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp5 = icmp eq i32 %call1.i, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end8.i.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end4
  %add = add nuw i32 %call1.i, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end11

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i.i
  %6 = getelementptr inbounds %struct.ovl_fh, ptr %call9.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %userxattr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %userxattr.i.i, align 1, !range !104
  %9 = zext i8 %8 to i32
  %arrayidx1.i.i58 = getelementptr [0 x [2 x ptr]], ptr @ovl_xattr_table, i32 0, i32 %ox, i32 %9
  %10 = ptrtoint ptr %arrayidx1.i.i58 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i.i58, align 4
  %call1.i59 = tail call i32 @vfs_getxattr(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %11, ptr noundef %6, i32 noundef %call1.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_get_fh, %if.then.i61)) #11
          to label %ovl_do_getxattr.exit62 [label %if.then.i61], !srcloc !105

if.then.i61:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %cmp.i60 = icmp sgt i32 %call1.i59, 0
  %12 = tail call i32 @llvm.umin.i32(i32 %call1.i59, i32 48) #11
  %13 = select i1 %cmp.i60, i32 %12, i32 0
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_getxattr.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.46, ptr noundef %dentry, ptr noundef %11, i32 noundef %13, ptr noundef %6, i32 noundef %call1.i, i32 noundef %call1.i59) #11
  br label %ovl_do_getxattr.exit62

ovl_do_getxattr.exit62:                           ; preds = %if.then.i61, %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %cmp13 = icmp slt i32 %call1.i59, 0
  br i1 %cmp13, label %ovl_do_getxattr.exit62.fail_crit_edge, label %if.end15

ovl_do_getxattr.exit62.fail_crit_edge:            ; preds = %ovl_do_getxattr.exit62
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end15:                                         ; preds = %ovl_do_getxattr.exit62
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %call1.i59)
  %cmp.i63 = icmp ult i32 %call1.i59, 21
  br i1 %cmp.i63, label %if.end15.invalid_crit_edge, label %lor.lhs.false.i

if.end15.invalid_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid

lor.lhs.false.i:                                  ; preds = %if.end15
  %len.i = getelementptr inbounds %struct.ovl_fh, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %len.i, align 1
  %conv.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i59, i32 %conv.i)
  %cmp1.i = icmp ult i32 %call1.i59, %conv.i
  br i1 %cmp1.i, label %lor.lhs.false.i.invalid_crit_edge, label %if.end.i

lor.lhs.false.i.invalid_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid

if.end.i:                                         ; preds = %lor.lhs.false.i
  %magic.i = getelementptr inbounds %struct.ovl_fh, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %magic.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %17)
  %cmp4.not.i = icmp eq i8 %17, -5
  br i1 %cmp4.not.i, label %if.end7.i, label %if.end.i.invalid_crit_edge

if.end.i.invalid_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid

if.end7.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp9.not.i = icmp eq i8 %19, 0
  br i1 %cmp9.not.i, label %lor.lhs.false11.i, label %if.end7.i.out_crit_edge

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false11.i:                                ; preds = %if.end7.i
  %flags.i = getelementptr inbounds %struct.ovl_fh, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags.i, align 2
  %conv12.i = zext i8 %21 to i32
  %and.i = and i32 %conv12.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i64 = icmp ne i32 %and.i, 0
  %22 = and i32 %conv12.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  %or.cond = or i1 %tobool.not.i64, %23
  br i1 %or.cond, label %lor.lhs.false11.i.out_crit_edge, label %lor.lhs.false11.i.cleanup_crit_edge

lor.lhs.false11.i.cleanup_crit_edge:              ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false11.i.out_crit_edge:                  ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %do.end33, %invalid.out_crit_edge, %do.end, %fail.out_crit_edge, %lor.lhs.false11.i.out_crit_edge, %if.end7.i.out_crit_edge
  %fh.0 = phi ptr [ %fh.1, %do.end ], [ %fh.1, %fail.out_crit_edge ], [ %call9.i.i, %do.end33 ], [ %call9.i.i, %invalid.out_crit_edge ], [ %call9.i.i, %if.end7.i.out_crit_edge ], [ %call9.i.i, %lor.lhs.false11.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %fh.0) #11
  br label %cleanup

fail:                                             ; preds = %ovl_do_getxattr.exit62.fail_crit_edge, %if.then.fail_crit_edge
  %fh.1 = phi ptr [ %call9.i.i, %ovl_do_getxattr.exit62.fail_crit_edge ], [ null, %if.then.fail_crit_edge ]
  %res.0 = phi i32 [ %call1.i59, %ovl_do_getxattr.exit62.fail_crit_edge ], [ %call1.i, %if.then.fail_crit_edge ]
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_get_fh._rs, ptr noundef nonnull @__func__.ovl_get_fh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %fail.out_crit_edge, label %do.end

fail.out_crit_edge:                               ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end:                                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %res.0) #16
  br label %out

invalid:                                          ; preds = %if.end.i.invalid_crit_edge, %lor.lhs.false.i.invalid_crit_edge, %if.end15.invalid_crit_edge
  %call28 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_get_fh._rs.40, ptr noundef nonnull @__func__.ovl_get_fh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %invalid.out_crit_edge, label %do.end33

invalid.out_crit_edge:                            ; preds = %invalid
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end33:                                         ; preds = %invalid
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %call1.i59, ptr noundef nonnull %call9.i.i) #16
  br label %out

cleanup:                                          ; preds = %out, %lor.lhs.false11.i.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge71
  %retval.0 = phi ptr [ null, %out ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge71 ], [ null, %if.end4.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ], [ %call9.i.i, %lor.lhs.false11.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_verify_index(ptr noundef %ofs, ptr noundef %index) local_unnamed_addr #1 align 64 {
entry:
  %origin = alloca %struct.ovl_path, align 8
  %stack = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %origin) #11
  %0 = ptrtoint ptr %origin to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %origin, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stack) #11
  %1 = ptrtoint ptr %stack to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %origin, ptr %stack, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %index, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %index, i32 0, i32 4
  %4 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %5)
  %cmp = icmp ult i32 %5, 42
  br i1 %cmp, label %if.end.fail_crit_edge, label %if.end3

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end3:                                          ; preds = %if.end
  %div116 = lshr i32 %5, 1
  %add = add nuw i32 %div116, 3
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #18
  %tobool7.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not, label %if.end3.fail_crit_edge, label %if.end9

if.end3.fail_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end9:                                          ; preds = %if.end3
  %6 = getelementptr inbounds %struct.ovl_fh, ptr %call9.i.i, i32 0, i32 1
  %name = getelementptr inbounds %struct.dentry, ptr %index, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %call11 = call i32 @hex2bin(ptr noundef %6, ptr noundef %8, i32 noundef %div116) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false.i, label %if.end9.fail_crit_edge

if.end9.fail_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

lor.lhs.false.i:                                  ; preds = %if.end9
  %len.i = getelementptr inbounds %struct.ovl_fh, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len.i, align 1
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div116, i32 %conv.i)
  %cmp1.i = icmp ult i32 %div116, %conv.i
  br i1 %cmp1.i, label %lor.lhs.false.i.fail_crit_edge, label %if.end.i

lor.lhs.false.i.fail_crit_edge:                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end.i:                                         ; preds = %lor.lhs.false.i
  %magic.i = getelementptr inbounds %struct.ovl_fh, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %magic.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %12)
  %cmp4.not.i = icmp eq i8 %12, -5
  br i1 %cmp4.not.i, label %if.end7.i, label %if.end.i.fail_crit_edge

if.end.i.fail_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end7.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp9.not.i = icmp eq i8 %14, 0
  br i1 %cmp9.not.i, label %lor.lhs.false11.i, label %if.end7.i.fail_crit_edge

if.end7.i.fail_crit_edge:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

lor.lhs.false11.i:                                ; preds = %if.end7.i
  %flags.i = getelementptr inbounds %struct.ovl_fh, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags.i, align 2
  %conv12.i = zext i8 %16 to i32
  %and.i = and i32 %conv12.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %17 = and i32 %conv12.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  %or.cond = or i1 %tobool.not.i, %18
  br i1 %or.cond, label %lor.lhs.false11.i.fail_crit_edge, label %if.end18

lor.lhs.false11.i.fail_crit_edge:                 ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end18:                                         ; preds = %lor.lhs.false11.i
  %call19 = call zeroext i1 @ovl_is_whiteout(ptr noundef %index) #11
  br i1 %call19, label %if.end18.out_crit_edge, label %if.end21

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end21:                                         ; preds = %if.end18
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 8
  %21 = and i32 %20, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %21)
  %22 = icmp eq i32 %21, 2097152
  br i1 %22, label %land.lhs.true, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end21
  %nfs_export = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 8, i32 9
  %23 = ptrtoint ptr %nfs_export to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nfs_export, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool23.not = icmp eq i8 %24, 0
  br i1 %tobool23.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end21.if.end25_crit_edge
  %call26 = call ptr @ovl_index_upper(ptr noundef %ofs, ptr noundef %index)
  %tobool.not.i117 = icmp eq ptr %call26, null
  %cmp.i118 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %spec.select.i119 = or i1 %tobool.not.i117, %cmp.i118
  br i1 %spec.select.i119, label %if.then28, label %if.end36

if.then28:                                        ; preds = %if.end25
  %cmp30 = icmp eq ptr %call26, inttoptr (i32 -116 to ptr)
  br i1 %cmp30, label %if.then28.orphan_crit_edge, label %if.else

if.then28.orphan_crit_edge:                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %orphan

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %call26 to i32
  %spec.store.select = select i1 %tobool.not.i117, i32 -116, i32 %25
  br label %fail

if.end36:                                         ; preds = %if.end25
  %call37 = call fastcc i32 @ovl_verify_fh(ptr noundef %ofs, ptr noundef nonnull %call26, i32 noundef 2, ptr noundef nonnull %call9.i.i)
  call void @dput(ptr noundef nonnull %call26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.fail_crit_edge

if.end36.fail_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end40:                                         ; preds = %if.end36
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 8
  %28 = and i32 %27, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %28)
  %29 = icmp eq i32 %28, 2097152
  br i1 %29, label %if.end40.out_crit_edge, label %land.lhs.true42

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true42:                                  ; preds = %if.end40
  %30 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 12
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp44 = icmp eq i32 %34, 1
  br i1 %cmp44, label %if.then45, label %land.lhs.true42.out_crit_edge

land.lhs.true42.out_crit_edge:                    ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then45:                                        ; preds = %land.lhs.true42
  %call46 = call i32 @ovl_check_origin_fh(ptr noundef %ofs, ptr noundef nonnull %call9.i.i, i1 noundef zeroext false, ptr noundef %index, ptr noundef nonnull %stack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.then45.fail_crit_edge

if.then45.fail_crit_edge:                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end49:                                         ; preds = %if.then45
  %dentry = getelementptr inbounds %struct.ovl_path, ptr %origin, i32 0, i32 1
  %35 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dentry, align 4
  %call50 = call i32 @ovl_get_nlink(ptr noundef %ofs, ptr noundef %36, ptr noundef %index, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.end49.orphan_crit_edge, label %if.end49.out_crit_edge

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end49.orphan_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %orphan

out:                                              ; preds = %do.end67, %orphan.out_crit_edge, %do.end, %fail.out_crit_edge, %if.end49.out_crit_edge, %land.lhs.true42.out_crit_edge, %if.end40.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end18.out_crit_edge
  %err.0 = phi i32 [ %err.1, %do.end ], [ %err.1, %fail.out_crit_edge ], [ 0, %if.end18.out_crit_edge ], [ 0, %if.end40.out_crit_edge ], [ 0, %if.end49.out_crit_edge ], [ 0, %land.lhs.true42.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ], [ -2, %do.end67 ], [ -2, %orphan.out_crit_edge ]
  %fh.0 = phi ptr [ %fh.1, %do.end ], [ %fh.1, %fail.out_crit_edge ], [ %call9.i.i, %if.end18.out_crit_edge ], [ %call9.i.i, %if.end40.out_crit_edge ], [ %call9.i.i, %if.end49.out_crit_edge ], [ %call9.i.i, %land.lhs.true42.out_crit_edge ], [ %call9.i.i, %land.lhs.true.out_crit_edge ], [ %call9.i.i, %do.end67 ], [ %call9.i.i, %orphan.out_crit_edge ]
  %dentry55 = getelementptr inbounds %struct.ovl_path, ptr %origin, i32 0, i32 1
  %37 = ptrtoint ptr %dentry55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dentry55, align 4
  call void @dput(ptr noundef %38) #11
  call void @kfree(ptr noundef %fh.0) #11
  br label %cleanup

fail:                                             ; preds = %if.then45.fail_crit_edge, %if.end36.fail_crit_edge, %if.else, %lor.lhs.false11.i.fail_crit_edge, %if.end7.i.fail_crit_edge, %if.end.i.fail_crit_edge, %lor.lhs.false.i.fail_crit_edge, %if.end9.fail_crit_edge, %if.end3.fail_crit_edge, %if.end.fail_crit_edge
  %err.1 = phi i32 [ -22, %if.end.fail_crit_edge ], [ -22, %if.end9.fail_crit_edge ], [ %spec.store.select, %if.else ], [ %call37, %if.end36.fail_crit_edge ], [ %call46, %if.then45.fail_crit_edge ], [ -12, %if.end3.fail_crit_edge ], [ -61, %if.end7.i.fail_crit_edge ], [ -61, %lor.lhs.false11.i.fail_crit_edge ], [ -22, %if.end.i.fail_crit_edge ], [ -22, %lor.lhs.false.i.fail_crit_edge ]
  %fh.1 = phi ptr [ null, %if.end.fail_crit_edge ], [ %call9.i.i, %if.end9.fail_crit_edge ], [ %call9.i.i, %if.else ], [ %call9.i.i, %if.end36.fail_crit_edge ], [ %call9.i.i, %if.then45.fail_crit_edge ], [ null, %if.end3.fail_crit_edge ], [ %call9.i.i, %if.end7.i.fail_crit_edge ], [ %call9.i.i, %lor.lhs.false11.i.fail_crit_edge ], [ %call9.i.i, %if.end.i.fail_crit_edge ], [ %call9.i.i, %lor.lhs.false.i.fail_crit_edge ]
  %call56 = call i32 @___ratelimit(ptr noundef nonnull @ovl_verify_index._rs, ptr noundef nonnull @__func__.ovl_verify_index) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %fail.out_crit_edge, label %do.end

fail.out_crit_edge:                               ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end:                                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_inode.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 8
  %43 = and i16 %42, -4096
  %and = zext i16 %43 to i32
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %index, i32 noundef %and, i32 noundef %err.1) #16
  br label %out

orphan:                                           ; preds = %if.end49.orphan_crit_edge, %if.then28.orphan_crit_edge
  %call62 = call i32 @___ratelimit(ptr noundef nonnull @ovl_verify_index._rs.8, ptr noundef nonnull @__func__.ovl_verify_index) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %orphan.out_crit_edge, label %do.end67

orphan.out_crit_edge:                             ; preds = %orphan
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end67:                                         ; preds = %orphan
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %45, align 8
  %48 = and i16 %47, -4096
  %and72 = zext i16 %48 to i32
  %49 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 12
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %index, i32 noundef %and72, i32 noundef %51) #16
  br label %out

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stack) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %origin) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_get_nlink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_get_index_name(ptr noundef %ofs, ptr noundef %origin, ptr nocapture noundef writeonly %name) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_encode_real_fh(ptr noundef %ofs, ptr noundef %origin, i1 noundef zeroext false) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.ovl_fh, ptr %call, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %len.i, align 1
  %conv.i = zext i8 %2 to i32
  %3 = shl nuw nsw i32 %conv.i, 1
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #18
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end.ovl_get_index_name_fh.exit_crit_edge, label %if.end.i

if.end.ovl_get_index_name_fh.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_get_index_name_fh.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = getelementptr inbounds %struct.ovl_fh, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len.i, align 1
  %conv2.i = zext i8 %6 to i32
  %call3.i = tail call ptr @bin2hex(ptr noundef nonnull %call8.i.i.i, ptr noundef %4, i32 noundef %conv2.i) #11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call8.i.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.ptr.sub.i, ptr %name, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %name, i32 4
  %8 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %name, i32 8
  %9 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i.i, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 8
  br label %ovl_get_index_name_fh.exit

ovl_get_index_name_fh.exit:                       ; preds = %if.end.i, %if.end.ovl_get_index_name_fh.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %if.end.ovl_get_index_name_fh.exit_crit_edge ]
  tail call void @kfree(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %ovl_get_index_name_fh.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %retval.0.i, %ovl_get_index_name_fh.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_get_index_fh(ptr nocapture noundef readonly %ofs, ptr noundef %fh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.ovl_fh, ptr %fh, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %len.i, align 1
  %conv.i = zext i8 %1 to i32
  %2 = shl nuw nsw i32 %conv.i, 1
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #18
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.ovl_fh, ptr %fh, i32 0, i32 1
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len.i, align 1
  %conv2.i = zext i8 %5 to i32
  %call3.i = tail call ptr @bin2hex(ptr noundef nonnull %call8.i.i.i, ptr noundef %3, i32 noundef %conv2.i) #11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call8.i.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %indexdir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 6
  %6 = ptrtoint ptr %indexdir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %indexdir, align 4
  %call3 = tail call ptr @lookup_positive_unlocked(ptr noundef nonnull %call8.i.i.i, ptr noundef %7, i32 noundef %sub.ptr.sub.i) #11
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cmp = icmp eq ptr %call3, inttoptr (i32 -2 to ptr)
  %spec.select = select i1 %cmp, ptr null, ptr %call3
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call zeroext i1 @ovl_is_whiteout(ptr noundef %call3) #11
  br i1 %call11, label %if.end10.if.end17_crit_edge, label %if.else

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.else:                                          ; preds = %if.end10
  %call13 = tail call zeroext i1 @ovl_dentry_weird(ptr noundef %call3) #11
  br i1 %call13, label %if.else.if.end17_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %err.0 = phi ptr [ inttoptr (i32 -116 to ptr), %if.end10.if.end17_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.else.if.end17_crit_edge ]
  tail call void @dput(ptr noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.else.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.then6 ], [ %err.0, %if.end17 ], [ %call3, %if.else.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_positive_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_lookup_index(ptr noundef %ofs, ptr noundef %upper, ptr noundef %origin, i1 noundef zeroext %verify) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %origin, align 8
  %2 = and i32 %1, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %3 = icmp eq i32 %2, 2097152
  %call.i = tail call ptr @ovl_encode_real_fh(ptr noundef %ofs, ptr noundef %origin, i1 noundef zeroext false) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call.i to i32
  br label %ovl_get_index_name.exit

if.end.i:                                         ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.ovl_fh, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %7 = shl nuw nsw i32 %conv.i.i, 1
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #18
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.ovl_get_index_name_fh.exit.i_crit_edge, label %if.end.i.i

if.end.i.ovl_get_index_name_fh.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_get_index_name_fh.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = getelementptr inbounds %struct.ovl_fh, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len.i.i, align 1
  %conv2.i.i = zext i8 %10 to i32
  %call3.i.i = tail call ptr @bin2hex(ptr noundef nonnull %call8.i.i.i.i, ptr noundef %8, i32 noundef %conv2.i.i) #11
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call8.i.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %ovl_get_index_name_fh.exit.i

ovl_get_index_name_fh.exit.i:                     ; preds = %if.end.i.i, %if.end.i.ovl_get_index_name_fh.exit.i_crit_edge
  %name.sroa.7.0 = phi ptr [ %call8.i.i.i.i, %if.end.i.i ], [ inttoptr (i32 -1 to ptr), %if.end.i.ovl_get_index_name_fh.exit.i_crit_edge ]
  %name.sroa.0.0 = phi i32 [ %sub.ptr.sub.i.i, %if.end.i.i ], [ -1, %if.end.i.ovl_get_index_name_fh.exit.i_crit_edge ]
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ -12, %if.end.i.ovl_get_index_name_fh.exit.i_crit_edge ]
  tail call void @kfree(ptr noundef %call.i) #11
  br label %ovl_get_index_name.exit

ovl_get_index_name.exit:                          ; preds = %ovl_get_index_name_fh.exit.i, %if.then.i
  %name.sroa.7.1 = phi ptr [ inttoptr (i32 -1 to ptr), %if.then.i ], [ %name.sroa.7.0, %ovl_get_index_name_fh.exit.i ]
  %name.sroa.0.1 = phi i32 [ -1, %if.then.i ], [ %name.sroa.0.0, %ovl_get_index_name_fh.exit.i ]
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %retval.0.i.i, %ovl_get_index_name_fh.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %ovl_get_index_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %11 = inttoptr i32 %retval.0.i to ptr
  br label %cleanup

if.end:                                           ; preds = %ovl_get_index_name.exit
  %indexdir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 6
  %12 = ptrtoint ptr %indexdir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %indexdir, align 4
  %call5 = tail call ptr @lookup_positive_unlocked(ptr noundef %name.sroa.7.1, ptr noundef %13, i32 noundef %name.sroa.0.1) #11
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end19

if.then7:                                         ; preds = %if.end
  %14 = ptrtoint ptr %call5 to i32
  %cmp = icmp eq ptr %call5, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.then7.out_crit_edge, label %if.end10

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end10:                                         ; preds = %if.then7
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_lookup_index._rs, ptr noundef nonnull @__func__.ovl_lookup_index) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.out_crit_edge, label %do.end

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %origin, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %18, i32 noundef %name.sroa.0.1, ptr noundef %name.sroa.7.1, i32 noundef %14) #16
  br label %out

if.end19:                                         ; preds = %if.end
  %d_inode.i133 = getelementptr inbounds %struct.dentry, ptr %call5, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i133 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i133, align 8
  %call21 = tail call zeroext i1 @ovl_is_whiteout(ptr noundef %call5) #11
  %call21.not = xor i1 %call21, true
  %brmerge = or i1 %call21.not, %verify
  br i1 %brmerge, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dput(ptr noundef %call5) #11
  br label %out

if.else:                                          ; preds = %if.end19
  %call25 = tail call zeroext i1 @ovl_dentry_weird(ptr noundef %call5) #11
  br i1 %call25, label %if.else.if.then30_crit_edge, label %lor.lhs.false

if.else.if.then30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.else
  %call26 = tail call zeroext i1 @ovl_is_whiteout(ptr noundef %call5) #11
  br i1 %call26, label %lor.lhs.false.if.then30_crit_edge, label %lor.lhs.false27

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %d_inode.i134 = getelementptr inbounds %struct.dentry, ptr %origin, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i134 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i134, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 8
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %20, align 8
  %xor2.i = xor i16 %26, %24
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %lor.lhs.false27.if.then30_crit_edge, label %if.else46

lor.lhs.false27.if.then30_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27.if.then30_crit_edge, %lor.lhs.false.if.then30_crit_edge, %if.else.if.then30_crit_edge
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_lookup_index._rs.13, ptr noundef nonnull @__func__.ovl_lookup_index) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.fail_crit_edge, label %do.end36

if.then30.fail_crit_edge:                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %d_inode.i133 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i133, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 8
  %31 = and i16 %30, -4096
  %and = zext i16 %31 to i32
  %d_inode.i136 = getelementptr inbounds %struct.dentry, ptr %origin, i32 0, i32 5
  %32 = ptrtoint ptr %d_inode.i136 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i136, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 8
  %36 = and i16 %35, -4096
  %and43 = zext i16 %36 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %call5, i32 noundef %and, i32 noundef %and43) #16
  br label %fail

if.else46:                                        ; preds = %lor.lhs.false27
  %37 = and i1 %3, %verify
  %tobool53.not = icmp eq ptr %upper, null
  br i1 %37, label %if.then52, label %if.else82

if.then52:                                        ; preds = %if.else46
  br i1 %tobool53.not, label %if.then54, label %if.end64

if.then54:                                        ; preds = %if.then52
  %call55 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_lookup_index._rs.17, ptr noundef nonnull @__func__.ovl_lookup_index) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then54.fail_crit_edge, label %do.end60

if.then54.fail_crit_edge:                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end60:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %origin, ptr noundef %call5) #16
  br label %fail

if.end64:                                         ; preds = %if.then52
  %call.i137 = tail call i32 @ovl_verify_set_fh(ptr noundef %ofs, ptr noundef %call5, i32 noundef 5, ptr noundef nonnull %upper, i1 noundef zeroext true, i1 noundef zeroext false) #11
  %38 = zext i32 %call.i137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call.i137, label %if.end64.fail_crit_edge [
    i32 0, label %if.end64.out_crit_edge
    i32 -116, label %if.then70
  ]

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end64.fail_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then70:                                        ; preds = %if.end64
  %call71 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_lookup_index._rs.21, ptr noundef nonnull @__func__.ovl_lookup_index) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then70.fail_crit_edge, label %do.end76

if.then70.fail_crit_edge:                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end76:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %upper, ptr noundef %origin, ptr noundef %call5) #16
  br label %fail

if.else82:                                        ; preds = %if.else46
  br i1 %tobool53.not, label %if.else82.out_crit_edge, label %land.lhs.true84

if.else82.out_crit_edge:                          ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true84:                                  ; preds = %if.else82
  %d_inode.i138 = getelementptr inbounds %struct.dentry, ptr %upper, i32 0, i32 5
  %39 = ptrtoint ptr %d_inode.i138 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_inode.i138, align 8
  %cmp86.not = icmp eq ptr %40, %20
  br i1 %cmp86.not, label %land.lhs.true84.out_crit_edge, label %out_dput

land.lhs.true84.out_crit_edge:                    ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %fail, %out_dput, %land.lhs.true84.out_crit_edge, %if.else82.out_crit_edge, %if.end64.out_crit_edge, %if.then23, %do.end, %if.end10.out_crit_edge, %if.then7.out_crit_edge
  %index.0 = phi ptr [ %call5, %do.end ], [ %call5, %if.end10.out_crit_edge ], [ inttoptr (i32 -5 to ptr), %fail ], [ %call5, %if.end64.out_crit_edge ], [ null, %out_dput ], [ %call5, %land.lhs.true84.out_crit_edge ], [ %call5, %if.else82.out_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.then23 ], [ null, %if.then7.out_crit_edge ]
  tail call void @kfree(ptr noundef %name.sroa.7.1) #11
  br label %cleanup

out_dput:                                         ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dput(ptr noundef %call5) #11
  br label %out

fail:                                             ; preds = %do.end76, %if.then70.fail_crit_edge, %if.end64.fail_crit_edge, %do.end60, %if.then54.fail_crit_edge, %do.end36, %if.then30.fail_crit_edge
  tail call void @dput(ptr noundef %call5) #11
  br label %out

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi ptr [ %11, %if.then ], [ %index.0, %out ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_path_next(i32 noundef %idx, ptr noundef %dentry, ptr noundef %path) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp = icmp slt i32 %idx, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !106

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/overlayfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 787, 0\0A.popsection", ""() #11, !srcloc !107
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp8 = icmp eq i32 %idx, 0
  br i1 %cmp8, label %if.then9, label %do.end7.do.body16_crit_edge

do.end7.do.body16_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

if.then9:                                         ; preds = %do.end7
  tail call void @ovl_path_upper(ptr noundef %dentry, ptr noundef %path) #11
  %dentry10 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %dentry10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry10, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %if.then9.do.body16_crit_edge, label %if.then12

if.then9.do.body16_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %numlower = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool13.not, i32 -1, i32 1
  br label %cleanup

do.body16:                                        ; preds = %if.then9.do.body16_crit_edge, %do.end7.do.body16_crit_edge
  %idx.addr.0 = phi i32 [ %idx, %do.end7.do.body16_crit_edge ], [ 1, %if.then9.do.body16_crit_edge ]
  %numlower17 = getelementptr inbounds %struct.ovl_entry, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %numlower17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numlower17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.addr.0, i32 %7)
  %cmp18 = icmp ugt i32 %idx.addr.0, %7
  br i1 %cmp18, label %do.body26, label %do.end34, !prof !106

do.body26:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/overlayfs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 794, 0\0A.popsection", ""() #11, !srcloc !108
  unreachable

do.end34:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add nsw i32 %idx.addr.0, -1
  %arrayidx = getelementptr %struct.ovl_entry, ptr %1, i32 0, i32 2, i32 %sub
  %dentry35 = getelementptr %struct.ovl_entry, ptr %1, i32 0, i32 2, i32 %sub, i32 1
  %8 = ptrtoint ptr %dentry35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry35, align 4
  %dentry36 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %10 = ptrtoint ptr %dentry36 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dentry36, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %path, align 4
  %16 = ptrtoint ptr %numlower17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %numlower17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.addr.0, i32 %17)
  %cmp42 = icmp ult i32 %idx.addr.0, %17
  %add = add nuw i32 %idx.addr.0, 1
  %spec.select = select i1 %cmp42, i32 %add, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.then12
  %retval.0 = phi i32 [ %cond, %if.then12 ], [ %spec.select, %do.end34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_path_upper(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_lookup(ptr nocapture noundef readnone %dir, ptr noundef %dentry, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  %origin_path = alloca ptr, align 4
  %upperdentry = alloca ptr, align 4
  %this = alloca ptr, align 4
  %d = alloca %struct.ovl_lookup_data, align 8
  %oip = alloca %struct.ovl_inode_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %4 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_parent, align 8
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_fsdata, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_root, align 64
  %d_fsdata2 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %d_fsdata2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_fsdata2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %origin_path) #11
  %12 = ptrtoint ptr %origin_path to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %origin_path, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %upperdentry) #11
  %13 = ptrtoint ptr %upperdentry to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %upperdentry, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %this) #11
  %14 = ptrtoint ptr %this to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %this, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %d) #11
  %15 = call ptr @memset(ptr %d, i32 255, i32 40)
  %16 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %d, align 8
  %name = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 1
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %17 = call ptr @memcpy(ptr %name, ptr %d_name, i32 16)
  %is_dir = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 2
  %18 = ptrtoint ptr %is_dir to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %is_dir, align 8
  %opaque = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 3
  %19 = ptrtoint ptr %opaque to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %opaque, align 1
  %stop = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 4
  %20 = ptrtoint ptr %stop to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %stop, align 2
  %last = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 5
  %redirect_follow = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 5
  %21 = ptrtoint ptr %redirect_follow to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %redirect_follow, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %numlower = getelementptr inbounds %struct.ovl_entry, ptr %7, i32 0, i32 1
  %23 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not = icmp eq i32 %24, 0
  %lnot.ext = zext i1 %tobool4.not to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i8 [ %lnot.ext, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %25 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %cond, ptr %last, align 1
  %redirect = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 6
  %26 = ptrtoint ptr %redirect to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %redirect, align 4
  %metacopy = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 7
  %27 = ptrtoint ptr %metacopy to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %metacopy, align 8
  %28 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %d_name, align 8
  %namelen = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 7
  %30 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %namelen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp = icmp ugt i32 %29, %31
  br i1 %cmp, label %cond.end.cleanup385_crit_edge, label %if.end

cond.end.cleanup385_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup385

if.end:                                           ; preds = %cond.end
  %call8 = tail call ptr @ovl_override_creds(ptr noundef %1) #11
  %32 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_parent, align 8
  %call10 = tail call ptr @ovl_dentry_upper(ptr noundef %33) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end.if.end52_crit_edge, label %if.then12

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then12:                                        ; preds = %if.end
  %call13 = call fastcc i32 @ovl_lookup_layer(ptr noundef nonnull %call10, ptr noundef nonnull %d, ptr noundef nonnull %upperdentry, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then12.out_crit_edge

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end16:                                         ; preds = %if.then12
  %34 = ptrtoint ptr %upperdentry to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %upperdentry, align 4
  %tobool17.not = icmp eq ptr %35, null
  br i1 %tobool17.not, label %if.end16.if.end34_crit_edge, label %land.lhs.true

if.end16.if.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end16
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %and = and i32 %37, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %land.lhs.true22, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dput(ptr noundef nonnull %35) #11
  br label %out

land.lhs.true22:                                  ; preds = %land.lhs.true
  %38 = ptrtoint ptr %is_dir to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_dir, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool24.not = icmp eq i8 %39, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true22.if.end34_crit_edge

land.lhs.true22.if.end34_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then25:                                        ; preds = %land.lhs.true22
  %call26 = call fastcc i32 @ovl_check_origin(ptr noundef %3, ptr noundef nonnull %35, ptr noundef nonnull %origin_path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then25.out_put_upper_crit_edge

if.then25.out_put_upper_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_upper

if.end29:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %metacopy, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool31.not = icmp ne i8 %41, 0
  br label %if.end34

if.end34:                                         ; preds = %if.end29, %land.lhs.true22.if.end34_crit_edge, %if.end16.if.end34_crit_edge
  %uppermetacopy.0 = phi i1 [ false, %land.lhs.true22.if.end34_crit_edge ], [ %tobool31.not, %if.end29 ], [ false, %if.end16.if.end34_crit_edge ]
  %42 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %redirect, align 4
  %tobool36.not = icmp eq ptr %43, null
  br i1 %tobool36.not, label %if.end34.if.end48_crit_edge, label %if.then37

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then37:                                        ; preds = %if.end34
  %call39 = tail call noalias ptr @kstrdup(ptr noundef nonnull %43, i32 noundef 3264) #11
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then37.out_put_upper_crit_edge, label %if.end42

if.then37.out_put_upper_crit_edge:                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_upper

if.end42:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %45)
  %cmp44 = icmp eq i8 %45, 47
  %spec.select521 = select i1 %cmp44, ptr %11, ptr %7
  br label %if.end48

if.end48:                                         ; preds = %if.end42, %if.end34.if.end48_crit_edge
  %poe.0 = phi ptr [ %7, %if.end34.if.end48_crit_edge ], [ %spec.select521, %if.end42 ]
  %upperredirect.0 = phi ptr [ null, %if.end34.if.end48_crit_edge ], [ %call39, %if.end42 ]
  %46 = ptrtoint ptr %opaque to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %opaque, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool50 = icmp ne i8 %47, 0
  br label %if.end52

if.end52:                                         ; preds = %if.end48, %if.end.if.end52_crit_edge
  %poe.1 = phi ptr [ %poe.0, %if.end48 ], [ %7, %if.end.if.end52_crit_edge ]
  %upperopaque.0.off0 = phi i1 [ %tobool50, %if.end48 ], [ false, %if.end.if.end52_crit_edge ]
  %upperredirect.1 = phi ptr [ %upperredirect.0, %if.end48 ], [ null, %if.end.if.end52_crit_edge ]
  %uppermetacopy.1.off0 = phi i1 [ %uppermetacopy.0, %if.end48 ], [ false, %if.end.if.end52_crit_edge ]
  %48 = ptrtoint ptr %stop to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %stop, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool54.not = icmp eq i8 %49, 0
  br i1 %tobool54.not, label %land.lhs.true55, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true55:                                  ; preds = %if.end52
  %numlower56 = getelementptr inbounds %struct.ovl_entry, ptr %poe.1, i32 0, i32 1
  %50 = ptrtoint ptr %numlower56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %numlower56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool57.not = icmp eq i32 %51, 0
  br i1 %tobool57.not, label %land.lhs.true55.if.end63_crit_edge, label %if.then58

land.lhs.true55.if.end63_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then58:                                        ; preds = %land.lhs.true55
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %3, align 4
  %sub = add i32 %53, -1
  %54 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub, i32 8) #11
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %if.then58.out_put_upper_crit_edge, label %if.end7.i.i, !prof !106

if.then58.out_put_upper_crit_edge:                ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_upper

if.end7.i.i:                                      ; preds = %if.then58
  %56 = extractvalue { i32, i1 } %54, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %56, i32 noundef 3520) #18
  %tobool60.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool60.not, label %if.end7.i.i.out_put_upper_crit_edge, label %if.end7.i.i.if.end63_crit_edge

if.end7.i.i.if.end63_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end7.i.i.out_put_upper_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_upper

if.end63:                                         ; preds = %if.end7.i.i.if.end63_crit_edge, %land.lhs.true55.if.end63_crit_edge
  %stack.0.ph = phi ptr [ null, %land.lhs.true55.if.end63_crit_edge ], [ %call8.i.i, %if.end7.i.i.if.end63_crit_edge ]
  %57 = ptrtoint ptr %stop to i32
  call void @__asan_load1_noabort(i32 %57)
  %.pr650 = load i8, ptr %stop, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr650)
  %tobool65.not614 = icmp eq i8 %.pr650, 0
  br i1 %tobool65.not614, label %land.rhs.lr.ph, label %if.end63.for.end_crit_edge

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end63
  %numlower80 = getelementptr inbounds %struct.ovl_entry, ptr %11, i32 0, i32 1
  %metacopy101 = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 11
  %noxattr = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 11
  %index141 = getelementptr inbounds %struct.ovl_fs, ptr %3, i32 0, i32 8, i32 7
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0619 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc206, %for.inc.land.rhs_crit_edge ]
  %ctr.0617 = phi i32 [ 0, %land.rhs.lr.ph ], [ %ctr.2.ph565, %for.inc.land.rhs_crit_edge ]
  %origin.0616 = phi ptr [ null, %land.rhs.lr.ph ], [ %origin.2.ph, %for.inc.land.rhs_crit_edge ]
  %poe.2615 = phi ptr [ %poe.1, %land.rhs.lr.ph ], [ %poe.4.ph, %for.inc.land.rhs_crit_edge ]
  %numlower66 = getelementptr inbounds %struct.ovl_entry, ptr %poe.2615, i32 0, i32 1
  %58 = ptrtoint ptr %numlower66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %numlower66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0619, i32 %59)
  %cmp67 = icmp ult i32 %i.0619, %59
  br i1 %cmp67, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %arrayidx69 = getelementptr %struct.ovl_entry, ptr %poe.2615, i32 0, i32 2, i32 %i.0619
  %60 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %60)
  %lower.sroa.0.0.copyload = load ptr, ptr %arrayidx69, align 4
  %lower.sroa.7.0.arrayidx69.sroa_idx = getelementptr inbounds i8, ptr %arrayidx69, i32 4
  %61 = ptrtoint ptr %lower.sroa.7.0.arrayidx69.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %61)
  %lower.sroa.7.0.copyload = load ptr, ptr %lower.sroa.7.0.arrayidx69.sroa_idx, align 4
  %62 = ptrtoint ptr %redirect_follow to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %redirect_follow, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool72.not = icmp eq i8 %63, 0
  br i1 %tobool72.not, label %if.then73, label %if.else

if.then73:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub75 = add i32 %59, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0619, i32 %sub75)
  %cmp76 = icmp eq i32 %i.0619, %sub75
  br label %if.end85

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %idx = getelementptr inbounds %struct.ovl_layer, ptr %lower.sroa.0.0.copyload, i32 0, i32 3
  %64 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idx, align 4
  %66 = ptrtoint ptr %numlower80 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %numlower80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp81 = icmp eq i32 %65, %67
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then73
  %storemerge.in = phi i1 [ %cmp76, %if.then73 ], [ %cmp81, %if.else ]
  %storemerge = zext i1 %storemerge.in to i8
  %68 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %storemerge, ptr %last, align 1
  %call87 = call fastcc i32 @ovl_lookup_layer(ptr noundef %lower.sroa.7.0.copyload, ptr noundef nonnull %d, ptr noundef nonnull %this, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end85.out_put_crit_edge

if.end85.out_put_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put

if.end90:                                         ; preds = %if.end85
  %69 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %this, align 4
  %tobool91.not = icmp eq ptr %70, null
  br i1 %tobool91.not, label %if.end90.for.incthread-pre-split_crit_edge, label %if.end93

if.end90.for.incthread-pre-split_crit_edge:       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.incthread-pre-split

if.end93:                                         ; preds = %if.end90
  br i1 %uppermetacopy.1.off0, label %if.end93.land.lhs.true99_crit_edge, label %lor.lhs.false

if.end93.land.lhs.true99_crit_edge:               ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true99

lor.lhs.false:                                    ; preds = %if.end93
  %71 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %metacopy, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool97.not = icmp eq i8 %72, 0
  br i1 %tobool97.not, label %lor.lhs.false.if.end109_crit_edge, label %lor.lhs.false.land.lhs.true99_crit_edge

lor.lhs.false.land.lhs.true99_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true99

lor.lhs.false.if.end109_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

land.lhs.true99:                                  ; preds = %lor.lhs.false.land.lhs.true99_crit_edge, %if.end93.land.lhs.true99_crit_edge
  %73 = ptrtoint ptr %metacopy101 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %metacopy101, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool102.not = icmp eq i8 %74, 0
  br i1 %tobool102.not, label %if.then103, label %land.lhs.true99.if.end109_crit_edge

land.lhs.true99.if.end109_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then103:                                       ; preds = %land.lhs.true99
  tail call void @dput(ptr noundef nonnull %70) #11
  %call104 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_lookup._rs, ptr noundef nonnull @__func__.ovl_lookup) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.then103.out_put_crit_edge, label %do.end

if.then103.out_put_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put

do.end:                                           ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %dentry) #16
  br label %out_put

if.end109:                                        ; preds = %land.lhs.true99.if.end109_crit_edge, %lor.lhs.false.if.end109_crit_edge
  %75 = ptrtoint ptr %upperdentry to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %upperdentry, align 4
  %tobool110.not = icmp ne ptr %76, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctr.0617)
  %tobool112.not = icmp eq i32 %ctr.0617, 0
  %or.cond = select i1 %tobool110.not, i1 %tobool112.not, i1 false
  br i1 %or.cond, label %land.lhs.true113, label %if.end109.if.end155_crit_edge

if.end109.if.end155_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

land.lhs.true113:                                 ; preds = %if.end109
  %77 = ptrtoint ptr %noxattr to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %noxattr, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool114.not = icmp eq i8 %78, 0
  br i1 %tobool114.not, label %land.lhs.true115, label %land.lhs.true113.land.lhs.true128_crit_edge

land.lhs.true113.land.lhs.true128_crit_edge:      ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true128

land.lhs.true115:                                 ; preds = %land.lhs.true113
  %79 = ptrtoint ptr %is_dir to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %is_dir, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool117.not = icmp eq i8 %80, 0
  br i1 %tobool117.not, label %land.lhs.true115.land.lhs.true139_crit_edge, label %if.then119

land.lhs.true115.land.lhs.true139_crit_edge:      ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true139

if.then119:                                       ; preds = %land.lhs.true115
  %call.i = tail call zeroext i1 @ovl_check_origin_xattr(ptr noundef %3, ptr noundef nonnull %76) #11
  br i1 %call.i, label %if.then119.land.lhs.true132_crit_edge, label %if.end.i

if.then119.land.lhs.true132_crit_edge:            ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true132

if.end.i:                                         ; preds = %if.then119
  %call1.i = tail call i32 @ovl_want_write(ptr noundef %dentry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.if.then122_crit_edge

if.end.i.if.then122_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then122

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @ovl_set_origin(ptr noundef %3, ptr noundef nonnull %70, ptr noundef nonnull %76) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %ovl_fix_origin.exit, label %ovl_fix_origin.exit.thread546

ovl_fix_origin.exit.thread546:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ovl_drop_write(ptr noundef %dentry) #11
  br label %if.then122

ovl_fix_origin.exit:                              ; preds = %if.end3.i
  %81 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %d_parent, align 8
  %d_parent7.i = getelementptr inbounds %struct.dentry, ptr %76, i32 0, i32 3
  %83 = ptrtoint ptr %d_parent7.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %d_parent7.i, align 8
  %call8.i = tail call i32 @ovl_set_impure(ptr noundef %82, ptr noundef %84) #11
  tail call void @ovl_drop_write(ptr noundef %dentry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool121.not = icmp eq i32 %call8.i, 0
  br i1 %tobool121.not, label %ovl_fix_origin.exit.land.lhs.true128_crit_edge, label %ovl_fix_origin.exit.if.then122_crit_edge

ovl_fix_origin.exit.if.then122_crit_edge:         ; preds = %ovl_fix_origin.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then122

ovl_fix_origin.exit.land.lhs.true128_crit_edge:   ; preds = %ovl_fix_origin.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true128

if.then122:                                       ; preds = %ovl_fix_origin.exit.if.then122_crit_edge, %ovl_fix_origin.exit.thread546, %if.end.i.if.then122_crit_edge
  %retval.0.i545 = phi i32 [ %call4.i, %ovl_fix_origin.exit.thread546 ], [ %call1.i, %if.end.i.if.then122_crit_edge ], [ %call8.i, %ovl_fix_origin.exit.if.then122_crit_edge ]
  tail call void @dput(ptr noundef nonnull %70) #11
  br label %out_put.thread

land.lhs.true128:                                 ; preds = %ovl_fix_origin.exit.land.lhs.true128_crit_edge, %land.lhs.true113.land.lhs.true128_crit_edge
  %85 = ptrtoint ptr %is_dir to i32
  call void @__asan_load1_noabort(i32 %85)
  %.pr = load i8, ptr %is_dir, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool130.not = icmp eq i8 %.pr, 0
  br i1 %tobool130.not, label %land.lhs.true128.land.lhs.true139_crit_edge, label %land.lhs.true128.land.lhs.true132_crit_edge

land.lhs.true128.land.lhs.true132_crit_edge:      ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true132

land.lhs.true128.land.lhs.true139_crit_edge:      ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true139

land.lhs.true132:                                 ; preds = %land.lhs.true128.land.lhs.true132_crit_edge, %if.then119.land.lhs.true132_crit_edge
  %86 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %d_sb, align 4
  %call134 = tail call zeroext i1 @ovl_verify_lower(ptr noundef %87) #11
  br i1 %call134, label %land.lhs.true132.if.then146_crit_edge, label %land.lhs.true132.if.end155_crit_edge

land.lhs.true132.if.end155_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

land.lhs.true132.if.then146_crit_edge:            ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then146

land.lhs.true139:                                 ; preds = %land.lhs.true128.land.lhs.true139_crit_edge, %land.lhs.true115.land.lhs.true139_crit_edge
  %88 = ptrtoint ptr %index141 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %index141, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool142.not = icmp eq i8 %89, 0
  br i1 %tobool142.not, label %land.lhs.true139.if.end155_crit_edge, label %land.lhs.true144

land.lhs.true139.if.end155_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

land.lhs.true144:                                 ; preds = %land.lhs.true139
  %90 = ptrtoint ptr %origin_path to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %origin_path, align 4
  %tobool145.not = icmp eq ptr %91, null
  br i1 %tobool145.not, label %land.lhs.true144.if.end155_crit_edge, label %land.lhs.true144.if.then146_crit_edge

land.lhs.true144.if.then146_crit_edge:            ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then146

land.lhs.true144.if.end155_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

if.then146:                                       ; preds = %land.lhs.true144.if.then146_crit_edge, %land.lhs.true132.if.then146_crit_edge
  %tobool130.not551 = phi i1 [ true, %land.lhs.true144.if.then146_crit_edge ], [ false, %land.lhs.true132.if.then146_crit_edge ]
  %call.i530 = tail call i32 @ovl_verify_set_fh(ptr noundef %3, ptr noundef nonnull %76, i32 noundef 2, ptr noundef nonnull %70, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i530)
  %tobool148.not = icmp eq i32 %call.i530, 0
  br i1 %tobool148.not, label %if.then146.if.end155_crit_edge, label %if.then149

if.then146.if.end155_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

if.then149:                                       ; preds = %if.then146
  tail call void @dput(ptr noundef nonnull %70) #11
  br i1 %tobool130.not551, label %if.then149.out_put.thread_crit_edge, label %if.then149.for.end_crit_edge

if.then149.for.end_crit_edge:                     ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then149.out_put.thread_crit_edge:              ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put.thread

if.end155:                                        ; preds = %if.then146.if.end155_crit_edge, %land.lhs.true144.if.end155_crit_edge, %land.lhs.true139.if.end155_crit_edge, %land.lhs.true132.if.end155_crit_edge, %if.end109.if.end155_crit_edge
  %origin.1 = phi ptr [ %origin.0616, %land.lhs.true144.if.end155_crit_edge ], [ %origin.0616, %land.lhs.true139.if.end155_crit_edge ], [ %origin.0616, %if.end109.if.end155_crit_edge ], [ %70, %if.then146.if.end155_crit_edge ], [ %origin.0616, %land.lhs.true132.if.end155_crit_edge ]
  %92 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %metacopy, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool157.not = icmp eq i8 %93, 0
  %or.cond523 = select i1 %tobool157.not, i1 true, i1 %tobool112.not
  br i1 %or.cond523, label %if.else162, label %if.then161

if.then161:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dput(ptr noundef nonnull %70) #11
  %94 = ptrtoint ptr %this to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %this, align 4
  br label %if.end168

if.else162:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx163 = getelementptr %struct.ovl_path, ptr %stack.0.ph, i32 %ctr.0617
  %dentry164 = getelementptr %struct.ovl_path, ptr %stack.0.ph, i32 %ctr.0617, i32 1
  %95 = ptrtoint ptr %dentry164 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %70, ptr %dentry164, align 4
  %96 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %lower.sroa.0.0.copyload, ptr %arrayidx163, align 8
  %inc = add i32 %ctr.0617, 1
  br label %if.end168

if.end168:                                        ; preds = %if.else162, %if.then161
  %ctr.1 = phi i32 [ %ctr.0617, %if.then161 ], [ %inc, %if.else162 ]
  %97 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %redirect, align 4
  %tobool170.not = icmp eq ptr %98, null
  br i1 %tobool170.not, label %if.end185, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %if.end168
  %99 = ptrtoint ptr %redirect_follow to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %redirect_follow, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool174.not = icmp eq i8 %100, 0
  br i1 %tobool174.not, label %if.then175, label %if.end185.thread

if.then175:                                       ; preds = %land.lhs.true171
  %call176 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_lookup._rs.26, ptr noundef nonnull @__func__.ovl_lookup) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then175.out_put_crit_edge, label %do.end181

if.then175.out_put_crit_edge:                     ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put

do.end181:                                        ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #13
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %dentry) #16
  br label %out_put

if.end185:                                        ; preds = %if.end168
  %101 = ptrtoint ptr %stop to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %stop, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool187.not = icmp eq i8 %102, 0
  br i1 %tobool187.not, label %if.end185.for.inc_crit_edge, label %if.end185.for.end_crit_edge

if.end185.for.end_crit_edge:                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end185.for.inc_crit_edge:                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end185.thread:                                 ; preds = %land.lhs.true171
  %103 = ptrtoint ptr %stop to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %stop, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool187.not557 = icmp eq i8 %104, 0
  br i1 %tobool187.not557, label %land.lhs.true192, label %if.end185.thread.for.end_crit_edge

if.end185.thread.for.end_crit_edge:               ; preds = %if.end185.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true192:                                 ; preds = %if.end185.thread
  %105 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %106)
  %cmp196 = icmp ne i8 %106, 47
  %cmp199.not = icmp eq ptr %poe.2615, %11
  %or.cond524 = select i1 %cmp196, i1 true, i1 %cmp199.not
  br i1 %or.cond524, label %land.lhs.true192.for.incthread-pre-split_crit_edge, label %if.then201

land.lhs.true192.for.incthread-pre-split_crit_edge: ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.incthread-pre-split

if.then201:                                       ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #13
  %idx203 = getelementptr inbounds %struct.ovl_layer, ptr %lower.sroa.0.0.copyload, i32 0, i32 3
  %107 = ptrtoint ptr %idx203 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %idx203, align 4
  %sub204 = add i32 %108, -1
  br label %for.incthread-pre-split

for.incthread-pre-split:                          ; preds = %if.then201, %land.lhs.true192.for.incthread-pre-split_crit_edge, %if.end90.for.incthread-pre-split_crit_edge
  %poe.4.ph.ph = phi ptr [ %poe.2615, %if.end90.for.incthread-pre-split_crit_edge ], [ %11, %if.then201 ], [ %poe.2615, %land.lhs.true192.for.incthread-pre-split_crit_edge ]
  %origin.2.ph.ph = phi ptr [ %origin.0616, %if.end90.for.incthread-pre-split_crit_edge ], [ %origin.1, %if.then201 ], [ %origin.1, %land.lhs.true192.for.incthread-pre-split_crit_edge ]
  %ctr.2.ph565.ph = phi i32 [ %ctr.0617, %if.end90.for.incthread-pre-split_crit_edge ], [ %ctr.1, %if.then201 ], [ %ctr.1, %land.lhs.true192.for.incthread-pre-split_crit_edge ]
  %i.2.ph.ph = phi i32 [ %i.0619, %if.end90.for.incthread-pre-split_crit_edge ], [ %sub204, %if.then201 ], [ %i.0619, %land.lhs.true192.for.incthread-pre-split_crit_edge ]
  %109 = ptrtoint ptr %stop to i32
  call void @__asan_load1_noabort(i32 %109)
  %.pr656 = load i8, ptr %stop, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.incthread-pre-split, %if.end185.for.inc_crit_edge
  %110 = phi i8 [ %.pr656, %for.incthread-pre-split ], [ 0, %if.end185.for.inc_crit_edge ]
  %poe.4.ph = phi ptr [ %poe.4.ph.ph, %for.incthread-pre-split ], [ %poe.2615, %if.end185.for.inc_crit_edge ]
  %origin.2.ph = phi ptr [ %origin.2.ph.ph, %for.incthread-pre-split ], [ %origin.1, %if.end185.for.inc_crit_edge ]
  %ctr.2.ph565 = phi i32 [ %ctr.2.ph565.ph, %for.incthread-pre-split ], [ %ctr.1, %if.end185.for.inc_crit_edge ]
  %i.2.ph = phi i32 [ %i.2.ph.ph, %for.incthread-pre-split ], [ %i.0619, %if.end185.for.inc_crit_edge ]
  %inc206 = add i32 %i.2.ph, 1
  %tobool65.not = icmp eq i8 %110, 0
  br i1 %tobool65.not, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end185.thread.for.end_crit_edge, %if.end185.for.end_crit_edge, %if.then149.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end63.for.end_crit_edge, %if.end52.for.end_crit_edge
  %stack.0653 = phi ptr [ %stack.0.ph, %if.then149.for.end_crit_edge ], [ %stack.0.ph, %if.end63.for.end_crit_edge ], [ null, %if.end52.for.end_crit_edge ], [ %stack.0.ph, %if.end185.for.end_crit_edge ], [ %stack.0.ph, %if.end185.thread.for.end_crit_edge ], [ %stack.0.ph, %for.inc.for.end_crit_edge ], [ %stack.0.ph, %land.rhs.for.end_crit_edge ]
  %origin.3 = phi ptr [ %origin.0616, %if.then149.for.end_crit_edge ], [ null, %if.end63.for.end_crit_edge ], [ null, %if.end52.for.end_crit_edge ], [ %origin.0616, %land.rhs.for.end_crit_edge ], [ %origin.2.ph, %for.inc.for.end_crit_edge ], [ %origin.1, %if.end185.thread.for.end_crit_edge ], [ %origin.1, %if.end185.for.end_crit_edge ]
  %ctr.3 = phi i32 [ 0, %if.then149.for.end_crit_edge ], [ 0, %if.end63.for.end_crit_edge ], [ 0, %if.end52.for.end_crit_edge ], [ %ctr.0617, %land.rhs.for.end_crit_edge ], [ %ctr.2.ph565, %for.inc.for.end_crit_edge ], [ %ctr.1, %if.end185.thread.for.end_crit_edge ], [ %ctr.1, %if.end185.for.end_crit_edge ]
  %111 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %metacopy, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool208.not = icmp ne i8 %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctr.3)
  %tobool214.not = icmp eq i32 %ctr.3, 0
  %or.cond525 = select i1 %uppermetacopy.1.off0, i1 %tobool214.not, i1 false
  %or.cond529 = select i1 %tobool208.not, i1 true, i1 %or.cond525
  br i1 %or.cond529, label %if.then215, label %if.else225

if.then215:                                       ; preds = %for.end
  %call216 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_lookup._rs.30, ptr noundef nonnull @__func__.ovl_lookup) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.then215.out_put_crit_edge, label %do.end221

if.then215.out_put_crit_edge:                     ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put

do.end221:                                        ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #13
  %call223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %dentry) #16
  br label %out_put

if.else225:                                       ; preds = %for.end
  %113 = ptrtoint ptr %is_dir to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %is_dir, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool227.not = icmp eq i8 %114, 0
  br i1 %tobool227.not, label %land.lhs.true228, label %if.else225.if.end270_crit_edge

if.else225.if.end270_crit_edge:                   ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end270

land.lhs.true228:                                 ; preds = %if.else225
  %115 = ptrtoint ptr %upperdentry to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %upperdentry, align 4
  %tobool229.not = icmp ne ptr %116, null
  %or.cond526 = select i1 %tobool229.not, i1 %tobool214.not, i1 false
  br i1 %or.cond526, label %land.lhs.true232, label %land.lhs.true228.if.end270_crit_edge

land.lhs.true228.if.end270_crit_edge:             ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end270

land.lhs.true232:                                 ; preds = %land.lhs.true228
  %117 = ptrtoint ptr %origin_path to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %origin_path, align 4
  %tobool233.not = icmp eq ptr %118, null
  br i1 %tobool233.not, label %if.end270.thread, label %if.then234

if.end270.thread:                                 ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %upperdentry to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %upperdentry, align 4
  br label %if.end277

if.then234:                                       ; preds = %land.lhs.true232
  %cmp235.not = icmp eq ptr %stack.0653, null
  br i1 %cmp235.not, label %if.end267, label %do.end251, !prof !110

do.end251:                                        ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1018, i32 noundef 9, ptr noundef null) #11
  br label %out_put.thread

if.end267:                                        ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #13
  %dentry268 = getelementptr inbounds %struct.ovl_path, ptr %118, i32 0, i32 1
  %121 = ptrtoint ptr %dentry268 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dentry268, align 4
  %123 = ptrtoint ptr %origin_path to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %origin_path, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.end267, %land.lhs.true228.if.end270_crit_edge, %if.else225.if.end270_crit_edge
  %stack.1 = phi ptr [ %stack.0653, %if.else225.if.end270_crit_edge ], [ %118, %if.end267 ], [ %stack.0653, %land.lhs.true228.if.end270_crit_edge ]
  %origin.4 = phi ptr [ %origin.3, %if.else225.if.end270_crit_edge ], [ %122, %if.end267 ], [ %origin.3, %land.lhs.true228.if.end270_crit_edge ]
  %ctr.4 = phi i32 [ %ctr.3, %if.else225.if.end270_crit_edge ], [ 1, %if.end267 ], [ %ctr.3, %land.lhs.true228.if.end270_crit_edge ]
  %124 = ptrtoint ptr %upperdentry to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %upperdentry, align 4
  %tobool271.not = icmp ne ptr %125, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctr.4)
  %tobool273.not = icmp eq i32 %ctr.4, 0
  %or.cond527 = select i1 %tobool271.not, i1 true, i1 %tobool273.not
  br i1 %or.cond527, label %if.end270.if.end277_crit_edge, label %if.then274

if.end270.if.end277_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

if.then274:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  %dentry276 = getelementptr inbounds %struct.ovl_path, ptr %stack.1, i32 0, i32 1
  %126 = ptrtoint ptr %dentry276 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dentry276, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.then274, %if.end270.if.end277_crit_edge, %if.end270.thread
  %tobool273.not590 = phi i1 [ %tobool273.not, %if.end270.if.end277_crit_edge ], [ false, %if.then274 ], [ true, %if.end270.thread ]
  %128 = phi ptr [ %125, %if.end270.if.end277_crit_edge ], [ null, %if.then274 ], [ %120, %if.end270.thread ]
  %ctr.4587 = phi i32 [ %ctr.4, %if.end270.if.end277_crit_edge ], [ %ctr.4, %if.then274 ], [ 0, %if.end270.thread ]
  %stack.1584 = phi ptr [ %stack.1, %if.end270.if.end277_crit_edge ], [ %stack.1, %if.then274 ], [ %stack.0653, %if.end270.thread ]
  %origin.5 = phi ptr [ %origin.4, %if.end270.if.end277_crit_edge ], [ %127, %if.then274 ], [ %origin.3, %if.end270.thread ]
  %tobool278.not = icmp eq ptr %origin.5, null
  br i1 %tobool278.not, label %if.end277.if.end296_crit_edge, label %land.lhs.true279

if.end277.if.end296_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end296

land.lhs.true279:                                 ; preds = %if.end277
  %129 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %d_sb, align 4
  %call281 = tail call ptr @ovl_indexdir(ptr noundef %130) #11
  %tobool282.not = icmp eq ptr %call281, null
  br i1 %tobool282.not, label %land.lhs.true279.if.end296_crit_edge, label %land.lhs.true283

land.lhs.true279.if.end296_crit_edge:             ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end296

land.lhs.true283:                                 ; preds = %land.lhs.true279
  br i1 %tobool227.not, label %land.lhs.true283.if.then290_crit_edge, label %lor.lhs.false286

land.lhs.true283.if.then290_crit_edge:            ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then290

lor.lhs.false286:                                 ; preds = %land.lhs.true283
  %131 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %d_sb, align 4
  %call288 = tail call zeroext i1 @ovl_index_all(ptr noundef %132) #11
  br i1 %call288, label %lor.lhs.false286.if.then290_crit_edge, label %lor.lhs.false286.if.end296_crit_edge

lor.lhs.false286.if.end296_crit_edge:             ; preds = %lor.lhs.false286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end296

lor.lhs.false286.if.then290_crit_edge:            ; preds = %lor.lhs.false286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then290

if.then290:                                       ; preds = %lor.lhs.false286.if.then290_crit_edge, %land.lhs.true283.if.then290_crit_edge
  %call291 = tail call ptr @ovl_lookup_index(ptr noundef %3, ptr noundef %128, ptr noundef nonnull %origin.5, i1 noundef zeroext true)
  %cmp.i = icmp ugt ptr %call291, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then293, label %if.then290.if.end296_crit_edge

if.then290.if.end296_crit_edge:                   ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end296

if.then293:                                       ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %call291 to i32
  br label %out_put

if.end296:                                        ; preds = %if.then290.if.end296_crit_edge, %lor.lhs.false286.if.end296_crit_edge, %land.lhs.true279.if.end296_crit_edge, %if.end277.if.end296_crit_edge
  %index.0 = phi ptr [ %call291, %if.then290.if.end296_crit_edge ], [ null, %lor.lhs.false286.if.end296_crit_edge ], [ null, %land.lhs.true279.if.end296_crit_edge ], [ null, %if.end277.if.end296_crit_edge ]
  %call297 = tail call ptr @ovl_alloc_entry(i32 noundef %ctr.4587) #11
  %tobool298.not = icmp eq ptr %call297, null
  br i1 %tobool298.not, label %if.end296.out_put_crit_edge, label %if.end300

if.end296.out_put_crit_edge:                      ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put

if.end300:                                        ; preds = %if.end296
  %lowerstack301 = getelementptr inbounds %struct.ovl_entry, ptr %call297, i32 0, i32 2
  %mul = shl i32 %ctr.4587, 3
  %134 = call ptr @memcpy(ptr %lowerstack301, ptr %stack.1584, i32 %mul)
  %d_fsdata302 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %135 = ptrtoint ptr %d_fsdata302 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call297, ptr %d_fsdata302, align 4
  br i1 %upperopaque.0.off0, label %if.then304, label %if.end300.if.end305_crit_edge

if.end300.if.end305_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end305

if.then304:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ovl_dentry_set_opaque(ptr noundef %dentry) #11
  br label %if.end305

if.end305:                                        ; preds = %if.then304, %if.end300.if.end305_crit_edge
  %tobool306.not = icmp eq ptr %128, null
  br i1 %tobool306.not, label %if.else308, label %if.then307

if.then307:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ovl_dentry_set_upper_alias(ptr noundef %dentry) #11
  br label %if.end325

if.else308:                                       ; preds = %if.end305
  %tobool309.not = icmp eq ptr %index.0, null
  br i1 %tobool309.not, label %if.else308.if.end325_crit_edge, label %dget.exit

if.else308.if.end325_crit_edge:                   ; preds = %if.else308
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end325

dget.exit:                                        ; preds = %if.else308
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %index.0, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #11
  %136 = ptrtoint ptr %upperdentry to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %index.0, ptr %upperdentry, align 4
  %call312 = tail call ptr @ovl_get_redirect_xattr(ptr noundef %3, ptr noundef nonnull %index.0, i32 noundef 0) #11
  %cmp.i533 = icmp ugt ptr %call312, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i533, label %if.then314, label %if.end316

if.then314:                                       ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #13
  %137 = ptrtoint ptr %call312 to i32
  br label %out_free_oe

if.end316:                                        ; preds = %dget.exit
  %call317 = tail call i32 @ovl_check_metacopy_xattr(ptr noundef %3, ptr noundef nonnull %index.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %cmp318 = icmp slt i32 %call317, 0
  br i1 %cmp318, label %if.end316.out_free_oe_crit_edge, label %if.end321

if.end316.out_free_oe_crit_edge:                  ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_oe

if.end321:                                        ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool322 = icmp ne i32 %call317, 0
  br label %if.end325

if.end325:                                        ; preds = %if.end321, %if.else308.if.end325_crit_edge, %if.then307
  %upperredirect.2 = phi ptr [ %upperredirect.1, %if.then307 ], [ %call312, %if.end321 ], [ %upperredirect.1, %if.else308.if.end325_crit_edge ]
  %uppermetacopy.2.off0 = phi i1 [ %uppermetacopy.1.off0, %if.then307 ], [ %tobool322, %if.end321 ], [ %uppermetacopy.1.off0, %if.else308.if.end325_crit_edge ]
  %138 = ptrtoint ptr %upperdentry to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %upperdentry, align 4
  %tobool326.not = icmp eq ptr %139, null
  %or.cond528 = select i1 %tobool326.not, i1 %tobool273.not590, i1 false
  br i1 %or.cond528, label %if.end325.if.end362_crit_edge, label %if.then329

if.end325.if.end362_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end362

if.then329:                                       ; preds = %if.end325
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %oip) #11
  %140 = getelementptr inbounds i8, ptr %oip, i32 12
  %141 = call ptr @memset(ptr %140, i32 255, i32 16)
  %142 = ptrtoint ptr %oip to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %oip, align 4
  %upperdentry330 = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 1
  %143 = ptrtoint ptr %upperdentry330 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %139, ptr %upperdentry330, align 4
  %lowerpath = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 2
  %144 = ptrtoint ptr %lowerpath to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %stack.1584, ptr %lowerpath, align 4
  %index331 = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 3
  %tobool332 = icmp ne ptr %index.0, null
  %frombool333 = zext i1 %tobool332 to i8
  %145 = ptrtoint ptr %index331 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %frombool333, ptr %index331, align 4
  %numlower334 = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 4
  %146 = ptrtoint ptr %numlower334 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %ctr.4587, ptr %numlower334, align 4
  %redirect335 = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 5
  %147 = ptrtoint ptr %redirect335 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %upperredirect.2, ptr %redirect335, align 4
  %lowerdata = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctr.4587)
  %cmp336 = icmp ult i32 %ctr.4587, 2
  %tobool227.not.not = xor i1 %tobool227.not, true
  %brmerge592 = select i1 %cmp336, i1 true, i1 %tobool227.not.not
  br i1 %brmerge592, label %if.then329.cond.end346_crit_edge, label %cond.true341

if.then329.cond.end346_crit_edge:                 ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end346

cond.true341:                                     ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #13
  %sub342 = add i32 %ctr.4587, -1
  %dentry344 = getelementptr %struct.ovl_path, ptr %stack.1584, i32 %sub342, i32 1
  %148 = ptrtoint ptr %dentry344 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dentry344, align 4
  br label %cond.end346

cond.end346:                                      ; preds = %cond.true341, %if.then329.cond.end346_crit_edge
  %cond347 = phi ptr [ %149, %cond.true341 ], [ null, %if.then329.cond.end346_crit_edge ]
  %150 = ptrtoint ptr %lowerdata to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %cond347, ptr %lowerdata, align 4
  %151 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %d_sb, align 4
  %call349 = call ptr @ovl_get_inode(ptr noundef %152, ptr noundef nonnull %oip) #11
  %cmp.i534 = icmp ugt ptr %call349, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i534, label %cleanup359, label %if.end353

if.end353:                                        ; preds = %cond.end346
  %brmerge = select i1 %tobool326.not, i1 true, i1 %uppermetacopy.2.off0
  br i1 %brmerge, label %if.end353.cleanup359.thread_crit_edge, label %if.then357

if.end353.cleanup359.thread_crit_edge:            ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup359.thread

if.then357:                                       ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr i8, ptr %call349, i32 -8
  call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #11
  br label %cleanup359.thread

cleanup359.thread:                                ; preds = %if.then357, %if.end353.cleanup359.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %oip) #11
  br label %if.end362

cleanup359:                                       ; preds = %cond.end346
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %call349 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %oip) #11
  br label %out_free_oe

if.end362:                                        ; preds = %cleanup359.thread, %if.end325.if.end362_crit_edge
  %inode.0 = phi ptr [ null, %if.end325.if.end362_crit_edge ], [ %call349, %cleanup359.thread ]
  call void @ovl_dentry_update_reval(ptr noundef %dentry, ptr noundef %139, i32 noundef 2052) #11
  call void @revert_creds(ptr noundef %call8) #11
  %154 = ptrtoint ptr %origin_path to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %origin_path, align 4
  %tobool363.not = icmp eq ptr %155, null
  br i1 %tobool363.not, label %if.end362.if.end366_crit_edge, label %if.then364

if.end362.if.end366_crit_edge:                    ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end366

if.then364:                                       ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #13
  %dentry365 = getelementptr inbounds %struct.ovl_path, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %dentry365 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dentry365, align 4
  call void @dput(ptr noundef %157) #11
  call void @kfree(ptr noundef nonnull %155) #11
  br label %if.end366

if.end366:                                        ; preds = %if.then364, %if.end362.if.end366_crit_edge
  call void @dput(ptr noundef %index.0) #11
  call void @kfree(ptr noundef %stack.1584) #11
  %158 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %redirect, align 4
  call void @kfree(ptr noundef %159) #11
  %call368 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #11
  br label %cleanup385

out_free_oe:                                      ; preds = %cleanup359, %if.end316.out_free_oe_crit_edge, %if.then314
  %upperredirect.3 = phi ptr [ %upperredirect.2, %cleanup359 ], [ null, %if.then314 ], [ %call312, %if.end316.out_free_oe_crit_edge ]
  %err.1 = phi i32 [ %153, %cleanup359 ], [ %137, %if.then314 ], [ %call317, %if.end316.out_free_oe_crit_edge ]
  %160 = ptrtoint ptr %d_fsdata302 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %d_fsdata302, align 4
  call void @kfree(ptr noundef nonnull %call297) #11
  br label %out_put

out_put.thread:                                   ; preds = %do.end251, %if.then149.out_put.thread_crit_edge, %if.then122
  %stack.2.ph = phi ptr [ %stack.0.ph, %if.then149.out_put.thread_crit_edge ], [ %stack.0.ph, %if.then122 ], [ %stack.0653, %do.end251 ]
  %err.2.ph = phi i32 [ %call.i530, %if.then149.out_put.thread_crit_edge ], [ %retval.0.i545, %if.then122 ], [ -5, %do.end251 ]
  call void @dput(ptr noundef null) #11
  br label %for.end378

out_put:                                          ; preds = %out_free_oe, %if.end296.out_put_crit_edge, %if.then293, %do.end221, %if.then215.out_put_crit_edge, %do.end181, %if.then175.out_put_crit_edge, %do.end, %if.then103.out_put_crit_edge, %if.end85.out_put_crit_edge
  %stack.2 = phi ptr [ %stack.1584, %if.then293 ], [ %stack.1584, %out_free_oe ], [ %stack.1584, %if.end296.out_put_crit_edge ], [ %stack.0653, %do.end221 ], [ %stack.0653, %if.then215.out_put_crit_edge ], [ %stack.0.ph, %do.end ], [ %stack.0.ph, %if.then103.out_put_crit_edge ], [ %stack.0.ph, %do.end181 ], [ %stack.0.ph, %if.then175.out_put_crit_edge ], [ %stack.0.ph, %if.end85.out_put_crit_edge ]
  %index.1 = phi ptr [ null, %if.then293 ], [ %index.0, %out_free_oe ], [ %index.0, %if.end296.out_put_crit_edge ], [ null, %do.end221 ], [ null, %if.then215.out_put_crit_edge ], [ null, %do.end ], [ null, %if.then103.out_put_crit_edge ], [ null, %do.end181 ], [ null, %if.then175.out_put_crit_edge ], [ null, %if.end85.out_put_crit_edge ]
  %ctr.5 = phi i32 [ %ctr.4587, %if.then293 ], [ %ctr.4587, %out_free_oe ], [ %ctr.4587, %if.end296.out_put_crit_edge ], [ %ctr.3, %do.end221 ], [ %ctr.3, %if.then215.out_put_crit_edge ], [ %ctr.0617, %do.end ], [ %ctr.0617, %if.then103.out_put_crit_edge ], [ %ctr.1, %do.end181 ], [ %ctr.1, %if.then175.out_put_crit_edge ], [ %ctr.0617, %if.end85.out_put_crit_edge ]
  %upperredirect.4 = phi ptr [ %upperredirect.1, %if.then293 ], [ %upperredirect.3, %out_free_oe ], [ %upperredirect.1, %if.end296.out_put_crit_edge ], [ %upperredirect.1, %do.end221 ], [ %upperredirect.1, %if.then215.out_put_crit_edge ], [ %upperredirect.1, %do.end ], [ %upperredirect.1, %if.then103.out_put_crit_edge ], [ %upperredirect.1, %do.end181 ], [ %upperredirect.1, %if.then175.out_put_crit_edge ], [ %upperredirect.1, %if.end85.out_put_crit_edge ]
  %err.2 = phi i32 [ %133, %if.then293 ], [ %err.1, %out_free_oe ], [ -12, %if.end296.out_put_crit_edge ], [ -5, %do.end221 ], [ -5, %if.then215.out_put_crit_edge ], [ -1, %do.end ], [ -1, %if.then103.out_put_crit_edge ], [ -1, %do.end181 ], [ -1, %if.then175.out_put_crit_edge ], [ %call87, %if.end85.out_put_crit_edge ]
  call void @dput(ptr noundef %index.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctr.5)
  %cmp371627.not = icmp eq i32 %ctr.5, 0
  br i1 %cmp371627.not, label %out_put.for.end378_crit_edge, label %out_put.for.body373_crit_edge

out_put.for.body373_crit_edge:                    ; preds = %out_put
  br label %for.body373

out_put.for.end378_crit_edge:                     ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end378

for.body373:                                      ; preds = %for.body373.for.body373_crit_edge, %out_put.for.body373_crit_edge
  %i.3628 = phi i32 [ %inc377, %for.body373.for.body373_crit_edge ], [ 0, %out_put.for.body373_crit_edge ]
  %dentry375 = getelementptr %struct.ovl_path, ptr %stack.2, i32 %i.3628, i32 1
  %161 = ptrtoint ptr %dentry375 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dentry375, align 4
  call void @dput(ptr noundef %162) #11
  %inc377 = add nuw i32 %i.3628, 1
  %exitcond.not = icmp eq i32 %inc377, %ctr.5
  br i1 %exitcond.not, label %for.body373.for.end378_crit_edge, label %for.body373.for.body373_crit_edge

for.body373.for.body373_crit_edge:                ; preds = %for.body373
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body373

for.body373.for.end378_crit_edge:                 ; preds = %for.body373
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end378

for.end378:                                       ; preds = %for.body373.for.end378_crit_edge, %out_put.for.end378_crit_edge, %out_put.thread
  %err.2665 = phi i32 [ %err.2.ph, %out_put.thread ], [ %err.2, %out_put.for.end378_crit_edge ], [ %err.2, %for.body373.for.end378_crit_edge ]
  %upperredirect.4664 = phi ptr [ %upperredirect.1, %out_put.thread ], [ %upperredirect.4, %out_put.for.end378_crit_edge ], [ %upperredirect.4, %for.body373.for.end378_crit_edge ]
  %stack.2663 = phi ptr [ %stack.2.ph, %out_put.thread ], [ %stack.2, %out_put.for.end378_crit_edge ], [ %stack.2, %for.body373.for.end378_crit_edge ]
  call void @kfree(ptr noundef %stack.2663) #11
  br label %out_put_upper

out_put_upper:                                    ; preds = %for.end378, %if.end7.i.i.out_put_upper_crit_edge, %if.then58.out_put_upper_crit_edge, %if.then37.out_put_upper_crit_edge, %if.then25.out_put_upper_crit_edge
  %upperredirect.5 = phi ptr [ %upperredirect.4664, %for.end378 ], [ %upperredirect.1, %if.end7.i.i.out_put_upper_crit_edge ], [ null, %if.then37.out_put_upper_crit_edge ], [ null, %if.then25.out_put_upper_crit_edge ], [ %upperredirect.1, %if.then58.out_put_upper_crit_edge ]
  %err.3 = phi i32 [ %err.2665, %for.end378 ], [ -12, %if.end7.i.i.out_put_upper_crit_edge ], [ -12, %if.then37.out_put_upper_crit_edge ], [ %call26, %if.then25.out_put_upper_crit_edge ], [ -12, %if.then58.out_put_upper_crit_edge ]
  %163 = ptrtoint ptr %origin_path to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %origin_path, align 4
  %tobool379.not = icmp eq ptr %164, null
  br i1 %tobool379.not, label %out_put_upper.if.end382_crit_edge, label %if.then380

out_put_upper.if.end382_crit_edge:                ; preds = %out_put_upper
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end382

if.then380:                                       ; preds = %out_put_upper
  call void @__sanitizer_cov_trace_pc() #13
  %dentry381 = getelementptr inbounds %struct.ovl_path, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %dentry381 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dentry381, align 4
  call void @dput(ptr noundef %166) #11
  call void @kfree(ptr noundef nonnull %164) #11
  br label %if.end382

if.end382:                                        ; preds = %if.then380, %out_put_upper.if.end382_crit_edge
  %167 = ptrtoint ptr %upperdentry to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %upperdentry, align 4
  call void @dput(ptr noundef %168) #11
  call void @kfree(ptr noundef %upperredirect.5) #11
  br label %out

out:                                              ; preds = %if.end382, %if.then19, %if.then12.out_crit_edge
  %err.4 = phi i32 [ %call13, %if.then12.out_crit_edge ], [ -66, %if.then19 ], [ %err.3, %if.end382 ]
  %169 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %redirect, align 4
  call void @kfree(ptr noundef %170) #11
  call void @revert_creds(ptr noundef %call8) #11
  %171 = inttoptr i32 %err.4 to ptr
  br label %cleanup385

cleanup385:                                       ; preds = %out, %if.end366, %cond.end.cleanup385_crit_edge
  %retval.0 = phi ptr [ %171, %out ], [ %call368, %if.end366 ], [ inttoptr (i32 -36 to ptr), %cond.end.cleanup385_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %d) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %upperdentry) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %origin_path) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_override_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_upper(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_lookup_layer(ptr noundef %base, ptr nocapture noundef %d, ptr nocapture noundef writeonly %ret, i1 noundef zeroext %drop_negative) unnamed_addr #1 align 64 {
entry:
  %base.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %base, ptr %base.addr, align 4
  %name = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %name, align 8
  %name2 = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name2, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %6)
  %cmp.not = icmp eq i8 %6, 47
  br i1 %cmp.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %sub = add i32 %2, -1
  br label %while.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @ovl_lookup_single(ptr noundef %base, ptr noundef %d, ptr noundef %4, i32 noundef %2, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef %ret, i1 noundef zeroext %drop_negative)
  br label %cleanup101

while.cond:                                       ; preds = %if.end59.while.cond_crit_edge, %while.cond.preheader
  %dentry.0 = phi ptr [ %22, %if.end59.while.cond_crit_edge ], [ null, %while.cond.preheader ]
  %rem.0 = phi i32 [ %sub60, %if.end59.while.cond_crit_edge ], [ %sub, %while.cond.preheader ]
  %7 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.addr, align 4
  %tobool.not.i = icmp eq ptr %8, null
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %and.i.i = and i32 %10, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %and.i.i)
  %cmp.i128 = icmp eq i32 %and.i.i, 2097152
  br i1 %cmp.i128, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %11 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name2, align 8
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %name, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %idx.neg = sub i32 0, %rem.0
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %call16 = tail call ptr @strchrnul(ptr noundef %add.ptr15, i32 noundef 47) #11
  %sub.ptr.lhs.cast = ptrtoint ptr %call16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %15 = ptrtoint ptr %call16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not = icmp eq i8 %16, 0
  %arrayidx20 = getelementptr i8, ptr %add.ptr15, i32 -1
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %18)
  %cmp22.not = icmp eq i8 %18, 47
  br i1 %cmp22.not, label %if.end48, label %do.end, !prof !110

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %cleanup101

if.end48:                                         ; preds = %while.body
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %name, align 8
  %sub51 = sub i32 %20, %rem.0
  %call53 = call fastcc i32 @ovl_lookup_single(ptr noundef nonnull %8, ptr noundef %d, ptr noundef %add.ptr15, i32 noundef %sub.ptr.sub, i32 noundef %sub51, ptr noundef %call16, ptr noundef nonnull %base.addr, i1 noundef zeroext %drop_negative)
  tail call void @dput(ptr noundef %dentry.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end48.cleanup101_crit_edge

if.end48.cleanup101_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

if.end56:                                         ; preds = %if.end48
  %21 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.addr, align 4
  br i1 %tobool18.not, label %if.end56.while.end_crit_edge, label %if.end59

if.end56.while.end_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end59:                                         ; preds = %if.end56
  %add.neg = xor i32 %sub.ptr.sub, -1
  %sub60 = add i32 %rem.0, %add.neg
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %name, align 8
  %cmp64.not = icmp ult i32 %sub60, %24
  br i1 %cmp64.not, label %if.end59.while.cond_crit_edge, label %if.end87, !prof !110

if.end59.while.cond_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end87:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 339, i32 noundef 9, ptr noundef null) #11
  br label %cleanup101

while.end:                                        ; preds = %if.end56.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %dentry.2 = phi ptr [ %dentry.0, %while.cond.while.end_crit_edge ], [ %dentry.0, %land.rhs.while.end_crit_edge ], [ %22, %if.end56.while.end_crit_edge ]
  %25 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dentry.2, ptr %ret, align 4
  br label %cleanup101

cleanup101:                                       ; preds = %while.end, %if.end87, %if.end48.cleanup101_crit_edge, %do.end, %if.then
  %retval.2 = phi i32 [ %call, %if.then ], [ 0, %while.end ], [ -5, %if.end87 ], [ -5, %do.end ], [ %call53, %if.end48.cleanup101_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_check_origin(ptr nocapture noundef readonly %ofs, ptr noundef %upperdentry, ptr nocapture noundef %stackp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ovl_get_fh(ptr noundef %ofs, ptr noundef %upperdentry, i32 noundef 2)
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @ovl_check_origin_fh(ptr noundef %ofs, ptr noundef nonnull %call, i1 noundef zeroext false, ptr noundef %upperdentry, ptr noundef %stackp)
  tail call void @kfree(ptr noundef nonnull %call) #11
  %1 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call3, label %if.end6 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -116, label %if.end.cleanup_crit_edge16
  ]

if.end.cleanup_crit_edge16:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge16, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end6 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_verify_lower(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_indexdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_index_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_alloc_entry(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_set_opaque(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_set_upper_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_get_redirect_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_check_metacopy_xattr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_update_reval(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ovl_lower_positive(ptr noundef %dentry) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i1 @ovl_dentry_is_opaque(ptr noundef %dentry) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ovl_dentry_upper(ptr noundef %dentry) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb, align 4
  %call5 = tail call ptr @ovl_override_creds(ptr noundef %7) #11
  %numlower = getelementptr inbounds %struct.ovl_entry, ptr %3, i32 0, i32 1
  %name9 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end15.land.rhs_crit_edge, %if.end4
  %i.040 = phi i32 [ 0, %if.end4 ], [ %inc, %if.end15.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %numlower to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %numlower, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.040, i32 %9)
  %cmp = icmp ult i32 %i.040, %9
  br i1 %cmp, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %dentry8 = getelementptr %struct.ovl_entry, ptr %3, i32 0, i32 2, i32 %i.040, i32 1
  %10 = ptrtoint ptr %dentry8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry8, align 4
  %12 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name9, align 8
  %14 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d_name, align 8
  %call10 = tail call ptr @lookup_positive_unlocked(ptr noundef %13, ptr noundef %11, i32 noundef %15) #11
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.else

if.then12:                                        ; preds = %for.body
  %16 = ptrtoint ptr %call10 to i32
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %16, label %if.then12.for.end_crit_edge [
    i32 -2, label %if.then12.if.end15_crit_edge
    i32 -36, label %if.then12.if.end15_crit_edge46
  ]

if.then12.if.end15_crit_edge46:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12.if.end15_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call zeroext i1 @ovl_is_whiteout(ptr noundef %call10) #11
  %lnot = xor i1 %call14, true
  tail call void @dput(ptr noundef %call10) #11
  br label %for.end

if.end15:                                         ; preds = %if.then12.if.end15_crit_edge, %if.then12.if.end15_crit_edge46
  %inc = add nuw i32 %i.040, 1
  br i1 %cmp.i, label %if.end15.land.rhs_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end15.land.rhs_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %if.else, %if.then12.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %positive.0.off0.lcssa = phi i1 [ %lnot, %if.else ], [ true, %if.then12.for.end_crit_edge ], [ false, %land.rhs.for.end_crit_edge ], [ false, %if.end15.for.end_crit_edge ]
  tail call void @revert_creds(ptr noundef %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ %positive.0.off0.lcssa, %for.end ], [ %call, %if.then ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_dentry_is_opaque(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_subdir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_lookup_single(ptr noundef %base, ptr nocapture noundef %d, ptr noundef %name, i32 noundef %namelen, i32 noundef %prelen, ptr nocapture noundef readonly %post, ptr nocapture noundef writeonly %ret, i1 noundef zeroext %drop_negative) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %post to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %post, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %call.i = tail call ptr @lookup_one_len_unlocked(ptr noundef %name, ptr noundef %base, i32 noundef %namelen) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.if.then_crit_edge, label %land.lhs.true.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %call.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  %and.i.i = and i32 %3, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i30.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i30.i, label %if.then.i, label %if.end7

if.then.i:                                        ; preds = %land.lhs.true.i
  br i1 %drop_negative, label %land.lhs.true7.i, label %if.then.i.ovl_lookup_positive_unlocked.exit.thread_crit_edge

if.then.i.ovl_lookup_positive_unlocked.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_lookup_positive_unlocked.exit.thread

land.lhs.true7.i:                                 ; preds = %if.then.i
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %call.i, i32 0, i32 7
  %count.i = getelementptr inbounds %struct.dentry, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.then8.i, label %land.lhs.true7.i.ovl_lookup_positive_unlocked.exit.thread_crit_edge

land.lhs.true7.i.ovl_lookup_positive_unlocked.exit.thread_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_lookup_positive_unlocked.exit.thread

if.then8.i:                                       ; preds = %land.lhs.true7.i
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #11
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 8
  %and.i.i.i.i = and i32 %7, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true11.i, label %if.then8.i.if.end.i_crit_edge

if.then8.i.if.end.i_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true11.i:                                ; preds = %if.then8.i
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp14.i = icmp eq i32 %9, 1
  br i1 %cmp14.i, label %if.then15.i, label %land.lhs.true11.i.if.end.i_crit_edge

land.lhs.true11.i.if.end.i_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then15.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__d_drop(ptr noundef %call.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then15.i, %land.lhs.true11.i.if.end.i_crit_edge, %if.then8.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #11
  br label %ovl_lookup_positive_unlocked.exit.thread

ovl_lookup_positive_unlocked.exit.thread:         ; preds = %if.end.i, %land.lhs.true7.i.ovl_lookup_positive_unlocked.exit.thread_crit_edge, %if.then.i.ovl_lookup_positive_unlocked.exit.thread_crit_edge
  tail call void @dput(ptr noundef %call.i) #11
  br label %if.then

if.then:                                          ; preds = %ovl_lookup_positive_unlocked.exit.thread, %entry.if.then_crit_edge
  %ret.0.i125 = phi ptr [ inttoptr (i32 -2 to ptr), %ovl_lookup_positive_unlocked.exit.thread ], [ %call.i, %entry.if.then_crit_edge ]
  %10 = ptrtoint ptr %ret.0.i125 to i32
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %10, label %if.then.out_err_crit_edge [
    i32 -2, label %if.then.out_crit_edge
    i32 -36, label %if.then.out_crit_edge127
  ]

if.then.out_crit_edge127:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.out_err_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end7:                                          ; preds = %land.lhs.true.i
  %call8 = tail call zeroext i1 @ovl_dentry_weird(ptr noundef %call.i) #11
  br i1 %call8, label %if.end7.out_err_crit_edge, label %if.end10

if.end7.out_err_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end10:                                         ; preds = %if.end7
  %call11 = tail call zeroext i1 @ovl_is_whiteout(ptr noundef %call.i) #11
  br i1 %call11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %opaque = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 3
  %12 = ptrtoint ptr %opaque to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %opaque, align 1
  br label %put_and_out

if.end13:                                         ; preds = %if.end10
  br i1 %tobool.not, label %land.lhs.true, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %metacopy = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 7
  %13 = ptrtoint ptr %metacopy to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %metacopy, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true16

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true16:                                  ; preds = %land.lhs.true
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i, align 8
  %and.i.i116 = and i32 %16, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and.i.i116)
  %cmp.i117 = icmp eq i32 %and.i.i116, 4194304
  br i1 %cmp.i117, label %land.lhs.true16.if.end20_crit_edge, label %land.lhs.true16.put_and_out_crit_edge

land.lhs.true16.put_and_out_crit_edge:            ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_and_out

land.lhs.true16.if.end20_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true16.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 8
  %and.i.i118 = and i32 %18, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %and.i.i118)
  %cmp.i119 = icmp eq i32 %and.i.i118, 2097152
  br i1 %cmp.i119, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  %is_dir = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 2
  %19 = ptrtoint ptr %is_dir to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_dir, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool23.not = icmp ne i8 %20, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool23.not, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.then22.put_and_out_crit_edge, label %if.end28

if.then22.put_and_out_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_and_out

if.end28:                                         ; preds = %if.then22
  %21 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %call30 = tail call i32 @ovl_check_metacopy_xattr(ptr noundef %24, ptr noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end28.out_err_crit_edge, label %if.end33

if.end28.out_err_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool34 = icmp ne i32 %call30, 0
  %metacopy35 = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 7
  %frombool36 = zext i1 %tobool34 to i8
  %25 = ptrtoint ptr %metacopy35 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool36, ptr %metacopy35, align 8
  %lnot39 = xor i1 %tobool34, true
  %stop40 = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 4
  %frombool41 = zext i1 %lnot39 to i8
  %26 = ptrtoint ptr %stop40 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool41, ptr %stop40, align 2
  br i1 %tobool34, label %lor.lhs.false44, label %if.end33.out_crit_edge

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false44:                                  ; preds = %if.end33
  %last = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 5
  %27 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %last, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool45.not = icmp eq i8 %28, 0
  br i1 %tobool45.not, label %lor.lhs.false44.if.end69_crit_edge, label %lor.lhs.false44.out_crit_edge

lor.lhs.false44.out_crit_edge:                    ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false44.if.end69_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.else:                                          ; preds = %if.end20
  %29 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d, align 8
  %call49 = tail call zeroext i1 @ovl_lookup_trap_inode(ptr noundef %30, ptr noundef %call.i) #11
  br i1 %call49, label %if.else.out_err_crit_edge, label %if.end51

if.else.out_err_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end51:                                         ; preds = %if.else
  br i1 %tobool.not, label %if.then53, label %if.end51.if.end55_crit_edge

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %is_dir54 = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 2
  %31 = ptrtoint ptr %is_dir54 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %is_dir54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51.if.end55_crit_edge
  %last56 = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 5
  %32 = ptrtoint ptr %last56 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %last56, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool57.not = icmp eq i8 %33, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.out_crit_edge

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end59:                                         ; preds = %if.end55
  %34 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d, align 8
  %call.i120 = tail call zeroext i1 @ovl_check_dir_xattr(ptr noundef %35, ptr noundef %call.i, i32 noundef 0) #11
  br i1 %call.i120, label %if.then62, label %if.end59.if.end69_crit_edge

if.end59.if.end69_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then62:                                        ; preds = %if.end59
  %stop63 = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 4
  %36 = ptrtoint ptr %stop63 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %stop63, align 2
  br i1 %tobool.not, label %if.then65, label %if.then62.out_crit_edge

if.then62.out_crit_edge:                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %opaque66 = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 3
  %37 = ptrtoint ptr %opaque66 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %opaque66, align 1
  br label %out

if.end69:                                         ; preds = %if.end59.if.end69_crit_edge, %lor.lhs.false44.if.end69_crit_edge
  %call70 = tail call fastcc i32 @ovl_check_redirect(ptr noundef %call.i, ptr noundef %d, i32 noundef %prelen, ptr noundef %post)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end69.out_crit_edge, label %if.end69.out_err_crit_edge

if.end69.out_err_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end69.out_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %put_and_out, %if.end69.out_crit_edge, %if.then65, %if.then62.out_crit_edge, %if.end55.out_crit_edge, %lor.lhs.false44.out_crit_edge, %if.end33.out_crit_edge, %if.then.out_crit_edge, %if.then.out_crit_edge127
  %this.0 = phi ptr [ null, %if.then.out_crit_edge ], [ null, %put_and_out ], [ %call.i, %if.end55.out_crit_edge ], [ %call.i, %if.then65 ], [ %call.i, %if.then62.out_crit_edge ], [ %call.i, %if.end69.out_crit_edge ], [ %call.i, %lor.lhs.false44.out_crit_edge ], [ %call.i, %if.end33.out_crit_edge ], [ null, %if.then.out_crit_edge127 ]
  %38 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %this.0, ptr %ret, align 4
  br label %cleanup

put_and_out:                                      ; preds = %if.then22.put_and_out_crit_edge, %land.lhs.true16.put_and_out_crit_edge, %if.then12
  %stop27 = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 4
  %39 = ptrtoint ptr %stop27 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %stop27, align 2
  tail call void @dput(ptr noundef %call.i) #11
  br label %out

out_err:                                          ; preds = %if.end69.out_err_crit_edge, %if.else.out_err_crit_edge, %if.end28.out_err_crit_edge, %if.end7.out_err_crit_edge, %if.then.out_err_crit_edge
  %this.1 = phi ptr [ %call.i, %if.end69.out_err_crit_edge ], [ %call.i, %if.end28.out_err_crit_edge ], [ null, %if.then.out_err_crit_edge ], [ %call.i, %if.end7.out_err_crit_edge ], [ %call.i, %if.else.out_err_crit_edge ]
  %err.0 = phi i32 [ %call70, %if.end69.out_err_crit_edge ], [ %call30, %if.end28.out_err_crit_edge ], [ %10, %if.then.out_err_crit_edge ], [ -66, %if.end7.out_err_crit_edge ], [ -40, %if.else.out_err_crit_edge ]
  tail call void @dput(ptr noundef %this.1) #11
  br label %cleanup

cleanup:                                          ; preds = %out_err, %out
  %retval.0 = phi i32 [ 0, %out ], [ %err.0, %out_err ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_lookup_trap_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_check_redirect(ptr noundef %dentry, ptr nocapture noundef %d, i32 noundef %prelen, ptr nocapture noundef readonly %post) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @strlen(ptr noundef %post) #17
  %add = add i32 %call1, %prelen
  %call2 = tail call ptr @ovl_get_redirect_xattr(ptr noundef %3, ptr noundef %dentry, i32 noundef %add) #11
  %tobool.not.i = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %6)
  %cmp = icmp eq i8 %6, 47
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %stop = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 4
  %7 = ptrtoint ptr %stop to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %stop, align 2
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @strlen(ptr noundef nonnull %call2) #17
  %add8 = add i32 %call7, 1
  %add.ptr = getelementptr i8, ptr %call2, i32 %prelen
  %8 = call ptr @memmove(ptr %add.ptr, ptr %call2, i32 %add8)
  %name9 = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name9, align 8
  %11 = call ptr @memcpy(ptr %call2, ptr %10, i32 %prelen)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %call11 = tail call ptr @strcat(ptr noundef nonnull %call2, ptr noundef %post)
  %redirect = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 6
  %12 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %redirect, align 4
  tail call void @kfree(ptr noundef %13) #11
  %14 = ptrtoint ptr %redirect to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %redirect, align 4
  %name14 = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 1
  %name15 = getelementptr inbounds %struct.ovl_lookup_data, ptr %d, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %name15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call2, ptr %name15, align 8
  %call17 = tail call i32 @strlen(ptr noundef nonnull %call2) #17
  %16 = ptrtoint ptr %name14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call17, ptr %name14, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_check_dir_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_check_origin_xattr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_want_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_set_origin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_set_impure(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_drop_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/overlayfs/namei.c", i32 391, i32 2}
!2 = !{ptr @ovl_check_origin_fh._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.ovl_check_origin_fh, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ovl_check_origin_fh._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ovl_check_origin_fh._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @ovl_verify_set_fh._rs, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/overlayfs/namei.c", i32 477, i32 2}
!10 = !{ptr @__func__.ovl_verify_set_fh, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ovl_verify_set_fh._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @ovl_verify_set_fh._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ovl_index_upper._rs, !17, !"_rs", i1 false, i1 false}
!17 = !{!"../fs/overlayfs/namei.c", i32 503, i32 3}
!18 = !{ptr @__func__.ovl_index_upper, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ovl_index_upper._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @ovl_index_upper._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ovl_verify_index._rs, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../fs/overlayfs/namei.c", i32 606, i32 2}
!24 = !{ptr @__func__.ovl_verify_index, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ovl_verify_index._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @ovl_verify_index._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ovl_verify_index._rs.8, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../fs/overlayfs/namei.c", i32 611, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ovl_verify_index._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ovl_verify_index._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ovl_lookup_index._rs, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../fs/overlayfs/namei.c", i32 714, i32 3}
!35 = !{ptr @__func__.ovl_lookup_index, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ovl_lookup_index._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @ovl_lookup_index._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ovl_lookup_index._rs.13, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../fs/overlayfs/namei.c", i32 741, i32 3}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ovl_lookup_index._entry.14, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ovl_lookup_index._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ovl_lookup_index._rs.17, !45, !"_rs", i1 false, i1 false}
!45 = !{!"../fs/overlayfs/namei.c", i32 747, i32 4}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ovl_lookup_index._entry.18, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ovl_lookup_index._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @ovl_lookup_index._rs.21, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../fs/overlayfs/namei.c", i32 756, i32 5}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ovl_lookup_index._entry.22, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ovl_lookup_index._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @ovl_lookup._rs, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../fs/overlayfs/namei.c", i32 924, i32 4}
!56 = !{ptr @__func__.ovl_lookup, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ovl_lookup._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @ovl_lookup._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @ovl_lookup._rs.26, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../fs/overlayfs/namei.c", i32 989, i32 4}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ovl_lookup._entry.27, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ovl_lookup._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @ovl_lookup._rs.30, !66, !"_rs", i1 false, i1 false}
!66 = !{!"../fs/overlayfs/namei.c", i32 1013, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ovl_lookup._entry.31, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @ovl_lookup._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/overlayfs/overlayfs.h", i32 204, i32 2}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ovl_do_setxattr.__UNIQUE_ID_ddebug230, !71, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!76 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ovl_get_fh._rs, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../fs/overlayfs/namei.c", i32 146, i32 2}
!79 = !{ptr @__func__.ovl_get_fh, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ovl_get_fh._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @ovl_get_fh._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @ovl_get_fh._rs.40, !84, !"_rs", i1 false, i1 false}
!84 = !{!"../fs/overlayfs/namei.c", i32 149, i32 2}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ovl_get_fh._entry.41, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ovl_get_fh._entry_ptr.43, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/overlayfs/overlayfs.h", i32 193, i32 2}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ovl_do_getxattr.__UNIQUE_ID_ddebug227, !89, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!92 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/overlayfs/namei.c", i32 315, i32 10}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i8 0, i8 2}
!105 = !{i64 2148504201, i64 2148504206, i64 2148504219, i64 2148504263, i64 2148504297, i64 2148504318}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 2153482452, i64 2153482937, i64 2153482489, i64 2153482545, i64 2153482579, i64 2153482603, i64 2153482644, i64 2153482665, i64 2153482693, i64 2153482727}
!108 = !{i64 2153484047, i64 2153484532, i64 2153484084, i64 2153484140, i64 2153484174, i64 2153484198, i64 2153484239, i64 2153484260, i64 2153484288, i64 2153484322}
!109 = !{!"auto-init"}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2153451611}
