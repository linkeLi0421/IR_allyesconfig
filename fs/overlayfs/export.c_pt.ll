; ModuleID = '/llk/IR_all_yes/fs/overlayfs/export.c_pt.bc'
source_filename = "../fs/overlayfs/export.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.ovl_fs = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.ovl_config, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32 }
%struct.ovl_config = type { ptr, ptr, ptr, i8, i8, i8, ptr, i8, i8, i8, i32, i8, i8, i8 }
%struct.ovl_entry = type { %union.anon.77, i32, [0 x %struct.ovl_path] }
%union.anon.77 = type { %struct.callback_head }
%struct.ovl_path = type { ptr, ptr }
%struct.ovl_layer = type { ptr, ptr, ptr, i32, i32 }
%struct.ovl_fh = type { [3 x i8], %union.anon.75 }
%union.anon.75 = type { %struct.ovl_fb }
%struct.ovl_fb = type <{ i8, i8, i8, i8, i8, %struct.uuid_t, [0 x i32] }>
%struct.ovl_inode_params = type { ptr, ptr, ptr, i8, i32, ptr, ptr }
%struct.name_snapshot = type { %struct.qstr, [36 x i8] }

@ovl_export_operations = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @ovl_encode_fh, ptr @ovl_fh_to_dentry, ptr @ovl_fh_to_parent, ptr @ovl_get_name, ptr @ovl_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/overlayfs/export.c\00", [42 x i8] zeroinitializer }, align 32
@ovl_dentry_to_fid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ovl_dentry_to_fid = private unnamed_addr constant [18 x i8] c"ovl_dentry_to_fid\00", align 1
@ovl_dentry_to_fid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.ovl_dentry_to_fid, ptr @.str, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014overlayfs: failed to encode file handle (%pd2, err=%i)\0A\00", [38 x i8] zeroinitializer }, align 32
@ovl_dentry_to_fid._entry_ptr = internal global ptr @ovl_dentry_to_fid._entry, section ".printk_index", align 4
@ovl_encode_maybe_copy_up._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_encode_maybe_copy_up = private unnamed_addr constant [25 x i8] c"ovl_encode_maybe_copy_up\00", align 1
@ovl_encode_maybe_copy_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.ovl_encode_maybe_copy_up, ptr @.str, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014overlayfs: failed to copy up on encode (%pd2, err=%i)\0A\00", [39 x i8] zeroinitializer }, align 32
@ovl_encode_maybe_copy_up._entry_ptr = internal global ptr @ovl_encode_maybe_copy_up._entry, section ".printk_index", align 4
@ovl_fh_to_dentry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_fh_to_dentry = private unnamed_addr constant [17 x i8] c"ovl_fh_to_dentry\00", align 1
@ovl_fh_to_dentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.ovl_fh_to_dentry, ptr @.str, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014overlayfs: failed to decode file handle (len=%d, type=%d, flags=%x, err=%i)\0A\00", [49 x i8] zeroinitializer }, align 32
@ovl_fh_to_dentry._entry_ptr = internal global ptr @ovl_fh_to_dentry._entry, section ".printk_index", align 4
@ovl_lookup_real._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_lookup_real = private unnamed_addr constant [16 x i8] c"ovl_lookup_real\00", align 1
@ovl_lookup_real._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.ovl_lookup_real, ptr @.str, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014overlayfs: failed to lookup by real (%pd2, layer=%d, connected=%pd2, err=%i)\0A\00", [48 x i8] zeroinitializer }, align 32
@ovl_lookup_real._entry_ptr = internal global ptr @ovl_lookup_real._entry, section ".printk_index", align 4
@ovl_lookup_real_one._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_lookup_real_one = private unnamed_addr constant [20 x i8] c"ovl_lookup_real_one\00", align 1
@ovl_lookup_real_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.ovl_lookup_real_one, ptr @.str, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014overlayfs: failed to lookup one by real (%pd2, layer=%d, connected=%pd2, err=%i)\0A\00", [44 x i8] zeroinitializer }, align 32
@ovl_lookup_real_one._entry_ptr = internal global ptr @ovl_lookup_real_one._entry, section ".printk_index", align 4
@ovl_fh_to_parent._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_fh_to_parent = private unnamed_addr constant [17 x i8] c"ovl_fh_to_parent\00", align 1
@ovl_fh_to_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.ovl_fh_to_parent, ptr @.str, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\014overlayfs: connectable file handles not supported; use 'no_subtree_check' exportfs option.\0A\00", [34 x i8] zeroinitializer }, align 32
@ovl_fh_to_parent._entry_ptr = internal global ptr @ovl_fh_to_parent._entry, section ".printk_index", align 4
@ovl_get_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ovl_get_parent.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 248, i64 251]
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"ovl_export_operations\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 866, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 262, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 245, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 33, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 832, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 639, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 415, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [25 x i8] c"../fs/overlayfs/export.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 841, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @ovl_dentry_to_fid._entry, ptr @ovl_dentry_to_fid._entry_ptr, ptr @ovl_encode_maybe_copy_up._entry, ptr @ovl_encode_maybe_copy_up._entry_ptr, ptr @ovl_fh_to_dentry._entry, ptr @ovl_fh_to_dentry._entry_ptr, ptr @ovl_fh_to_parent._entry, ptr @ovl_fh_to_parent._entry_ptr, ptr @ovl_lookup_real._entry, ptr @ovl_lookup_real._entry_ptr, ptr @ovl_lookup_real_one._entry, ptr @ovl_lookup_real_one._entry_ptr, ptr @ovl_export_operations, ptr @.str, ptr @ovl_dentry_to_fid._rs, ptr @.str.1, ptr @.str.2, ptr @ovl_encode_maybe_copy_up._rs, ptr @.str.3, ptr @ovl_fh_to_dentry._rs, ptr @.str.4, ptr @ovl_lookup_real._rs, ptr @.str.5, ptr @ovl_lookup_real_one._rs, ptr @.str.6, ptr @ovl_fh_to_parent._rs, ptr @.str.7], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_export_operations to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_dentry_to_fid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_dentry_to_fid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_encode_maybe_copy_up._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_encode_maybe_copy_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fh_to_dentry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fh_to_dentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_real._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_real._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_real_one._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_real_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fh_to_parent._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_fh_to_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_encode_fh(ptr noundef %inode, ptr nocapture noundef writeonly %fid, ptr nocapture noundef %max_len, ptr noundef readnone %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_len, align 4
  %shl = shl i32 %5, 2
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @d_find_any_alias(ptr noundef %inode) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end27, !prof !54

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 262, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %call1, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %call.i.i = tail call ptr @ovl_dentry_lower(ptr noundef nonnull %call1) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end27.cond.false.i_crit_edge, label %if.end.i.i

if.end27.cond.false.i_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

if.end.i.i:                                       ; preds = %if.end27
  %call1.i.i = tail call ptr @ovl_dentry_upper(ptr noundef nonnull %call1) #5
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %call1, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i.i.i, align 8
  %flags.i.i.i = getelementptr i8, ptr %11, i32 -8
  %12 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i.i.cond.false.i_crit_edge, label %land.lhs.true.i.i.if.end6.i.i_crit_edge

land.lhs.true.i.i.if.end6.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

land.lhs.true.i.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i.if.end6.i.i_crit_edge, %if.end.i.i.if.end6.i.i_crit_edge
  %15 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call1, align 8
  %17 = and i32 %16, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %17)
  %18 = icmp eq i32 %17, 2097152
  br i1 %18, label %land.lhs.true8.i.i, label %if.end6.i.i.cond.true.i_crit_edge

if.end6.i.i.cond.true.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true.i

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %layers.i.i.i = getelementptr inbounds %struct.ovl_fs, ptr %9, i32 0, i32 2
  %19 = ptrtoint ptr %layers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %layers.i.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool10.not.i.i = icmp eq ptr %22, null
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.cond.true.i_crit_edge, label %if.then11.i.i

land.lhs.true8.i.i.cond.true.i_crit_edge:         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true.i

if.then11.i.i:                                    ; preds = %land.lhs.true8.i.i
  %23 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_sb.i.i, align 4
  %s_root.i.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %s_root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_root.i.i.i, align 64
  %cmp.i.i.i = icmp eq ptr %26, %call1
  br i1 %cmp.i.i.i, label %if.then11.i.i.fail.sink.split.i_crit_edge, label %lor.lhs.false.critedge.i.i.i, !prof !54

if.then11.i.i.fail.sink.split.i_crit_edge:        ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.sink.split.i

lor.lhs.false.critedge.i.i.i:                     ; preds = %if.then11.i.i
  %call.i.i.i = tail call ptr @ovl_dentry_lower(ptr noundef nonnull %call1) #5
  %tobool21.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool21.not.i.i.i, label %lor.lhs.false.critedge.i.i.i.fail.sink.split.i_crit_edge, label %if.end55.i.i.i, !prof !54

lor.lhs.false.critedge.i.i.i.fail.sink.split.i_crit_edge: ; preds = %lor.lhs.false.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.sink.split.i

if.end55.i.i.i:                                   ; preds = %lor.lhs.false.critedge.i.i.i
  %d_fsdata.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %call1, i32 0, i32 11
  %27 = ptrtoint ptr %d_fsdata.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_fsdata.i.i.i.i, align 4
  %lowerstack.i.i.i = getelementptr inbounds %struct.ovl_entry, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %lowerstack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lowerstack.i.i.i, align 4
  %idx.i.i.i = getelementptr inbounds %struct.ovl_layer, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx.i.i.i, align 4
  %call57.i.i.i = tail call zeroext i1 @ovl_dentry_test_flag(i32 noundef 2, ptr noundef nonnull %call1) #5
  br i1 %call57.i.i.i, label %if.end55.i.i.i.ovl_check_encode_origin.exit.i_crit_edge, label %dget.exit.i.i.i

if.end55.i.i.i.ovl_check_encode_origin.exit.i_crit_edge: ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_check_encode_origin.exit.i

dget.exit.i.i.i:                                  ; preds = %if.end55.i.i.i
  %d_lockref.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %call1, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i.i.i) #5
  %call61150.i.i.i = tail call ptr @dget_parent(ptr noundef nonnull %call1) #5
  %cmp63151.i.i.i = icmp eq ptr %call61150.i.i.i, %call1
  br i1 %cmp63151.i.i.i, label %dget.exit.i.i.i.do.end79.i.i.i_crit_edge, label %dget.exit.i.i.i.if.end95.i.i.i_crit_edge, !prof !54

dget.exit.i.i.i.if.end95.i.i.i_crit_edge:         ; preds = %dget.exit.i.i.i
  br label %if.end95.i.i.i

dget.exit.i.i.i.do.end79.i.i.i_crit_edge:         ; preds = %dget.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end79.i.i.i

do.end79.i.i.i:                                   ; preds = %if.end106.i.i.i.do.end79.i.i.i_crit_edge, %dget.exit.i.i.i.do.end79.i.i.i_crit_edge
  %next.0.lcssa.i.i.i = phi ptr [ %call1, %dget.exit.i.i.i.do.end79.i.i.i_crit_edge ], [ %call61153.i.i.i, %if.end106.i.i.i.do.end79.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #5
  br label %for.end.i.i.i

if.end95.i.i.i:                                   ; preds = %if.end106.i.i.i.if.end95.i.i.i_crit_edge, %dget.exit.i.i.i.if.end95.i.i.i_crit_edge
  %call61153.i.i.i = phi ptr [ %call61.i.i.i, %if.end106.i.i.i.if.end95.i.i.i_crit_edge ], [ %call61150.i.i.i, %dget.exit.i.i.i.if.end95.i.i.i_crit_edge ]
  %next.0152.i.i.i = phi ptr [ %call61153.i.i.i, %if.end106.i.i.i.if.end95.i.i.i_crit_edge ], [ %call1, %dget.exit.i.i.i.if.end95.i.i.i_crit_edge ]
  %d_fsdata.i.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %call61153.i.i.i, i32 0, i32 11
  %33 = ptrtoint ptr %d_fsdata.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_fsdata.i.i.i.i.i, align 4
  %d_sb.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %call61153.i.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %d_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_sb.i.i.i.i, align 4
  %s_root.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %s_root.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_root.i.i.i.i, align 64
  %cmp.i.i.i.i = icmp eq ptr %38, %call61153.i.i.i
  br i1 %cmp.i.i.i.i, label %if.then.i136.i.i.i, label %if.end.i.i.i.i

if.then.i136.i.i.i:                               ; preds = %if.end95.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %numlower.i.i.i.i = getelementptr inbounds %struct.ovl_entry, ptr %34, i32 0, i32 1
  br label %cleanup.sink.split.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end95.i.i.i
  %call1.i.i.i.i = tail call ptr @ovl_dentry_upper(ptr noundef %call61153.i.i.i) #5
  %tobool.not.i137.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i137.i.i.i, label %if.end.i.i.i.i.if.end5.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.i.i.if.end5.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %d_inode.i.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %call61153.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %d_inode.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_inode.i.i.i.i.i, align 8
  %flags.i.i.i.i.i = getelementptr i8, ptr %40, i32 -8
  %41 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i.i.i.i.i, align 4
  %43 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i.i.i.i, label %land.lhs.true.i.i.i.i.ovl_connectable_layer.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.if.end5.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end5.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i.i.i

land.lhs.true.i.i.i.i.ovl_connectable_layer.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_connectable_layer.exit.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.if.end5.i.i.i.i_crit_edge, %if.end.i.i.i.i.if.end5.i.i.i.i_crit_edge
  %lowerstack.i.i.i.i = getelementptr inbounds %struct.ovl_entry, ptr %34, i32 0, i32 2
  %44 = ptrtoint ptr %lowerstack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lowerstack.i.i.i.i, align 4
  %idx.i.i.i.i = getelementptr inbounds %struct.ovl_layer, ptr %45, i32 0, i32 3
  br label %cleanup.sink.split.i.i.i.i

cleanup.sink.split.i.i.i.i:                       ; preds = %if.end5.i.i.i.i, %if.then.i136.i.i.i
  %idx.sink.i.i.i.i = phi ptr [ %idx.i.i.i.i, %if.end5.i.i.i.i ], [ %numlower.i.i.i.i, %if.then.i136.i.i.i ]
  %46 = ptrtoint ptr %idx.sink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %idx.sink.i.i.i.i, align 4
  br label %ovl_connectable_layer.exit.i.i.i

ovl_connectable_layer.exit.i.i.i:                 ; preds = %cleanup.sink.split.i.i.i.i, %land.lhs.true.i.i.i.i.ovl_connectable_layer.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %land.lhs.true.i.i.i.i.ovl_connectable_layer.exit.i.i.i_crit_edge ], [ %47, %cleanup.sink.split.i.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i, i32 %32)
  %cmp97.i.i.i = icmp slt i32 %retval.0.i.i.i.i, %32
  br i1 %cmp97.i.i.i, label %if.then98.i.i.i, label %if.end100.i.i.i

if.then98.i.i.i:                                  ; preds = %ovl_connectable_layer.exit.i.i.i
  %call.i.i.i.i = tail call ptr @ovl_dentry_upper(ptr noundef %next.0152.i.i.i) #5
  %tobool.not.i138.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i138.i.i.i, label %if.end.i140.i.i.i, label %if.then98.i.i.i.for.end.i.i.i_crit_edge

if.then98.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %if.then98.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

if.end.i140.i.i.i:                                ; preds = %if.then98.i.i.i
  %call1.i139.i.i.i = tail call i32 @ovl_want_write(ptr noundef %next.0152.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i139.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i139.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end5.i141.i.i.i, label %if.end.i140.i.i.i.if.then7.i.i.i.i_crit_edge

if.end.i140.i.i.i.if.then7.i.i.i.i_crit_edge:     ; preds = %if.end.i140.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i.i.i.i

if.end5.i141.i.i.i:                               ; preds = %if.end.i140.i.i.i
  %call4.i.i.i.i = tail call i32 @ovl_copy_up(ptr noundef %next.0152.i.i.i) #5
  tail call void @ovl_drop_write(ptr noundef %next.0152.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %tobool6.not.i.i.i.i = icmp eq i32 %call4.i.i.i.i, 0
  br i1 %tobool6.not.i.i.i.i, label %if.end5.i141.i.i.i.for.end.i.i.i_crit_edge, label %if.end5.i141.i.i.i.if.then7.i.i.i.i_crit_edge

if.end5.i141.i.i.i.if.then7.i.i.i.i_crit_edge:    ; preds = %if.end5.i141.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i.i.i.i

if.end5.i141.i.i.i.for.end.i.i.i_crit_edge:       ; preds = %if.end5.i141.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

if.then7.i.i.i.i:                                 ; preds = %if.end5.i141.i.i.i.if.then7.i.i.i.i_crit_edge, %if.end.i140.i.i.i.if.then7.i.i.i.i_crit_edge
  %err.023.i.i.i.i = phi i32 [ %call4.i.i.i.i, %if.end5.i141.i.i.i.if.then7.i.i.i.i_crit_edge ], [ %call1.i139.i.i.i, %if.end.i140.i.i.i.if.then7.i.i.i.i_crit_edge ]
  %call8.i.i.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_encode_maybe_copy_up._rs, ptr noundef nonnull @__func__.ovl_encode_maybe_copy_up) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i.i)
  %tobool9.not.i.i.i.i = icmp eq i32 %call8.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i.i, label %if.then7.i.i.i.i.for.end.i.i.i_crit_edge, label %do.end.i.i.i.i

if.then7.i.i.i.i.for.end.i.i.i_crit_edge:         ; preds = %if.then7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %next.0152.i.i.i, i32 noundef %err.023.i.i.i.i) #8
  br label %for.end.i.i.i

if.end100.i.i.i:                                  ; preds = %ovl_connectable_layer.exit.i.i.i
  %call101.i.i.i = tail call zeroext i1 @ovl_dentry_test_flag(i32 noundef 2, ptr noundef %call61153.i.i.i) #5
  br i1 %call101.i.i.i, label %if.end100.i.i.i.for.end.i.i.i_crit_edge, label %lor.lhs.false102.i.i.i

if.end100.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %if.end100.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

lor.lhs.false102.i.i.i:                           ; preds = %if.end100.i.i.i
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %call61153.i.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %flags.i.i.i.i = getelementptr i8, ptr %49, i32 -8
  %50 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %52 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i.i.i, label %if.end106.i.i.i, label %lor.lhs.false102.i.i.i.for.end.i.i.i_crit_edge

lor.lhs.false102.i.i.i.for.end.i.i.i_crit_edge:   ; preds = %lor.lhs.false102.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

if.end106.i.i.i:                                  ; preds = %lor.lhs.false102.i.i.i
  tail call void @dput(ptr noundef %next.0152.i.i.i) #5
  %call61.i.i.i = tail call ptr @dget_parent(ptr noundef %call61153.i.i.i) #5
  %cmp63.i.i.i = icmp eq ptr %call61.i.i.i, %call61153.i.i.i
  br i1 %cmp63.i.i.i, label %if.end106.i.i.i.do.end79.i.i.i_crit_edge, label %if.end106.i.i.i.if.end95.i.i.i_crit_edge, !prof !54

if.end106.i.i.i.if.end95.i.i.i_crit_edge:         ; preds = %if.end106.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95.i.i.i

if.end106.i.i.i.do.end79.i.i.i_crit_edge:         ; preds = %if.end106.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end79.i.i.i

for.end.i.i.i:                                    ; preds = %lor.lhs.false102.i.i.i.for.end.i.i.i_crit_edge, %if.end100.i.i.i.for.end.i.i.i_crit_edge, %do.end.i.i.i.i, %if.then7.i.i.i.i.for.end.i.i.i_crit_edge, %if.end5.i141.i.i.i.for.end.i.i.i_crit_edge, %if.then98.i.i.i.for.end.i.i.i_crit_edge, %do.end79.i.i.i
  %next.0149.i.i.i = phi ptr [ %next.0.lcssa.i.i.i, %do.end79.i.i.i ], [ %next.0152.i.i.i, %if.then98.i.i.i.for.end.i.i.i_crit_edge ], [ %next.0152.i.i.i, %if.then7.i.i.i.i.for.end.i.i.i_crit_edge ], [ %next.0152.i.i.i, %do.end.i.i.i.i ], [ %next.0152.i.i.i, %if.end5.i141.i.i.i.for.end.i.i.i_crit_edge ], [ %next.0152.i.i.i, %if.end100.i.i.i.for.end.i.i.i_crit_edge ], [ %next.0152.i.i.i, %lor.lhs.false102.i.i.i.for.end.i.i.i_crit_edge ]
  %call61145.i.i.i = phi ptr [ %next.0.lcssa.i.i.i, %do.end79.i.i.i ], [ %call61153.i.i.i, %if.then98.i.i.i.for.end.i.i.i_crit_edge ], [ %call61153.i.i.i, %if.then7.i.i.i.i.for.end.i.i.i_crit_edge ], [ %call61153.i.i.i, %do.end.i.i.i.i ], [ %call61153.i.i.i, %if.end5.i141.i.i.i.for.end.i.i.i_crit_edge ], [ %call61153.i.i.i, %if.end100.i.i.i.for.end.i.i.i_crit_edge ], [ %call61153.i.i.i, %lor.lhs.false102.i.i.i.for.end.i.i.i_crit_edge ]
  %err.0.i.i.i = phi i32 [ -5, %do.end79.i.i.i ], [ 0, %if.then98.i.i.i.for.end.i.i.i_crit_edge ], [ %err.023.i.i.i.i, %if.then7.i.i.i.i.for.end.i.i.i_crit_edge ], [ %err.023.i.i.i.i, %do.end.i.i.i.i ], [ 0, %if.end5.i141.i.i.i.for.end.i.i.i_crit_edge ], [ 0, %if.end100.i.i.i.for.end.i.i.i_crit_edge ], [ 0, %lor.lhs.false102.i.i.i.for.end.i.i.i_crit_edge ]
  tail call void @dput(ptr noundef %call61145.i.i.i) #5
  tail call void @dput(ptr noundef %next.0149.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i.i)
  %tobool107.not.i.i.i = icmp eq i32 %err.0.i.i.i, 0
  br i1 %tobool107.not.i.i.i, label %if.then108.i.i.i, label %for.end.i.i.i.ovl_check_encode_origin.exit.i_crit_edge

for.end.i.i.i.ovl_check_encode_origin.exit.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_check_encode_origin.exit.i

if.then108.i.i.i:                                 ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ovl_dentry_set_flag(i32 noundef 2, ptr noundef nonnull %call1) #5
  br label %ovl_check_encode_origin.exit.i

ovl_check_encode_origin.exit.i:                   ; preds = %if.then108.i.i.i, %for.end.i.i.i.ovl_check_encode_origin.exit.i_crit_edge, %if.end55.i.i.i.ovl_check_encode_origin.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %32, %if.end55.i.i.i.ovl_check_encode_origin.exit.i_crit_edge ], [ %32, %if.then108.i.i.i ], [ %err.0.i.i.i, %for.end.i.i.i.ovl_check_encode_origin.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %ovl_check_encode_origin.exit.i.fail.i_crit_edge, label %if.end.i

ovl_check_encode_origin.exit.i.fail.i_crit_edge:  ; preds = %ovl_check_encode_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i

if.end.i:                                         ; preds = %ovl_check_encode_origin.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i.cond.false.i_crit_edge, label %if.end.i.cond.true.i_crit_edge

if.end.i.cond.true.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true.i

if.end.i.cond.false.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %if.end.i.cond.true.i_crit_edge, %land.lhs.true8.i.i.cond.true.i_crit_edge, %if.end6.i.i.cond.true.i_crit_edge
  %call1.i = tail call ptr @ovl_dentry_lower(ptr noundef nonnull %call1) #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i.cond.false.i_crit_edge, %land.lhs.true.i.i.cond.false.i_crit_edge, %if.end27.cond.false.i_crit_edge
  %call2.i = tail call ptr @ovl_dentry_upper(ptr noundef nonnull %call1) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %tobool.not44.i = phi i1 [ false, %cond.true.i ], [ true, %cond.false.i ]
  %cond.i = phi ptr [ %call1.i, %cond.true.i ], [ %call2.i, %cond.false.i ]
  %call4.i = tail call ptr @ovl_encode_real_fh(ptr noundef %3, ptr noundef %cond.i, i1 noundef zeroext %tobool.not44.i) #5
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %call4.i to i32
  br label %ovl_dentry_to_fid.exit

if.end8.i:                                        ; preds = %cond.end.i
  %len9.i = getelementptr inbounds %struct.ovl_fh, ptr %call4.i, i32 0, i32 1, i32 0, i32 2
  %54 = ptrtoint ptr %len9.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %len9.i, align 1
  %conv.i = zext i8 %55 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %shl)
  %cmp10.not.i = icmp sgt i32 %add.i, %shl
  br i1 %cmp10.not.i, label %if.end8.i.out.i_crit_edge, label %if.then12.i

if.end8.i.out.i_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = call ptr @memcpy(ptr %fid, ptr %call4.i, i32 %add.i)
  br label %out.i

out.i:                                            ; preds = %do.end.i, %fail.i.out.i_crit_edge, %if.then12.i, %if.end8.i.out.i_crit_edge
  %fh.0.i = phi ptr [ null, %do.end.i ], [ null, %fail.i.out.i_crit_edge ], [ %call4.i, %if.then12.i ], [ %call4.i, %if.end8.i.out.i_crit_edge ]
  %err.0.i = phi i32 [ %retval.0.i41.i, %do.end.i ], [ %retval.0.i41.i, %fail.i.out.i_crit_edge ], [ %add.i, %if.then12.i ], [ %add.i, %if.end8.i.out.i_crit_edge ]
  tail call void @kfree(ptr noundef %fh.0.i) #5
  br label %ovl_dentry_to_fid.exit

fail.sink.split.i:                                ; preds = %lor.lhs.false.critedge.i.i.i.fail.sink.split.i_crit_edge, %if.then11.i.i.fail.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 111, %if.then11.i.i.fail.sink.split.i_crit_edge ], [ 112, %lor.lhs.false.critedge.i.i.i.fail.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #5
  br label %fail.i

fail.i:                                           ; preds = %fail.sink.split.i, %ovl_check_encode_origin.exit.i.fail.i_crit_edge
  %retval.0.i41.i = phi i32 [ %retval.0.i.i, %ovl_check_encode_origin.exit.i.fail.i_crit_edge ], [ -5, %fail.sink.split.i ]
  %call14.i = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_dentry_to_fid._rs, ptr noundef nonnull @__func__.ovl_dentry_to_fid) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %fail.i.out.i_crit_edge, label %do.end.i

fail.i.out.i_crit_edge:                           ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

do.end.i:                                         ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %call1, i32 noundef %retval.0.i41.i) #8
  br label %out.i

ovl_dentry_to_fid.exit:                           ; preds = %out.i, %if.then6.i
  %retval.0.i = phi i32 [ %err.0.i, %out.i ], [ %53, %if.then6.i ]
  tail call void @dput(ptr noundef nonnull %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %ovl_dentry_to_fid.exit.cleanup_crit_edge, label %if.end30

ovl_dentry_to_fid.exit.cleanup_crit_edge:         ; preds = %ovl_dentry_to_fid.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %ovl_dentry_to_fid.exit
  call void @__sanitizer_cov_trace_pc() #7
  %shr45 = lshr i32 %retval.0.i, 2
  %57 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shr45, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %shl)
  %cmp31 = icmp sgt i32 %retval.0.i, %shl
  %. = select i1 %cmp31, i32 255, i32 248
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %ovl_dentry_to_fid.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 255, %do.end ], [ 255, %entry.cleanup_crit_edge ], [ 255, %ovl_dentry_to_fid.exit.cleanup_crit_edge ], [ %., %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ovl_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  %origin.i = alloca %struct.ovl_path, align 8
  %stack.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %fh_len, 2
  %0 = zext i32 %fh_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fh_type, label %entry.ovl_fid_to_fh.exit.thread_crit_edge [
    i32 248, label %entry.ovl_fid_to_fh.exit_crit_edge
    i32 251, label %if.end3.i
  ]

entry.ovl_fid_to_fh.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_fid_to_fh.exit

entry.ovl_fid_to_fh.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_fid_to_fh.exit.thread

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp4.i = icmp eq i32 %shl, 0
  br i1 %cmp4.i, label %if.end3.i.ovl_fid_to_fh.exit.thread_crit_edge, label %if.end8.i.i.i

if.end3.i.ovl_fid_to_fh.exit.thread_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_fid_to_fh.exit.thread

if.end8.i.i.i:                                    ; preds = %if.end3.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shl, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.ovl_fid_to_fh.exit.thread_crit_edge, label %if.end11.i

if.end8.i.i.i.ovl_fid_to_fh.exit.thread_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_fid_to_fh.exit.thread

if.end11.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %1 = getelementptr inbounds %struct.ovl_fh, ptr %call9.i.i.i, i32 0, i32 1
  %sub.i = add i32 %shl, -3
  %2 = call ptr @memcpy(ptr %1, ptr %fid, i32 %sub.i)
  br label %ovl_fid_to_fh.exit

ovl_fid_to_fh.exit.thread:                        ; preds = %if.end8.i.i.i.ovl_fid_to_fh.exit.thread_crit_edge, %if.end3.i.ovl_fid_to_fh.exit.thread_crit_edge, %entry.ovl_fid_to_fh.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.ovl_fid_to_fh.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end3.i.ovl_fid_to_fh.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.ovl_fid_to_fh.exit.thread_crit_edge ]
  %3 = ptrtoint ptr %retval.0.i.ph to i32
  br label %out_err

ovl_fid_to_fh.exit:                               ; preds = %if.end11.i, %entry.ovl_fid_to_fh.exit_crit_edge
  %retval.0.i = phi ptr [ %call9.i.i.i, %if.end11.i ], [ %fid, %entry.ovl_fid_to_fh.exit_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i to i32
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ovl_fid_to_fh.exit.out_err_crit_edge, label %if.end

ovl_fid_to_fh.exit.out_err_crit_edge:             ; preds = %ovl_fid_to_fh.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

if.end:                                           ; preds = %ovl_fid_to_fh.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %shl)
  %cmp.i48 = icmp ult i32 %shl, 24
  br i1 %cmp.i48, label %if.end.out_err_crit_edge, label %ovl_check_fh_len.exit

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

ovl_check_fh_len.exit:                            ; preds = %if.end
  %5 = getelementptr inbounds %struct.ovl_fh, ptr %retval.0.i, i32 0, i32 1
  %sub.i49 = add i32 %shl, -3
  %call.i = tail call i32 @ovl_check_fb_len(ptr noundef %5, i32 noundef %sub.i49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %ovl_check_fh_len.exit.out_err_crit_edge

ovl_check_fh_len.exit.out_err_crit_edge:          ; preds = %ovl_check_fh_len.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

if.end5:                                          ; preds = %ovl_check_fh_len.exit
  %flags6 = getelementptr inbounds %struct.ovl_fh, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %flags6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags6, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %s_fs_info.i54 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i54 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i54, align 16
  br i1 %tobool7.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end5
  %layers.i.i = getelementptr inbounds %struct.ovl_fs, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %layers.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %layers.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i51 = icmp eq ptr %13, null
  br i1 %tobool.not.i51, label %cond.true.cond.end_crit_edge, label %if.end.i52

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.end.i52:                                       ; preds = %cond.true
  %call3.i = tail call ptr @ovl_decode_real_fh(ptr noundef %9, ptr noundef %retval.0.i, ptr noundef nonnull %13, i1 noundef zeroext true) #5
  %tobool.not.i.i = icmp eq ptr %call3.i, null
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.i52.cond.end_crit_edge, label %if.end6.i

if.end.i52.cond.end_crit_edge:                    ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.end6.i:                                        ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call fastcc ptr @ovl_get_dentry(ptr noundef %sb, ptr noundef nonnull %call3.i, ptr noundef null, ptr noundef null) #5
  tail call void @dput(ptr noundef nonnull %call3.i) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %origin.i) #5
  %14 = ptrtoint ptr %origin.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %origin.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stack.i) #5
  %15 = ptrtoint ptr %stack.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %origin.i, ptr %stack.i, align 4
  %call.i55 = call i32 @ovl_check_origin_fh(ptr noundef %9, ptr noundef %retval.0.i, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %stack.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end.i57, label %if.then.i

if.then.i:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  %16 = inttoptr i32 %call.i55 to ptr
  br label %ovl_lower_fh_to_d.exit

if.end.i57:                                       ; preds = %cond.false
  %dentry2.i = getelementptr inbounds %struct.ovl_path, ptr %origin.i, i32 0, i32 1
  %17 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dentry2.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %21 = and i32 %20, 6291488
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097184, i32 %21)
  %.not.i = icmp eq i32 %21, 2097184
  br i1 %.not.i, label %if.end.i57.if.end20.i_crit_edge, label %if.then6.i

if.end.i57.if.end20.i_crit_edge:                  ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then6.i:                                       ; preds = %if.end.i57
  %call8.i = call ptr @ovl_lookup_inode(ptr noundef %sb, ptr noundef %18, i1 noundef zeroext false) #5
  %22 = ptrtoint ptr %call8.i to i32
  %cmp.i.i58 = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i58, label %if.then6.i.out_err.i_crit_edge, label %if.end12.i

if.then6.i.out_err.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err.i

if.end12.i:                                       ; preds = %if.then6.i
  %tobool13.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool13.not.i, label %if.end12.i.if.end20.i_crit_edge, label %if.then14.i

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end12.i
  %call15.i = call ptr @d_find_any_alias(ptr noundef nonnull %call8.i) #5
  call void @iput(ptr noundef nonnull %call8.i) #5
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.then14.i.if.end20.i_crit_edge, label %if.then14.i.out.i_crit_edge

if.then14.i.out.i_crit_edge:                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i.if.end20.i_crit_edge, %if.end12.i.if.end20.i_crit_edge, %if.end.i57.if.end20.i_crit_edge
  %indexdir.i = getelementptr inbounds %struct.ovl_fs, ptr %9, i32 0, i32 6
  %23 = ptrtoint ptr %indexdir.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %indexdir.i, align 4
  %tobool21.not.i = icmp eq ptr %24, null
  br i1 %tobool21.not.i, label %if.end20.i.if.end38.i_crit_edge, label %if.then22.i

if.end20.i.if.end38.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then22.i:                                      ; preds = %if.end20.i
  %call23.i = call ptr @ovl_get_index_fh(ptr noundef %9, ptr noundef %retval.0.i) #5
  %25 = ptrtoint ptr %call23.i to i32
  %cmp.i98.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98.i, label %if.then22.i.out_err.i_crit_edge, label %if.end28.i

if.then22.i.out_err.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err.i

if.end28.i:                                       ; preds = %if.then22.i
  %tobool29.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool29.not.i, label %if.end28.i.if.end38.i_crit_edge, label %land.lhs.true.i

if.end28.i.if.end38.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %if.end28.i
  %26 = ptrtoint ptr %call23.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call23.i, align 8
  %28 = and i32 %27, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %28)
  %29 = icmp eq i32 %28, 2097152
  br i1 %29, label %if.then31.i, label %land.lhs.true.i.if.end38.i_crit_edge

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then31.i:                                      ; preds = %land.lhs.true.i
  %call32.i = call ptr @ovl_index_upper(ptr noundef %9, ptr noundef nonnull %call23.i) #5
  %tobool.not.i.i59 = icmp eq ptr %call32.i, null
  %cmp.i99.i = icmp ugt ptr %call32.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i60 = or i1 %tobool.not.i.i59, %cmp.i99.i
  br i1 %spec.select.i.i60, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  %call37.i = call fastcc ptr @ovl_get_dentry(ptr noundef %sb, ptr noundef nonnull %call32.i, ptr noundef null, ptr noundef null) #5
  call void @dput(ptr noundef nonnull %call32.i) #5
  br label %out.i

cleanup.i:                                        ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call32.i to i32
  br label %out_err.i

if.end38.i:                                       ; preds = %land.lhs.true.i.if.end38.i_crit_edge, %if.end28.i.if.end38.i_crit_edge, %if.end20.i.if.end38.i_crit_edge
  %tobool29.not103.i = phi i1 [ false, %land.lhs.true.i.if.end38.i_crit_edge ], [ true, %if.end28.i.if.end38.i_crit_edge ], [ true, %if.end20.i.if.end38.i_crit_edge ]
  %index.0102.i = phi ptr [ %call23.i, %land.lhs.true.i.if.end38.i_crit_edge ], [ null, %if.end28.i.if.end38.i_crit_edge ], [ null, %if.end20.i.if.end38.i_crit_edge ]
  %31 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dentry2.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %35 = and i32 %34, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %35)
  %36 = icmp eq i32 %35, 2097152
  br i1 %36, label %if.then41.i, label %if.end38.i.if.end48.i_crit_edge

if.end38.i.if.end48.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @dput(ptr noundef %32) #5
  %37 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dentry2.i, align 4
  %call44.i = call i32 @ovl_check_origin_fh(ptr noundef %9, ptr noundef %retval.0.i, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull %stack.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.then41.i.if.end48.i_crit_edge, label %if.then41.i.out_err.i_crit_edge

if.then41.i.out_err.i_crit_edge:                  ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err.i

if.then41.i.if.end48.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then41.i.if.end48.i_crit_edge, %if.end38.i.if.end48.i_crit_edge
  br i1 %tobool29.not103.i, label %if.end48.i.if.end56.i_crit_edge, label %if.then50.i

if.end48.i.if.end56.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

if.then50.i:                                      ; preds = %if.end48.i
  %38 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dentry2.i, align 4
  %call.i.i = call i32 @ovl_verify_set_fh(ptr noundef %9, ptr noundef %index.0102.i, i32 noundef 2, ptr noundef %39, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool53.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool53.not.i, label %if.then50.i.if.end56.i_crit_edge, label %if.then50.i.out_err.i_crit_edge

if.then50.i.out_err.i_crit_edge:                  ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err.i

if.then50.i.if.end56.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then50.i.if.end56.i_crit_edge, %if.end48.i.if.end56.i_crit_edge
  %call57.i = call fastcc ptr @ovl_get_dentry(ptr noundef %sb, ptr noundef null, ptr noundef nonnull %origin.i, ptr noundef %index.0102.i) #5
  br label %out.i

out.i:                                            ; preds = %out_err.i, %if.end56.i, %cleanup.thread.i, %if.then14.i.out.i_crit_edge
  %dentry.2.i = phi ptr [ %42, %out_err.i ], [ %call57.i, %if.end56.i ], [ %call15.i, %if.then14.i.out.i_crit_edge ], [ %call37.i, %cleanup.thread.i ]
  %index.1.i = phi ptr [ %index.2.i, %out_err.i ], [ %index.0102.i, %if.end56.i ], [ null, %if.then14.i.out.i_crit_edge ], [ %call23.i, %cleanup.thread.i ]
  %40 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dentry2.i, align 4
  call void @dput(ptr noundef %41) #5
  call void @dput(ptr noundef %index.1.i) #5
  br label %ovl_lower_fh_to_d.exit

out_err.i:                                        ; preds = %if.then50.i.out_err.i_crit_edge, %if.then41.i.out_err.i_crit_edge, %cleanup.i, %if.then22.i.out_err.i_crit_edge, %if.then6.i.out_err.i_crit_edge
  %index.2.i = phi ptr [ %call23.i, %cleanup.i ], [ %index.0102.i, %if.then41.i.out_err.i_crit_edge ], [ %index.0102.i, %if.then50.i.out_err.i_crit_edge ], [ null, %if.then6.i.out_err.i_crit_edge ], [ null, %if.then22.i.out_err.i_crit_edge ]
  %err.0.i = phi i32 [ %30, %cleanup.i ], [ %call44.i, %if.then41.i.out_err.i_crit_edge ], [ %call.i.i, %if.then50.i.out_err.i_crit_edge ], [ %22, %if.then6.i.out_err.i_crit_edge ], [ %25, %if.then22.i.out_err.i_crit_edge ]
  %42 = inttoptr i32 %err.0.i to ptr
  br label %out.i

ovl_lower_fh_to_d.exit:                           ; preds = %out.i, %if.then.i
  %retval.0.i61 = phi ptr [ %16, %if.then.i ], [ %dentry.2.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stack.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %origin.i) #5
  br label %cond.end

cond.end:                                         ; preds = %ovl_lower_fh_to_d.exit, %if.end6.i, %if.end.i52.cond.end_crit_edge, %cond.true.cond.end_crit_edge
  %cond = phi ptr [ %retval.0.i61, %ovl_lower_fh_to_d.exit ], [ %call7.i, %if.end6.i ], [ %call3.i, %if.end.i52.cond.end_crit_edge ], [ inttoptr (i32 -13 to ptr), %cond.true.cond.end_crit_edge ]
  %43 = ptrtoint ptr %cond to i32
  %cmp.i62 = icmp ule ptr %cond, inttoptr (i32 -4096 to ptr)
  %cmp.not = icmp eq ptr %cond, inttoptr (i32 -116 to ptr)
  %or.cond = or i1 %cmp.i62, %cmp.not
  br i1 %or.cond, label %cond.end.out_crit_edge, label %cond.end.out_err_crit_edge

cond.end.out_err_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %if.end26, %cond.end.out_crit_edge
  %cmp.i69 = phi i1 [ %cmp.i70, %if.end26 ], [ false, %cond.end.out_crit_edge ]
  %retval.0.i67 = phi ptr [ %retval.0.i68, %if.end26 ], [ %retval.0.i, %cond.end.out_crit_edge ]
  %dentry.0 = phi ptr [ %44, %if.end26 ], [ %cond, %cond.end.out_crit_edge ]
  %tobool.not.i63 = icmp eq ptr %retval.0.i67, null
  %spec.select.i = or i1 %cmp.i69, %tobool.not.i63
  %cmp18.not = icmp eq ptr %retval.0.i67, %fid
  %or.cond47 = or i1 %cmp18.not, %spec.select.i
  br i1 %or.cond47, label %out.if.end21_crit_edge, label %if.then20

out.if.end21_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %retval.0.i67) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %out.if.end21_crit_edge
  ret ptr %dentry.0

out_err:                                          ; preds = %cond.end.out_err_crit_edge, %ovl_check_fh_len.exit.out_err_crit_edge, %if.end.out_err_crit_edge, %ovl_fid_to_fh.exit.out_err_crit_edge, %ovl_fid_to_fh.exit.thread
  %cmp.i70 = phi i1 [ true, %ovl_fid_to_fh.exit.out_err_crit_edge ], [ false, %ovl_check_fh_len.exit.out_err_crit_edge ], [ false, %cond.end.out_err_crit_edge ], [ true, %ovl_fid_to_fh.exit.thread ], [ false, %if.end.out_err_crit_edge ]
  %retval.0.i68 = phi ptr [ %retval.0.i, %ovl_fid_to_fh.exit.out_err_crit_edge ], [ %retval.0.i, %ovl_check_fh_len.exit.out_err_crit_edge ], [ %retval.0.i, %cond.end.out_err_crit_edge ], [ %retval.0.i.ph, %ovl_fid_to_fh.exit.thread ], [ %retval.0.i, %if.end.out_err_crit_edge ]
  %flags.0 = phi i32 [ 0, %ovl_fid_to_fh.exit.out_err_crit_edge ], [ 0, %ovl_check_fh_len.exit.out_err_crit_edge ], [ %conv, %cond.end.out_err_crit_edge ], [ 0, %ovl_fid_to_fh.exit.thread ], [ 0, %if.end.out_err_crit_edge ]
  %err.0 = phi i32 [ %4, %ovl_fid_to_fh.exit.out_err_crit_edge ], [ %call.i, %ovl_check_fh_len.exit.out_err_crit_edge ], [ %43, %cond.end.out_err_crit_edge ], [ %3, %ovl_fid_to_fh.exit.thread ], [ -22, %if.end.out_err_crit_edge ]
  %call22 = call i32 @___ratelimit(ptr noundef nonnull @ovl_fh_to_dentry._rs, ptr noundef nonnull @__func__.ovl_fh_to_dentry) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %out_err.if.end26_crit_edge, label %do.end

out_err.if.end26_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end:                                           ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %fh_len, i32 noundef %fh_type, i32 noundef %flags.0, i32 noundef %err.0) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end, %out_err.if.end26_crit_edge
  %44 = inttoptr i32 %err.0 to ptr
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @ovl_fh_to_parent(ptr nocapture noundef readnone %sb, ptr nocapture noundef readnone %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_fh_to_parent._rs, ptr noundef nonnull @__func__.ovl_fh_to_parent) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret ptr inttoptr (i32 -13 to ptr)
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_get_name(ptr nocapture noundef readnone %parent, ptr nocapture noundef readnone %name, ptr nocapture noundef readnone %child) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @ovl_get_name.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !55

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ovl_get_name.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 852, i32 noundef 9, ptr noundef null) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret i32 -5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @ovl_get_parent(ptr nocapture noundef readnone %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @ovl_get_parent.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !55

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ovl_get_parent.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 862, i32 noundef 9, ptr noundef null) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret ptr inttoptr (i32 -5 to ptr)
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_any_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_encode_real_fh(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_lower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_upper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_dentry_test_flag(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_set_flag(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_copy_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_check_fb_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_decode_real_fh(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_get_dentry(ptr noundef %sb, ptr noundef %upper, ptr noundef %lowerpath, ptr noundef %index) unnamed_addr #0 align 64 {
entry:
  %oip.i = alloca %struct.ovl_inode_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %upper, null
  br i1 %tobool.not, label %cond.false4, label %cond.end

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %layers = getelementptr inbounds %struct.ovl_fs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %layers, align 4
  br label %cond.end10

cond.false4:                                      ; preds = %entry
  %3 = ptrtoint ptr %lowerpath to i32
  call void @__asan_load4_noabort(i32 %3)
  %cond33 = load ptr, ptr %lowerpath, align 4
  %tobool5.not = icmp eq ptr %index, null
  br i1 %tobool5.not, label %cond.false7, label %cond.false4.cond.end10_crit_edge

cond.false4.cond.end10_crit_edge:                 ; preds = %cond.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end10

cond.false7:                                      ; preds = %cond.false4
  call void @__sanitizer_cov_trace_pc() #7
  %dentry = getelementptr inbounds %struct.ovl_path, ptr %lowerpath, i32 0, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false7, %cond.false4.cond.end10_crit_edge, %cond.end
  %cond34 = phi ptr [ %cond, %cond.end ], [ %cond33, %cond.false7 ], [ %cond33, %cond.false4.cond.end10_crit_edge ]
  %cond11 = phi ptr [ %upper, %cond.end ], [ %5, %cond.false7 ], [ %index, %cond.false4.cond.end10_crit_edge ]
  %6 = ptrtoint ptr %cond11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cond11, align 8
  %8 = and i32 %7, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %8)
  %9 = icmp eq i32 %8, 2097152
  br i1 %9, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end10
  %tobool.not.i = icmp eq ptr %lowerpath, null
  br i1 %tobool.not.i, label %if.then.cond.end.i_crit_edge, label %cond.true.i

if.then.cond.end.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dentry.i = getelementptr inbounds %struct.ovl_path, ptr %lowerpath, i32 0, i32 1
  %10 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.cond.end.i_crit_edge
  %cond.i = phi ptr [ %11, %cond.true.i ], [ null, %if.then.cond.end.i_crit_edge ]
  %spec.select.i = select i1 %tobool.not, ptr %index, ptr %upper
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %oip.i) #5
  %12 = getelementptr inbounds i8, ptr %oip.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 12)
  %14 = ptrtoint ptr %oip.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %oip.i, align 4
  %lowerpath7.i = getelementptr inbounds %struct.ovl_inode_params, ptr %oip.i, i32 0, i32 2
  %15 = ptrtoint ptr %lowerpath7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lowerpath, ptr %lowerpath7.i, align 4
  %index8.i = getelementptr inbounds %struct.ovl_inode_params, ptr %oip.i, i32 0, i32 3
  %tobool9.i = icmp ne ptr %index, null
  %frombool.i = zext i1 %tobool9.i to i8
  %16 = ptrtoint ptr %index8.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool.i, ptr %index8.i, align 4
  %numlower.i = getelementptr inbounds %struct.ovl_inode_params, ptr %oip.i, i32 0, i32 4
  %tobool10.i = icmp ne ptr %cond.i, null
  %lnot.ext.i = zext i1 %tobool10.i to i32
  %17 = ptrtoint ptr %numlower.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %lnot.ext.i, ptr %numlower.i, align 4
  %redirect.i = getelementptr inbounds %struct.ovl_inode_params, ptr %oip.i, i32 0, i32 5
  %18 = ptrtoint ptr %redirect.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %redirect.i, align 4
  %lowerdata.i = getelementptr inbounds %struct.ovl_inode_params, ptr %oip.i, i32 0, i32 6
  %19 = ptrtoint ptr %lowerdata.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %lowerdata.i, align 4
  %tobool12.not.i = icmp eq ptr %spec.select.i, null
  %cond16.i = select i1 %tobool12.not.i, ptr %cond.i, ptr %spec.select.i
  %20 = ptrtoint ptr %cond16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cond16.i, align 8
  %22 = and i32 %21, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %22)
  %23 = icmp eq i32 %22, 2097152
  br i1 %23, label %cond.end.i.ovl_obtain_alias.exit_crit_edge, label %if.end.i

cond.end.i.ovl_obtain_alias.exit_crit_edge:       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_obtain_alias.exit

if.end.i:                                         ; preds = %cond.end.i
  br i1 %tobool12.not.i, label %dget.exit.i, label %dget.exit.thread.i

dget.exit.i:                                      ; preds = %if.end.i
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %12, align 4
  %call20.i = call ptr @ovl_get_inode(ptr noundef %sb, ptr noundef nonnull %oip.i) #5
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dget.exit.i.if.then22.i_crit_edge, label %dget.exit.i.if.end27.i_crit_edge

dget.exit.i.if.end27.i_crit_edge:                 ; preds = %dget.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

dget.exit.i.if.then22.i_crit_edge:                ; preds = %dget.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22.i

dget.exit.thread.i:                               ; preds = %if.end.i
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %spec.select.i, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #5
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %spec.select.i, ptr %12, align 4
  %call20100.i = call ptr @ovl_get_inode(ptr noundef %sb, ptr noundef nonnull %oip.i) #5
  %cmp.i101.i = icmp ugt ptr %call20100.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101.i, label %dget.exit.thread.i.if.then22.i_crit_edge, label %if.then26.i

dget.exit.thread.i.if.then22.i_crit_edge:         ; preds = %dget.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22.i

if.then22.i:                                      ; preds = %dget.exit.thread.i.if.then22.i_crit_edge, %dget.exit.i.if.then22.i_crit_edge
  %call20103.i = phi ptr [ %call20100.i, %dget.exit.thread.i.if.then22.i_crit_edge ], [ %call20.i, %dget.exit.i.if.then22.i_crit_edge ]
  call void @dput(ptr noundef %spec.select.i) #5
  br label %ovl_obtain_alias.exit

if.then26.i:                                      ; preds = %dget.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  %flags.i.i = getelementptr i8, ptr %call20100.i, i32 -8
  call void @_set_bit(i32 noundef 3, ptr noundef %flags.i.i) #5
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %dget.exit.i.if.end27.i_crit_edge
  %call20102106.i = phi ptr [ %call20100.i, %if.then26.i ], [ %call20.i, %dget.exit.i.if.end27.i_crit_edge ]
  %call28.i = call ptr @d_find_any_alias(ptr noundef %call20102106.i) #5
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end27.i.out_iput.i_crit_edge

if.end27.i.out_iput.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_iput.i

if.end31.i:                                       ; preds = %if.end27.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call20102106.i, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i, align 4
  %call32.i = call ptr @d_alloc_anon(ptr noundef %27) #5
  %tobool33.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool33.not.i, label %if.end31.i.nomem.i_crit_edge, label %if.end42.i, !prof !54

if.end31.i.nomem.i_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nomem.i

if.end42.i:                                       ; preds = %if.end31.i
  %call45.i = call ptr @ovl_alloc_entry(i32 noundef %lnot.ext.i) #5
  %tobool46.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool46.not.i, label %if.end42.i.nomem.i_crit_edge, label %if.end48.i

if.end42.i.nomem.i_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nomem.i

if.end48.i:                                       ; preds = %if.end42.i
  br i1 %tobool10.i, label %dget.exit99.i, label %if.end48.i.if.end56.i_crit_edge

if.end48.i.if.end56.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

dget.exit99.i:                                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  %d_lockref.i97.i = getelementptr inbounds %struct.dentry, ptr %cond.i, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i97.i) #5
  %lowerstack.i = getelementptr inbounds %struct.ovl_entry, ptr %call45.i, i32 0, i32 2
  %dentry52.i = getelementptr inbounds %struct.ovl_entry, ptr %call45.i, i32 1, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %dentry52.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cond.i, ptr %dentry52.i, align 4
  %29 = ptrtoint ptr %lowerpath to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lowerpath, align 4
  %31 = ptrtoint ptr %lowerstack.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %lowerstack.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %dget.exit99.i, %if.end48.i.if.end56.i_crit_edge
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %call32.i, i32 0, i32 11
  %32 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call45.i, ptr %d_fsdata.i, align 4
  br i1 %tobool.not, label %if.end56.i.if.end59.i_crit_edge, label %if.then58.i

if.end56.i.if.end59.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

if.then58.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ovl_dentry_set_upper_alias(ptr noundef nonnull %call32.i) #5
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then58.i, %if.end56.i.if.end59.i_crit_edge
  call void @ovl_dentry_update_reval(ptr noundef nonnull %call32.i, ptr noundef %spec.select.i, i32 noundef 2052) #5
  %call60.i = call ptr @d_instantiate_anon(ptr noundef nonnull %call32.i, ptr noundef %call20102106.i) #5
  br label %ovl_obtain_alias.exit

nomem.i:                                          ; preds = %if.end42.i.nomem.i_crit_edge, %if.end31.i.nomem.i_crit_edge
  call void @dput(ptr noundef %call32.i) #5
  br label %out_iput.i

out_iput.i:                                       ; preds = %nomem.i, %if.end27.i.out_iput.i_crit_edge
  %dentry6.0.i = phi ptr [ %call28.i, %if.end27.i.out_iput.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %nomem.i ]
  call void @iput(ptr noundef %call20102106.i) #5
  br label %ovl_obtain_alias.exit

ovl_obtain_alias.exit:                            ; preds = %out_iput.i, %if.end59.i, %if.then22.i, %cond.end.i.ovl_obtain_alias.exit_crit_edge
  %retval.0.i = phi ptr [ %call20103.i, %if.then22.i ], [ %dentry6.0.i, %out_iput.i ], [ %call60.i, %if.end59.i ], [ inttoptr (i32 -5 to ptr), %cond.end.i.ovl_obtain_alias.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %oip.i) #5
  br label %cleanup

if.end:                                           ; preds = %cond.end10
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %cond11, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call fastcc ptr @ovl_lookup_real(ptr noundef %sb, ptr noundef %cond11, ptr noundef %cond34)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ovl_obtain_alias.exit
  %retval.0 = phi ptr [ %call19, %if.end18 ], [ %retval.0.i, %ovl_obtain_alias.exit ], [ inttoptr (i32 -2 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_lookup_real(ptr noundef %sb, ptr noundef %real, ptr nocapture noundef readonly %layer) unnamed_addr #0 align 64 {
entry:
  %name.i = alloca %struct.name_snapshot, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ovl_lookup_real_ancestor(ptr noundef %sb, ptr noundef %real, ptr noundef %layer)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup46_crit_edge, label %while.cond.preheader

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

while.cond.preheader:                             ; preds = %entry
  %idx = getelementptr inbounds %struct.ovl_layer, ptr %layer, i32 0, i32 3
  %tobool.not.i85 = icmp eq ptr %real, null
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %real, i32 0, i32 7
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %name4.i = getelementptr inbounds %struct.qstr, ptr %name.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader
  %connected.0134 = phi ptr [ %call, %while.cond.preheader ], [ %connected.2, %cleanup.while.body_crit_edge ]
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %connected.0134, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %while.body
  %numlower.i = getelementptr inbounds %struct.ovl_entry, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %numlower.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numlower.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp17.not.i = icmp eq i32 %5, 0
  br i1 %cmp17.not.i, label %for.cond.preheader.i.ovl_dentry_real_at.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.ovl_dentry_real_at.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_dentry_real_at.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call ptr @ovl_dentry_upper(ptr noundef %connected.0134) #5
  br label %ovl_dentry_real_at.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ovl_entry, ptr %3, i32 0, i32 2, i32 %i.018.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %idx1.i = getelementptr inbounds %struct.ovl_layer, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %idx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp2.i = icmp eq i32 %9, %1
  br i1 %cmp2.i, label %if.then3.i, label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dentry6.i = getelementptr %struct.ovl_entry, ptr %3, i32 0, i32 2, i32 %i.018.i, i32 1
  %10 = ptrtoint ptr %dentry6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry6.i, align 4
  br label %ovl_dentry_real_at.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.ovl_dentry_real_at.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.ovl_dentry_real_at.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_dentry_real_at.exit

ovl_dentry_real_at.exit:                          ; preds = %for.inc.i.ovl_dentry_real_at.exit_crit_edge, %if.then3.i, %if.then.i, %for.cond.preheader.i.ovl_dentry_real_at.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.then3.i ], [ %call.i, %if.then.i ], [ null, %for.cond.preheader.i.ovl_dentry_real_at.exit_crit_edge ], [ null, %for.inc.i.ovl_dentry_real_at.exit_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i, %real
  br i1 %cmp, label %ovl_dentry_real_at.exit.cleanup46_crit_edge, label %if.end4

ovl_dentry_real_at.exit.cleanup46_crit_edge:      ; preds = %ovl_dentry_real_at.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

if.end4:                                          ; preds = %ovl_dentry_real_at.exit
  br i1 %tobool.not.i85, label %if.end4.dget.exit_crit_edge, label %if.then.i86

if.end4.dget.exit_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %dget.exit

if.then.i86:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void @lockref_get(ptr noundef %d_lockref.i) #5
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i86, %if.end4.dget.exit_crit_edge
  %call6129 = call ptr @dget_parent(ptr noundef %real) #5
  %cmp7130 = icmp eq ptr %call6129, %retval.0.i
  br i1 %cmp7130, label %dget.exit.if.then18_crit_edge, label %dget.exit.if.end9_crit_edge

dget.exit.if.end9_crit_edge:                      ; preds = %dget.exit
  br label %if.end9

dget.exit.if.then18_crit_edge:                    ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end9:                                          ; preds = %if.end16.if.end9_crit_edge, %dget.exit.if.end9_crit_edge
  %call6132 = phi ptr [ %call6, %if.end16.if.end9_crit_edge ], [ %call6129, %dget.exit.if.end9_crit_edge ]
  %next.0131 = phi ptr [ %call6132, %if.end16.if.end9_crit_edge ], [ %real, %dget.exit.if.end9_crit_edge ]
  %12 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %layer, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %cmp10 = icmp eq ptr %call6132, %15
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @dput(ptr noundef %connected.0134) #5
  %16 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_root, align 64
  %tobool.not.i87 = icmp eq ptr %17, null
  br i1 %tobool.not.i87, label %if.then11.if.then18_crit_edge, label %if.then.i89

if.then11.if.then18_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.then.i89:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %d_lockref.i88 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i88) #5
  br label %if.then18

if.end13:                                         ; preds = %if.end9
  %cmp14 = icmp eq ptr %call6132, %next.0131
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  call void @dput(ptr noundef %next.0131) #5
  %call6 = call ptr @dget_parent(ptr noundef %call6132) #5
  %cmp7 = icmp eq ptr %call6, %retval.0.i
  br i1 %cmp7, label %if.end16.if.then18_crit_edge, label %if.end16.if.end9_crit_edge

if.end16.if.end9_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.then18:                                        ; preds = %if.end16.if.then18_crit_edge, %if.then.i89, %if.then11.if.then18_crit_edge, %dget.exit.if.then18_crit_edge
  %next.0115 = phi ptr [ %next.0131, %if.then11.if.then18_crit_edge ], [ %next.0131, %if.then.i89 ], [ %real, %dget.exit.if.then18_crit_edge ], [ %call6132, %if.end16.if.then18_crit_edge ]
  %call6112 = phi ptr [ %call6132, %if.then11.if.then18_crit_edge ], [ %call6132, %if.then.i89 ], [ %retval.0.i, %dget.exit.if.then18_crit_edge ], [ %retval.0.i, %if.end16.if.then18_crit_edge ]
  %connected.1 = phi ptr [ null, %if.then11.if.then18_crit_edge ], [ %17, %if.then.i89 ], [ %connected.0134, %dget.exit.if.then18_crit_edge ], [ %connected.0134, %if.end16.if.then18_crit_edge ]
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %connected.1, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %name.i) #5
  %20 = call ptr @memset(ptr %name.i, i32 255, i32 56)
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #5
  %call1.i = call ptr @dget_parent(ptr noundef %next.0115) #5
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx, align 4
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %connected.1, i32 0, i32 11
  %23 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_fsdata.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.then18
  %numlower.i.i = getelementptr inbounds %struct.ovl_entry, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %numlower.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %numlower.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp17.not.i.i = icmp eq i32 %26, 0
  br i1 %cmp17.not.i.i, label %for.cond.preheader.i.i.ovl_dentry_real_at.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.ovl_dentry_real_at.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_dentry_real_at.exit.i

if.then.i.i:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call ptr @ovl_dentry_upper(ptr noundef %connected.1) #5
  br label %ovl_dentry_real_at.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ovl_entry, ptr %24, i32 0, i32 2, i32 %i.018.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %idx1.i.i = getelementptr inbounds %struct.ovl_layer, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %idx1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %22)
  %cmp2.i.i = icmp eq i32 %30, %22
  br i1 %cmp2.i.i, label %if.then3.i.i, label %for.inc.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dentry6.i.i = getelementptr %struct.ovl_entry, ptr %24, i32 0, i32 2, i32 %i.018.i.i, i32 1
  %31 = ptrtoint ptr %dentry6.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dentry6.i.i, align 4
  br label %ovl_dentry_real_at.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %26
  br i1 %exitcond.not.i.i, label %for.inc.i.i.ovl_dentry_real_at.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.ovl_dentry_real_at.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_dentry_real_at.exit.i

ovl_dentry_real_at.exit.i:                        ; preds = %for.inc.i.i.ovl_dentry_real_at.exit.i_crit_edge, %if.then3.i.i, %if.then.i.i, %for.cond.preheader.i.i.ovl_dentry_real_at.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.then3.i.i ], [ %call.i.i, %if.then.i.i ], [ null, %for.cond.preheader.i.i.ovl_dentry_real_at.exit.i_crit_edge ], [ null, %for.inc.i.i.ovl_dentry_real_at.exit.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %retval.0.i.i, %call1.i
  br i1 %cmp.not.i, label %if.end.i, label %ovl_dentry_real_at.exit.i.fail.i_crit_edge

ovl_dentry_real_at.exit.i.fail.i_crit_edge:       ; preds = %ovl_dentry_real_at.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i

if.end.i:                                         ; preds = %ovl_dentry_real_at.exit.i
  call void @take_dentry_name_snapshot(ptr noundef nonnull %name.i, ptr noundef %next.0115) #5
  %33 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name4.i, align 8
  %35 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %name.i, align 8
  %call6.i = call ptr @lookup_one_len(ptr noundef %34, ptr noundef %connected.1, i32 noundef %36) #5
  call void @release_dentry_name_snapshot(ptr noundef nonnull %name.i) #5
  %37 = ptrtoint ptr %call6.i to i32
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.fail.i_crit_edge, label %if.else.i

if.end.i.fail.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i

if.else.i:                                        ; preds = %if.end.i
  %tobool.not.i91 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i91, label %if.else.i.if.then11.i_crit_edge, label %lor.lhs.false.i

if.else.i.if.then11.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call6.i, i32 0, i32 5
  %38 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i, align 8
  %tobool10.not.i = icmp eq ptr %39, null
  br i1 %tobool10.not.i, label %lor.lhs.false.i.if.then11.i_crit_edge, label %if.else12.i

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false.i.if.then11.i_crit_edge, %if.else.i.if.then11.i_crit_edge
  call void @dput(ptr noundef %call6.i) #5
  br label %fail.i

if.else12.i:                                      ; preds = %lor.lhs.false.i
  %40 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %idx, align 4
  %d_fsdata.i45.i = getelementptr inbounds %struct.dentry, ptr %call6.i, i32 0, i32 11
  %42 = ptrtoint ptr %d_fsdata.i45.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_fsdata.i45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i46.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i46.i, label %if.then.i51.i, label %for.cond.preheader.i49.i

for.cond.preheader.i49.i:                         ; preds = %if.else12.i
  %numlower.i47.i = getelementptr inbounds %struct.ovl_entry, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %numlower.i47.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %numlower.i47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp17.not.i48.i = icmp eq i32 %45, 0
  br i1 %cmp17.not.i48.i, label %for.cond.preheader.i49.i.ovl_dentry_real_at.exit63.i_crit_edge, label %for.cond.preheader.i49.i.for.body.i56.i_crit_edge

for.cond.preheader.i49.i.for.body.i56.i_crit_edge: ; preds = %for.cond.preheader.i49.i
  br label %for.body.i56.i

for.cond.preheader.i49.i.ovl_dentry_real_at.exit63.i_crit_edge: ; preds = %for.cond.preheader.i49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_dentry_real_at.exit63.i

if.then.i51.i:                                    ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i50.i = call ptr @ovl_dentry_upper(ptr noundef nonnull %call6.i) #5
  br label %ovl_dentry_real_at.exit63.i

for.body.i56.i:                                   ; preds = %for.inc.i61.i.for.body.i56.i_crit_edge, %for.cond.preheader.i49.i.for.body.i56.i_crit_edge
  %i.018.i52.i = phi i32 [ %inc.i59.i, %for.inc.i61.i.for.body.i56.i_crit_edge ], [ 0, %for.cond.preheader.i49.i.for.body.i56.i_crit_edge ]
  %arrayidx.i53.i = getelementptr %struct.ovl_entry, ptr %43, i32 0, i32 2, i32 %i.018.i52.i
  %46 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i53.i, align 4
  %idx1.i54.i = getelementptr inbounds %struct.ovl_layer, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %idx1.i54.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %idx1.i54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %41)
  %cmp2.i55.i = icmp eq i32 %49, %41
  br i1 %cmp2.i55.i, label %if.then3.i58.i, label %for.inc.i61.i

if.then3.i58.i:                                   ; preds = %for.body.i56.i
  call void @__sanitizer_cov_trace_pc() #7
  %dentry6.i57.i = getelementptr %struct.ovl_entry, ptr %43, i32 0, i32 2, i32 %i.018.i52.i, i32 1
  %50 = ptrtoint ptr %dentry6.i57.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dentry6.i57.i, align 4
  br label %ovl_dentry_real_at.exit63.i

for.inc.i61.i:                                    ; preds = %for.body.i56.i
  %inc.i59.i = add nuw i32 %i.018.i52.i, 1
  %exitcond.not.i60.i = icmp eq i32 %inc.i59.i, %45
  br i1 %exitcond.not.i60.i, label %for.inc.i61.i.ovl_dentry_real_at.exit63.i_crit_edge, label %for.inc.i61.i.for.body.i56.i_crit_edge

for.inc.i61.i.for.body.i56.i_crit_edge:           ; preds = %for.inc.i61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i56.i

for.inc.i61.i.ovl_dentry_real_at.exit63.i_crit_edge: ; preds = %for.inc.i61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_dentry_real_at.exit63.i

ovl_dentry_real_at.exit63.i:                      ; preds = %for.inc.i61.i.ovl_dentry_real_at.exit63.i_crit_edge, %if.then3.i58.i, %if.then.i51.i, %for.cond.preheader.i49.i.ovl_dentry_real_at.exit63.i_crit_edge
  %retval.0.i62.i = phi ptr [ %51, %if.then3.i58.i ], [ %call.i50.i, %if.then.i51.i ], [ null, %for.cond.preheader.i49.i.ovl_dentry_real_at.exit63.i_crit_edge ], [ null, %for.inc.i61.i.ovl_dentry_real_at.exit63.i_crit_edge ]
  %cmp15.not.i = icmp eq ptr %retval.0.i62.i, %next.0115
  br i1 %cmp15.not.i, label %ovl_dentry_real_at.exit63.i.ovl_lookup_real_one.exit_crit_edge, label %if.then16.i

ovl_dentry_real_at.exit63.i.ovl_lookup_real_one.exit_crit_edge: ; preds = %ovl_dentry_real_at.exit63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_lookup_real_one.exit

if.then16.i:                                      ; preds = %ovl_dentry_real_at.exit63.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @dput(ptr noundef nonnull %call6.i) #5
  br label %fail.i

fail.i:                                           ; preds = %if.then16.i, %if.then11.i, %if.end.i.fail.i_crit_edge, %ovl_dentry_real_at.exit.i.fail.i_crit_edge
  %err.0.i = phi i32 [ -10, %ovl_dentry_real_at.exit.i.fail.i_crit_edge ], [ %37, %if.end.i.fail.i_crit_edge ], [ -116, %if.then16.i ], [ -2, %if.then11.i ]
  %call20.i = call i32 @___ratelimit(ptr noundef nonnull @ovl_lookup_real_one._rs, ptr noundef nonnull @__func__.ovl_lookup_real_one) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %fail.i.if.end25.i_crit_edge, label %do.end.i

fail.i.if.end25.i_crit_edge:                      ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

do.end.i:                                         ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %idx, align 4
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %next.0115, i32 noundef %53, ptr noundef %connected.1, i32 noundef %err.0.i) #8
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end.i, %fail.i.if.end25.i_crit_edge
  %54 = inttoptr i32 %err.0.i to ptr
  br label %ovl_lookup_real_one.exit

ovl_lookup_real_one.exit:                         ; preds = %if.end25.i, %ovl_dentry_real_at.exit63.i.ovl_lookup_real_one.exit_crit_edge
  %this.0.i = phi ptr [ %54, %if.end25.i ], [ %call6.i, %ovl_dentry_real_at.exit63.i.ovl_lookup_real_one.exit_crit_edge ]
  call void @dput(ptr noundef %call1.i) #5
  call void @up_write(ptr noundef %i_rwsem.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %name.i) #5
  %cmp.i92 = icmp ugt ptr %this.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.end23, label %ovl_lookup_real_one.exit.if.then30_crit_edge

ovl_lookup_real_one.exit.if.then30_crit_edge:     ; preds = %ovl_lookup_real_one.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.end23:                                         ; preds = %ovl_lookup_real_one.exit
  %cmp24 = icmp eq ptr %this.0.i, inttoptr (i32 -10 to ptr)
  br i1 %cmp24, label %if.then25, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  %call26 = call fastcc ptr @ovl_lookup_real_ancestor(ptr noundef %sb, ptr noundef %real, ptr noundef %layer)
  %cmp.i.i93 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i93, label %if.then25.if.end28_crit_edge, label %if.then25.if.then30_crit_edge

if.then25.if.then30_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then25.if.end28_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end28:                                         ; preds = %if.then25.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  %this.0 = phi ptr [ %this.0.i, %if.end23.if.end28_crit_edge ], [ %call26, %if.then25.if.end28_crit_edge ]
  %err.3 = ptrtoint ptr %this.0 to i32
  %tobool29.not = icmp eq ptr %this.0, null
  br i1 %tobool29.not, label %if.end28.if.then30_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %if.then25.if.then30_crit_edge, %ovl_lookup_real_one.exit.if.then30_crit_edge
  %this.0102 = phi ptr [ null, %if.end28.if.then30_crit_edge ], [ %call26, %if.then25.if.then30_crit_edge ], [ %this.0.i, %ovl_lookup_real_one.exit.if.then30_crit_edge ]
  call void @dput(ptr noundef %connected.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end28.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  %next.0118 = phi ptr [ %next.0115, %if.end28.cleanup_crit_edge ], [ %next.0115, %if.then30 ], [ %call6132, %if.end13.cleanup_crit_edge ]
  %call6111 = phi ptr [ %call6112, %if.end28.cleanup_crit_edge ], [ %call6112, %if.then30 ], [ %call6132, %if.end13.cleanup_crit_edge ]
  %connected.2 = phi ptr [ %connected.1, %if.end28.cleanup_crit_edge ], [ %this.0102, %if.then30 ], [ %connected.0134, %if.end13.cleanup_crit_edge ]
  %err.4 = phi i32 [ %err.3, %if.end28.cleanup_crit_edge ], [ 0, %if.then30 ], [ -18, %if.end13.cleanup_crit_edge ]
  call void @dput(ptr noundef %call6111) #5
  call void @dput(ptr noundef %next.0118) #5
  %tobool.not = icmp eq i32 %err.4, 0
  br i1 %tobool.not, label %cleanup.while.body_crit_edge, label %fail

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

fail:                                             ; preds = %cleanup
  %call39 = call i32 @___ratelimit(ptr noundef nonnull @ovl_lookup_real._rs, ptr noundef nonnull @__func__.ovl_lookup_real) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %fail.if.end44_crit_edge, label %do.end

fail.if.end44_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.end:                                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %idx, align 4
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %real, i32 noundef %56, ptr noundef %connected.2, i32 noundef %err.4) #8
  br label %if.end44

if.end44:                                         ; preds = %do.end, %fail.if.end44_crit_edge
  call void @dput(ptr noundef %connected.2) #5
  %57 = inttoptr i32 %err.4 to ptr
  br label %cleanup46

cleanup46:                                        ; preds = %if.end44, %ovl_dentry_real_at.exit.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.0 = phi ptr [ %57, %if.end44 ], [ %call, %entry.cleanup46_crit_edge ], [ %connected.0134, %ovl_dentry_real_at.exit.cleanup46_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_anon(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_alloc_entry(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_set_upper_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_update_reval(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_instantiate_anon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_lookup_real_ancestor(ptr noundef %sb, ptr noundef %real, ptr nocapture noundef readonly %layer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layer, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, %real
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i33 = icmp eq ptr %real, null
  br i1 %tobool.not.i33, label %if.end.dget.exit36_crit_edge, label %if.then.i35

if.end.dget.exit36_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dget.exit36

if.then.i35:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %d_lockref.i34 = getelementptr inbounds %struct.dentry, ptr %real, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i34) #5
  br label %dget.exit36

dget.exit36:                                      ; preds = %if.then.i35, %if.end.dget.exit36_crit_edge
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %idx.i = getelementptr inbounds %struct.ovl_layer, ptr %layer, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.end17, %dget.exit36
  %next.0 = phi ptr [ %real, %dget.exit36 ], [ %call3, %if.end17 ]
  %call3 = tail call ptr @dget_parent(ptr noundef %next.0) #5
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %8 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i37 = icmp eq i32 %9, 0
  %call.i = tail call ptr @ovl_lookup_inode(ptr noundef %sb, ptr noundef %next.0, i1 noundef zeroext %tobool.not.i37) #5
  %cmp.i53 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %for.cond.ovl_lookup_real_inode.exit_crit_edge, label %if.end.i

for.cond.ovl_lookup_real_inode.exit_crit_edge:    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_lookup_real_inode.exit

if.end.i:                                         ; preds = %for.cond
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.end6.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.end6.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @d_find_any_alias(ptr noundef nonnull %call.i) #5
  tail call void @iput(ptr noundef nonnull %call.i) #5
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %if.end6.i.land.lhs.true.i_crit_edge, label %if.end6.i.if.end51.i_crit_edge

if.end6.i.if.end51.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

if.end6.i.land.lhs.true.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end6.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge
  %10 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not.i = icmp eq i32 %11, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end6_crit_edge, label %land.lhs.true10.i

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %indexdir.i = getelementptr inbounds %struct.ovl_fs, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %indexdir.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %indexdir.i, align 4
  %tobool11.not.i = icmp eq ptr %13, null
  br i1 %tobool11.not.i, label %land.lhs.true10.i.if.end6_crit_edge, label %land.lhs.true12.i

land.lhs.true10.i.if.end6_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true12.i:                                ; preds = %land.lhs.true10.i
  %14 = ptrtoint ptr %next.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next.0, align 8
  %16 = and i32 %15, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %16)
  %17 = icmp eq i32 %16, 2097152
  br i1 %17, label %if.then38.critedge.i, label %do.end.i, !prof !55

do.end.i:                                         ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 453, i32 noundef 9, ptr noundef null) #5
  br label %if.end6

if.then38.critedge.i:                             ; preds = %land.lhs.true12.i
  %call39.i = tail call ptr @ovl_lookup_index(ptr noundef %7, ptr noundef null, ptr noundef %next.0, i1 noundef zeroext false) #5
  %cmp.i52 = icmp ugt ptr %call39.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %if.then38.critedge.i.ovl_lookup_real_inode.exit_crit_edge, label %if.end43.i

if.then38.critedge.i.ovl_lookup_real_inode.exit_crit_edge: ; preds = %if.then38.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_lookup_real_inode.exit

if.end43.i:                                       ; preds = %if.then38.critedge.i
  %tobool44.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool44.not.i, label %if.end43.i.if.end6_crit_edge, label %if.then45.i

if.end43.i.if.end6_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then45.i:                                      ; preds = %if.end43.i
  %call46.i = tail call ptr @ovl_index_upper(ptr noundef %7, ptr noundef nonnull %call39.i) #5
  tail call void @dput(ptr noundef nonnull %call39.i) #5
  %tobool.not.i49 = icmp eq ptr %call46.i, null
  %cmp.i50 = icmp ugt ptr %call46.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i51 = or i1 %tobool.not.i49, %cmp.i50
  br i1 %spec.select.i51, label %if.then45.i.ovl_lookup_real_inode.exit_crit_edge, label %cleanup.i

if.then45.i.ovl_lookup_real_inode.exit_crit_edge: ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_lookup_real_inode.exit

cleanup.i:                                        ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  %layers.i = getelementptr inbounds %struct.ovl_fs, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %layers.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %layers.i, align 4
  %call50.i = tail call fastcc ptr @ovl_lookup_real(ptr noundef %sb, ptr noundef nonnull %call46.i, ptr noundef %19) #5
  tail call void @dput(ptr noundef nonnull %call46.i) #5
  br label %if.end51.i

if.end51.i:                                       ; preds = %cleanup.i, %if.end6.i.if.end51.i_crit_edge
  %this.2.i = phi ptr [ %call50.i, %cleanup.i ], [ %call5.i, %if.end6.i.if.end51.i_crit_edge ]
  %tobool.not.i48 = icmp eq ptr %this.2.i, null
  %cmp.i = icmp ugt ptr %this.2.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i48, %cmp.i
  br i1 %spec.select.i, label %if.end51.i.ovl_lookup_real_inode.exit_crit_edge, label %if.end54.i

if.end51.i.ovl_lookup_real_inode.exit_crit_edge:  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_lookup_real_inode.exit

if.end54.i:                                       ; preds = %if.end51.i
  %20 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx.i, align 4
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %this.2.i, i32 0, i32 11
  %22 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_fsdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i44 = icmp eq i32 %21, 0
  br i1 %tobool.not.i44, label %if.then.i46, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end54.i
  %numlower.i = getelementptr inbounds %struct.ovl_entry, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %numlower.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %numlower.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp17.not.i = icmp eq i32 %25, 0
  br i1 %cmp17.not.i, label %for.cond.preheader.i.ovl_dentry_real_at.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.ovl_dentry_real_at.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_dentry_real_at.exit

if.then.i46:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i45 = tail call ptr @ovl_dentry_upper(ptr noundef nonnull %this.2.i) #5
  br label %ovl_dentry_real_at.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ovl_entry, ptr %23, i32 0, i32 2, i32 %i.018.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %idx1.i = getelementptr inbounds %struct.ovl_layer, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %idx1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %21)
  %cmp2.i = icmp eq i32 %29, %21
  br i1 %cmp2.i, label %if.then3.i, label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dentry6.i = getelementptr %struct.ovl_entry, ptr %23, i32 0, i32 2, i32 %i.018.i, i32 1
  %30 = ptrtoint ptr %dentry6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dentry6.i, align 4
  br label %ovl_dentry_real_at.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %for.inc.i.ovl_dentry_real_at.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.ovl_dentry_real_at.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_dentry_real_at.exit

ovl_dentry_real_at.exit:                          ; preds = %for.inc.i.ovl_dentry_real_at.exit_crit_edge, %if.then3.i, %if.then.i46, %for.cond.preheader.i.ovl_dentry_real_at.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.then3.i ], [ %call.i45, %if.then.i46 ], [ null, %for.cond.preheader.i.ovl_dentry_real_at.exit_crit_edge ], [ null, %for.inc.i.ovl_dentry_real_at.exit_crit_edge ]
  %cmp.not.i = icmp eq ptr %retval.0.i, %next.0
  br i1 %cmp.not.i, label %ovl_dentry_real_at.exit.ovl_lookup_real_inode.exit_crit_edge, label %ovl_lookup_real_inode.exit.thread68

ovl_dentry_real_at.exit.ovl_lookup_real_inode.exit_crit_edge: ; preds = %ovl_dentry_real_at.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ovl_lookup_real_inode.exit

ovl_lookup_real_inode.exit.thread68:              ; preds = %ovl_dentry_real_at.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dput(ptr noundef %this.2.i) #5
  br label %for.end

ovl_lookup_real_inode.exit:                       ; preds = %ovl_dentry_real_at.exit.ovl_lookup_real_inode.exit_crit_edge, %if.end51.i.ovl_lookup_real_inode.exit_crit_edge, %if.then45.i.ovl_lookup_real_inode.exit_crit_edge, %if.then38.critedge.i.ovl_lookup_real_inode.exit_crit_edge, %for.cond.ovl_lookup_real_inode.exit_crit_edge
  %retval.1.i = phi ptr [ %call39.i, %if.then38.critedge.i.ovl_lookup_real_inode.exit_crit_edge ], [ %this.2.i, %if.end51.i.ovl_lookup_real_inode.exit_crit_edge ], [ %this.2.i, %ovl_dentry_real_at.exit.ovl_lookup_real_inode.exit_crit_edge ], [ %call.i, %for.cond.ovl_lookup_real_inode.exit_crit_edge ], [ %call46.i, %if.then45.i.ovl_lookup_real_inode.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.1.i, null
  br i1 %tobool.not, label %ovl_lookup_real_inode.exit.if.end6_crit_edge, label %ovl_lookup_real_inode.exit.for.end_crit_edge

ovl_lookup_real_inode.exit.for.end_crit_edge:     ; preds = %ovl_lookup_real_inode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

ovl_lookup_real_inode.exit.if.end6_crit_edge:     ; preds = %ovl_lookup_real_inode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %ovl_lookup_real_inode.exit.if.end6_crit_edge, %if.end43.i.if.end6_crit_edge, %do.end.i, %land.lhs.true10.i.if.end6_crit_edge, %land.lhs.true.i.if.end6_crit_edge
  %32 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %layer, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %cmp9 = icmp eq ptr %call3, %35
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %s_root11 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %36 = ptrtoint ptr %s_root11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_root11, align 64
  %tobool.not.i39 = icmp eq ptr %37, null
  br i1 %tobool.not.i39, label %if.then10.for.end_crit_edge, label %if.then.i41

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then.i41:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %d_lockref.i40 = getelementptr inbounds %struct.dentry, ptr %37, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i40) #5
  br label %for.end

if.end13:                                         ; preds = %if.end6
  %cmp14 = icmp eq ptr %call3, %next.0
  br i1 %cmp14, label %if.end13.for.end_crit_edge, label %if.end17

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dput(ptr noundef %next.0) #5
  br label %for.cond

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %if.then.i41, %if.then10.for.end_crit_edge, %ovl_lookup_real_inode.exit.for.end_crit_edge, %ovl_lookup_real_inode.exit.thread68
  %call389 = phi ptr [ %call3, %ovl_lookup_real_inode.exit.thread68 ], [ %call3, %if.then10.for.end_crit_edge ], [ %call3, %if.then.i41 ], [ %call3, %ovl_lookup_real_inode.exit.for.end_crit_edge ], [ %next.0, %if.end13.for.end_crit_edge ]
  %ancestor.0 = phi ptr [ inttoptr (i32 -5 to ptr), %ovl_lookup_real_inode.exit.thread68 ], [ null, %if.then10.for.end_crit_edge ], [ %37, %if.then.i41 ], [ %retval.1.i, %ovl_lookup_real_inode.exit.for.end_crit_edge ], [ inttoptr (i32 -18 to ptr), %if.end13.for.end_crit_edge ]
  tail call void @dput(ptr noundef %call389) #5
  tail call void @dput(ptr noundef %next.0) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %ancestor.0, %for.end ], [ null, %if.then.cleanup_crit_edge ], [ %5, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_lookup_inode(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_lookup_index(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_index_upper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @take_dentry_name_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_dentry_name_snapshot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_check_origin_fh(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_get_index_fh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_verify_set_fh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @ovl_export_operations, !1, !"ovl_export_operations", i1 false, i1 false}
!1 = !{!"../fs/overlayfs/export.c", i32 866, i32 32}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/overlayfs/export.c", i32 262, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/overlayfs/export.c", i32 245, i32 2}
!6 = !{ptr @ovl_dentry_to_fid._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.ovl_dentry_to_fid, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ovl_dentry_to_fid._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @ovl_dentry_to_fid._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @ovl_encode_maybe_copy_up._rs, !12, !"_rs", i1 false, i1 false}
!12 = !{!"../fs/overlayfs/export.c", i32 33, i32 3}
!13 = !{ptr @__func__.ovl_encode_maybe_copy_up, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ovl_encode_maybe_copy_up._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ovl_encode_maybe_copy_up._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @ovl_fh_to_dentry._rs, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../fs/overlayfs/export.c", i32 832, i32 2}
!19 = !{ptr @__func__.ovl_fh_to_dentry, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ovl_fh_to_dentry._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @ovl_fh_to_dentry._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @ovl_lookup_real._rs, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../fs/overlayfs/export.c", i32 639, i32 2}
!25 = !{ptr @__func__.ovl_lookup_real, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ovl_lookup_real._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @ovl_lookup_real._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @ovl_lookup_real_one._rs, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../fs/overlayfs/export.c", i32 415, i32 2}
!31 = !{ptr @__func__.ovl_lookup_real_one, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ovl_lookup_real_one._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @ovl_lookup_real_one._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @ovl_fh_to_parent._rs, !36, !"_rs", i1 false, i1 false}
!36 = !{!"../fs/overlayfs/export.c", i32 841, i32 2}
!37 = !{ptr @__func__.ovl_fh_to_parent, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ovl_fh_to_parent._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @ovl_fh_to_parent._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../fs/overlayfs/export.c", i32 852, i32 2}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/overlayfs/export.c", i32 862, i32 2}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"branch_weights", i32 2000, i32 1}
