; ModuleID = '/llk/IR_all_yes/fs/ocfs2/resize.c_pt.bc'
source_filename = "../fs/ocfs2/resize.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
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
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.91, ptr }
%union.anon.91 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.80, %union.anon.84 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.80 = type { i64 }
%union.anon.84 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.85, [16 x i8] }
%union.anon.85 = type { i32 }
%struct.ocfs2_group_desc = type { [8 x i8], i16, i16, i16, i16, i32, i32, i64, i64, i64, %struct.ocfs2_block_check, i64, %union.anon.89 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { [256 x i8], %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i16, i16, i16, i16, i64, [0 x %struct.ocfs2_extent_rec] }
%struct.ocfs2_extent_rec = type { i32, %union.anon.87, i64 }
%union.anon.87 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ocfs2_chain_rec = type { i32, i32, i64 }
%struct.anon.82 = type { i32, i32 }
%struct.ocfs2_new_group_input = type { i64, i32, i32, i16, i16, i32 }

@__func__.ocfs2_group_extend = private unnamed_addr constant [19 x i8] c"ocfs2_group_extend\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INODE01\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"The disk is too old and small. Force to do offline resize.\00", [37 x i8] zeroinitializer }, align 32
@__func__.ocfs2_group_add = private unnamed_addr constant [16 x i8] c"ocfs2_group_add\00", align 1
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Can't read the group descriptor # %llu from the device.\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_group_extend = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_group_extend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_update_last_group_and_inode = private unnamed_addr constant [34 x i8] c"ocfs2_update_last_group_and_inode\00", align 1
@__tracepoint_ocfs2_update_last_group_and_inode = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_update_last_group_and_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_update_super_and_backups = private unnamed_addr constant [31 x i8] c"ocfs2_update_super_and_backups\00", align 1
@ocfs2_update_super_and_backups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.ocfs2_update_super_and_backups, ptr @.str.8, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [132 x i8], [60 x i8] } { [132 x i8] c"\014ocfs2: Failed to update super blocks on %s during fs resize. This condition is not fatal, but fsck.ocfs2 should be run to fix it\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ocfs2/resize.c\00", [46 x i8] zeroinitializer }, align 32
@ocfs2_update_super_and_backups._entry_ptr = internal global ptr @ocfs2_update_super_and_backups._entry, section ".printk_index", align 4
@__func__.update_backups = private unnamed_addr constant [15 x i8] c"update_backups\00", align 1
@__func__.ocfs2_verify_group_and_input = private unnamed_addr constant [29 x i8] c"ocfs2_verify_group_and_input\00", align 1
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"add a group which is in the current volume.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"input chain exceeds the limit.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"the add group should be in chain %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"add group's clusters overflow.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"the cluster exceeds the maximum of a group\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"the free cluster exceeds the total clusters\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"the last group isn't full. Use group extend first.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"group blkno is invalid\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"group descriptor check failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.ocfs2_check_new_group = private unnamed_addr constant [22 x i8] c"ocfs2_check_new_group\00", align 1
@.str.18 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Group descriptor # %llu has bad chain %u while input has %u set.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Group descriptor # %llu has bit count %u but input has %u clusters set\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Group descriptor # %llu has free bit count %u but it should have %u set\0A\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_group_add = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_group_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.23 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 284, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 300, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 305, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 494, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 772, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 108, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 245, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 420, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 422, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 424, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 427, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 429, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 431, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 433, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 436, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 438, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 385, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 390, i32 3 }
@___asan_gen_.101 = private constant [21 x i8] c"../fs/ocfs2/resize.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 395, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 271, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @ocfs2_update_super_and_backups._entry, ptr @ocfs2_update_super_and_backups._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_update_super_and_backups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_group_extend(ptr nocapture noundef readonly %inode, i32 noundef %new_clusters) local_unnamed_addr #0 align 64 {
entry:
  %main_bm_bh = alloca ptr, align 4
  %group_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m46 = alloca i64, align 8
  %_m80 = alloca i64, align 8
  %_m110 = alloca i64, align 8
  %_m154 = alloca i64, align 8
  %_m185 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %main_bm_bh) #9
  %0 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %main_bm_bh, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_bh) #9
  %1 = ptrtoint ptr %group_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %group_bh, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #9
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %7, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #9
  %8 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %osb_flags.i, align 8
  %and.i276 = and i32 %9, 1
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i276)
  %tobool2.not = icmp eq i32 %and.i276, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_clusters)
  %cmp = icmp slt i32 %new_clusters, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_clusters)
  %cmp4 = icmp eq i32 %new_clusters, 0
  br i1 %cmp4, label %if.else.cleanup_crit_edge, label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %call8 = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %5, i32 noundef 4, i32 noundef 65535) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.body, label %if.end24

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %10 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_group_extend, i32 noundef 284, ptr noundef nonnull @.str, i64 noundef -22) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end7
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %call25 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call8, ptr noundef nonnull %main_bm_bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end56

if.then28:                                        ; preds = %if.end24
  %11 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call25, label %do.body45 [
    i32 -512, label %if.then28.out_mutex_crit_edge
    i32 -4, label %if.then28.out_mutex_crit_edge281
    i32 -28, label %if.then28.out_mutex_crit_edge282
    i32 -122, label %if.then28.out_mutex_crit_edge283
  ]

if.then28.out_mutex_crit_edge283:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mutex

if.then28.out_mutex_crit_edge282:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mutex

if.then28.out_mutex_crit_edge281:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mutex

if.then28.out_mutex_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mutex

do.body45:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m46) #9
  %12 = ptrtoint ptr %_m46 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m46, align 8
  %conv50 = sext i32 %call25 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m46, ptr noundef nonnull @__func__.ocfs2_group_extend, i32 noundef 292, ptr noundef nonnull @.str, i64 noundef %conv50) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m46) #9
  br label %out_mutex

if.end56:                                         ; preds = %if.end24
  %13 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %main_bm_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  %call58 = call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(8) @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.end73, label %do.body65, !prof !75

do.body65:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #9, !srcloc !76
  unreachable

do.end73:                                         ; preds = %if.end56
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 35
  %17 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id2, align 8
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %conv74 = zext i16 %19 to i32
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sb, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = shl i32 %23, 3
  %mul = add i32 %sub.i, -512
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv74)
  %cmp76.not = icmp eq i32 %mul, %conv74
  br i1 %cmp76.not, label %if.end87, label %do.body79

do.body79:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m80) #9
  %24 = ptrtoint ptr %_m80 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1152921504606846976, ptr %_m80, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m80, ptr noundef nonnull @__func__.ocfs2_group_extend, i32 noundef 306, ptr noundef nonnull @.str.2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m80) #9
  br label %out_unlock

if.end87:                                         ; preds = %do.end73
  %i_clusters = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 6
  %25 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_clusters, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %sub = add i32 %27, -1
  %call88 = call i64 @ocfs2_which_cluster_group(ptr noundef nonnull %call8, i32 noundef %sub) #9
  %call89 = call i32 @ocfs2_read_group_descriptor(ptr noundef nonnull %call8, ptr noundef %16, i64 noundef %call88, ptr noundef nonnull %group_bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end120

if.then92:                                        ; preds = %if.end87
  %28 = zext i32 %call89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call89, label %do.body109 [
    i32 -512, label %if.then92.out_unlock_crit_edge
    i32 -4, label %if.then92.out_unlock_crit_edge284
    i32 -28, label %if.then92.out_unlock_crit_edge285
    i32 -122, label %if.then92.out_unlock_crit_edge286
  ]

if.then92.out_unlock_crit_edge286:                ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then92.out_unlock_crit_edge285:                ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then92.out_unlock_crit_edge284:                ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then92.out_unlock_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

do.body109:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m110) #9
  %29 = ptrtoint ptr %_m110 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1152921504606846976, ptr %_m110, align 8
  %conv114 = sext i32 %call89 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m110, ptr noundef nonnull @__func__.ocfs2_group_extend, i32 noundef 318, ptr noundef nonnull @.str, i64 noundef %conv114) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m110) #9
  br label %out_unlock

if.end120:                                        ; preds = %if.end87
  %30 = ptrtoint ptr %group_bh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %group_bh, align 4
  %b_data121 = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %b_data121 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data121, align 4
  %cl_bpc123 = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 35, i32 0, i32 1
  %34 = ptrtoint ptr %cl_bpc123 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cl_bpc123, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %33, i32 0, i32 2
  %37 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bg_bits, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %40 = udiv i16 %39, %36
  %div = zext i16 %40 to i32
  %add = add nuw i32 %div, %new_clusters
  %41 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %id2, align 8
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %conv128 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv128)
  %cmp129 = icmp sgt i32 %add, %conv128
  br i1 %cmp129, label %if.end120.out_unlock_crit_edge, label %if.end132

if.end120.out_unlock_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end132:                                        ; preds = %if.end120
  %bg_blkno = getelementptr inbounds %struct.ocfs2_group_desc, ptr %33, i32 0, i32 9
  %44 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %bg_blkno, align 8
  %46 = call i64 @llvm.bswap.i64(i64 %45)
  call fastcc void @trace_ocfs2_group_extend(i64 noundef %46, i32 noundef %new_clusters)
  %call133 = call ptr @ocfs2_start_trans(ptr noundef %5, i32 noundef 2) #9
  %cmp.i = icmp ugt ptr %call133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then135, label %if.end164

if.then135:                                       ; preds = %if.end132
  %47 = ptrtoint ptr %call133 to i32
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %47, label %do.body153 [
    i32 -512, label %if.then135.out_unlock_crit_edge
    i32 -4, label %if.then135.out_unlock_crit_edge287
    i32 524289, label %if.then135.out_unlock_crit_edge288
    i32 -28, label %if.then135.out_unlock_crit_edge289
    i32 -122, label %if.then135.out_unlock_crit_edge290
  ]

if.then135.out_unlock_crit_edge290:               ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then135.out_unlock_crit_edge289:               ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then135.out_unlock_crit_edge288:               ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then135.out_unlock_crit_edge287:               ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then135.out_unlock_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

do.body153:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m154) #9
  %49 = ptrtoint ptr %_m154 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1152921504606846976, ptr %_m154, align 8
  %conv158 = sext i32 %47 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m154, ptr noundef nonnull @__func__.ocfs2_group_extend, i32 noundef 336, ptr noundef nonnull @.str, i64 noundef %conv158) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m154) #9
  br label %out_unlock

if.end164:                                        ; preds = %if.end132
  %50 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %main_bm_bh, align 4
  %52 = ptrtoint ptr %group_bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %group_bh, align 4
  %call165 = call fastcc i32 @ocfs2_update_last_group_and_inode(ptr noundef %call133, ptr noundef nonnull %call8, ptr noundef %51, ptr noundef %53, i32 noundef %27, i32 noundef %new_clusters)
  %54 = zext i32 %call165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call165, label %do.body184 [
    i32 0, label %if.end195
    i32 -512, label %if.end164.out_commit_crit_edge
    i32 -4, label %if.end164.out_commit_crit_edge291
    i32 524289, label %if.end164.out_commit_crit_edge292
    i32 -28, label %if.end164.out_commit_crit_edge293
    i32 -122, label %if.end164.out_commit_crit_edge294
  ]

if.end164.out_commit_crit_edge294:                ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

if.end164.out_commit_crit_edge293:                ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

if.end164.out_commit_crit_edge292:                ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

if.end164.out_commit_crit_edge291:                ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

if.end164.out_commit_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

do.body184:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m185) #9
  %55 = ptrtoint ptr %_m185 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1152921504606846976, ptr %_m185, align 8
  %conv189 = sext i32 %call165 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m185, ptr noundef nonnull @__func__.ocfs2_group_extend, i32 noundef 347, ptr noundef nonnull @.str, i64 noundef %conv189) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m185) #9
  br label %out_commit

if.end195:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ocfs2_update_super_and_backups(ptr noundef nonnull %call8, i32 noundef %new_clusters)
  br label %out_commit

out_commit:                                       ; preds = %if.end195, %do.body184, %if.end164.out_commit_crit_edge, %if.end164.out_commit_crit_edge291, %if.end164.out_commit_crit_edge292, %if.end164.out_commit_crit_edge293, %if.end164.out_commit_crit_edge294
  %call196 = call i32 @ocfs2_commit_trans(ptr noundef %5, ptr noundef %call133) #9
  br label %out_unlock

out_unlock:                                       ; preds = %out_commit, %do.body153, %if.then135.out_unlock_crit_edge, %if.then135.out_unlock_crit_edge287, %if.then135.out_unlock_crit_edge288, %if.then135.out_unlock_crit_edge289, %if.then135.out_unlock_crit_edge290, %if.end120.out_unlock_crit_edge, %do.body109, %if.then92.out_unlock_crit_edge, %if.then92.out_unlock_crit_edge284, %if.then92.out_unlock_crit_edge285, %if.then92.out_unlock_crit_edge286, %do.body79
  %ret.0 = phi i32 [ -22, %do.body79 ], [ %call165, %out_commit ], [ %call89, %if.then92.out_unlock_crit_edge ], [ %call89, %if.then92.out_unlock_crit_edge284 ], [ %call89, %if.then92.out_unlock_crit_edge285 ], [ %call89, %if.then92.out_unlock_crit_edge286 ], [ %call89, %do.body109 ], [ -22, %if.end120.out_unlock_crit_edge ], [ -22, %if.then135.out_unlock_crit_edge ], [ -22, %if.then135.out_unlock_crit_edge287 ], [ -22, %if.then135.out_unlock_crit_edge288 ], [ -22, %if.then135.out_unlock_crit_edge289 ], [ -22, %if.then135.out_unlock_crit_edge290 ], [ -22, %do.body153 ]
  %56 = ptrtoint ptr %group_bh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %group_bh, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %out_unlock.brelse.exit_crit_edge, label %if.then.i

out_unlock.brelse.exit_crit_edge:                 ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %57) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out_unlock.brelse.exit_crit_edge
  %58 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %main_bm_bh, align 4
  %tobool.not.i277 = icmp eq ptr %59, null
  br i1 %tobool.not.i277, label %brelse.exit.brelse.exit279_crit_edge, label %if.then.i278

brelse.exit.brelse.exit279_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit279

if.then.i278:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %59) #9
  br label %brelse.exit279

brelse.exit279:                                   ; preds = %if.then.i278, %brelse.exit.brelse.exit279_crit_edge
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call8, i32 noundef 1) #9
  br label %out_mutex

out_mutex:                                        ; preds = %brelse.exit279, %do.body45, %if.then28.out_mutex_crit_edge, %if.then28.out_mutex_crit_edge281, %if.then28.out_mutex_crit_edge282, %if.then28.out_mutex_crit_edge283
  %ret.1 = phi i32 [ %ret.0, %brelse.exit279 ], [ %call25, %if.then28.out_mutex_crit_edge ], [ %call25, %if.then28.out_mutex_crit_edge281 ], [ %call25, %if.then28.out_mutex_crit_edge282 ], [ %call25, %if.then28.out_mutex_crit_edge283 ], [ %call25, %do.body45 ]
  call void @up_write(ptr noundef %i_rwsem.i) #9
  call void @iput(ptr noundef nonnull %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %out_mutex, %do.body, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %lor.lhs.false.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %ret.1, %out_mutex ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %main_bm_bh) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_get_system_file_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ocfs2_which_cluster_group(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_group_descriptor(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_group_extend(i64 noundef %val1, i32 noundef %val2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_group_extend, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_group_extend, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !75

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %call42 = tail call i32 @__traceiter_ocfs2_group_extend(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !75

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_group_extend, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_group_extend, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_group_extend.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_group_extend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 772, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_start_trans(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_update_last_group_and_inode(ptr noundef %handle, ptr noundef %bm_inode, ptr noundef %bm_bh, ptr noundef %group_bh, i32 noundef %first_new_cluster, i32 noundef %new_clusters) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m55 = alloca i64, align 8
  %_m117 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %bm_inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bm_bh, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 35
  %cl_bpc1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 35, i32 0, i32 1
  %6 = ptrtoint ptr %cl_bpc1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cl_bpc1, align 2
  %8 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id2, align 8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call fastcc void @trace_ocfs2_update_last_group_and_inode(i32 noundef %new_clusters, i32 noundef %first_new_cluster)
  %ip_metadata_cache.i = getelementptr i8, ptr %bm_inode, i32 -56
  %call3 = tail call i32 @ocfs2_journal_access_gd(ptr noundef %handle, ptr noundef %ip_metadata_cache.i, ptr noundef %group_bh, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %11 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call3, label %do.body [
    i32 -512, label %if.then.out_crit_edge
    i32 -4, label %if.then.out_crit_edge270
    i32 -28, label %if.then.out_crit_edge271
    i32 -122, label %if.then.out_crit_edge272
  ]

if.then.out_crit_edge272:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.out_crit_edge271:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.out_crit_edge270:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call3 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_update_last_group_and_inode, i32 noundef 101, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out

if.end15:                                         ; preds = %entry
  %13 = tail call i16 @llvm.bswap.i16(i16 %7)
  %b_data16 = getelementptr inbounds %struct.buffer_head, ptr %group_bh, i32 0, i32 5
  %14 = ptrtoint ptr %b_data16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data16, align 4
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bg_bits, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = udiv i16 %18, %13
  %20 = trunc i32 %new_clusters to i16
  %conv21 = mul i16 %13, %20
  %add.i = add i16 %18, %conv21
  %21 = tail call i16 @llvm.bswap.i16(i16 %add.i) #9
  %22 = ptrtoint ptr %bg_bits to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %bg_bits, align 2
  %bg_free_bits_count = getelementptr inbounds %struct.ocfs2_group_desc, ptr %15, i32 0, i32 3
  %23 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bg_free_bits_count, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #9
  %add.i205 = add i16 %25, %conv21
  %26 = tail call i16 @llvm.bswap.i16(i16 %add.i205) #9
  %27 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %bg_free_bits_count, align 2
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sb, align 4
  %s_fs_info23 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info23, align 16
  %s_feature_compat = getelementptr inbounds %struct.ocfs2_super, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %s_feature_compat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_feature_compat, align 4
  %and24 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end15.if.end32_crit_edge, label %if.then26

if.end15.if.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then26:                                        ; preds = %if.end15
  %bg_blkno.i = getelementptr inbounds %struct.ocfs2_group_desc, ptr %15, i32 0, i32 9
  %34 = ptrtoint ptr %bg_blkno.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bg_blkno.i, align 8
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #9
  %conv.i = zext i16 %19 to i32
  %conv15.i = zext i16 %10 to i32
  %37 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %15, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then26
  %backups.055.i = phi i16 [ 0, %if.then26 ], [ %backups.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.054.i = phi i32 [ 0, %if.then26 ], [ %inc21.i, %for.inc.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %mul.i.i = shl nuw nsw i32 %i.054.i, 1
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shl.i.i = shl nuw nsw i64 1073741824, %sh_prom.i.i
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %sh_prom2.i.i = zext i8 %41 to i64
  %shr.i.i = lshr i64 %shl.i.i, %sh_prom2.i.i
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %42 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %43, i32 0, i32 36
  %44 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %conv.i.i = zext i8 %41 to i32
  %sub.i.i = sub i32 %45, %conv.i.i
  %sh_prom.i39.i = zext i32 %sub.i.i to i64
  %shr.i40.i = lshr i64 %shr.i.i, %sh_prom.i39.i
  %conv1.i.i = trunc i64 %shr.i40.i to i32
  %call3.i = tail call i64 @ocfs2_which_cluster_group(ptr noundef %bm_inode, i32 noundef %conv1.i.i) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %36)
  %cmp4.i = icmp ult i64 %call3.i, %36
  br i1 %cmp4.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %36)
  %cmp5.i = icmp ugt i64 %call3.i, %36
  br i1 %cmp5.i, label %if.else.i.ocfs2_calc_new_backup_super.exit_crit_edge, label %if.end7.i

if.else.i.ocfs2_calc_new_backup_super.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_calc_new_backup_super.exit

if.end7.i:                                        ; preds = %if.else.i
  %46 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i41.i = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info.i41.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i41.i, align 16
  %s_clustersize_bits.i42.i = getelementptr inbounds %struct.ocfs2_super, ptr %49, i32 0, i32 36
  %50 = ptrtoint ptr %s_clustersize_bits.i42.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_clustersize_bits.i42.i, align 8
  %s_blocksize_bits.i43.i = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 2
  %52 = ptrtoint ptr %s_blocksize_bits.i43.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %s_blocksize_bits.i43.i, align 4
  %conv.i44.i = zext i8 %53 to i32
  %sub.i45.i = sub i32 %51, %conv.i44.i
  %sh_prom.i46.i = zext i32 %sub.i45.i to i64
  %shr.i47.i = lshr i64 %36, %sh_prom.i46.i
  %conv1.i48.i = trunc i64 %shr.i47.i to i32
  %add.i206 = add i32 %conv1.i48.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i206, i32 %conv1.i.i)
  %cmp10.not.i = icmp ult i32 %add.i206, %conv1.i.i
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %rem18.i = urem i32 %conv1.i.i, %conv15.i
  %xor.i.i49.i = and i32 %rem18.i, 31
  %rem.i.i.i50.i = xor i32 %xor.i.i49.i, 24
  %shl.i.i.i51.i = shl nuw i32 1, %rem.i.i.i50.i
  %div2.i.i.i52.i = lshr i32 %rem18.i, 5
  %add.ptr.i.i.i53.i = getelementptr i32, ptr %37, i32 %div2.i.i.i52.i
  %54 = ptrtoint ptr %add.ptr.i.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i.i53.i, align 4
  %or.i.i.i.i = or i32 %shl.i.i.i51.i, %55
  store i32 %or.i.i.i.i, ptr %add.ptr.i.i.i53.i, align 4
  %inc.i = add i16 %backups.055.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %if.end7.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %backups.1.i = phi i16 [ %backups.055.i, %for.body.i.for.inc.i_crit_edge ], [ %backups.055.i, %if.end7.i.for.inc.i_crit_edge ], [ %inc.i, %if.end13.i ]
  %inc21.i = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, 6
  br i1 %exitcond.not.i, label %for.inc.i.ocfs2_calc_new_backup_super.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.ocfs2_calc_new_backup_super.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_calc_new_backup_super.exit

ocfs2_calc_new_backup_super.exit:                 ; preds = %for.inc.i.ocfs2_calc_new_backup_super.exit_crit_edge, %if.else.i.ocfs2_calc_new_backup_super.exit_crit_edge
  %backups.0.lcssa.i = phi i16 [ %backups.055.i, %if.else.i.ocfs2_calc_new_backup_super.exit_crit_edge ], [ %backups.1.i, %for.inc.i.ocfs2_calc_new_backup_super.exit_crit_edge ]
  %56 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bg_free_bits_count, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #9
  %add.i207 = sub i16 %58, %backups.0.lcssa.i
  %59 = tail call i16 @llvm.bswap.i16(i16 %add.i207) #9
  %60 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %bg_free_bits_count, align 2
  br label %if.end32

if.end32:                                         ; preds = %ocfs2_calc_new_backup_super.exit, %if.end15.if.end32_crit_edge
  %backups.0 = phi i16 [ %backups.0.lcssa.i, %ocfs2_calc_new_backup_super.exit ], [ 0, %if.end15.if.end32_crit_edge ]
  tail call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %group_bh) #9
  %call34 = tail call i32 @ocfs2_journal_access_di(ptr noundef %handle, ptr noundef %ip_metadata_cache.i, ptr noundef %bm_bh, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end65

if.then37:                                        ; preds = %if.end32
  %61 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call34, label %do.body54 [
    i32 -512, label %if.then37.if.then86_crit_edge
    i32 -4, label %if.then37.if.then86_crit_edge273
    i32 -28, label %if.then37.if.then86_crit_edge274
    i32 -122, label %if.then37.if.then86_crit_edge275
  ]

if.then37.if.then86_crit_edge275:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

if.then37.if.then86_crit_edge274:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

if.then37.if.then86_crit_edge273:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

if.then37.if.then86_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

do.body54:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55) #9
  %62 = ptrtoint ptr %_m55 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 1152921504606846976, ptr %_m55, align 8
  %conv59 = sext i32 %call34 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55, ptr noundef nonnull @__func__.ocfs2_update_last_group_and_inode, i32 noundef 131, ptr noundef nonnull @.str, i64 noundef %conv59) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55) #9
  br label %if.then86

if.end65:                                         ; preds = %if.end32
  %bg_chain = getelementptr inbounds %struct.ocfs2_group_desc, ptr %15, i32 0, i32 4
  %63 = ptrtoint ptr %bg_chain to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %bg_chain, align 2
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %cl_recs = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 35, i32 0, i32 7
  %idxprom = zext i16 %65 to i32
  %arrayidx = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %idxprom
  %c_total = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %idxprom, i32 1
  %conv66 = zext i16 %conv21 to i32
  %66 = ptrtoint ptr %c_total to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %c_total, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #9
  %add.i209 = add i32 %68, %conv66
  %69 = tail call i32 @llvm.bswap.i32(i32 %add.i209) #9
  %70 = ptrtoint ptr %c_total to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %c_total, align 4
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #9
  %add.i210 = add i32 %73, %conv66
  %74 = tail call i32 @llvm.bswap.i32(i32 %add.i210) #9
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx, align 4
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 34
  %i_total = getelementptr inbounds %struct.anon.82, ptr %id1, i32 0, i32 1
  %76 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i_total, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  %add.i211 = add i32 %78, %conv66
  %79 = tail call i32 @llvm.bswap.i32(i32 %add.i211) #9
  %80 = ptrtoint ptr %i_total to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %i_total, align 4
  %i_clusters = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 6
  %81 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i_clusters, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #9
  %add.i212 = add i32 %83, %new_clusters
  %84 = tail call i32 @llvm.bswap.i32(i32 %add.i212) #9
  %85 = ptrtoint ptr %i_clusters to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %i_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %backups.0)
  %tobool69.not = icmp eq i16 %backups.0, 0
  br i1 %tobool69.not, label %if.end65.if.end76_crit_edge, label %if.then70

if.end65.if.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %conv72 = zext i16 %backups.0 to i32
  %add.i213 = sub i32 %add.i210, %conv72
  %86 = tail call i32 @llvm.bswap.i32(i32 %add.i213) #9
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx, align 4
  %88 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id1, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #9
  %add.i214 = add i32 %90, %conv72
  %91 = tail call i32 @llvm.bswap.i32(i32 %add.i214) #9
  %92 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %id1, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %if.end65.if.end76_crit_edge
  %ip_lock = getelementptr i8, ptr %bm_inode, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #9
  %93 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %i_clusters, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  %ip_clusters = getelementptr i8, ptr %bm_inode, i32 -176
  %96 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %ip_clusters, align 8
  %i_size = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 9
  %conv80 = sext i32 %new_clusters to i64
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 36
  %97 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s_clustersize_bits, align 8
  %sh_prom = zext i32 %98 to i64
  %shl = shl i64 %conv80, %sh_prom
  %99 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %i_size, align 8
  %101 = tail call i64 @llvm.bswap.i64(i64 %100) #9
  %add.i216 = add i64 %101, %shl
  %102 = tail call i64 @llvm.bswap.i64(i64 %add.i216) #9
  %103 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %i_size, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #9
  %104 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %i_size, align 8
  %106 = tail call i64 @llvm.bswap.i64(i64 %105)
  tail call fastcc void @i_size_write(ptr noundef %bm_inode, i64 noundef %106)
  tail call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %bm_bh) #9
  br label %out

if.then86:                                        ; preds = %do.body54, %if.then37.if.then86_crit_edge, %if.then37.if.then86_crit_edge273, %if.then37.if.then86_crit_edge274, %if.then37.if.then86_crit_edge275
  %bg_blkno.i218 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %15, i32 0, i32 9
  %107 = ptrtoint ptr %bg_blkno.i218 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %bg_blkno.i218, align 8
  %109 = call i64 @llvm.bswap.i64(i64 %108) #9
  %conv.i220 = zext i16 %19 to i32
  %conv15.i221 = zext i16 %10 to i32
  %110 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %15, i32 0, i32 12
  br label %for.body.i239

for.body.i239:                                    ; preds = %for.inc.i264.for.body.i239_crit_edge, %if.then86
  %i.054.i223 = phi i32 [ 0, %if.then86 ], [ %inc21.i262, %for.inc.i264.for.body.i239_crit_edge ]
  %111 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_sb, align 4
  %mul.i.i224 = shl nuw nsw i32 %i.054.i223, 1
  %sh_prom.i.i225 = zext i32 %mul.i.i224 to i64
  %shl.i.i226 = shl nuw nsw i64 1073741824, %sh_prom.i.i225
  %s_blocksize_bits.i.i227 = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %s_blocksize_bits.i.i227 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %s_blocksize_bits.i.i227, align 4
  %sh_prom2.i.i228 = zext i8 %114 to i64
  %shr.i.i229 = lshr i64 %shl.i.i226, %sh_prom2.i.i228
  %s_fs_info.i.i230 = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 33
  %115 = ptrtoint ptr %s_fs_info.i.i230 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_fs_info.i.i230, align 16
  %s_clustersize_bits.i.i231 = getelementptr inbounds %struct.ocfs2_super, ptr %116, i32 0, i32 36
  %117 = ptrtoint ptr %s_clustersize_bits.i.i231 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %s_clustersize_bits.i.i231, align 8
  %conv.i.i232 = zext i8 %114 to i32
  %sub.i.i233 = sub i32 %118, %conv.i.i232
  %sh_prom.i39.i234 = zext i32 %sub.i.i233 to i64
  %shr.i40.i235 = lshr i64 %shr.i.i229, %sh_prom.i39.i234
  %conv1.i.i236 = trunc i64 %shr.i40.i235 to i32
  %call3.i237 = call i64 @ocfs2_which_cluster_group(ptr noundef %bm_inode, i32 noundef %conv1.i.i236) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i237, i64 %109)
  %cmp4.i238 = icmp ult i64 %call3.i237, %109
  br i1 %cmp4.i238, label %for.body.i239.for.inc.i264_crit_edge, label %if.else.i241

for.body.i239.for.inc.i264_crit_edge:             ; preds = %for.body.i239
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i264

if.else.i241:                                     ; preds = %for.body.i239
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i237, i64 %109)
  %cmp5.i240 = icmp ugt i64 %call3.i237, %109
  br i1 %cmp5.i240, label %if.else.i241.ocfs2_calc_new_backup_super.exit266_crit_edge, label %if.end7.i252

if.else.i241.ocfs2_calc_new_backup_super.exit266_crit_edge: ; preds = %if.else.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_calc_new_backup_super.exit266

if.end7.i252:                                     ; preds = %if.else.i241
  %119 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i41.i242 = getelementptr inbounds %struct.super_block, ptr %120, i32 0, i32 33
  %121 = ptrtoint ptr %s_fs_info.i41.i242 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i41.i242, align 16
  %s_clustersize_bits.i42.i243 = getelementptr inbounds %struct.ocfs2_super, ptr %122, i32 0, i32 36
  %123 = ptrtoint ptr %s_clustersize_bits.i42.i243 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_clustersize_bits.i42.i243, align 8
  %s_blocksize_bits.i43.i244 = getelementptr inbounds %struct.super_block, ptr %120, i32 0, i32 2
  %125 = ptrtoint ptr %s_blocksize_bits.i43.i244 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %s_blocksize_bits.i43.i244, align 4
  %conv.i44.i245 = zext i8 %126 to i32
  %sub.i45.i246 = sub i32 %124, %conv.i44.i245
  %sh_prom.i46.i247 = zext i32 %sub.i45.i246 to i64
  %shr.i47.i248 = lshr i64 %109, %sh_prom.i46.i247
  %conv1.i48.i249 = trunc i64 %shr.i47.i248 to i32
  %add.i250 = add i32 %conv1.i48.i249, %conv.i220
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i250, i32 %conv1.i.i236)
  %cmp10.not.i251 = icmp ult i32 %add.i250, %conv1.i.i236
  br i1 %cmp10.not.i251, label %if.end13.i259, label %if.end7.i252.for.inc.i264_crit_edge

if.end7.i252.for.inc.i264_crit_edge:              ; preds = %if.end7.i252
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i264

if.end13.i259:                                    ; preds = %if.end7.i252
  call void @__sanitizer_cov_trace_pc() #11
  %rem18.i253 = urem i32 %conv1.i.i236, %conv15.i221
  %xor.i.i49.i254 = and i32 %rem18.i253, 31
  %rem.i.i.i50.i255 = xor i32 %xor.i.i49.i254, 24
  %shl.i.i.i51.i256 = shl nuw i32 1, %rem.i.i.i50.i255
  %div2.i.i.i52.i257 = lshr i32 %rem18.i253, 5
  %add.ptr.i.i.i53.i258 = getelementptr i32, ptr %110, i32 %div2.i.i.i52.i257
  %neg.i.i.i.i = xor i32 %shl.i.i.i51.i256, -1
  %127 = ptrtoint ptr %add.ptr.i.i.i53.i258 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr.i.i.i53.i258, align 4
  %and.i.i.i.i = and i32 %128, %neg.i.i.i.i
  store i32 %and.i.i.i.i, ptr %add.ptr.i.i.i53.i258, align 4
  br label %for.inc.i264

for.inc.i264:                                     ; preds = %if.end13.i259, %if.end7.i252.for.inc.i264_crit_edge, %for.body.i239.for.inc.i264_crit_edge
  %inc21.i262 = add nuw nsw i32 %i.054.i223, 1
  %exitcond.not.i263 = icmp eq i32 %inc21.i262, 6
  br i1 %exitcond.not.i263, label %for.inc.i264.ocfs2_calc_new_backup_super.exit266_crit_edge, label %for.inc.i264.for.body.i239_crit_edge

for.inc.i264.for.body.i239_crit_edge:             ; preds = %for.inc.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i239

for.inc.i264.ocfs2_calc_new_backup_super.exit266_crit_edge: ; preds = %for.inc.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocfs2_calc_new_backup_super.exit266

ocfs2_calc_new_backup_super.exit266:              ; preds = %for.inc.i264.ocfs2_calc_new_backup_super.exit266_crit_edge, %if.else.i241.ocfs2_calc_new_backup_super.exit266_crit_edge
  %129 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %bg_free_bits_count, align 2
  %131 = call i16 @llvm.bswap.i16(i16 %130) #9
  %add.i267 = add i16 %131, %backups.0
  %132 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %bg_bits, align 2
  %134 = call i16 @llvm.bswap.i16(i16 %133) #9
  %add.i268 = sub i16 %134, %conv21
  %135 = call i16 @llvm.bswap.i16(i16 %add.i268) #9
  %136 = ptrtoint ptr %bg_bits to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %bg_bits, align 2
  %add.i269 = sub i16 %add.i267, %conv21
  %137 = call i16 @llvm.bswap.i16(i16 %add.i269) #9
  %138 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %bg_free_bits_count, align 2
  br label %out

out:                                              ; preds = %ocfs2_calc_new_backup_super.exit266, %if.end76, %do.body, %if.then.out_crit_edge, %if.then.out_crit_edge270, %if.then.out_crit_edge271, %if.then.out_crit_edge272
  %ret.0 = phi i32 [ %call34, %ocfs2_calc_new_backup_super.exit266 ], [ %call3, %if.then.out_crit_edge ], [ %call3, %if.then.out_crit_edge270 ], [ %call3, %if.then.out_crit_edge271 ], [ %call3, %if.then.out_crit_edge272 ], [ %call3, %do.body ], [ %call34, %if.end76 ]
  %139 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %ret.0, label %do.body116 [
    i32 0, label %out.if.end127_crit_edge
    i32 -512, label %out.if.end127_crit_edge276
    i32 -4, label %out.if.end127_crit_edge277
    i32 524289, label %out.if.end127_crit_edge278
    i32 -28, label %out.if.end127_crit_edge279
    i32 -122, label %out.if.end127_crit_edge280
  ]

out.if.end127_crit_edge280:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

out.if.end127_crit_edge279:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

out.if.end127_crit_edge278:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

out.if.end127_crit_edge277:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

out.if.end127_crit_edge276:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

out.if.end127_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

do.body116:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m117) #9
  %140 = ptrtoint ptr %_m117 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 1152921504606846976, ptr %_m117, align 8
  %conv121 = sext i32 %ret.0 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m117, ptr noundef nonnull @__func__.ocfs2_update_last_group_and_inode, i32 noundef 166, ptr noundef nonnull @.str, i64 noundef %conv121) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m117) #9
  br label %if.end127

if.end127:                                        ; preds = %do.body116, %out.if.end127_crit_edge, %out.if.end127_crit_edge276, %out.if.end127_crit_edge277, %out.if.end127_crit_edge278, %out.if.end127_crit_edge279, %out.if.end127_crit_edge280
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_update_super_and_backups(ptr nocapture noundef readonly %inode, i32 noundef %new_clusters) unnamed_addr #0 align 64 {
entry:
  %backup.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m44.i = alloca i64, align 8
  %super_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m35 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %super_bh) #9
  %0 = ptrtoint ptr %super_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %super_bh, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  %call = call i32 @ocfs2_read_blocks_sync(ptr noundef %4, i64 noundef 2, i32 noundef 1, ptr noundef nonnull %super_bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %5 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call, label %do.body [
    i32 -512, label %if.then.out_crit_edge
    i32 -4, label %if.then.out_crit_edge89
    i32 -28, label %if.then.out_crit_edge90
    i32 -122, label %if.then.out_crit_edge91
  ]

if.then.out_crit_edge91:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.out_crit_edge90:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.out_crit_edge89:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_update_super_and_backups, i32 noundef 225, ptr noundef nonnull @.str, i64 noundef %conv) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out

if.end12:                                         ; preds = %entry
  %7 = ptrtoint ptr %super_bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %super_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %i_clusters = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_clusters, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #9
  %add.i = add i32 %13, %new_clusters
  %14 = call i32 @llvm.bswap.i32(i32 %add.i) #9
  %15 = ptrtoint ptr %i_clusters to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %i_clusters, align 4
  %call14 = call i32 @ocfs2_write_super_or_backup(ptr noundef %4, ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end45

if.then17:                                        ; preds = %if.end12
  %16 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call14, label %do.body34 [
    i32 -512, label %if.then17.out_crit_edge
    i32 -4, label %if.then17.out_crit_edge92
    i32 -28, label %if.then17.out_crit_edge93
    i32 -122, label %if.then17.out_crit_edge94
  ]

if.then17.out_crit_edge94:                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then17.out_crit_edge93:                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then17.out_crit_edge92:                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body34:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35) #9
  %17 = ptrtoint ptr %_m35 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606846976, ptr %_m35, align 8
  %conv39 = sext i32 %call14 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35, ptr noundef nonnull @__func__.ocfs2_update_super_and_backups, i32 noundef 235, ptr noundef nonnull @.str, i64 noundef %conv39) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35) #9
  br label %out

if.end45:                                         ; preds = %if.end12
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 1
  %18 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sb, align 4
  %s_fs_info46 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info46, align 16
  %s_feature_compat = getelementptr inbounds %struct.ocfs2_super, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %s_feature_compat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_feature_compat, align 4
  %and47 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.out_crit_edge, label %if.then49

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then49:                                        ; preds = %if.end45
  %24 = ptrtoint ptr %super_bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %super_bh, align 4
  %b_data50 = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %b_data50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data50, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %backup.i) #9
  %28 = ptrtoint ptr %backup.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %backup.i, align 4
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  br label %for.body.i

for.cond.i:                                       ; preds = %brelse.exit.i
  %inc.i = add nuw nsw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.cond.i.update_backups.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.update_backups.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_backups.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then49
  %i.087.i = phi i32 [ 0, %if.then49 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %ret.086.i = phi i32 [ 0, %if.then49 ], [ %call23.i, %for.cond.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %mul.i.i = shl nuw nsw i32 %i.087.i, 1
  %sh_prom.i.i = zext i32 %mul.i.i to i64
  %shl.i.i = shl nuw nsw i64 1073741824, %sh_prom.i.i
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %sh_prom2.i.i = zext i8 %36 to i64
  %shr.i.i = lshr i64 %shl.i.i, %sh_prom2.i.i
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %37 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %38, i32 0, i32 36
  %39 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %conv.i.i = zext i8 %36 to i32
  %sub.i.i = sub i32 %40, %conv.i.i
  %sh_prom.i80.i = zext i32 %sub.i.i to i64
  %shr.i81.i = lshr i64 %shr.i.i, %sh_prom.i80.i
  %conv1.i.i = trunc i64 %shr.i81.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv1.i.i)
  %cmp4.not.i = icmp ugt i32 %add.i, %conv1.i.i
  br i1 %cmp4.not.i, label %if.end.i, label %for.body.i.update_backups.exit_crit_edge

for.body.i.update_backups.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_backups.exit

if.end.i:                                         ; preds = %for.body.i
  %call5.i = call i32 @ocfs2_read_blocks_sync(ptr noundef %32, i64 noundef %shr.i.i, i32 noundef 1, ptr noundef nonnull %backup.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end20.i

if.then7.i:                                       ; preds = %if.end.i
  %41 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call5.i, label %do.body.i [
    i32 -512, label %if.then7.i.update_backups.exit_crit_edge
    i32 -4, label %if.then7.i.update_backups.exit_crit_edge95
    i32 -28, label %if.then7.i.update_backups.exit_crit_edge96
    i32 -122, label %if.then7.i.update_backups.exit_crit_edge97
  ]

if.then7.i.update_backups.exit_crit_edge97:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_backups.exit

if.then7.i.update_backups.exit_crit_edge96:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_backups.exit

if.then7.i.update_backups.exit_crit_edge95:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_backups.exit

if.then7.i.update_backups.exit_crit_edge:         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_backups.exit

do.body.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #9
  %42 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %call5.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.update_backups, i32 noundef 188, ptr noundef nonnull @.str, i64 noundef %conv.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #9
  br label %update_backups.exit

if.end20.i:                                       ; preds = %if.end.i
  %43 = ptrtoint ptr %backup.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %backup.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data.i, align 4
  %47 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_blocksize.i, align 16
  %51 = call ptr @memcpy(ptr %46, ptr %27, i32 %50)
  %52 = load ptr, ptr %backup.i, align 4
  %b_data22.i = getelementptr inbounds %struct.buffer_head, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %b_data22.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data22.i, align 4
  %55 = call i64 @llvm.bswap.i64(i64 %shr.i.i) #9
  %i_blkno.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %54, i32 0, i32 17
  %56 = ptrtoint ptr %i_blkno.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %i_blkno.i, align 8
  %call23.i = call i32 @ocfs2_write_super_or_backup(ptr noundef %32, ptr noundef %52) #9
  %57 = ptrtoint ptr %backup.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %backup.i, align 4
  %tobool.not.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i, label %if.end20.i.brelse.exit.i_crit_edge, label %if.then.i82.i

if.end20.i.brelse.exit.i_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i82.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %58) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i82.i, %if.end20.i.brelse.exit.i_crit_edge
  %59 = ptrtoint ptr %backup.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %backup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.then26.i, label %for.cond.i

if.then26.i:                                      ; preds = %brelse.exit.i
  %60 = zext i32 %call23.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call23.i, label %do.body43.i [
    i32 -512, label %if.then26.i.update_backups.exit_crit_edge
    i32 -4, label %if.then26.i.update_backups.exit_crit_edge98
    i32 -28, label %if.then26.i.update_backups.exit_crit_edge99
    i32 -122, label %if.then26.i.update_backups.exit_crit_edge100
  ]

if.then26.i.update_backups.exit_crit_edge100:     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_backups.exit

if.then26.i.update_backups.exit_crit_edge99:      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_backups.exit

if.then26.i.update_backups.exit_crit_edge98:      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_backups.exit

if.then26.i.update_backups.exit_crit_edge:        ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_backups.exit

do.body43.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m44.i) #9
  %61 = ptrtoint ptr %_m44.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 1152921504606846976, ptr %_m44.i, align 8
  %conv48.i = sext i32 %call23.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m44.i, ptr noundef nonnull @__func__.update_backups, i32 noundef 201, ptr noundef nonnull @.str, i64 noundef %conv48.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m44.i) #9
  br label %update_backups.exit

update_backups.exit:                              ; preds = %do.body43.i, %if.then26.i.update_backups.exit_crit_edge, %if.then26.i.update_backups.exit_crit_edge98, %if.then26.i.update_backups.exit_crit_edge99, %if.then26.i.update_backups.exit_crit_edge100, %do.body.i, %if.then7.i.update_backups.exit_crit_edge, %if.then7.i.update_backups.exit_crit_edge95, %if.then7.i.update_backups.exit_crit_edge96, %if.then7.i.update_backups.exit_crit_edge97, %for.body.i.update_backups.exit_crit_edge, %for.cond.i.update_backups.exit_crit_edge
  %ret.1.i = phi i32 [ %call5.i, %if.then7.i.update_backups.exit_crit_edge ], [ %call5.i, %if.then7.i.update_backups.exit_crit_edge95 ], [ %call5.i, %if.then7.i.update_backups.exit_crit_edge96 ], [ %call5.i, %if.then7.i.update_backups.exit_crit_edge97 ], [ %call5.i, %do.body.i ], [ %call23.i, %if.then26.i.update_backups.exit_crit_edge ], [ %call23.i, %if.then26.i.update_backups.exit_crit_edge98 ], [ %call23.i, %if.then26.i.update_backups.exit_crit_edge99 ], [ %call23.i, %if.then26.i.update_backups.exit_crit_edge100 ], [ %call23.i, %do.body43.i ], [ %ret.086.i, %for.body.i.update_backups.exit_crit_edge ], [ %call23.i, %for.cond.i.update_backups.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %backup.i) #9
  br label %out

out:                                              ; preds = %update_backups.exit, %if.end45.out_crit_edge, %do.body34, %if.then17.out_crit_edge, %if.then17.out_crit_edge92, %if.then17.out_crit_edge93, %if.then17.out_crit_edge94, %do.body, %if.then.out_crit_edge, %if.then.out_crit_edge89, %if.then.out_crit_edge90, %if.then.out_crit_edge91
  %ret.0 = phi i32 [ %ret.1.i, %update_backups.exit ], [ %call14, %if.end45.out_crit_edge ], [ 1, %if.then.out_crit_edge ], [ 1, %if.then.out_crit_edge89 ], [ 1, %if.then.out_crit_edge90 ], [ 1, %if.then.out_crit_edge91 ], [ 1, %do.body ], [ 1, %if.then17.out_crit_edge ], [ 1, %if.then17.out_crit_edge92 ], [ 1, %if.then17.out_crit_edge93 ], [ 1, %if.then17.out_crit_edge94 ], [ 1, %do.body34 ]
  %62 = ptrtoint ptr %super_bh to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %super_bh, align 4
  %tobool.not.i = icmp eq ptr %63, null
  br i1 %tobool.not.i, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %63) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool53.not = icmp eq i32 %ret.0, 0
  br i1 %tobool53.not, label %brelse.exit.if.end60_crit_edge, label %do.end57

brelse.exit.if.end60_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.end57:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev_str = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 61
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %dev_str) #13
  br label %if.end60

if.end60:                                         ; preds = %do.end57, %brelse.exit.if.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %super_bh) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_group_add(ptr noundef %inode, ptr nocapture noundef readonly %input) local_unnamed_addr #0 align 64 {
entry:
  %main_bm_bh = alloca ptr, align 4
  %group_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m40 = alloca i64, align 8
  %_m57 = alloca i64, align 8
  %_m71 = alloca i64, align 8
  %_m101 = alloca i64, align 8
  %_m135 = alloca i64, align 8
  %_m172 = alloca i64, align 8
  %_m208 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %main_bm_bh) #9
  %0 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %main_bm_bh, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_bh) #9
  %5 = ptrtoint ptr %group_bh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %group_bh, align 4
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #9
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 23
  %6 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %7, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #9
  %8 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %osb_flags.i, align 8
  %and.i378 = and i32 %9, 1
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i378)
  %tobool2.not = icmp eq i32 %and.i378, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %4, i32 noundef 4, i32 noundef 65535) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body, label %if.end18

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %10 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_group_add, i32 noundef 469, ptr noundef nonnull @.str, i64 noundef -22) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %call19 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call3, ptr noundef nonnull %main_bm_bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end50

if.then22:                                        ; preds = %if.end18
  %11 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call19, label %do.body39 [
    i32 -512, label %if.then22.out_mutex_crit_edge
    i32 -4, label %if.then22.out_mutex_crit_edge393
    i32 -28, label %if.then22.out_mutex_crit_edge394
    i32 -122, label %if.then22.out_mutex_crit_edge395
  ]

if.then22.out_mutex_crit_edge395:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mutex

if.then22.out_mutex_crit_edge394:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mutex

if.then22.out_mutex_crit_edge393:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mutex

if.then22.out_mutex_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mutex

do.body39:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40) #9
  %12 = ptrtoint ptr %_m40 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m40, align 8
  %conv44 = sext i32 %call19 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40, ptr noundef nonnull @__func__.ocfs2_group_add, i32 noundef 477, ptr noundef nonnull @.str, i64 noundef %conv44) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40) #9
  br label %out_mutex

if.end50:                                         ; preds = %if.end18
  %13 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %main_bm_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 35
  %17 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id2, align 8
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %conv51 = zext i16 %19 to i32
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 1
  %20 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sb, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = shl i32 %23, 3
  %mul = add i32 %sub.i, -512
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv51)
  %cmp53.not = icmp eq i32 %mul, %conv51
  br i1 %cmp53.not, label %if.end64, label %do.body56

do.body56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m57) #9
  %24 = ptrtoint ptr %_m57 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1152921504606846976, ptr %_m57, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m57, ptr noundef nonnull @__func__.ocfs2_group_add, i32 noundef 487, ptr noundef nonnull @.str.2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m57) #9
  br label %out_unlock

if.end64:                                         ; preds = %if.end50
  %25 = ptrtoint ptr %input to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %input, align 8
  %call66 = call i32 @ocfs2_read_blocks_sync(ptr noundef %4, i64 noundef %26, i32 noundef 1, ptr noundef nonnull %group_bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.body70, label %if.end79

do.body70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m71) #9
  %27 = ptrtoint ptr %_m71 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1152921504606846976, ptr %_m71, align 8
  %28 = ptrtoint ptr %input to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %input, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m71, ptr noundef nonnull @__func__.ocfs2_group_add, i32 noundef 495, ptr noundef nonnull @.str.3, i64 noundef %29) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m71) #9
  br label %out_unlock

if.end79:                                         ; preds = %if.end64
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %30 = ptrtoint ptr %group_bh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %group_bh, align 4
  call void @ocfs2_set_new_buffer_uptodate(ptr noundef %ip_metadata_cache.i, ptr noundef %31) #9
  %32 = ptrtoint ptr %group_bh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %group_bh, align 4
  %call81 = call fastcc i32 @ocfs2_verify_group_and_input(ptr noundef nonnull %call3, ptr noundef %16, ptr noundef %input, ptr noundef %33)
  %34 = zext i32 %call81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call81, label %do.body100 [
    i32 0, label %if.end111
    i32 -512, label %if.end79.out_free_group_bh_crit_edge
    i32 -4, label %if.end79.out_free_group_bh_crit_edge396
    i32 524289, label %if.end79.out_free_group_bh_crit_edge397
    i32 -28, label %if.end79.out_free_group_bh_crit_edge398
    i32 -122, label %if.end79.out_free_group_bh_crit_edge399
  ]

if.end79.out_free_group_bh_crit_edge399:          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_group_bh

if.end79.out_free_group_bh_crit_edge398:          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_group_bh

if.end79.out_free_group_bh_crit_edge397:          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_group_bh

if.end79.out_free_group_bh_crit_edge396:          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_group_bh

if.end79.out_free_group_bh_crit_edge:             ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_group_bh

do.body100:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m101) #9
  %35 = ptrtoint ptr %_m101 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606846976, ptr %_m101, align 8
  %conv105 = sext i32 %call81 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m101, ptr noundef nonnull @__func__.ocfs2_group_add, i32 noundef 503, ptr noundef nonnull @.str, i64 noundef %conv105) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m101) #9
  br label %out_free_group_bh

if.end111:                                        ; preds = %if.end79
  %36 = ptrtoint ptr %input to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %input, align 8
  %chain = getelementptr inbounds %struct.ocfs2_new_group_input, ptr %input, i32 0, i32 3
  %38 = ptrtoint ptr %chain to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %chain, align 8
  %conv113 = zext i16 %39 to i32
  %clusters = getelementptr inbounds %struct.ocfs2_new_group_input, ptr %input, i32 0, i32 1
  %40 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %clusters, align 8
  %frees = getelementptr inbounds %struct.ocfs2_new_group_input, ptr %input, i32 0, i32 2
  %42 = ptrtoint ptr %frees to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %frees, align 4
  call fastcc void @trace_ocfs2_group_add(i64 noundef %37, i32 noundef %conv113, i32 noundef %41, i32 noundef %43)
  %call114 = call ptr @ocfs2_start_trans(ptr noundef %4, i32 noundef 2) #9
  %cmp.i = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then116, label %if.end145

if.then116:                                       ; preds = %if.end111
  %44 = ptrtoint ptr %call114 to i32
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %44, label %do.body134 [
    i32 -512, label %if.then116.out_free_group_bh_crit_edge
    i32 -4, label %if.then116.out_free_group_bh_crit_edge400
    i32 524289, label %if.then116.out_free_group_bh_crit_edge401
    i32 -28, label %if.then116.out_free_group_bh_crit_edge402
    i32 -122, label %if.then116.out_free_group_bh_crit_edge403
  ]

if.then116.out_free_group_bh_crit_edge403:        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_group_bh

if.then116.out_free_group_bh_crit_edge402:        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_group_bh

if.then116.out_free_group_bh_crit_edge401:        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_group_bh

if.then116.out_free_group_bh_crit_edge400:        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_group_bh

if.then116.out_free_group_bh_crit_edge:           ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_group_bh

do.body134:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m135) #9
  %46 = ptrtoint ptr %_m135 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1152921504606846976, ptr %_m135, align 8
  %conv139 = sext i32 %44 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m135, ptr noundef nonnull @__func__.ocfs2_group_add, i32 noundef 512, ptr noundef nonnull @.str, i64 noundef %conv139) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m135) #9
  br label %out_free_group_bh

if.end145:                                        ; preds = %if.end111
  %cl_bpc147 = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 35, i32 0, i32 1
  %47 = ptrtoint ptr %cl_bpc147 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %cl_bpc147, align 2
  %49 = call i16 @llvm.bswap.i16(i16 %48)
  %cl_recs = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 35, i32 0, i32 7
  %50 = ptrtoint ptr %chain to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %chain, align 8
  %idxprom = zext i16 %51 to i32
  %arrayidx = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %idxprom
  %ip_metadata_cache.i379 = getelementptr i8, ptr %call3, i32 -56
  %52 = ptrtoint ptr %group_bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %group_bh, align 4
  %call151 = call i32 @ocfs2_journal_access_gd(ptr noundef %call114, ptr noundef %ip_metadata_cache.i379, ptr noundef %53, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %if.then154, label %if.end182

if.then154:                                       ; preds = %if.end145
  %54 = zext i32 %call151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call151, label %do.body171 [
    i32 -512, label %if.then154.out_commit_crit_edge
    i32 -4, label %if.then154.out_commit_crit_edge404
    i32 -28, label %if.then154.out_commit_crit_edge405
    i32 -122, label %if.then154.out_commit_crit_edge406
  ]

if.then154.out_commit_crit_edge406:               ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

if.then154.out_commit_crit_edge405:               ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

if.then154.out_commit_crit_edge404:               ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

if.then154.out_commit_crit_edge:                  ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

do.body171:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m172) #9
  %55 = ptrtoint ptr %_m172 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1152921504606846976, ptr %_m172, align 8
  %conv176 = sext i32 %call151 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m172, ptr noundef nonnull @__func__.ocfs2_group_add, i32 noundef 524, ptr noundef nonnull @.str, i64 noundef %conv176) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m172) #9
  br label %out_commit

if.end182:                                        ; preds = %if.end145
  %56 = ptrtoint ptr %group_bh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %group_bh, align 4
  %b_data183 = getelementptr inbounds %struct.buffer_head, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %b_data183 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data183, align 4
  %bg_next_group = getelementptr inbounds %struct.ocfs2_group_desc, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %bg_next_group to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %bg_next_group, align 8
  %c_blkno = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %idxprom, i32 2
  %62 = ptrtoint ptr %c_blkno to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %c_blkno, align 8
  store i64 %63, ptr %bg_next_group, align 8
  call void @ocfs2_journal_dirty(ptr noundef %call114, ptr noundef %57) #9
  %64 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %main_bm_bh, align 4
  %call186 = call i32 @ocfs2_journal_access_di(ptr noundef %call114, ptr noundef %ip_metadata_cache.i379, ptr noundef %65, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %if.then189, label %if.end218

if.then189:                                       ; preds = %if.end182
  %66 = ptrtoint ptr %bg_next_group to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %61, ptr %bg_next_group, align 8
  %67 = zext i32 %call186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call186, label %do.body207 [
    i32 -512, label %if.then189.out_commit_crit_edge
    i32 -4, label %if.then189.out_commit_crit_edge407
    i32 -28, label %if.then189.out_commit_crit_edge408
    i32 -122, label %if.then189.out_commit_crit_edge409
  ]

if.then189.out_commit_crit_edge409:               ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

if.then189.out_commit_crit_edge408:               ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

if.then189.out_commit_crit_edge407:               ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

if.then189.out_commit_crit_edge:                  ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_commit

do.body207:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m208) #9
  %68 = ptrtoint ptr %_m208 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 1152921504606846976, ptr %_m208, align 8
  %conv212 = sext i32 %call186 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m208, ptr noundef nonnull @__func__.ocfs2_group_add, i32 noundef 537, ptr noundef nonnull @.str, i64 noundef %conv212) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m208) #9
  br label %out_commit

if.end218:                                        ; preds = %if.end182
  %69 = ptrtoint ptr %chain to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %chain, align 8
  %cl_next_free_rec = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 35, i32 0, i32 3
  %71 = ptrtoint ptr %cl_next_free_rec to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %cl_next_free_rec, align 2
  %73 = call i16 @llvm.bswap.i16(i16 %72)
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %73)
  %cmp222 = icmp eq i16 %70, %73
  br i1 %cmp222, label %if.then224, label %if.end218.if.end226_crit_edge

if.end218.if.end226_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end226

if.then224:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i16 %70, 1
  %74 = call i16 @llvm.bswap.i16(i16 %add.i) #9
  %75 = ptrtoint ptr %cl_next_free_rec to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %cl_next_free_rec, align 2
  %76 = call ptr @memset(ptr %arrayidx, i32 0, i32 16)
  br label %if.end226

if.end226:                                        ; preds = %if.then224, %if.end218.if.end226_crit_edge
  %77 = ptrtoint ptr %input to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %input, align 8
  %79 = call i64 @llvm.bswap.i64(i64 %78)
  %80 = ptrtoint ptr %c_blkno to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %c_blkno, align 8
  %c_total = getelementptr [0 x %struct.ocfs2_chain_rec], ptr %cl_recs, i32 0, i32 %idxprom, i32 1
  %81 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %clusters, align 8
  %conv230 = zext i16 %49 to i32
  %mul231 = mul i32 %82, %conv230
  %83 = ptrtoint ptr %c_total to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %c_total, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #9
  %add.i381 = add i32 %85, %mul231
  %86 = call i32 @llvm.bswap.i32(i32 %add.i381) #9
  %87 = ptrtoint ptr %c_total to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %c_total, align 4
  %88 = ptrtoint ptr %frees to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %frees, align 4
  %mul234 = mul i32 %89, %conv230
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91) #9
  %add.i382 = add i32 %92, %mul234
  %93 = call i32 @llvm.bswap.i32(i32 %add.i382) #9
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx, align 4
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 34
  %i_total = getelementptr inbounds %struct.anon.82, ptr %id1, i32 0, i32 1
  %95 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %clusters, align 8
  %mul237 = mul i32 %96, %conv230
  %97 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %i_total, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %98) #9
  %add.i383 = add i32 %99, %mul237
  %100 = call i32 @llvm.bswap.i32(i32 %add.i383) #9
  %101 = ptrtoint ptr %i_total to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %i_total, align 4
  %102 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %clusters, align 8
  %104 = ptrtoint ptr %frees to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %frees, align 4
  %sub = sub i32 %103, %105
  %mul242 = mul i32 %sub, %conv230
  %106 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %id1, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107) #9
  %add.i384 = add i32 %108, %mul242
  %109 = call i32 @llvm.bswap.i32(i32 %add.i384) #9
  %110 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %id1, align 4
  %i_clusters = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 6
  %111 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %clusters, align 8
  %113 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %i_clusters, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %114) #9
  %add.i385 = add i32 %115, %112
  %116 = call i32 @llvm.bswap.i32(i32 %add.i385) #9
  %117 = ptrtoint ptr %i_clusters to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %i_clusters, align 4
  %118 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %main_bm_bh, align 4
  call void @ocfs2_journal_dirty(ptr noundef %call114, ptr noundef %119) #9
  %ip_lock = getelementptr i8, ptr %call3, i32 -232
  call void @_raw_spin_lock(ptr noundef %ip_lock) #9
  %120 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %i_clusters, align 4
  %122 = call i32 @llvm.bswap.i32(i32 %121)
  %ip_clusters = getelementptr i8, ptr %call3, i32 -176
  %123 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %ip_clusters, align 8
  %i_size = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 9
  %124 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %clusters, align 8
  %conv248 = zext i32 %125 to i64
  %s_clustersize_bits = getelementptr inbounds %struct.ocfs2_super, ptr %4, i32 0, i32 36
  %126 = ptrtoint ptr %s_clustersize_bits to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %s_clustersize_bits, align 8
  %sh_prom = zext i32 %127 to i64
  %shl = shl i64 %conv248, %sh_prom
  %128 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %i_size, align 8
  %130 = call i64 @llvm.bswap.i64(i64 %129) #9
  %add.i387 = add i64 %130, %shl
  %131 = call i64 @llvm.bswap.i64(i64 %add.i387) #9
  %132 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %i_size, align 8
  call void @_raw_spin_unlock(ptr noundef %ip_lock) #9
  %133 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %i_size, align 8
  %135 = call i64 @llvm.bswap.i64(i64 %134)
  call fastcc void @i_size_write(ptr noundef nonnull %call3, i64 noundef %135)
  %136 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %clusters, align 8
  call fastcc void @ocfs2_update_super_and_backups(ptr noundef nonnull %call3, i32 noundef %137)
  br label %out_commit

out_commit:                                       ; preds = %if.end226, %do.body207, %if.then189.out_commit_crit_edge, %if.then189.out_commit_crit_edge407, %if.then189.out_commit_crit_edge408, %if.then189.out_commit_crit_edge409, %do.body171, %if.then154.out_commit_crit_edge, %if.then154.out_commit_crit_edge404, %if.then154.out_commit_crit_edge405, %if.then154.out_commit_crit_edge406
  %ret.0 = phi i32 [ %call186, %if.end226 ], [ %call151, %if.then154.out_commit_crit_edge ], [ %call151, %if.then154.out_commit_crit_edge404 ], [ %call151, %if.then154.out_commit_crit_edge405 ], [ %call151, %if.then154.out_commit_crit_edge406 ], [ %call151, %do.body171 ], [ %call186, %if.then189.out_commit_crit_edge ], [ %call186, %if.then189.out_commit_crit_edge407 ], [ %call186, %if.then189.out_commit_crit_edge408 ], [ %call186, %if.then189.out_commit_crit_edge409 ], [ %call186, %do.body207 ]
  %call253 = call i32 @ocfs2_commit_trans(ptr noundef %4, ptr noundef %call114) #9
  br label %out_free_group_bh

out_free_group_bh:                                ; preds = %out_commit, %do.body134, %if.then116.out_free_group_bh_crit_edge, %if.then116.out_free_group_bh_crit_edge400, %if.then116.out_free_group_bh_crit_edge401, %if.then116.out_free_group_bh_crit_edge402, %if.then116.out_free_group_bh_crit_edge403, %do.body100, %if.end79.out_free_group_bh_crit_edge, %if.end79.out_free_group_bh_crit_edge396, %if.end79.out_free_group_bh_crit_edge397, %if.end79.out_free_group_bh_crit_edge398, %if.end79.out_free_group_bh_crit_edge399
  %ret.1 = phi i32 [ %ret.0, %out_commit ], [ %call81, %if.end79.out_free_group_bh_crit_edge ], [ %call81, %if.end79.out_free_group_bh_crit_edge396 ], [ %call81, %if.end79.out_free_group_bh_crit_edge397 ], [ %call81, %if.end79.out_free_group_bh_crit_edge398 ], [ %call81, %if.end79.out_free_group_bh_crit_edge399 ], [ %call81, %do.body100 ], [ -22, %if.then116.out_free_group_bh_crit_edge ], [ -22, %if.then116.out_free_group_bh_crit_edge400 ], [ -22, %if.then116.out_free_group_bh_crit_edge401 ], [ -22, %if.then116.out_free_group_bh_crit_edge402 ], [ -22, %if.then116.out_free_group_bh_crit_edge403 ], [ -22, %do.body134 ]
  %138 = ptrtoint ptr %group_bh to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %group_bh, align 4
  %tobool.not.i = icmp eq ptr %139, null
  br i1 %tobool.not.i, label %out_free_group_bh.out_unlock_crit_edge, label %if.then.i

out_free_group_bh.out_unlock_crit_edge:           ; preds = %out_free_group_bh
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then.i:                                        ; preds = %out_free_group_bh
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %139) #9
  br label %out_unlock

out_unlock:                                       ; preds = %if.then.i, %out_free_group_bh.out_unlock_crit_edge, %do.body70, %do.body56
  %ret.2 = phi i32 [ -22, %do.body56 ], [ %call66, %do.body70 ], [ %ret.1, %out_free_group_bh.out_unlock_crit_edge ], [ %ret.1, %if.then.i ]
  %140 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %main_bm_bh, align 4
  %tobool.not.i389 = icmp eq ptr %141, null
  br i1 %tobool.not.i389, label %out_unlock.brelse.exit391_crit_edge, label %if.then.i390

out_unlock.brelse.exit391_crit_edge:              ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit391

if.then.i390:                                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %141) #9
  br label %brelse.exit391

brelse.exit391:                                   ; preds = %if.then.i390, %out_unlock.brelse.exit391_crit_edge
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call3, i32 noundef 1) #9
  br label %out_mutex

out_mutex:                                        ; preds = %brelse.exit391, %do.body39, %if.then22.out_mutex_crit_edge, %if.then22.out_mutex_crit_edge393, %if.then22.out_mutex_crit_edge394, %if.then22.out_mutex_crit_edge395
  %ret.3 = phi i32 [ %ret.2, %brelse.exit391 ], [ %call19, %if.then22.out_mutex_crit_edge ], [ %call19, %if.then22.out_mutex_crit_edge393 ], [ %call19, %if.then22.out_mutex_crit_edge394 ], [ %call19, %if.then22.out_mutex_crit_edge395 ], [ %call19, %do.body39 ]
  call void @up_write(ptr noundef %i_rwsem.i) #9
  call void @iput(ptr noundef nonnull %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %out_mutex, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %lor.lhs.false.cleanup_crit_edge ], [ -30, %entry.cleanup_crit_edge ], [ %ret.3, %out_mutex ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %main_bm_bh) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_blocks_sync(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_set_new_buffer_uptodate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_verify_group_and_input(ptr noundef %inode, ptr noundef %di, ptr nocapture noundef readonly %input, ptr noundef %group_bh) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m11 = alloca i64, align 8
  %_m30 = alloca i64, align 8
  %_m43 = alloca i64, align 8
  %_m57 = alloca i64, align 8
  %_m70 = alloca i64, align 8
  %_m83 = alloca i64, align 8
  %_m97 = alloca i64, align 8
  %_m109 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 35
  %cl_count1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 35, i32 0, i32 2
  %0 = ptrtoint ptr %cl_count1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cl_count1, align 4
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id2, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %cl_next_free_rec = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 35, i32 0, i32 3
  %5 = ptrtoint ptr %cl_next_free_rec to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cl_next_free_rec, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %input, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %13, i32 0, i32 36
  %14 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %17 to i32
  %sub.i = sub i32 %15, %conv.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %11, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %i_clusters = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 6
  %18 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_clusters, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv1.i)
  %cmp = icmp ugt i32 %20, %conv1.i
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %21 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_verify_group_and_input, i32 noundef 420, ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %if.end125

if.else:                                          ; preds = %entry
  %22 = tail call i16 @llvm.bswap.i16(i16 %1)
  %chain = getelementptr inbounds %struct.ocfs2_new_group_input, ptr %input, i32 0, i32 3
  %23 = ptrtoint ptr %chain to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %chain, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %22)
  %cmp7.not = icmp ult i16 %24, %22
  br i1 %cmp7.not, label %if.else18, label %do.body10

do.body10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m11) #9
  %25 = ptrtoint ptr %_m11 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606846976, ptr %_m11, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m11, ptr noundef nonnull @__func__.ocfs2_verify_group_and_input, i32 noundef 422, ptr noundef nonnull @.str.10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m11) #9
  br label %if.end125

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %1)
  %cmp21.not = icmp eq i16 %6, %1
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %24)
  %cmp26.not = icmp eq i16 %7, %24
  %or.cond = select i1 %cmp21.not, i1 true, i1 %cmp26.not
  br i1 %or.cond, label %if.else38, label %do.body29

do.body29:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  %conv19 = zext i16 %7 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m30) #9
  %26 = ptrtoint ptr %_m30 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1152921504606846976, ptr %_m30, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m30, ptr noundef nonnull @__func__.ocfs2_verify_group_and_input, i32 noundef 425, ptr noundef nonnull @.str.11, i32 noundef %conv19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m30) #9
  br label %if.end125

if.else38:                                        ; preds = %if.else18
  %clusters = getelementptr inbounds %struct.ocfs2_new_group_input, ptr %input, i32 0, i32 1
  %27 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clusters, align 8
  %29 = xor i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %29)
  %cmp39 = icmp ugt i32 %28, %29
  br i1 %cmp39, label %do.body42, label %if.else50

do.body42:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43) #9
  %30 = ptrtoint ptr %_m43 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1152921504606846976, ptr %_m43, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43, ptr noundef nonnull @__func__.ocfs2_verify_group_and_input, i32 noundef 427, ptr noundef nonnull @.str.12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43) #9
  br label %if.end125

if.else50:                                        ; preds = %if.else38
  %conv52 = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv52)
  %cmp53 = icmp ugt i32 %28, %conv52
  br i1 %cmp53, label %do.body56, label %if.else64

do.body56:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m57) #9
  %31 = ptrtoint ptr %_m57 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606846976, ptr %_m57, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m57, ptr noundef nonnull @__func__.ocfs2_verify_group_and_input, i32 noundef 429, ptr noundef nonnull @.str.13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m57) #9
  br label %if.end125

if.else64:                                        ; preds = %if.else50
  %frees = getelementptr inbounds %struct.ocfs2_new_group_input, ptr %input, i32 0, i32 2
  %32 = ptrtoint ptr %frees to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frees, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %28)
  %cmp66 = icmp ugt i32 %33, %28
  br i1 %cmp66, label %do.body69, label %if.else77

do.body69:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m70) #9
  %34 = ptrtoint ptr %_m70 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1152921504606846976, ptr %_m70, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m70, ptr noundef nonnull @__func__.ocfs2_verify_group_and_input, i32 noundef 431, ptr noundef nonnull @.str.14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m70) #9
  br label %if.end125

if.else77:                                        ; preds = %if.else64
  %rem = urem i32 %20, %conv52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp79.not = icmp eq i32 %rem, 0
  br i1 %cmp79.not, label %if.else90, label %do.body82

do.body82:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m83) #9
  %35 = ptrtoint ptr %_m83 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606846976, ptr %_m83, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m83, ptr noundef nonnull @__func__.ocfs2_verify_group_and_input, i32 noundef 434, ptr noundef nonnull @.str.15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m83) #9
  br label %if.end125

if.else90:                                        ; preds = %if.else77
  %call92 = tail call i64 @ocfs2_which_cluster_group(ptr noundef %inode, i32 noundef %conv1.i) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %call92)
  %cmp93.not = icmp eq i64 %11, %call92
  br i1 %cmp93.not, label %if.else104, label %do.body96

do.body96:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m97) #9
  %36 = ptrtoint ptr %_m97 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m97, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m97, ptr noundef nonnull @__func__.ocfs2_verify_group_and_input, i32 noundef 436, ptr noundef nonnull @.str.16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m97) #9
  br label %if.end125

if.else104:                                       ; preds = %if.else90
  %call105 = tail call fastcc i32 @ocfs2_check_new_group(ptr noundef %inode, ptr noundef %di, ptr noundef %input, ptr noundef %group_bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.else104.if.end125_crit_edge, label %do.body108

if.else104.if.end125_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

do.body108:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m109) #9
  %37 = ptrtoint ptr %_m109 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1152921504606846976, ptr %_m109, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m109, ptr noundef nonnull @__func__.ocfs2_verify_group_and_input, i32 noundef 438, ptr noundef nonnull @.str.17) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m109) #9
  br label %if.end125

if.end125:                                        ; preds = %do.body108, %if.else104.if.end125_crit_edge, %do.body96, %do.body82, %do.body69, %do.body56, %do.body42, %do.body29, %do.body10, %do.body
  %ret.0 = phi i32 [ -22, %do.body ], [ -22, %do.body10 ], [ -22, %do.body29 ], [ -22, %do.body42 ], [ -22, %do.body56 ], [ -22, %do.body69 ], [ -22, %do.body82 ], [ -22, %do.body96 ], [ %call105, %do.body108 ], [ 0, %if.else104.if.end125_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_group_add(i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_group_add, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_group_add, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !75

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %call42 = tail call i32 @__traceiter_ocfs2_group_add(ptr noundef null, i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !75

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_group_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_group_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_group_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_group_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 774, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_journal_access_gd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_journal_dirty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_journal_access_di(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %18 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  %37 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !75

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #9
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #9
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %48 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_group_extend(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_update_last_group_and_inode(i32 noundef %val1, i32 noundef %val2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_update_last_group_and_inode, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_update_last_group_and_inode, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !75

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  %call42 = tail call i32 @__traceiter_ocfs2_update_last_group_and_inode(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !75

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_update_last_group_and_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_update_last_group_and_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_update_last_group_and_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ocfs2_update_last_group_and_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 770, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_update_last_group_and_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_write_super_or_backup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_check_new_group(ptr nocapture noundef readonly %inode, ptr noundef %di, ptr nocapture noundef readonly %input, ptr noundef %group_bh) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m18 = alloca i64, align 8
  %_m37 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %group_bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %cl_bpc1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %di, i32 0, i32 35, i32 0, i32 1
  %2 = ptrtoint ptr %cl_bpc1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cl_bpc1, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %call = tail call i32 @ocfs2_check_group_descriptor(ptr noundef %6, ptr noundef %di, ptr noundef %group_bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %bg_chain = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %bg_chain to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bg_chain, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %chain = getelementptr inbounds %struct.ocfs2_new_group_input, ptr %input, i32 0, i32 3
  %10 = ptrtoint ptr %chain to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %chain, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp.not = icmp eq i16 %9, %11
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #9
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %bg_blkno = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %bg_blkno to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bg_blkno, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %conv8 = zext i16 %9 to i32
  %conv10 = zext i16 %11 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_check_new_group, i32 noundef 388, ptr noundef nonnull @.str.18, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #9
  br label %out

if.else:                                          ; preds = %if.end
  %bg_bits = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %bg_bits to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bg_bits, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv12 = zext i16 %18 to i32
  %clusters = getelementptr inbounds %struct.ocfs2_new_group_input, ptr %input, i32 0, i32 1
  %19 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clusters, align 8
  %conv13 = zext i16 %4 to i32
  %mul = mul i32 %20, %conv13
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv12)
  %cmp14.not = icmp eq i32 %mul, %conv12
  br i1 %cmp14.not, label %if.else29, label %do.body17

do.body17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m18) #9
  %21 = ptrtoint ptr %_m18 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606846976, ptr %_m18, align 8
  %bg_blkno22 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %bg_blkno22 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bg_blkno22, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %23)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m18, ptr noundef nonnull @__func__.ocfs2_check_new_group, i32 noundef 393, ptr noundef nonnull @.str.19, i64 noundef %24, i32 noundef %conv12, i32 noundef %20) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m18) #9
  br label %out

if.else29:                                        ; preds = %if.else
  %bg_free_bits_count = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %bg_free_bits_count to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bg_free_bits_count, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %conv30 = zext i16 %27 to i32
  %frees = getelementptr inbounds %struct.ocfs2_new_group_input, ptr %input, i32 0, i32 2
  %28 = ptrtoint ptr %frees to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frees, align 4
  %mul32 = mul i32 %29, %conv13
  call void @__sanitizer_cov_trace_cmp4(i32 %mul32, i32 %conv30)
  %cmp33.not = icmp eq i32 %mul32, %conv30
  br i1 %cmp33.not, label %if.else29.out_crit_edge, label %do.body36

if.else29.out_crit_edge:                          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body36:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m37) #9
  %30 = ptrtoint ptr %_m37 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1152921504606846976, ptr %_m37, align 8
  %bg_blkno41 = getelementptr inbounds %struct.ocfs2_group_desc, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %bg_blkno41 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bg_blkno41, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m37, ptr noundef nonnull @__func__.ocfs2_check_new_group, i32 noundef 399, ptr noundef nonnull @.str.20, i64 noundef %33, i32 noundef %conv12, i32 noundef %mul32) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m37) #9
  br label %out

out:                                              ; preds = %do.body36, %if.else29.out_crit_edge, %do.body17, %do.body, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ -22, %do.body ], [ -22, %do.body17 ], [ -22, %do.body36 ], [ 0, %if.else29.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_check_group_descriptor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_group_add(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !19, !21, !23, !24, !26, !28, !29, !30, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !62, !64}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__func__.ocfs2_group_extend, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/resize.c", i32 284, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/resize.c", i32 300, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/resize.c", i32 305, i32 3}
!7 = !{ptr @__func__.ocfs2_group_add, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/resize.c", i32 469, i32 3}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ocfs2/resize.c", i32 494, i32 3}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 772, i32 1}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!15 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__func__.ocfs2_update_last_group_and_inode, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/resize.c", i32 101, i32 3}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 770, i32 1}
!23 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!24 = !{ptr @__func__.ocfs2_update_super_and_backups, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/resize.c", i32 225, i32 3}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/resize.c", i32 245, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ocfs2_update_super_and_backups._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ocfs2_update_super_and_backups._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__func__.update_backups, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/resize.c", i32 188, i32 4}
!33 = !{ptr @__func__.ocfs2_verify_group_and_input, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/resize.c", i32 420, i32 3}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/resize.c", i32 422, i32 3}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/resize.c", i32 424, i32 3}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/resize.c", i32 427, i32 3}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/resize.c", i32 429, i32 3}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/resize.c", i32 431, i32 3}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ocfs2/resize.c", i32 433, i32 3}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ocfs2/resize.c", i32 436, i32 3}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ocfs2/resize.c", i32 438, i32 3}
!52 = !{ptr @__func__.ocfs2_check_new_group, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ocfs2/resize.c", i32 385, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/resize.c", i32 390, i32 3}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/resize.c", i32 395, i32 3}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 774, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2161181758, i64 2161182240, i64 2161181795, i64 2161181851, i64 2161181885, i64 2161181909, i64 2161181950, i64 2161181971, i64 2161181999, i64 2161182033}
!77 = !{i64 2148490713, i64 2148490718, i64 2148490731, i64 2148490775, i64 2148490809, i64 2148490830}
!78 = !{i64 2155782246}
!79 = !{i64 2155782465}
!80 = !{i64 2149487120}
!81 = !{i64 2149488156}
!82 = !{i64 2155799899}
!83 = !{i64 2155800146}
!84 = !{i64 2152510877}
!85 = !{i64 2149987182}
!86 = !{i64 2149992116}
!87 = !{i64 2150013834}
!88 = !{i64 2150018728}
!89 = !{i64 2150095255}
!90 = !{i64 2150095580}
!91 = !{i64 2152522739}
!92 = !{i64 2155764578}
!93 = !{i64 2155764827}
