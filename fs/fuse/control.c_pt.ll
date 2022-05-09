; ModuleID = '/llk/IR_all_yes/fs/fuse/control.c_pt.bc'
source_filename = "../fs/fuse/control.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.34, %struct.list_head, %struct.list_head, %union.anon.35 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.spinlock, i32 }
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.fuse_conn = type { %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.callback_head, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, i32, i32, i32, %struct.fuse_iqueue, %struct.atomic64_t, %struct.rb_root, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, i32, i8, [7 x i8], %struct.atomic_t, i32, %struct.list_head, i32, [5 x ptr], i32, [4 x i32], %struct.atomic64_t, ptr, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.fuse_iqueue = type { i32, %struct.spinlock, %struct.wait_queue_head, i64, %struct.list_head, %struct.list_head, %struct.fuse_forget_link, ptr, i32, ptr, ptr, ptr }
%struct.fuse_forget_link = type { %struct.fuse_forget_one, ptr }
%struct.fuse_forget_one = type { i64, i64 }
%struct.rb_root = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.78 = type { %struct.callback_head }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.80 = type { ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@fuse_control_sb = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"waiting\00", [24 x i8] zeroinitializer }, align 32
@fuse_ctl_waiting_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @fuse_conn_waiting_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nonseekable_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"abort\00", [26 x i8] zeroinitializer }, align 32
@fuse_ctl_abort_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @fuse_conn_abort_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nonseekable_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_background\00", [17 x i8] zeroinitializer }, align 32
@fuse_conn_max_background_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @fuse_conn_max_background_read, ptr @fuse_conn_max_background_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nonseekable_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"congestion_threshold\00", [43 x i8] zeroinitializer }, align 32
@fuse_conn_congestion_threshold_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @fuse_conn_congestion_threshold_read, ptr @fuse_conn_congestion_threshold_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nonseekable_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias274 = internal constant [22 x i8] c"fuse.alias=fs-fusectl\00", section ".modinfo", align 1
@fuse_ctl_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.7, i32 0, ptr @fuse_ctl_init_fs_context, ptr null, ptr null, ptr @fuse_ctl_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@fuse_mutex = external dso_local global %struct.mutex, align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@max_user_bgreq = external dso_local local_unnamed_addr global i32, align 4
@max_user_congthresh = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fusectl\00", [24 x i8] zeroinitializer }, align 32
@fuse_ctl_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @fuse_ctl_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@fuse_ctl_fill_super.empty_descr = internal constant { %struct.tree_descr, [20 x i8] } { %struct.tree_descr { ptr @.str.8, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@fuse_conn_list = external dso_local global %struct.list_head, align 4
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"fuse_control_sb\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 21, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 283, i32 16 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 290, i32 39 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"fuse_ctl_waiting_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 210, i32 37 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 292, i32 39 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"fuse_ctl_abort_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 204, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 294, i32 39 }
@___asan_gen_.30 = private unnamed_addr constant [29 x i8] c"fuse_conn_max_background_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 216, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 296, i32 39 }
@___asan_gen_.36 = private unnamed_addr constant [35 x i8] c"fuse_conn_congestion_threshold_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 223, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"fuse_ctl_fs_type\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 385, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 63, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 71, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 387, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"fuse_ctl_context_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 362, i32 43 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"empty_descr\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 333, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [21 x i8] c"../fs/fuse/control.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 333, i32 48 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias274, ptr @fuse_ctl_cleanup, ptr @fuse_control_sb, ptr @.str, ptr @.str.1, ptr @fuse_ctl_waiting_ops, ptr @.str.2, ptr @fuse_ctl_abort_ops, ptr @.str.3, ptr @fuse_conn_max_background_ops, ptr @.str.4, ptr @fuse_conn_congestion_threshold_ops, ptr @fuse_ctl_fs_type, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @fuse_ctl_context_ops, ptr @fuse_ctl_fill_super.empty_descr, ptr @.str.8], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_control_sb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_ctl_waiting_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_ctl_abort_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_conn_max_background_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_conn_congestion_threshold_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_ctl_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_ctl_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_ctl_fill_super.empty_descr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_ctl_add_conn(ptr noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #7
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = load ptr, ptr @fuse_control_sb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  tail call void @inc_nlink(ptr noundef %5) #7
  %dev = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 30
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i32 noundef %7)
  %call3 = call fastcc ptr @fuse_ctl_add_dentry(ptr noundef %3, ptr noundef %fc, ptr noundef nonnull %name, i32 noundef 16704, i32 noundef 2, ptr noundef nonnull @simple_dir_inode_operations, ptr noundef nonnull @simple_dir_operations)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.err_crit_edge, label %if.end6

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc ptr @fuse_ctl_add_dentry(ptr noundef nonnull %call3, ptr noundef %fc, ptr noundef nonnull @.str.1, i32 noundef 33024, i32 noundef 1, ptr noundef null, ptr noundef nonnull @fuse_ctl_waiting_ops)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.err_crit_edge, label %lor.lhs.false

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

lor.lhs.false:                                    ; preds = %if.end6
  %call9 = call fastcc ptr @fuse_ctl_add_dentry(ptr noundef nonnull %call3, ptr noundef %fc, ptr noundef nonnull @.str.2, i32 noundef 32896, i32 noundef 1, ptr noundef null, ptr noundef nonnull @fuse_ctl_abort_ops)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %lor.lhs.false.err_crit_edge, label %lor.lhs.false11

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %call12 = call fastcc ptr @fuse_ctl_add_dentry(ptr noundef nonnull %call3, ptr noundef %fc, ptr noundef nonnull @.str.3, i32 noundef 33152, i32 noundef 1, ptr noundef null, ptr noundef nonnull @fuse_conn_max_background_ops)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %lor.lhs.false11.err_crit_edge, label %lor.lhs.false14

lor.lhs.false11.err_crit_edge:                    ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %call15 = call fastcc ptr @fuse_ctl_add_dentry(ptr noundef nonnull %call3, ptr noundef %fc, ptr noundef nonnull @.str.4, i32 noundef 33152, i32 noundef 1, ptr noundef null, ptr noundef nonnull @fuse_conn_congestion_threshold_ops)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %lor.lhs.false14.err_crit_edge, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false14.err_crit_edge:                    ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

err:                                              ; preds = %lor.lhs.false14.err_crit_edge, %lor.lhs.false11.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end6.err_crit_edge, %if.end.err_crit_edge
  %8 = load ptr, ptr @fuse_control_sb, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %err.cleanup_crit_edge, label %if.end.i

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %err
  %ctl_ndents.i = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 32
  %9 = ptrtoint ptr %ctl_ndents.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctl_ndents.i, align 8
  %i.012.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.012.i)
  %cmp13.i = icmp sgt i32 %i.012.i, -1
  br i1 %cmp13.i, label %for.body.i.preheader, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.preheader:                             ; preds = %if.end.i
  %arrayidx.i32 = getelementptr %struct.fuse_conn, ptr %fc, i32 0, i32 31, i32 %i.012.i
  %11 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i32, align 4
  %d_inode.i.i33 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode.i.i33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i.i33, align 8
  %i_private.i34 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 54
  %15 = ptrtoint ptr %i_private.i34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %i_private.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.012.i)
  %tobool1.not.i35 = icmp eq i32 %i.012.i, 0
  br i1 %tobool1.not.i35, label %for.body.i.preheader.for.end.loopexit.i_crit_edge, label %for.body.i.preheader.if.end3.i_crit_edge

for.body.i.preheader.if.end3.i_crit_edge:         ; preds = %for.body.i.preheader
  br label %if.end3.i

for.body.i.preheader.for.end.loopexit.i_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.i

if.end3.i:                                        ; preds = %if.end3.i.if.end3.i_crit_edge, %for.body.i.preheader.if.end3.i_crit_edge
  %16 = phi ptr [ %18, %if.end3.i.if.end3.i_crit_edge ], [ %12, %for.body.i.preheader.if.end3.i_crit_edge ]
  %i.014.i36 = phi i32 [ %i.0.i, %if.end3.i.if.end3.i_crit_edge ], [ %i.012.i, %for.body.i.preheader.if.end3.i_crit_edge ]
  call void @dput(ptr noundef %16) #7
  %i.0.i = add nsw i32 %i.014.i36, -1
  %arrayidx.i = getelementptr %struct.fuse_conn, ptr %fc, i32 0, i32 31, i32 %i.0.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 54
  %21 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %i_private.i, align 4
  %tobool1.not.i = icmp eq i32 %i.0.i, 0
  br i1 %tobool1.not.i, label %if.end3.i.for.end.loopexit.i_crit_edge, label %if.end3.i.if.end3.i_crit_edge

if.end3.i.if.end3.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.end3.i.for.end.loopexit.i_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.i

for.end.loopexit.i:                               ; preds = %if.end3.i.for.end.loopexit.i_crit_edge, %for.body.i.preheader.for.end.loopexit.i_crit_edge
  %.lcssa = phi ptr [ %12, %for.body.i.preheader.for.end.loopexit.i_crit_edge ], [ %18, %if.end3.i.for.end.loopexit.i_crit_edge ]
  call void @d_invalidate(ptr noundef %.lcssa) #7
  call void @dput(ptr noundef %.lcssa) #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.end.i.for.end.i_crit_edge
  %22 = load ptr, ptr @fuse_control_sb, align 4
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_root.i, align 64
  %d_inode.i11.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i11.i, align 8
  call void @drop_nlink(ptr noundef %26) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %err.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false14.cleanup_crit_edge ], [ -12, %err.cleanup_crit_edge ], [ -12, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fuse_ctl_add_dentry(ptr noundef %parent, ptr noundef %fc, ptr noundef %name, i32 noundef %mode, i32 noundef %nlink, ptr noundef %iop, ptr noundef %fop) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_ndents = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 32
  %0 = ptrtoint ptr %ctl_ndents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctl_ndents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp sgt i32 %1, 4
  br i1 %cmp, label %do.body2, label %do.end7, !prof !45

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/control.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #7, !srcloc !46
  unreachable

do.end7:                                          ; preds = %entry
  %call = tail call ptr @d_alloc_name(ptr noundef %parent, ptr noundef %name) #7
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  %2 = load ptr, ptr @fuse_control_sb, align 4
  %call11 = tail call ptr @new_inode(ptr noundef %2) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dput(ptr noundef nonnull %call) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @get_next_ino() #7
  %i_ino = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call15, ptr %i_ino, align 8
  %conv = trunc i32 %mode to i16
  %4 = ptrtoint ptr %call11 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %call11, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 2
  %user_id = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 4
  %5 = ptrtoint ptr %user_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %user_id, align 4
  %7 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 3
  %group_id = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 5
  %8 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %group_id, align 8
  %10 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %i_gid, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call11) #7
  %11 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  %12 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %13 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %tobool16.not = icmp eq ptr %iop, null
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %i_op = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 7
  %14 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %iop, ptr %i_op, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %15 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 44
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fop, ptr %15, align 8
  call void @set_nlink(ptr noundef nonnull %call11, i32 noundef %nlink) #7
  %i_private = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 54
  %17 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %fc, ptr %i_private, align 4
  call void @d_add(ptr noundef nonnull %call, ptr noundef nonnull %call11) #7
  %18 = ptrtoint ptr %ctl_ndents to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctl_ndents, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %ctl_ndents, align 8
  %arrayidx = getelementptr %struct.fuse_conn, ptr %fc, i32 0, i32 31, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then13, %do.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end18 ], [ null, %if.then13 ], [ null, %do.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_ctl_remove_conn(ptr nocapture noundef readonly %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fuse_control_sb, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctl_ndents = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 32
  %1 = ptrtoint ptr %ctl_ndents to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ctl_ndents, align 8
  %i.012 = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.012)
  %cmp13 = icmp sgt i32 %i.012, -1
  br i1 %cmp13, label %for.body.preheader, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %arrayidx17 = getelementptr %struct.fuse_conn, ptr %fc, i32 0, i32 31, i32 %i.012
  %3 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx17, align 4
  %d_inode.i18 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i18, align 8
  %i_private19 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 54
  %7 = ptrtoint ptr %i_private19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %i_private19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.012)
  %tobool1.not20 = icmp eq i32 %i.012, 0
  br i1 %tobool1.not20, label %for.body.preheader.for.end.loopexit_crit_edge, label %for.body.preheader.if.end3_crit_edge

for.body.preheader.if.end3_crit_edge:             ; preds = %for.body.preheader
  br label %if.end3

for.body.preheader.for.end.loopexit_crit_edge:    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit

if.end3:                                          ; preds = %if.end3.if.end3_crit_edge, %for.body.preheader.if.end3_crit_edge
  %8 = phi ptr [ %10, %if.end3.if.end3_crit_edge ], [ %4, %for.body.preheader.if.end3_crit_edge ]
  %i.01421 = phi i32 [ %i.0, %if.end3.if.end3_crit_edge ], [ %i.012, %for.body.preheader.if.end3_crit_edge ]
  tail call void @dput(ptr noundef %8) #7
  %i.0 = add nsw i32 %i.01421, -1
  %arrayidx = getelementptr %struct.fuse_conn, ptr %fc, i32 0, i32 31, i32 %i.0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 54
  %13 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %i_private, align 4
  %tobool1.not = icmp eq i32 %i.0, 0
  br i1 %tobool1.not, label %if.end3.for.end.loopexit_crit_edge, label %if.end3.if.end3_crit_edge

if.end3.if.end3_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3.for.end.loopexit_crit_edge:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %if.end3.for.end.loopexit_crit_edge, %for.body.preheader.for.end.loopexit_crit_edge
  %.lcssa = phi ptr [ %4, %for.body.preheader.for.end.loopexit_crit_edge ], [ %10, %if.end3.for.end.loopexit_crit_edge ]
  tail call void @d_invalidate(ptr noundef %.lcssa) #7
  tail call void @dput(ptr noundef %.lcssa) #7
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %14 = load ptr, ptr @fuse_control_sb, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_root, align 64
  %d_inode.i11 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i11, align 8
  tail call void @drop_nlink(ptr noundef %18) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_ctl_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_filesystem(ptr noundef nonnull @fuse_ctl_fs_type) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_ctl_cleanup() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @fuse_ctl_fs_type) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_conn_waiting_read(ptr nocapture noundef %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #0 align 64 {
entry:
  %tmp = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #7
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 32)
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @fuse_mutex, i32 noundef 0) #7
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 54
  %5 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_private.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %fuse_ctl_file_conn_get.exit.thread, label %fuse_ctl_file_conn_get.exit

fuse_ctl_file_conn_get.exit.thread:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  br label %cleanup10

fuse_ctl_file_conn_get.exit:                      ; preds = %if.then
  %call1.i = tail call ptr @fuse_conn_get(ptr noundef nonnull %6) #7
  tail call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  %tobool1.not = icmp eq ptr %call1.i, null
  br i1 %tobool1.not, label %fuse_ctl_file_conn_get.exit.cleanup10_crit_edge, label %if.end

fuse_ctl_file_conn_get.exit.cleanup10_crit_edge:  ; preds = %fuse_ctl_file_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.end:                                           ; preds = %fuse_ctl_file_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %num_waiting = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_waiting, i32 noundef 4) #7
  %7 = ptrtoint ptr %num_waiting to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %num_waiting, align 4
  %9 = inttoptr i32 %8 to ptr
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %private_data, align 4
  tail call void @fuse_conn_put(ptr noundef nonnull %call1.i) #7
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %private_data6 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %11 = ptrtoint ptr %private_data6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data6, align 4
  %13 = ptrtoint ptr %12 to i32
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.5, i32 noundef %13)
  %call9 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %ppos, ptr noundef nonnull %tmp, i32 noundef %call7) #7
  br label %cleanup10

cleanup10:                                        ; preds = %if.end5, %fuse_ctl_file_conn_get.exit.cleanup10_crit_edge, %fuse_ctl_file_conn_get.exit.thread
  %retval.1 = phi i32 [ %call9, %if.end5 ], [ 0, %fuse_ctl_file_conn_get.exit.cleanup10_crit_edge ], [ 0, %fuse_ctl_file_conn_get.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_conn_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_conn_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_conn_abort_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %buf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fuse_mutex, i32 noundef 0) #7
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %fuse_ctl_file_conn_get.exit.thread, label %fuse_ctl_file_conn_get.exit

fuse_ctl_file_conn_get.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  br label %if.end3

fuse_ctl_file_conn_get.exit:                      ; preds = %entry
  %call1.i = tail call ptr @fuse_conn_get(ptr noundef nonnull %3) #7
  tail call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %fuse_ctl_file_conn_get.exit.if.end3_crit_edge, label %if.then

fuse_ctl_file_conn_get.exit.if.end3_crit_edge:    ; preds = %fuse_ctl_file_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %fuse_ctl_file_conn_get.exit
  %abort_err = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 26
  %4 = ptrtoint ptr %abort_err to i32
  call void @__asan_loadN_noabort(i32 %4, i32 7)
  %bf.load = load i56, ptr %abort_err, align 1
  %5 = and i56 %bf.load, 4503599627370496
  %tobool1.not = icmp eq i56 %5, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %aborted = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 25
  %6 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %aborted, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  tail call void @fuse_abort_conn(ptr noundef nonnull %call1.i) #7
  tail call void @fuse_conn_put(ptr noundef nonnull %call1.i) #7
  br label %if.end3

if.end3:                                          ; preds = %if.end, %fuse_ctl_file_conn_get.exit.if.end3_crit_edge, %fuse_ctl_file_conn_get.exit.thread
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_abort_conn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_conn_max_background_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #0 align 64 {
entry:
  %tmp.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fuse_mutex, i32 noundef 0) #7
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %fuse_ctl_file_conn_get.exit.thread, label %fuse_ctl_file_conn_get.exit

fuse_ctl_file_conn_get.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  br label %cleanup

fuse_ctl_file_conn_get.exit:                      ; preds = %entry
  %call1.i = tail call ptr @fuse_conn_get(ptr noundef nonnull %3) #7
  tail call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %fuse_ctl_file_conn_get.exit.cleanup_crit_edge, label %do.end

fuse_ctl_file_conn_get.exit.cleanup_crit_edge:    ; preds = %fuse_ctl_file_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %fuse_ctl_file_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %max_background = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 15
  %4 = ptrtoint ptr %max_background to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %max_background, align 4
  tail call void @fuse_conn_put(ptr noundef nonnull %call1.i) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #7
  %6 = call ptr @memset(ptr %tmp.i, i32 255, i32 32)
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp.i, ptr noundef nonnull @.str.6, i32 noundef %5) #7
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %ppos, ptr noundef nonnull %tmp.i, i32 noundef %call.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %fuse_ctl_file_conn_get.exit.cleanup_crit_edge, %fuse_ctl_file_conn_get.exit.thread
  %retval.0 = phi i32 [ %call2.i, %do.end ], [ 0, %fuse_ctl_file_conn_get.exit.cleanup_crit_edge ], [ 0, %fuse_ctl_file_conn_get.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_conn_max_background_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %t.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_user_bgreq to i32))
  %0 = load i32, ptr @max_user_bgreq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %1 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %t.i, align 4, !annotation !47
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fuse_conn_limit_write.exit.thread_crit_edge

entry.fuse_conn_limit_write.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fuse_conn_limit_write.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @kstrtoul_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.fuse_conn_limit_write.exit_crit_edge

if.end.i.fuse_conn_limit_write.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fuse_conn_limit_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call zeroext i1 @capable(i32 noundef 21) #7
  %4 = call i32 @llvm.umin.i32(i32 %0, i32 65535) #7
  %limit.0.i = select i1 %call4.i, i32 65535, i32 %4
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %limit.0.i)
  %cmp7.i = icmp ugt i32 %6, %limit.0.i
  br i1 %cmp7.i, label %if.end3.i.fuse_conn_limit_write.exit.thread_crit_edge, label %if.end3.i.fuse_conn_limit_write.exit_crit_edge

if.end3.i.fuse_conn_limit_write.exit_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fuse_conn_limit_write.exit

if.end3.i.fuse_conn_limit_write.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fuse_conn_limit_write.exit.thread

fuse_conn_limit_write.exit.thread:                ; preds = %if.end3.i.fuse_conn_limit_write.exit.thread_crit_edge, %entry.fuse_conn_limit_write.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  br label %if.end10

fuse_conn_limit_write.exit:                       ; preds = %if.end3.i.fuse_conn_limit_write.exit_crit_edge, %if.end.i.fuse_conn_limit_write.exit_crit_edge
  %val.0 = phi i32 [ -1, %if.end.i.fuse_conn_limit_write.exit_crit_edge ], [ %6, %if.end3.i.fuse_conn_limit_write.exit_crit_edge ]
  %retval.0.i = phi i32 [ %call.i, %if.end.i.fuse_conn_limit_write.exit_crit_edge ], [ %count, %if.end3.i.fuse_conn_limit_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then, label %fuse_conn_limit_write.exit.if.end10_crit_edge

fuse_conn_limit_write.exit.if.end10_crit_edge:    ; preds = %fuse_conn_limit_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %fuse_conn_limit_write.exit
  call void @mutex_lock_nested(ptr noundef nonnull @fuse_mutex, i32 noundef 0) #7
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %7 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 54
  %9 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_private.i, align 4
  %tobool.not.i22 = icmp eq ptr %10, null
  br i1 %tobool.not.i22, label %fuse_ctl_file_conn_get.exit.thread, label %fuse_ctl_file_conn_get.exit

fuse_ctl_file_conn_get.exit.thread:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  br label %if.end10

fuse_ctl_file_conn_get.exit:                      ; preds = %if.then
  %call1.i = call ptr @fuse_conn_get(ptr noundef nonnull %10) #7
  call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %fuse_ctl_file_conn_get.exit.if.end10_crit_edge, label %if.then2

fuse_ctl_file_conn_get.exit.if.end10_crit_edge:   ; preds = %fuse_ctl_file_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then2:                                         ; preds = %fuse_ctl_file_conn_get.exit
  %bg_lock = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %bg_lock) #7
  %max_background = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 15
  %11 = ptrtoint ptr %max_background to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %val.0, ptr %max_background, align 4
  %num_background = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 17
  %12 = ptrtoint ptr %num_background to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_background, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %val.0)
  %cmp4 = icmp uge i32 %13, %val.0
  %conv = zext i1 %cmp4 to i32
  %blocked = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 22
  %14 = ptrtoint ptr %blocked to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %blocked, align 4
  br i1 %cmp4, label %if.then2.if.end_crit_edge, label %if.then7

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %blocked_waitq = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 23
  call void @__wake_up(ptr noundef %blocked_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then2.if.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %bg_lock) #7
  call void @fuse_conn_put(ptr noundef nonnull %call1.i) #7
  br label %if.end10

if.end10:                                         ; preds = %if.end, %fuse_ctl_file_conn_get.exit.if.end10_crit_edge, %fuse_ctl_file_conn_get.exit.thread, %fuse_conn_limit_write.exit.if.end10_crit_edge, %fuse_conn_limit_write.exit.thread
  %retval.0.i27 = phi i32 [ -22, %fuse_conn_limit_write.exit.thread ], [ %retval.0.i, %fuse_ctl_file_conn_get.exit.if.end10_crit_edge ], [ %retval.0.i, %if.end ], [ %retval.0.i, %fuse_conn_limit_write.exit.if.end10_crit_edge ], [ %retval.0.i, %fuse_ctl_file_conn_get.exit.thread ]
  ret i32 %retval.0.i27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_conn_congestion_threshold_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #0 align 64 {
entry:
  %tmp.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fuse_mutex, i32 noundef 0) #7
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %fuse_ctl_file_conn_get.exit.thread, label %fuse_ctl_file_conn_get.exit

fuse_ctl_file_conn_get.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  br label %cleanup

fuse_ctl_file_conn_get.exit:                      ; preds = %entry
  %call1.i = tail call ptr @fuse_conn_get(ptr noundef nonnull %3) #7
  tail call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %fuse_ctl_file_conn_get.exit.cleanup_crit_edge, label %do.end

fuse_ctl_file_conn_get.exit.cleanup_crit_edge:    ; preds = %fuse_ctl_file_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %fuse_ctl_file_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %congestion_threshold = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 16
  %4 = ptrtoint ptr %congestion_threshold to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %congestion_threshold, align 8
  tail call void @fuse_conn_put(ptr noundef nonnull %call1.i) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #7
  %6 = call ptr @memset(ptr %tmp.i, i32 255, i32 32)
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp.i, ptr noundef nonnull @.str.6, i32 noundef %5) #7
  %call2.i = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %ppos, ptr noundef nonnull %tmp.i, i32 noundef %call.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %fuse_ctl_file_conn_get.exit.cleanup_crit_edge, %fuse_ctl_file_conn_get.exit.thread
  %retval.0 = phi i32 [ %call2.i, %do.end ], [ 0, %fuse_ctl_file_conn_get.exit.cleanup_crit_edge ], [ 0, %fuse_ctl_file_conn_get.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_conn_congestion_threshold_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %t.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_user_congthresh to i32))
  %0 = load i32, ptr @max_user_congthresh, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %1 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %t.i, align 4, !annotation !47
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fuse_conn_limit_write.exit.thread_crit_edge

entry.fuse_conn_limit_write.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fuse_conn_limit_write.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @kstrtoul_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.fuse_conn_limit_write.exit_crit_edge

if.end.i.fuse_conn_limit_write.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fuse_conn_limit_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call zeroext i1 @capable(i32 noundef 21) #7
  %4 = call i32 @llvm.umin.i32(i32 %0, i32 65535) #7
  %limit.0.i = select i1 %call4.i, i32 65535, i32 %4
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %limit.0.i)
  %cmp7.i = icmp ugt i32 %6, %limit.0.i
  br i1 %cmp7.i, label %if.end3.i.fuse_conn_limit_write.exit.thread_crit_edge, label %if.end3.i.fuse_conn_limit_write.exit_crit_edge

if.end3.i.fuse_conn_limit_write.exit_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fuse_conn_limit_write.exit

if.end3.i.fuse_conn_limit_write.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fuse_conn_limit_write.exit.thread

fuse_conn_limit_write.exit.thread:                ; preds = %if.end3.i.fuse_conn_limit_write.exit.thread_crit_edge, %entry.fuse_conn_limit_write.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  br label %out

fuse_conn_limit_write.exit:                       ; preds = %if.end3.i.fuse_conn_limit_write.exit_crit_edge, %if.end.i.fuse_conn_limit_write.exit_crit_edge
  %val.0 = phi i32 [ -1, %if.end.i.fuse_conn_limit_write.exit_crit_edge ], [ %6, %if.end3.i.fuse_conn_limit_write.exit_crit_edge ]
  %retval.0.i = phi i32 [ %call.i, %if.end.i.fuse_conn_limit_write.exit_crit_edge ], [ %count, %if.end3.i.fuse_conn_limit_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %fuse_conn_limit_write.exit.out_crit_edge, label %if.end

fuse_conn_limit_write.exit.out_crit_edge:         ; preds = %fuse_conn_limit_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %fuse_conn_limit_write.exit
  call void @mutex_lock_nested(ptr noundef nonnull @fuse_mutex, i32 noundef 0) #7
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %7 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 54
  %9 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_private.i, align 4
  %tobool.not.i36 = icmp eq ptr %10, null
  br i1 %tobool.not.i36, label %fuse_ctl_file_conn_get.exit.thread, label %fuse_ctl_file_conn_get.exit

fuse_ctl_file_conn_get.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  br label %out

fuse_ctl_file_conn_get.exit:                      ; preds = %if.end
  %call1.i = call ptr @fuse_conn_get(ptr noundef nonnull %10) #7
  call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %fuse_ctl_file_conn_get.exit.out_crit_edge, label %if.end3

fuse_ctl_file_conn_get.exit.out_crit_edge:        ; preds = %fuse_ctl_file_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3:                                          ; preds = %fuse_ctl_file_conn_get.exit
  %killsb = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 36
  call void @down_read(ptr noundef %killsb) #7
  %bg_lock = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %bg_lock) #7
  %congestion_threshold = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 16
  %11 = ptrtoint ptr %congestion_threshold to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %val.0, ptr %congestion_threshold, align 8
  %mounts = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 38
  %12 = ptrtoint ptr %mounts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %mounts, align 4
  %cmp.i.not = icmp eq ptr %13, %mounts
  br i1 %cmp.i.not, label %if.end3.if.end18_crit_edge, label %if.then6

if.end3.if.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then6:                                         ; preds = %if.end3
  %num_background = getelementptr inbounds %struct.fuse_conn, ptr %call1.i, i32 0, i32 17
  %14 = ptrtoint ptr %num_background to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_background, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %val.0)
  %cmp9 = icmp ult i32 %15, %val.0
  %sb = getelementptr i8, ptr %13, i32 -4
  %16 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sb, align 4
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %s_bdi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_bdi, align 8
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  call void @clear_bdi_congested(ptr noundef %19, i32 noundef 1) #7
  %20 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sb, align 4
  %s_bdi12 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %s_bdi12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_bdi12, align 8
  call void @clear_bdi_congested(ptr noundef %23, i32 noundef 0) #7
  br label %if.end18

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  call void @set_bdi_congested(ptr noundef %19, i32 noundef 1) #7
  %24 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sb, align 4
  %s_bdi16 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %s_bdi16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_bdi16, align 8
  call void @set_bdi_congested(ptr noundef %27, i32 noundef 0) #7
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then10, %if.end3.if.end18_crit_edge
  call void @_raw_spin_unlock(ptr noundef %bg_lock) #7
  call void @up_read(ptr noundef %killsb) #7
  call void @fuse_conn_put(ptr noundef nonnull %call1.i) #7
  br label %out

out:                                              ; preds = %if.end18, %fuse_ctl_file_conn_get.exit.out_crit_edge, %fuse_ctl_file_conn_get.exit.thread, %fuse_conn_limit_write.exit.out_crit_edge, %fuse_conn_limit_write.exit.thread
  %retval.0.i41 = phi i32 [ -22, %fuse_conn_limit_write.exit.thread ], [ %retval.0.i, %fuse_ctl_file_conn_get.exit.out_crit_edge ], [ %retval.0.i, %fuse_conn_limit_write.exit.out_crit_edge ], [ %retval.0.i, %if.end18 ], [ %retval.0.i, %fuse_ctl_file_conn_get.exit.thread ]
  ret i32 %retval.0.i41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_bdi_congested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_bdi_congested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fuse_ctl_init_fs_context(ptr nocapture noundef writeonly %fsc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fsc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fuse_ctl_context_ops, ptr %fsc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fuse_ctl_kill_sb(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fuse_mutex, i32 noundef 0) #7
  store ptr null, ptr @fuse_control_sb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fuse_conn_list to i32))
  %.pn8 = load ptr, ptr @fuse_conn_list, align 4
  %cmp.not9 = icmp eq ptr %.pn8, @fuse_conn_list
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn10 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn8, %entry.for.body_crit_edge ]
  %ctl_ndents = getelementptr i8, ptr %.pn10, i32 32
  %0 = ptrtoint ptr %ctl_ndents to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ctl_ndents, align 8
  %1 = ptrtoint ptr %.pn10 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn10, align 4
  %cmp.not = icmp eq ptr %.pn, @fuse_conn_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  tail call void @kill_litter_super(ptr noundef %sb) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_ctl_get_tree(ptr noundef %fsc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_single(ptr noundef %fsc, ptr noundef nonnull @fuse_ctl_fill_super) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_ctl_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %fsc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_fill_super(ptr noundef %sb, i32 noundef 1702057283, ptr noundef nonnull @fuse_ctl_fill_super.empty_descr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @fuse_mutex, i32 noundef 0) #7
  %0 = load ptr, ptr @fuse_control_sb, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %do.end11, label %do.body5, !prof !48

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/control.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 342, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

do.end11:                                         ; preds = %if.end
  store ptr %sb, ptr @fuse_control_sb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end11
  %.pn.in = phi ptr [ @fuse_conn_list, %do.end11 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @fuse_conn_list
  br i1 %cmp.not, label %for.cond.cleanup.sink.split_crit_edge, label %for.body

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.cond
  %fc.0 = getelementptr i8, ptr %.pn, i32 -432
  %call15 = tail call i32 @fuse_ctl_add_conn(ptr noundef %fc.0)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.body.for.cond_crit_edge, label %if.then17

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  store ptr null, ptr @fuse_control_sb, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17, %for.cond.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call15, %if.then17 ], [ 0, %for.cond.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @fuse_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/fuse/control.c", i32 283, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/fuse/control.c", i32 290, i32 39}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/fuse/control.c", i32 292, i32 39}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/fuse/control.c", i32 294, i32 39}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/fuse/control.c", i32 296, i32 39}
!10 = !{ptr @__UNIQUE_ID_alias274, !11, !"__UNIQUE_ID_alias274", i1 false, i1 false}
!11 = !{!"../fs/fuse/control.c", i32 391, i32 1}
!12 = !{ptr @fuse_control_sb, !13, !"fuse_control_sb", i1 false, i1 false}
!13 = !{!"../fs/fuse/control.c", i32 21, i32 28}
!14 = !{ptr @fuse_ctl_waiting_ops, !15, !"fuse_ctl_waiting_ops", i1 false, i1 false}
!15 = !{!"../fs/fuse/control.c", i32 210, i32 37}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/fuse/control.c", i32 63, i32 22}
!18 = !{ptr @fuse_ctl_abort_ops, !19, !"fuse_ctl_abort_ops", i1 false, i1 false}
!19 = !{!"../fs/fuse/control.c", i32 204, i32 37}
!20 = !{ptr @fuse_conn_max_background_ops, !21, !"fuse_conn_max_background_ops", i1 false, i1 false}
!21 = !{!"../fs/fuse/control.c", i32 216, i32 37}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/fuse/control.c", i32 71, i32 29}
!24 = !{ptr @fuse_conn_congestion_threshold_ops, !25, !"fuse_conn_congestion_threshold_ops", i1 false, i1 false}
!25 = !{!"../fs/fuse/control.c", i32 223, i32 37}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/fuse/control.c", i32 387, i32 11}
!28 = !{ptr @fuse_ctl_fs_type, !29, !"fuse_ctl_fs_type", i1 false, i1 false}
!29 = !{!"../fs/fuse/control.c", i32 385, i32 32}
!30 = !{ptr @fuse_ctl_context_ops, !31, !"fuse_ctl_context_ops", i1 false, i1 false}
!31 = !{!"../fs/fuse/control.c", i32 362, i32 43}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/fuse/control.c", i32 333, i32 48}
!34 = !{ptr @fuse_ctl_fill_super.empty_descr, !35, !"empty_descr", i1 false, i1 false}
!35 = !{!"../fs/fuse/control.c", i32 333, i32 33}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 2154738605, i64 2154739087, i64 2154738642, i64 2154738698, i64 2154738732, i64 2154738756, i64 2154738797, i64 2154738818, i64 2154738846, i64 2154738880}
!47 = !{!"auto-init"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2154740362, i64 2154740844, i64 2154740399, i64 2154740455, i64 2154740489, i64 2154740513, i64 2154740554, i64 2154740575, i64 2154740603, i64 2154740637}
