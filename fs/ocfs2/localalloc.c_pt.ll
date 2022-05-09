; ModuleID = '/llk/IR_all_yes/fs/ocfs2/localalloc.c_pt.bc'
source_filename = "../fs/ocfs2/localalloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.ocfs2_dlm_lksb = type { %union.anon.86, ptr }
%union.anon.86 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.list_head = type { ptr, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.77, %union.anon.81 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.77 = type { i64 }
%union.anon.81 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.82, [16 x i8] }
%union.anon.82 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.74 = type { ptr }
%struct.anon.79 = type { i32, i32 }
%struct.jbd2_journal_handle = type { %union.anon.90, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.90 = type { ptr }
%struct.ocfs2_alloc_context = type { ptr, ptr, i32, i32, i32, i32, i16, i32, ptr, i64, i64, i32, ptr, ptr }
%struct.ocfs2_alloc_reservation = type { %struct.rb_node, i32, i32, i32, i32, %struct.list_head, i32 }
%struct.rb_node = type { i32, ptr, ptr }

@__func__.ocfs2_load_local_alloc = private unnamed_addr constant [23 x i8] c"ocfs2_load_local_alloc\00", align 1
@.str = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Requested local alloc window %d is larger than max possible %u. Using defaults.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid local alloc inode, %llu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Local alloc size is invalid (la_size = %u)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"inconsistent detected, clean journal with unrecovered local alloc, please run fsck.ocfs2!\0Afound = %u, set = %u, taken = %u, off = %u\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.ocfs2_shutdown_local_alloc = private unnamed_addr constant [27 x i8] c"ocfs2_shutdown_local_alloc\00", align 1
@__func__.ocfs2_begin_local_alloc_recovery = private unnamed_addr constant [33 x i8] c"ocfs2_begin_local_alloc_recovery\00", align 1
@__func__.ocfs2_complete_local_alloc_recovery = private unnamed_addr constant [36 x i8] c"ocfs2_complete_local_alloc_recovery\00", align 1
@__func__.ocfs2_reserve_local_alloc_bits = private unnamed_addr constant [31 x i8] c"ocfs2_reserve_local_alloc_bits\00", align 1
@__PRETTY_FUNCTION__.ocfs2_reserve_local_alloc_bits = private unnamed_addr constant [92 x i8] c"int ocfs2_reserve_local_alloc_bits(struct ocfs2_super *, u32, struct ocfs2_alloc_context *)\00", align 1
@.str.5 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"local alloc inode %llu says it has %u used bits, but a count shows %u\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.ocfs2_claim_local_alloc_bits = private unnamed_addr constant [29 x i8] c"ocfs2_claim_local_alloc_bits\00", align 1
@__func__.ocfs2_free_local_alloc_bits = private unnamed_addr constant [28 x i8] c"ocfs2_free_local_alloc_bits\00", align 1
@__tracepoint_ocfs2_la_set_sizes = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_la_set_sizes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_alloc_should_use_local = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_alloc_should_use_local.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_load_local_alloc = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_load_local_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_begin_local_alloc_recovery = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_begin_local_alloc_recovery.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_ocfs2_reserve_local_alloc_bits = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_reserve_local_alloc_bits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_local_alloc_count_bits = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_local_alloc_count_bits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_local_alloc_find_clear_bits_search_bitmap = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_local_alloc_find_clear_bits_search_bitmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_local_alloc_find_clear_bits = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_local_alloc_find_clear_bits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_sync_local_to_main = private unnamed_addr constant [25 x i8] c"ocfs2_sync_local_to_main\00", align 1
@__tracepoint_ocfs2_sync_local_to_main = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_sync_local_to_main.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_sync_local_to_main_free = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_sync_local_to_main_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_local_alloc_slide_window = private unnamed_addr constant [31 x i8] c"ocfs2_local_alloc_slide_window\00", align 1
@ocfs2_recalc_la_window.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/ocfs2/localalloc.c\00", [42 x i8] zeroinitializer }, align 32
@__func__.ocfs2_local_alloc_reserve_for_window = private unnamed_addr constant [37 x i8] c"ocfs2_local_alloc_reserve_for_window\00", align 1
@__func__.ocfs2_local_alloc_new_window = private unnamed_addr constant [29 x i8] c"ocfs2_local_alloc_new_window\00", align 1
@__tracepoint_ocfs2_local_alloc_new_window = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_local_alloc_new_window.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_local_alloc_new_window_result = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_local_alloc_new_window_result.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 4294966784, i64 4294967174, i64 4294967292]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 4294966784, i64 4294967174, i64 4294967292]
@__sancov_gen_cov_switch_values.36 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 281, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 294, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 310, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 318, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 333, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 655, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 723, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 108, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [25 x i8] c"../fs/ocfs2/localalloc.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 1047, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_la_default_mb(ptr nocapture noundef readonly %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = shl i32 %3, 3
  %mul = add i32 %sub.i, -512
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_clustersize_bits.i, align 8
  %sub.i57 = sub i32 20, %7
  %shr.i = lshr i32 %mul, %sub.i57
  %8 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 512, label %land.lhs.true
    i32 1024, label %land.lhs.true7
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_clustersize = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 35
  %9 = ptrtoint ptr %s_clustersize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_clustersize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %10)
  %cmp4 = icmp slt i32 %10, 8193
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true7:                                   ; preds = %entry
  %s_clustersize8 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 35
  %11 = ptrtoint ptr %s_clustersize8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_clustersize8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %12)
  %cmp9 = icmp eq i32 %12, 4096
  br i1 %cmp9, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sub = add i32 %shr.i, -16
  %and = and i32 %sub, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and)
  %cmp10 = icmp ugt i32 %and, 256
  br i1 %cmp10, label %if.then11, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and)
  %cmp12 = icmp ugt i32 %and, 512
  br i1 %cmp12, label %if.then11.if.end16_crit_edge, label %if.then11.while.cond_crit_edge

if.then11.while.cond_crit_edge:                   ; preds = %if.then11
  br label %while.cond

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then11.while.cond_crit_edge
  %gd_mult.0 = phi i32 [ %shr, %while.cond.while.cond_crit_edge ], [ %and, %if.then11.while.cond_crit_edge ]
  %cmp14 = icmp ugt i32 %gd_mult.0, 256
  %shr = lshr i32 %gd_mult.0, 1
  br i1 %cmp14, label %while.cond.while.cond_crit_edge, label %while.cond.if.end16_crit_edge

while.cond.if.end16_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end16:                                         ; preds = %while.cond.if.end16_crit_edge, %if.then11.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %la_mb.0 = phi i32 [ %and, %if.end.if.end16_crit_edge ], [ 256, %if.then11.if.end16_crit_edge ], [ %gd_mult.0, %while.cond.if.end16_crit_edge ]
  %osb_clusters_at_boot = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 50
  %13 = ptrtoint ptr %osb_clusters_at_boot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %osb_clusters_at_boot, align 8
  %max_slots = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %15 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_slots, align 8
  %div = udiv i32 %14, %16
  %shr.i61 = lshr i32 %div, %sub.i57
  %17 = tail call i32 @llvm.umin.i32(i32 %shr.i61, i32 %la_mb.0)
  %conv = add i32 %sub.i, 522624
  %mul24 = and i32 %conv, 524280
  %shr.i66 = lshr i32 %mul24, %sub.i57
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %shr.i66)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.end16 ], [ 8, %land.lhs.true7.cleanup_crit_edge ], [ 8, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_la_set_sizes(ptr nocapture noundef %osb, i32 noundef %requested_mb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = shl i32 %3, 3
  %mul.i = add i32 %sub.i.i, -512
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %sub.i57.i = sub i32 20, %7
  %shr.i.i = lshr i32 %mul.i, %sub.i57.i
  %8 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %3, label %entry.if.end.i_crit_edge [
    i32 512, label %land.lhs.true.i
    i32 1024, label %land.lhs.true7.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 35
  %9 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_clustersize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %10)
  %cmp4.i = icmp slt i32 %10, 8193
  br i1 %cmp4.i, label %land.lhs.true.i.ocfs2_la_default_mb.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.ocfs2_la_default_mb.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_la_default_mb.exit

land.lhs.true7.i:                                 ; preds = %entry
  %s_clustersize8.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 35
  %11 = ptrtoint ptr %s_clustersize8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_clustersize8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %12)
  %cmp9.i = icmp eq i32 %12, 4096
  br i1 %cmp9.i, label %land.lhs.true7.i.ocfs2_la_default_mb.exit_crit_edge, label %land.lhs.true7.i.if.end.i_crit_edge

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true7.i.ocfs2_la_default_mb.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_la_default_mb.exit

if.end.i:                                         ; preds = %land.lhs.true7.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %sub.i = add i32 %shr.i.i, -16
  %and.i = and i32 %sub.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i)
  %cmp10.i = icmp ugt i32 %and.i, 256
  br i1 %cmp10.i, label %if.then11.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i)
  %cmp12.i = icmp ugt i32 %and.i, 512
  br i1 %cmp12.i, label %if.then11.i.if.end16.i_crit_edge, label %if.then11.i.while.cond.i_crit_edge

if.then11.i.while.cond.i_crit_edge:               ; preds = %if.then11.i
  br label %while.cond.i

if.then11.i.if.end16.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then11.i.while.cond.i_crit_edge
  %gd_mult.0.i = phi i32 [ %shr.i, %while.cond.i.while.cond.i_crit_edge ], [ %and.i, %if.then11.i.while.cond.i_crit_edge ]
  %cmp14.i = icmp ugt i32 %gd_mult.0.i, 256
  %shr.i = lshr i32 %gd_mult.0.i, 1
  br i1 %cmp14.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.if.end16.i_crit_edge

while.cond.i.if.end16.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.end16.i:                                       ; preds = %while.cond.i.if.end16.i_crit_edge, %if.then11.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %la_mb.0.i = phi i32 [ %and.i, %if.end.i.if.end16.i_crit_edge ], [ 256, %if.then11.i.if.end16.i_crit_edge ], [ %gd_mult.0.i, %while.cond.i.if.end16.i_crit_edge ]
  %osb_clusters_at_boot.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 50
  %13 = ptrtoint ptr %osb_clusters_at_boot.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %osb_clusters_at_boot.i, align 8
  %max_slots.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %15 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_slots.i, align 8
  %div.i = udiv i32 %14, %16
  %shr.i61.i = lshr i32 %div.i, %sub.i57.i
  %17 = tail call i32 @llvm.umin.i32(i32 %shr.i61.i, i32 %la_mb.0.i) #10
  %conv.i = add i32 %sub.i.i, 522624
  %mul24.i = and i32 %conv.i, 524280
  %shr.i66.i = lshr i32 %mul24.i, %sub.i57.i
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %shr.i66.i) #10
  br label %ocfs2_la_default_mb.exit

ocfs2_la_default_mb.exit:                         ; preds = %if.end16.i, %land.lhs.true7.i.ocfs2_la_default_mb.exit_crit_edge, %land.lhs.true.i.ocfs2_la_default_mb.exit_crit_edge
  %retval.0.i = phi i32 [ %18, %if.end16.i ], [ 8, %land.lhs.true7.i.ocfs2_la_default_mb.exit_crit_edge ], [ 8, %land.lhs.true.i.ocfs2_la_default_mb.exit_crit_edge ]
  %conv = add i32 %sub.i.i, 522624
  %mul = and i32 %conv, 524280
  %shr.i34 = lshr i32 %mul, %sub.i57.i
  tail call fastcc void @trace_ocfs2_la_set_sizes(i32 noundef %requested_mb, i32 noundef %shr.i34, i32 noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %requested_mb)
  %cmp = icmp eq i32 %requested_mb, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %ocfs2_la_default_mb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i36 = getelementptr inbounds %struct.ocfs2_super, ptr %20, i32 0, i32 36
  %21 = ptrtoint ptr %s_clustersize_bits.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_clustersize_bits.i36, align 8
  %sub.i37 = sub i32 20, %22
  %shl.i = shl i32 %retval.0.i, %sub.i37
  br label %if.end14

if.else:                                          ; preds = %ocfs2_la_default_mb.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i34, i32 %requested_mb)
  %cmp6 = icmp ult i32 %shr.i34, %requested_mb
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i39 = getelementptr inbounds %struct.ocfs2_super, ptr %24, i32 0, i32 36
  %25 = ptrtoint ptr %s_clustersize_bits.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_clustersize_bits.i39, align 8
  %sub.i40 = sub i32 20, %26
  br i1 %cmp6, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i41 = shl i32 %shr.i34, %sub.i40
  br label %if.end14

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i45 = shl i32 %requested_mb, %sub.i40
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then8, %if.then
  %shl.i41.sink = phi i32 [ %shl.i41, %if.then8 ], [ %shl.i45, %if.else11 ], [ %shl.i, %if.then ]
  %local_alloc_default_bits10 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 49
  %27 = ptrtoint ptr %local_alloc_default_bits10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl.i41.sink, ptr %local_alloc_default_bits10, align 4
  %local_alloc_bits = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 48
  %28 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl.i41.sink, ptr %local_alloc_bits, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_la_set_sizes(i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_la_set_sizes, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_la_set_sizes, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %call42 = tail call i32 @__traceiter_ocfs2_la_set_sizes(ptr noundef null, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_la_set_sizes, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_la_set_sizes, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_la_set_sizes.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_la_set_sizes.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 723, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_local_alloc_seen_free_bits(ptr noundef %osb, i32 noundef %num_clusters) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #10
  %local_alloc_state = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 51
  %0 = ptrtoint ptr %local_alloc_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %local_alloc_state, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %local_alloc_default_bits = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 49
  %3 = ptrtoint ptr %local_alloc_default_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %local_alloc_default_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %num_clusters)
  %cmp3.not = icmp ugt i32 %4, %num_clusters
  br i1 %cmp3.not, label %if.then.if.end6_crit_edge, label %if.then4

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %la_enable_wq = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 47
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %la_enable_wq) #10
  %5 = ptrtoint ptr %local_alloc_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %local_alloc_state, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_la_enable_worker(ptr noundef %work) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_lock = getelementptr i8, ptr %work, i32 -276
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #10
  %local_alloc_state = getelementptr i8, ptr %work, i32 112
  %0 = ptrtoint ptr %local_alloc_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %local_alloc_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_alloc_should_use_local(ptr noundef %osb, i64 noundef %bits) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #10
  %local_alloc_bits = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 48
  %0 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %local_alloc_bits, align 8
  %local_alloc_state.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 51
  %2 = ptrtoint ptr %local_alloc_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %local_alloc_state.i, align 4
  %4 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  %div = sdiv i32 %1, 2
  %conv = sext i32 %div to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %bits)
  %cmp = icmp uge i64 %conv, %bits
  %narrow = and i1 %5, %cmp
  %ret.0 = zext i1 %narrow to i32
  tail call fastcc void @trace_ocfs2_alloc_should_use_local(i64 noundef %bits, i32 noundef %3, i32 noundef %1, i32 noundef %ret.0)
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #10
  ret i32 %ret.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_alloc_should_use_local(i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_alloc_should_use_local, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_alloc_should_use_local, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %call42 = tail call i32 @__traceiter_ocfs2_alloc_should_use_local(ptr noundef null, i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_alloc_should_use_local, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_alloc_should_use_local, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_alloc_should_use_local.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_alloc_should_use_local.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 725, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_load_local_alloc(ptr noundef %osb) local_unnamed_addr #2 align 64 {
entry:
  %alloc_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m24 = alloca i64, align 8
  %_m54 = alloca i64, align 8
  %_m69 = alloca i64, align 8
  %_m89 = alloca i64, align 8
  %_m110 = alloca i64, align 8
  %_m148 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloc_bh) #10
  %0 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %alloc_bh, align 4
  %local_alloc_bits = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 48
  %1 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %local_alloc_bits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.end127.thread, label %if.end

if.end127.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iput(ptr noundef null) #10
  %3 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %local_alloc_bits, align 8
  tail call fastcc void @trace_ocfs2_load_local_alloc(i32 noundef %4)
  br label %if.end158

if.end:                                           ; preds = %entry
  %bitmap_cpg = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 12
  %5 = ptrtoint ptr %bitmap_cpg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bitmap_cpg, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp2.not = icmp ult i32 %2, %6
  br i1 %cmp2.not, label %if.end.if.end10_crit_edge, label %do.body

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 2305843009213693952, ptr %_m, align 8
  %sub = add i32 %6, -1
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_load_local_alloc, i32 noundef 283, ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %sub) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %8 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sb, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = shl i32 %11, 3
  %mul.i = add i32 %sub.i.i, -512
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %13, i32 0, i32 36
  %14 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %sub.i57.i = sub i32 20, %15
  %shr.i.i = lshr i32 %mul.i, %sub.i57.i
  %16 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %11, label %do.body.if.end.i_crit_edge [
    i32 512, label %land.lhs.true.i
    i32 1024, label %land.lhs.true7.i
  ]

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.body
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 35
  %17 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_clustersize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %18)
  %cmp4.i = icmp slt i32 %18, 8193
  br i1 %cmp4.i, label %land.lhs.true.i.ocfs2_la_default_mb.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.ocfs2_la_default_mb.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_la_default_mb.exit

land.lhs.true7.i:                                 ; preds = %do.body
  %s_clustersize8.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 35
  %19 = ptrtoint ptr %s_clustersize8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_clustersize8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %20)
  %cmp9.i = icmp eq i32 %20, 4096
  br i1 %cmp9.i, label %land.lhs.true7.i.ocfs2_la_default_mb.exit_crit_edge, label %land.lhs.true7.i.if.end.i_crit_edge

land.lhs.true7.i.if.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true7.i.ocfs2_la_default_mb.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_la_default_mb.exit

if.end.i:                                         ; preds = %land.lhs.true7.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %do.body.if.end.i_crit_edge
  %sub.i = add i32 %shr.i.i, -16
  %and.i = and i32 %sub.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i)
  %cmp10.i = icmp ugt i32 %and.i, 256
  br i1 %cmp10.i, label %if.then11.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i)
  %cmp12.i = icmp ugt i32 %and.i, 512
  br i1 %cmp12.i, label %if.then11.i.if.end16.i_crit_edge, label %if.then11.i.while.cond.i_crit_edge

if.then11.i.while.cond.i_crit_edge:               ; preds = %if.then11.i
  br label %while.cond.i

if.then11.i.if.end16.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then11.i.while.cond.i_crit_edge
  %gd_mult.0.i = phi i32 [ %shr.i, %while.cond.i.while.cond.i_crit_edge ], [ %and.i, %if.then11.i.while.cond.i_crit_edge ]
  %cmp14.i = icmp ugt i32 %gd_mult.0.i, 256
  %shr.i = lshr i32 %gd_mult.0.i, 1
  br i1 %cmp14.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.if.end16.i_crit_edge

while.cond.i.if.end16.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.end16.i:                                       ; preds = %while.cond.i.if.end16.i_crit_edge, %if.then11.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %la_mb.0.i = phi i32 [ %and.i, %if.end.i.if.end16.i_crit_edge ], [ 256, %if.then11.i.if.end16.i_crit_edge ], [ %gd_mult.0.i, %while.cond.i.if.end16.i_crit_edge ]
  %osb_clusters_at_boot.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 50
  %21 = ptrtoint ptr %osb_clusters_at_boot.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %osb_clusters_at_boot.i, align 8
  %max_slots.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %23 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_slots.i, align 8
  %div.i = udiv i32 %22, %24
  %shr.i61.i = lshr i32 %div.i, %sub.i57.i
  %25 = call i32 @llvm.umin.i32(i32 %shr.i61.i, i32 %la_mb.0.i) #10
  %conv.i = add i32 %sub.i.i, 522624
  %mul24.i = and i32 %conv.i, 524280
  %shr.i66.i = lshr i32 %mul24.i, %sub.i57.i
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 %shr.i66.i) #10
  br label %ocfs2_la_default_mb.exit

ocfs2_la_default_mb.exit:                         ; preds = %if.end16.i, %land.lhs.true7.i.ocfs2_la_default_mb.exit_crit_edge, %land.lhs.true.i.ocfs2_la_default_mb.exit_crit_edge
  %retval.0.i = phi i32 [ %26, %if.end16.i ], [ 8, %land.lhs.true7.i.ocfs2_la_default_mb.exit_crit_edge ], [ 8, %land.lhs.true.i.ocfs2_la_default_mb.exit_crit_edge ]
  %shl.i = shl i32 %retval.0.i, %sub.i57.i
  %27 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl.i, ptr %local_alloc_bits, align 8
  br label %if.end10

if.end10:                                         ; preds = %ocfs2_la_default_mb.exit, %if.end.if.end10_crit_edge
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %28 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slot_num, align 8
  %call11 = call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 11, i32 noundef %29) #10
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.body23, label %if.end32

do.body23:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m24) #10
  %30 = ptrtoint ptr %_m24 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1152921504606846976, ptr %_m24, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m24, ptr noundef nonnull @__func__.ocfs2_load_local_alloc, i32 noundef 294, ptr noundef nonnull @.str.1, i64 noundef -22) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m24) #10
  br label %if.then126

if.end32:                                         ; preds = %if.end10
  %call33 = call i32 @ocfs2_read_inode_block_full(ptr noundef nonnull %call11, ptr noundef nonnull %alloc_bh, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end64

if.then36:                                        ; preds = %if.end32
  %31 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call33, label %do.body53 [
    i32 -512, label %if.then36.if.then126_crit_edge
    i32 -4, label %if.then36.if.then126_crit_edge224
    i32 -28, label %if.then36.if.then126_crit_edge225
    i32 -122, label %if.then36.if.then126_crit_edge226
  ]

if.then36.if.then126_crit_edge226:                ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then126

if.then36.if.then126_crit_edge225:                ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then126

if.then36.if.then126_crit_edge224:                ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then126

if.then36.if.then126_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then126

do.body53:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m54) #10
  %32 = ptrtoint ptr %_m54 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606846976, ptr %_m54, align 8
  %conv58 = sext i32 %call33 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m54, ptr noundef nonnull @__func__.ocfs2_load_local_alloc, i32 noundef 301, ptr noundef nonnull @.str.1, i64 noundef %conv58) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m54) #10
  br label %if.then126

if.end64:                                         ; preds = %if.end32
  %33 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %alloc_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data, align 4
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %36, i32 0, i32 35
  %i_flags = getelementptr inbounds %struct.ocfs2_dinode, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %38)
  %tobool66.not = icmp ult i32 %38, 1073741824
  br i1 %tobool66.not, label %do.body68, label %if.end77

do.body68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m69) #10
  %39 = ptrtoint ptr %_m69 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606846976, ptr %_m69, align 8
  %add.ptr.i = getelementptr i8, ptr %call11, i32 -1608
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m69, ptr noundef nonnull @__func__.ocfs2_load_local_alloc, i32 noundef 311, ptr noundef nonnull @.str.2, i64 noundef %41) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m69) #10
  br label %if.then126

if.end77:                                         ; preds = %if.end64
  %la_size = getelementptr inbounds %struct.ocfs2_dinode, ptr %36, i32 0, i32 35, i32 0, i32 2
  %42 = ptrtoint ptr %la_size to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %la_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp79 = icmp eq i16 %43, 0
  %.pre = call i16 @llvm.bswap.i16(i16 %43)
  br i1 %cmp79, label %if.end77.do.body88_crit_edge, label %lor.lhs.false

if.end77.do.body88_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body88

lor.lhs.false:                                    ; preds = %if.end77
  %i_sb = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 8
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_blocksize.i, align 16
  %48 = trunc i32 %47 to i16
  %conv.i211 = add i16 %48, -208
  call void @__sanitizer_cov_trace_cmp2(i16 %.pre, i16 %conv.i211)
  %cmp85 = icmp ugt i16 %.pre, %conv.i211
  br i1 %cmp85, label %lor.lhs.false.do.body88_crit_edge, label %if.end98

lor.lhs.false.do.body88_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body88

do.body88:                                        ; preds = %lor.lhs.false.do.body88_crit_edge, %if.end77.do.body88_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m89) #10
  %49 = ptrtoint ptr %_m89 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1152921504606846976, ptr %_m89, align 8
  %conv94 = zext i16 %.pre to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m89, ptr noundef nonnull @__func__.ocfs2_load_local_alloc, i32 noundef 319, ptr noundef nonnull @.str.3, i32 noundef %conv94) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m89) #10
  br label %if.then126

if.end98:                                         ; preds = %lor.lhs.false
  %la_bitmap.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %36, i32 0, i32 35, i32 0, i32 7
  %conv.i212 = zext i16 %.pre to i32
  %call.i = call i32 @memweight(ptr noundef %la_bitmap.i, i32 noundef %conv.i212) #10
  call fastcc void @trace_ocfs2_local_alloc_count_bits(i32 noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool100.not = icmp eq i32 %call.i, 0
  br i1 %tobool100.not, label %lor.lhs.false101, label %if.end98.do.body109_crit_edge

if.end98.do.body109_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body109

lor.lhs.false101:                                 ; preds = %if.end98
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %36, i32 0, i32 34
  %50 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool102.not = icmp eq i32 %51, 0
  br i1 %tobool102.not, label %lor.lhs.false103, label %lor.lhs.false101.do.body109_crit_edge

lor.lhs.false101.do.body109_crit_edge:            ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body109

lor.lhs.false103:                                 ; preds = %lor.lhs.false101
  %i_total = getelementptr inbounds %struct.anon.79, ptr %id1, i32 0, i32 1
  %52 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool105.not = icmp eq i32 %53, 0
  br i1 %tobool105.not, label %lor.lhs.false106, label %lor.lhs.false103.do.body109_crit_edge

lor.lhs.false103.do.body109_crit_edge:            ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body109

lor.lhs.false106:                                 ; preds = %lor.lhs.false103
  %54 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool107.not = icmp eq i32 %55, 0
  br i1 %tobool107.not, label %if.end123, label %lor.lhs.false106.do.body109_crit_edge

lor.lhs.false106.do.body109_crit_edge:            ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body109

do.body109:                                       ; preds = %lor.lhs.false106.do.body109_crit_edge, %lor.lhs.false103.do.body109_crit_edge, %lor.lhs.false101.do.body109_crit_edge, %if.end98.do.body109_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m110) #10
  %56 = ptrtoint ptr %_m110 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1152921504606846976, ptr %_m110, align 8
  %id1114 = getelementptr inbounds %struct.ocfs2_dinode, ptr %36, i32 0, i32 34
  %57 = ptrtoint ptr %id1114 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id1114, align 8
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %i_total117 = getelementptr inbounds %struct.anon.79, ptr %id1114, i32 0, i32 1
  %60 = ptrtoint ptr %i_total117 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_total117, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id2, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m110, ptr noundef nonnull @__func__.ocfs2_load_local_alloc, i32 noundef 338, ptr noundef nonnull @.str.4, i32 noundef %call.i, i32 noundef %59, i32 noundef %62, i32 noundef %64) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m110) #10
  br label %if.then126

if.end123:                                        ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %alloc_bh, align 4
  %local_alloc_bh = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 52
  %67 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %local_alloc_bh, align 8
  %local_alloc_state = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 51
  %68 = ptrtoint ptr %local_alloc_state to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %local_alloc_state, align 4
  br label %if.end127

if.then126:                                       ; preds = %do.body109, %do.body88, %do.body68, %do.body53, %if.then36.if.then126_crit_edge, %if.then36.if.then126_crit_edge224, %if.then36.if.then126_crit_edge225, %if.then36.if.then126_crit_edge226, %do.body23
  %status.0.ph = phi i32 [ %call33, %do.body53 ], [ %call33, %if.then36.if.then126_crit_edge ], [ %call33, %if.then36.if.then126_crit_edge224 ], [ %call33, %if.then36.if.then126_crit_edge225 ], [ %call33, %if.then36.if.then126_crit_edge226 ], [ -22, %do.body23 ], [ -22, %do.body68 ], [ -22, %do.body109 ], [ -22, %do.body88 ]
  %69 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %alloc_bh, align 4
  %tobool.not.i = icmp eq ptr %70, null
  br i1 %tobool.not.i, label %if.then126.if.end127_crit_edge, label %if.then.i

if.then126.if.end127_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then.i:                                        ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %70) #10
  br label %if.end127

if.end127:                                        ; preds = %if.then.i, %if.then126.if.end127_crit_edge, %if.end123
  %status.0219 = phi i32 [ %call33, %if.end123 ], [ %status.0.ph, %if.then126.if.end127_crit_edge ], [ %status.0.ph, %if.then.i ]
  call void @iput(ptr noundef %call11) #10
  %71 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %local_alloc_bits, align 8
  call fastcc void @trace_ocfs2_load_local_alloc(i32 noundef %72)
  %73 = zext i32 %status.0219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %status.0219, label %do.body147 [
    i32 0, label %if.end127.if.end158_crit_edge
    i32 -512, label %if.end127.if.end158_crit_edge227
    i32 -4, label %if.end127.if.end158_crit_edge228
    i32 524289, label %if.end127.if.end158_crit_edge229
    i32 -28, label %if.end127.if.end158_crit_edge230
    i32 -122, label %if.end127.if.end158_crit_edge231
  ]

if.end127.if.end158_crit_edge231:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.end127.if.end158_crit_edge230:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.end127.if.end158_crit_edge229:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.end127.if.end158_crit_edge228:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.end127.if.end158_crit_edge227:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.end127.if.end158_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

do.body147:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m148) #10
  %74 = ptrtoint ptr %_m148 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 1152921504606846976, ptr %_m148, align 8
  %conv152 = sext i32 %status.0219 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m148, ptr noundef nonnull @__func__.ocfs2_load_local_alloc, i32 noundef 355, ptr noundef nonnull @.str.1, i64 noundef %conv152) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m148) #10
  br label %if.end158

if.end158:                                        ; preds = %do.body147, %if.end127.if.end158_crit_edge, %if.end127.if.end158_crit_edge227, %if.end127.if.end158_crit_edge228, %if.end127.if.end158_crit_edge229, %if.end127.if.end158_crit_edge230, %if.end127.if.end158_crit_edge231, %if.end127.thread
  %status.0219223 = phi i32 [ 0, %if.end127.thread ], [ %status.0219, %do.body147 ], [ %status.0219, %if.end127.if.end158_crit_edge ], [ %status.0219, %if.end127.if.end158_crit_edge227 ], [ %status.0219, %if.end127.if.end158_crit_edge228 ], [ %status.0219, %if.end127.if.end158_crit_edge229 ], [ %status.0219, %if.end127.if.end158_crit_edge230 ], [ %status.0219, %if.end127.if.end158_crit_edge231 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloc_bh) #10
  ret i32 %status.0219223
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_get_system_file_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_inode_block_full(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_load_local_alloc(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_load_local_alloc, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_load_local_alloc, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !96
  %call42 = tail call i32 @__traceiter_ocfs2_load_local_alloc(ptr noundef null, i32 noundef %num) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_load_local_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_load_local_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_load_local_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_load_local_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 727, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_shutdown_local_alloc(ptr noundef %osb) local_unnamed_addr #2 align 64 {
entry:
  %main_bm_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m42 = alloca i64, align 8
  %_m74 = alloca i64, align 8
  %_m106 = alloca i64, align 8
  %_m143 = alloca i64, align 8
  %_m177 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %main_bm_bh) #10
  %0 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %main_bm_bh, align 4
  %la_enable_wq = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 47
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %la_enable_wq) #10
  %ocfs2_wq = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 101
  %1 = ptrtoint ptr %ocfs2_wq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ocfs2_wq, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @flush_workqueue(ptr noundef nonnull %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %local_alloc_state = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 51
  %3 = ptrtoint ptr %local_alloc_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %local_alloc_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3:                                          ; preds = %if.end
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %5 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slot_num, align 8
  %call4 = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 11, i32 noundef %6) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.body, label %if.end20

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_shutdown_local_alloc, i32 noundef 390, ptr noundef nonnull @.str.1, i64 noundef -2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %out

if.end20:                                         ; preds = %if.end3
  %8 = ptrtoint ptr %local_alloc_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %local_alloc_state, align 4
  %osb_la_resmap = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 54
  tail call void @ocfs2_resmap_uninit(ptr noundef %osb_la_resmap) #10
  %call22 = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 4, i32 noundef 65535) #10
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.body41, label %if.end52

do.body41:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m42) #10
  %9 = ptrtoint ptr %_m42 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606846976, ptr %_m42, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m42, ptr noundef nonnull @__func__.ocfs2_shutdown_local_alloc, i32 noundef 403, ptr noundef nonnull @.str.1, i64 noundef -22) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m42) #10
  br label %out

if.end52:                                         ; preds = %if.end20
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %call22, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %call53 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call22, ptr noundef nonnull %main_bm_bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end84

if.then56:                                        ; preds = %if.end52
  %10 = zext i32 %call53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call53, label %do.body73 [
    i32 -512, label %if.then56.out_mutex_crit_edge
    i32 -4, label %if.then56.out_mutex_crit_edge270
    i32 -28, label %if.then56.out_mutex_crit_edge271
    i32 -122, label %if.then56.out_mutex_crit_edge272
  ]

if.then56.out_mutex_crit_edge272:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex

if.then56.out_mutex_crit_edge271:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex

if.then56.out_mutex_crit_edge270:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex

if.then56.out_mutex_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex

do.body73:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m74) #10
  %11 = ptrtoint ptr %_m74 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m74, align 8
  %conv78 = sext i32 %call53 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m74, ptr noundef nonnull @__func__.ocfs2_shutdown_local_alloc, i32 noundef 411, ptr noundef nonnull @.str.1, i64 noundef %conv78) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m74) #10
  br label %out_mutex

if.end84:                                         ; preds = %if.end52
  %call85 = call ptr @ocfs2_start_trans(ptr noundef %osb, i32 noundef 6) #10
  %cmp.i = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then87, label %if.end116

if.then87:                                        ; preds = %if.end84
  %12 = ptrtoint ptr %call85 to i32
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %12, label %do.body105 [
    i32 -512, label %if.then87.out_unlock_crit_edge
    i32 -4, label %if.then87.out_unlock_crit_edge273
    i32 524289, label %if.then87.out_unlock_crit_edge274
    i32 -28, label %if.then87.out_unlock_crit_edge275
    i32 -122, label %if.then87.out_unlock_crit_edge276
  ]

if.then87.out_unlock_crit_edge276:                ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then87.out_unlock_crit_edge275:                ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then87.out_unlock_crit_edge274:                ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then87.out_unlock_crit_edge273:                ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then87.out_unlock_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

do.body105:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m106) #10
  %14 = ptrtoint ptr %_m106 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606846976, ptr %_m106, align 8
  %conv110 = sext i32 %12 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m106, ptr noundef nonnull @__func__.ocfs2_shutdown_local_alloc, i32 noundef 418, ptr noundef nonnull @.str.1, i64 noundef %conv110) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m106) #10
  br label %out_unlock

if.end116:                                        ; preds = %if.end84
  %local_alloc_bh = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 52
  %15 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %local_alloc_bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %b_size, align 8
  %call117 = call ptr @kmemdup(ptr noundef %18, i32 noundef %20, i32 noundef 3136) #10
  %tobool118.not = icmp eq ptr %call117, null
  br i1 %tobool118.not, label %if.end116.out_commit_crit_edge, label %if.end120

if.end116.out_commit_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.end120:                                        ; preds = %if.end116
  %ip_metadata_cache.i = getelementptr i8, ptr %call4, i32 -56
  %call122 = call i32 @ocfs2_journal_access_di(ptr noundef %call85, ptr noundef %ip_metadata_cache.i, ptr noundef %16, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.then125, label %if.end153

if.then125:                                       ; preds = %if.end120
  %21 = zext i32 %call122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call122, label %do.body142 [
    i32 -512, label %if.then125.out_commit_crit_edge
    i32 -4, label %if.then125.out_commit_crit_edge277
    i32 -28, label %if.then125.out_commit_crit_edge278
    i32 -122, label %if.then125.out_commit_crit_edge279
  ]

if.then125.out_commit_crit_edge279:               ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.then125.out_commit_crit_edge278:               ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.then125.out_commit_crit_edge277:               ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.then125.out_commit_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

do.body142:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m143) #10
  %22 = ptrtoint ptr %_m143 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606846976, ptr %_m143, align 8
  %conv147 = sext i32 %call122 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m143, ptr noundef nonnull @__func__.ocfs2_shutdown_local_alloc, i32 noundef 435, ptr noundef nonnull @.str.1, i64 noundef %conv147) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m143) #10
  br label %out_commit

if.end153:                                        ; preds = %if.end120
  %id2.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %18, i32 0, i32 35
  %id1.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %18, i32 0, i32 34
  %i_total.i = getelementptr inbounds %struct.anon.79, ptr %id1.i, i32 0, i32 1
  %23 = ptrtoint ptr %i_total.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %i_total.i, align 4
  %24 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %id1.i, align 8
  %25 = ptrtoint ptr %id2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %id2.i, align 8
  %la_size.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %18, i32 0, i32 35, i32 0, i32 2
  %26 = ptrtoint ptr %la_size.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %la_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp9.not.i = icmp eq i16 %27, 0
  br i1 %cmp9.not.i, label %if.end153.ocfs2_clear_local_alloc.exit_crit_edge, label %for.body.lr.ph.i

if.end153.ocfs2_clear_local_alloc.exit_crit_edge: ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_clear_local_alloc.exit

for.body.lr.ph.i:                                 ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  %28 = call i16 @llvm.bswap.i16(i16 %27) #10
  %la_bitmap.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %18, i32 0, i32 35, i32 0, i32 7
  %29 = call i16 @llvm.umax.i16(i16 %28, i16 1) #10
  %umax.i = zext i16 %29 to i32
  %30 = call ptr @memset(ptr %la_bitmap.i, i32 0, i32 %umax.i)
  br label %ocfs2_clear_local_alloc.exit

ocfs2_clear_local_alloc.exit:                     ; preds = %for.body.lr.ph.i, %if.end153.ocfs2_clear_local_alloc.exit_crit_edge
  call void @ocfs2_journal_dirty(ptr noundef %call85, ptr noundef %16) #10
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %ocfs2_clear_local_alloc.exit.brelse.exit_crit_edge, label %if.then.i

ocfs2_clear_local_alloc.exit.brelse.exit_crit_edge: ; preds = %ocfs2_clear_local_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %ocfs2_clear_local_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %16) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %ocfs2_clear_local_alloc.exit.brelse.exit_crit_edge
  %31 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %local_alloc_bh, align 8
  %32 = ptrtoint ptr %local_alloc_state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %local_alloc_state, align 4
  %33 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %main_bm_bh, align 4
  %call156 = call fastcc i32 @ocfs2_sync_local_to_main(ptr noundef %osb, ptr noundef %call85, ptr noundef nonnull %call117, ptr noundef nonnull %call22, ptr noundef %34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then159, label %brelse.exit.out_commit_crit_edge

brelse.exit.out_commit_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.then159:                                       ; preds = %brelse.exit
  %35 = zext i32 %call156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call156, label %do.body176 [
    i32 -512, label %if.then159.out_commit_crit_edge
    i32 -4, label %if.then159.out_commit_crit_edge280
    i32 -28, label %if.then159.out_commit_crit_edge281
    i32 -122, label %if.then159.out_commit_crit_edge282
  ]

if.then159.out_commit_crit_edge282:               ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.then159.out_commit_crit_edge281:               ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.then159.out_commit_crit_edge280:               ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

if.then159.out_commit_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_commit

do.body176:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m177) #10
  %36 = ptrtoint ptr %_m177 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m177, align 8
  %conv181 = sext i32 %call156 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m177, ptr noundef nonnull @__func__.ocfs2_shutdown_local_alloc, i32 noundef 449, ptr noundef nonnull @.str.1, i64 noundef %conv181) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m177) #10
  br label %out_commit

out_commit:                                       ; preds = %do.body176, %if.then159.out_commit_crit_edge, %if.then159.out_commit_crit_edge280, %if.then159.out_commit_crit_edge281, %if.then159.out_commit_crit_edge282, %brelse.exit.out_commit_crit_edge, %do.body142, %if.then125.out_commit_crit_edge, %if.then125.out_commit_crit_edge277, %if.then125.out_commit_crit_edge278, %if.then125.out_commit_crit_edge279, %if.end116.out_commit_crit_edge
  %call188 = call i32 @ocfs2_commit_trans(ptr noundef %osb, ptr noundef %call85) #10
  br label %out_unlock

out_unlock:                                       ; preds = %out_commit, %do.body105, %if.then87.out_unlock_crit_edge, %if.then87.out_unlock_crit_edge273, %if.then87.out_unlock_crit_edge274, %if.then87.out_unlock_crit_edge275, %if.then87.out_unlock_crit_edge276
  %alloc_copy.0 = phi ptr [ %call117, %out_commit ], [ null, %if.then87.out_unlock_crit_edge ], [ null, %if.then87.out_unlock_crit_edge273 ], [ null, %if.then87.out_unlock_crit_edge274 ], [ null, %if.then87.out_unlock_crit_edge275 ], [ null, %if.then87.out_unlock_crit_edge276 ], [ null, %do.body105 ]
  %37 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %main_bm_bh, align 4
  %tobool.not.i266 = icmp eq ptr %38, null
  br i1 %tobool.not.i266, label %out_unlock.brelse.exit268_crit_edge, label %if.then.i267

out_unlock.brelse.exit268_crit_edge:              ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit268

if.then.i267:                                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %38) #10
  br label %brelse.exit268

brelse.exit268:                                   ; preds = %if.then.i267, %out_unlock.brelse.exit268_crit_edge
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call22, i32 noundef 1) #10
  br label %out_mutex

out_mutex:                                        ; preds = %brelse.exit268, %do.body73, %if.then56.out_mutex_crit_edge, %if.then56.out_mutex_crit_edge270, %if.then56.out_mutex_crit_edge271, %if.then56.out_mutex_crit_edge272
  %alloc_copy.1 = phi ptr [ %alloc_copy.0, %brelse.exit268 ], [ null, %if.then56.out_mutex_crit_edge ], [ null, %if.then56.out_mutex_crit_edge270 ], [ null, %if.then56.out_mutex_crit_edge271 ], [ null, %if.then56.out_mutex_crit_edge272 ], [ null, %do.body73 ]
  call void @up_write(ptr noundef %i_rwsem.i) #10
  call void @iput(ptr noundef nonnull %call22) #10
  br label %out

out:                                              ; preds = %out_mutex, %do.body41, %do.body, %if.end.out_crit_edge
  %alloc_copy.2 = phi ptr [ null, %if.end.out_crit_edge ], [ %alloc_copy.1, %out_mutex ], [ null, %do.body41 ], [ null, %do.body ]
  %local_alloc_inode.0 = phi ptr [ null, %if.end.out_crit_edge ], [ %call4, %out_mutex ], [ %call4, %do.body41 ], [ null, %do.body ]
  call void @iput(ptr noundef %local_alloc_inode.0) #10
  call void @kfree(ptr noundef %alloc_copy.2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %main_bm_bh) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_resmap_uninit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_start_trans(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_journal_access_di(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_journal_dirty(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_sync_local_to_main(ptr nocapture noundef readonly %osb, ptr noundef %handle, ptr noundef %alloc, ptr noundef %main_bm_inode, ptr noundef %main_bm_bh) unnamed_addr #2 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m67 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %alloc, i32 0, i32 35
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %alloc, i32 0, i32 34
  %i_total = getelementptr inbounds %struct.anon.79, ptr %id1, i32 0, i32 1
  %0 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_total, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id1, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call fastcc void @trace_ocfs2_sync_local_to_main(i32 noundef %2, i32 noundef %5)
  %6 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end77_crit_edge, label %if.end

entry.if.end77_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp = icmp eq i32 %9, %7
  br i1 %cmp, label %if.end.if.end77_crit_edge, label %if.end9

if.end.if.end77_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.end9:                                          ; preds = %if.end
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %10 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sb, align 4
  %12 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id2, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %16, i32 0, i32 36
  %17 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 2
  %19 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %20 to i32
  %sub.i = sub i32 %18, %conv.i
  %conv1.i = zext i32 %14 to i64
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv1.i, %sh_prom.i
  %la_bitmap = getelementptr inbounds %struct.ocfs2_dinode, ptr %alloc, i32 0, i32 35, i32 0, i32 7
  %21 = tail call i32 @llvm.bswap.i32(i32 %7)
  %call.i134140 = tail call i32 @_find_next_zero_bit_le(ptr noundef %la_bitmap, i32 noundef %21, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i134140)
  %cmp13.not135141 = icmp eq i32 %call.i134140, -1
  br i1 %cmp13.not135141, label %if.end9.if.end77_crit_edge, label %if.end9.while.body.lr.ph_crit_edge

if.end9.while.body.lr.ph_crit_edge:               ; preds = %if.end9
  br label %while.body.lr.ph

if.end9.if.end77_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

while.cond.outer:                                 ; preds = %if.end42
  %add47 = add nuw i32 %call.i138, 1
  %call.i134 = tail call i32 @_find_next_zero_bit_le(ptr noundef %la_bitmap, i32 noundef %21, i32 noundef %add47) #10
  %cmp13.not135 = icmp eq i32 %call.i134, -1
  br i1 %cmp13.not135, label %while.cond.outer.bail_crit_edge, label %while.cond.outer.while.body.lr.ph_crit_edge

while.cond.outer.while.body.lr.ph_crit_edge:      ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

while.cond.outer.bail_crit_edge:                  ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

while.body.lr.ph:                                 ; preds = %while.cond.outer.while.body.lr.ph_crit_edge, %if.end9.while.body.lr.ph_crit_edge
  %call.i134145 = phi i32 [ %call.i134, %while.cond.outer.while.body.lr.ph_crit_edge ], [ %call.i134140, %if.end9.while.body.lr.ph_crit_edge ]
  %status.0.ph144 = phi i32 [ %status.1, %while.cond.outer.while.body.lr.ph_crit_edge ], [ 0, %if.end9.while.body.lr.ph_crit_edge ]
  %start.0.ph143 = phi i32 [ %add47, %while.cond.outer.while.body.lr.ph_crit_edge ], [ 0, %if.end9.while.body.lr.ph_crit_edge ]
  %count.0.ph142 = phi i32 [ 1, %while.cond.outer.while.body.lr.ph_crit_edge ], [ 0, %if.end9.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then16.while.body_crit_edge, %while.body.lr.ph
  %call.i138 = phi i32 [ %call.i134145, %while.body.lr.ph ], [ %call.i, %if.then16.while.body_crit_edge ]
  %start.0137 = phi i32 [ %start.0.ph143, %while.body.lr.ph ], [ %inc17, %if.then16.while.body_crit_edge ]
  %count.0136 = phi i32 [ %count.0.ph142, %while.body.lr.ph ], [ %inc, %if.then16.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i138, i32 %21)
  %cmp14 = icmp slt i32 %call.i138, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i138, i32 %start.0137)
  %cmp15 = icmp eq i32 %call.i138, %start.0137
  %or.cond = and i1 %cmp14, %cmp15
  br i1 %or.cond, label %if.then16, label %if.end18

if.then16:                                        ; preds = %while.body
  %inc = add i32 %count.0136, 1
  %inc17 = add nuw i32 %call.i138, 1
  %call.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %la_bitmap, i32 noundef %21, i32 noundef %inc17) #10
  %cmp13.not = icmp eq i32 %call.i, -1
  br i1 %cmp13.not, label %if.then16.bail_crit_edge, label %if.then16.while.body_crit_edge

if.then16.while.body_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.then16.bail_crit_edge:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.end18:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0136)
  %tobool19.not = icmp eq i32 %count.0136, 0
  br i1 %tobool19.not, label %if.end18.if.end42_crit_edge, label %if.then20

if.end18.if.end42_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then20:                                        ; preds = %if.end18
  %22 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sb, align 4
  %sub = sub i32 %start.0137, %count.0136
  %s_fs_info.i118 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i118 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i118, align 16
  %s_clustersize_bits.i119 = getelementptr inbounds %struct.ocfs2_super, ptr %25, i32 0, i32 36
  %26 = ptrtoint ptr %s_clustersize_bits.i119 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_clustersize_bits.i119, align 8
  %s_blocksize_bits.i120 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %s_blocksize_bits.i120 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_blocksize_bits.i120, align 4
  %conv.i121 = zext i8 %29 to i32
  %sub.i122 = sub i32 %27, %conv.i121
  %conv1.i123 = zext i32 %sub to i64
  %sh_prom.i124 = zext i32 %sub.i122 to i64
  %shl.i125 = shl i64 %conv1.i123, %sh_prom.i124
  %add = add i64 %shl.i125, %shl.i
  tail call fastcc void @trace_ocfs2_sync_local_to_main_free(i32 noundef %count.0136, i32 noundef %sub, i64 noundef %shl.i, i64 noundef %add)
  %call24 = tail call i32 @ocfs2_release_clusters(ptr noundef %handle, ptr noundef %main_bm_inode, ptr noundef %main_bm_bh, i64 noundef %add, i32 noundef %count.0136) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.then20.if.end42_crit_edge

if.then20.if.end42_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then26:                                        ; preds = %if.then20
  %30 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call24, label %do.body [
    i32 -512, label %if.then26.bail_crit_edge
    i32 -4, label %if.then26.bail_crit_edge182
    i32 -28, label %if.then26.bail_crit_edge183
    i32 -122, label %if.then26.bail_crit_edge184
  ]

if.then26.bail_crit_edge184:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then26.bail_crit_edge183:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then26.bail_crit_edge182:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then26.bail_crit_edge:                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

do.body:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %31 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call24 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_sync_local_to_main, i32 noundef 1001, ptr noundef nonnull @.str.1, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %bail

if.end42:                                         ; preds = %if.then20.if.end42_crit_edge, %if.end18.if.end42_crit_edge
  %status.1 = phi i32 [ %call24, %if.then20.if.end42_crit_edge ], [ %status.0.ph144, %if.end18.if.end42_crit_edge ]
  br i1 %cmp14, label %while.cond.outer, label %if.end42.bail_crit_edge

if.end42.bail_crit_edge:                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

bail:                                             ; preds = %if.end42.bail_crit_edge, %do.body, %if.then26.bail_crit_edge, %if.then26.bail_crit_edge182, %if.then26.bail_crit_edge183, %if.then26.bail_crit_edge184, %if.then16.bail_crit_edge, %while.cond.outer.bail_crit_edge
  %status.2 = phi i32 [ %call24, %if.then26.bail_crit_edge ], [ %call24, %if.then26.bail_crit_edge182 ], [ %call24, %if.then26.bail_crit_edge183 ], [ %call24, %if.then26.bail_crit_edge184 ], [ %call24, %do.body ], [ %status.0.ph144, %if.then16.bail_crit_edge ], [ %status.1, %if.end42.bail_crit_edge ], [ %status.1, %while.cond.outer.bail_crit_edge ]
  %32 = zext i32 %status.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %status.2, label %do.body66 [
    i32 0, label %bail.if.end77_crit_edge
    i32 -512, label %bail.if.end77_crit_edge185
    i32 -4, label %bail.if.end77_crit_edge186
    i32 524289, label %bail.if.end77_crit_edge187
    i32 -28, label %bail.if.end77_crit_edge188
    i32 -122, label %bail.if.end77_crit_edge189
  ]

bail.if.end77_crit_edge189:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

bail.if.end77_crit_edge188:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

bail.if.end77_crit_edge187:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

bail.if.end77_crit_edge186:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

bail.if.end77_crit_edge185:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

bail.if.end77_crit_edge:                          ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

do.body66:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m67) #10
  %33 = ptrtoint ptr %_m67 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606846976, ptr %_m67, align 8
  %conv71 = sext i32 %status.2 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m67, ptr noundef nonnull @__func__.ocfs2_sync_local_to_main, i32 noundef 1013, ptr noundef nonnull @.str.1, i64 noundef %conv71) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m67) #10
  br label %if.end77

if.end77:                                         ; preds = %do.body66, %bail.if.end77_crit_edge, %bail.if.end77_crit_edge185, %bail.if.end77_crit_edge186, %bail.if.end77_crit_edge187, %bail.if.end77_crit_edge188, %bail.if.end77_crit_edge189, %if.end9.if.end77_crit_edge, %if.end.if.end77_crit_edge, %entry.if.end77_crit_edge
  %status.2127 = phi i32 [ %status.2, %do.body66 ], [ %status.2, %bail.if.end77_crit_edge ], [ %status.2, %bail.if.end77_crit_edge185 ], [ %status.2, %bail.if.end77_crit_edge186 ], [ %status.2, %bail.if.end77_crit_edge187 ], [ %status.2, %bail.if.end77_crit_edge188 ], [ %status.2, %bail.if.end77_crit_edge189 ], [ 0, %if.end.if.end77_crit_edge ], [ 0, %entry.if.end77_crit_edge ], [ 0, %if.end9.if.end77_crit_edge ]
  ret i32 %status.2127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_begin_local_alloc_recovery(ptr noundef %osb, i32 noundef %slot_num, ptr nocapture noundef %alloc_copy) local_unnamed_addr #2 align 64 {
entry:
  %alloc_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m34 = alloca i64, align 8
  %_m74 = alloca i64, align 8
  %_m111 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloc_bh) #10
  %0 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %alloc_bh, align 4
  tail call fastcc void @trace_ocfs2_begin_local_alloc_recovery(i32 noundef %slot_num)
  %1 = ptrtoint ptr %alloc_copy to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %alloc_copy, align 4
  %call = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 11, i32 noundef %slot_num) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_begin_local_alloc_recovery, i32 noundef 494, ptr noundef nonnull @.str.1, i64 noundef -22) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %if.then87

if.end12:                                         ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %call13 = call i32 @ocfs2_read_inode_block_full(ptr noundef nonnull %call, ptr noundef nonnull %alloc_bh, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end8.i

if.then16:                                        ; preds = %if.end12
  %3 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call13, label %do.body33 [
    i32 -512, label %if.then16.if.then87_crit_edge
    i32 -4, label %if.then16.if.then87_crit_edge179
    i32 -28, label %if.then16.if.then87_crit_edge180
    i32 -122, label %if.then16.if.then87_crit_edge181
  ]

if.then16.if.then87_crit_edge181:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then16.if.then87_crit_edge180:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then16.if.then87_crit_edge179:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then16.if.then87_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

do.body33:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m34) #10
  %4 = ptrtoint ptr %_m34 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606846976, ptr %_m34, align 8
  %conv38 = sext i32 %call13 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m34, ptr noundef nonnull @__func__.ocfs2_begin_local_alloc_recovery, i32 noundef 503, ptr noundef nonnull @.str.1, i64 noundef %conv38) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m34) #10
  br label %if.then87

if.end8.i:                                        ; preds = %if.end12
  %5 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_bh, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_size, align 8
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #13
  %9 = ptrtoint ptr %alloc_copy to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i, ptr %alloc_copy, align 4
  %tobool46.not = icmp eq ptr %call9.i, null
  br i1 %tobool46.not, label %if.end8.i.if.then87_crit_edge, label %if.end48

if.end8.i.if.then87_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.end48:                                         ; preds = %if.end8.i
  %10 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %alloc_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %b_size49 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %b_size49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_size49, align 8
  %16 = call ptr @memcpy(ptr %call9.i, ptr %13, i32 %15)
  %17 = load ptr, ptr %b_data, align 4
  %id2.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %17, i32 0, i32 35
  %id1.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %17, i32 0, i32 34
  %i_total.i = getelementptr inbounds %struct.anon.79, ptr %id1.i, i32 0, i32 1
  %18 = ptrtoint ptr %i_total.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %i_total.i, align 4
  %19 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %id1.i, align 8
  %20 = ptrtoint ptr %id2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %id2.i, align 8
  %la_size.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %17, i32 0, i32 35, i32 0, i32 2
  %21 = ptrtoint ptr %la_size.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %la_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp9.not.i = icmp eq i16 %22, 0
  br i1 %cmp9.not.i, label %if.end48.ocfs2_clear_local_alloc.exit_crit_edge, label %for.body.lr.ph.i

if.end48.ocfs2_clear_local_alloc.exit_crit_edge:  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_clear_local_alloc.exit

for.body.lr.ph.i:                                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %23 = call i16 @llvm.bswap.i16(i16 %22) #10
  %la_bitmap.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %17, i32 0, i32 35, i32 0, i32 7
  %24 = call i16 @llvm.umax.i16(i16 %23, i16 1) #10
  %umax.i = zext i16 %24 to i32
  %25 = call ptr @memset(ptr %la_bitmap.i, i32 0, i32 %umax.i)
  br label %ocfs2_clear_local_alloc.exit

ocfs2_clear_local_alloc.exit:                     ; preds = %for.body.lr.ph.i, %if.end48.ocfs2_clear_local_alloc.exit_crit_edge
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %26 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sb, align 4
  %28 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data, align 4
  %i_check = getelementptr inbounds %struct.ocfs2_dinode, ptr %17, i32 0, i32 27
  call void @ocfs2_compute_meta_ecc(ptr noundef %27, ptr noundef %29, ptr noundef %i_check) #10
  %30 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %alloc_bh, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %call, i32 -56
  %call53 = call i32 @ocfs2_write_block(ptr noundef %osb, ptr noundef %31, ptr noundef %ip_metadata_cache.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %ocfs2_clear_local_alloc.exit.if.end88_crit_edge

ocfs2_clear_local_alloc.exit.if.end88_crit_edge:  ; preds = %ocfs2_clear_local_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then56:                                        ; preds = %ocfs2_clear_local_alloc.exit
  %32 = zext i32 %call53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call53, label %do.body73 [
    i32 -512, label %if.then56.if.then87_crit_edge
    i32 -4, label %if.then56.if.then87_crit_edge182
    i32 -28, label %if.then56.if.then87_crit_edge183
    i32 -122, label %if.then56.if.then87_crit_edge184
  ]

if.then56.if.then87_crit_edge184:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then56.if.then87_crit_edge183:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then56.if.then87_crit_edge182:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then56.if.then87_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

do.body73:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m74) #10
  %33 = ptrtoint ptr %_m74 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606846976, ptr %_m74, align 8
  %conv78 = sext i32 %call53 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m74, ptr noundef nonnull @__func__.ocfs2_begin_local_alloc_recovery, i32 noundef 520, ptr noundef nonnull @.str.1, i64 noundef %conv78) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m74) #10
  br label %if.then87

if.then87:                                        ; preds = %do.body73, %if.then56.if.then87_crit_edge, %if.then56.if.then87_crit_edge182, %if.then56.if.then87_crit_edge183, %if.then56.if.then87_crit_edge184, %if.end8.i.if.then87_crit_edge, %do.body33, %if.then16.if.then87_crit_edge, %if.then16.if.then87_crit_edge179, %if.then16.if.then87_crit_edge180, %if.then16.if.then87_crit_edge181, %do.body
  %status.0.ph = phi i32 [ %call53, %do.body73 ], [ %call53, %if.then56.if.then87_crit_edge ], [ %call53, %if.then56.if.then87_crit_edge182 ], [ %call53, %if.then56.if.then87_crit_edge183 ], [ %call53, %if.then56.if.then87_crit_edge184 ], [ -12, %if.end8.i.if.then87_crit_edge ], [ %call13, %do.body33 ], [ %call13, %if.then16.if.then87_crit_edge ], [ %call13, %if.then16.if.then87_crit_edge179 ], [ %call13, %if.then16.if.then87_crit_edge180 ], [ %call13, %if.then16.if.then87_crit_edge181 ], [ -22, %do.body ]
  %34 = ptrtoint ptr %alloc_copy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %alloc_copy, align 4
  call void @kfree(ptr noundef %35) #10
  %36 = ptrtoint ptr %alloc_copy to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %alloc_copy, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %ocfs2_clear_local_alloc.exit.if.end88_crit_edge
  %status.0177 = phi i32 [ %status.0.ph, %if.then87 ], [ %call53, %ocfs2_clear_local_alloc.exit.if.end88_crit_edge ]
  %37 = ptrtoint ptr %alloc_bh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %alloc_bh, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end88.brelse.exit_crit_edge, label %if.then.i169

if.end88.brelse.exit_crit_edge:                   ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i169:                                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %38) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i169, %if.end88.brelse.exit_crit_edge
  br i1 %tobool.not, label %brelse.exit.if.end91_crit_edge, label %if.then90

brelse.exit.if.end91_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then90:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  %i_rwsem.i171 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i171) #10
  call void @iput(ptr noundef nonnull %call) #10
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %brelse.exit.if.end91_crit_edge
  %39 = zext i32 %status.0177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %status.0177, label %do.body110 [
    i32 0, label %if.end91.if.end121_crit_edge
    i32 -512, label %if.end91.if.end121_crit_edge185
    i32 -4, label %if.end91.if.end121_crit_edge186
    i32 524289, label %if.end91.if.end121_crit_edge187
    i32 -28, label %if.end91.if.end121_crit_edge188
    i32 -122, label %if.end91.if.end121_crit_edge189
  ]

if.end91.if.end121_crit_edge189:                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.end91.if.end121_crit_edge188:                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.end91.if.end121_crit_edge187:                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.end91.if.end121_crit_edge186:                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.end91.if.end121_crit_edge185:                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.end91.if.end121_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

do.body110:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m111) #10
  %40 = ptrtoint ptr %_m111 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1152921504606846976, ptr %_m111, align 8
  %conv115 = sext i32 %status.0177 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m111, ptr noundef nonnull @__func__.ocfs2_begin_local_alloc_recovery, i32 noundef 536, ptr noundef nonnull @.str.1, i64 noundef %conv115) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m111) #10
  br label %if.end121

if.end121:                                        ; preds = %do.body110, %if.end91.if.end121_crit_edge, %if.end91.if.end121_crit_edge185, %if.end91.if.end121_crit_edge186, %if.end91.if.end121_crit_edge187, %if.end91.if.end121_crit_edge188, %if.end91.if.end121_crit_edge189
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloc_bh) #10
  ret i32 %status.0177
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_begin_local_alloc_recovery(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_begin_local_alloc_recovery, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_begin_local_alloc_recovery, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  %call42 = tail call i32 @__traceiter_ocfs2_begin_local_alloc_recovery(ptr noundef null, i32 noundef %num) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_begin_local_alloc_recovery, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_begin_local_alloc_recovery, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_begin_local_alloc_recovery.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_begin_local_alloc_recovery.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 729, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
declare dso_local void @ocfs2_compute_meta_ecc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_write_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_complete_local_alloc_recovery(ptr noundef %osb, ptr noundef %alloc) local_unnamed_addr #2 align 64 {
entry:
  %main_bm_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m34 = alloca i64, align 8
  %_m66 = alloca i64, align 8
  %_m98 = alloca i64, align 8
  %_m132 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %main_bm_bh) #10
  %0 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %main_bm_bh, align 4
  %call = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 4, i32 noundef 65535) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %out.thread, label %if.end12

out.thread:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_complete_local_alloc_recovery, i32 noundef 559, ptr noundef nonnull @.str.1, i64 noundef -22) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %do.body131

if.end12:                                         ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %call13 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call, ptr noundef nonnull %main_bm_bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end44

if.then16:                                        ; preds = %if.end12
  %2 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call13, label %do.body33 [
    i32 -512, label %if.then16.out_mutex_crit_edge
    i32 -4, label %if.then16.out_mutex_crit_edge200
    i32 -28, label %if.then16.out_mutex_crit_edge201
    i32 -122, label %if.then16.out_mutex_crit_edge202
  ]

if.then16.out_mutex_crit_edge202:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex

if.then16.out_mutex_crit_edge201:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex

if.then16.out_mutex_crit_edge200:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex

if.then16.out_mutex_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mutex

do.body33:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m34) #10
  %3 = ptrtoint ptr %_m34 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606846976, ptr %_m34, align 8
  %conv38 = sext i32 %call13 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m34, ptr noundef nonnull @__func__.ocfs2_complete_local_alloc_recovery, i32 noundef 567, ptr noundef nonnull @.str.1, i64 noundef %conv38) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m34) #10
  br label %out_mutex

if.end44:                                         ; preds = %if.end12
  %call45 = call ptr @ocfs2_start_trans(ptr noundef %osb, i32 noundef 6) #10
  %cmp.i = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then47, label %if.end76

if.then47:                                        ; preds = %if.end44
  %4 = ptrtoint ptr %call45 to i32
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %4, label %do.body65 [
    i32 -512, label %if.then47.out_unlock_crit_edge
    i32 -4, label %if.then47.out_unlock_crit_edge203
    i32 524289, label %if.then47.out_unlock_crit_edge204
    i32 -28, label %if.then47.out_unlock_crit_edge205
    i32 -122, label %if.then47.out_unlock_crit_edge206
  ]

if.then47.out_unlock_crit_edge206:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then47.out_unlock_crit_edge205:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then47.out_unlock_crit_edge204:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then47.out_unlock_crit_edge203:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then47.out_unlock_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

do.body65:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m66) #10
  %6 = ptrtoint ptr %_m66 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606846976, ptr %_m66, align 8
  %conv70 = sext i32 %4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m66, ptr noundef nonnull @__func__.ocfs2_complete_local_alloc_recovery, i32 noundef 575, ptr noundef nonnull @.str.1, i64 noundef %conv70) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m66) #10
  br label %out_unlock

if.end76:                                         ; preds = %if.end44
  %h_sync = getelementptr inbounds %struct.jbd2_journal_handle, ptr %call45, i32 0, i32 7
  %7 = ptrtoint ptr %h_sync to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %h_sync, align 4
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr %h_sync, align 4
  %8 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %main_bm_bh, align 4
  %call77 = call fastcc i32 @ocfs2_sync_local_to_main(ptr noundef %osb, ptr noundef %call45, ptr noundef %alloc, ptr noundef nonnull %call, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then80, label %if.end76.if.end108_crit_edge

if.end76.if.end108_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then80:                                        ; preds = %if.end76
  %10 = zext i32 %call77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call77, label %do.body97 [
    i32 -512, label %if.then80.if.end108_crit_edge
    i32 -4, label %if.then80.if.end108_crit_edge207
    i32 -28, label %if.then80.if.end108_crit_edge208
    i32 -122, label %if.then80.if.end108_crit_edge209
  ]

if.then80.if.end108_crit_edge209:                 ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then80.if.end108_crit_edge208:                 ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then80.if.end108_crit_edge207:                 ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then80.if.end108_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

do.body97:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m98) #10
  %11 = ptrtoint ptr %_m98 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m98, align 8
  %conv102 = sext i32 %call77 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m98, ptr noundef nonnull @__func__.ocfs2_complete_local_alloc_recovery, i32 noundef 585, ptr noundef nonnull @.str.1, i64 noundef %conv102) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m98) #10
  br label %if.end108

if.end108:                                        ; preds = %do.body97, %if.then80.if.end108_crit_edge, %if.then80.if.end108_crit_edge207, %if.then80.if.end108_crit_edge208, %if.then80.if.end108_crit_edge209, %if.end76.if.end108_crit_edge
  %call109 = call i32 @ocfs2_commit_trans(ptr noundef %osb, ptr noundef %call45) #10
  br label %out_unlock

out_unlock:                                       ; preds = %if.end108, %do.body65, %if.then47.out_unlock_crit_edge, %if.then47.out_unlock_crit_edge203, %if.then47.out_unlock_crit_edge204, %if.then47.out_unlock_crit_edge205, %if.then47.out_unlock_crit_edge206
  %status.0 = phi i32 [ %call77, %if.end108 ], [ %4, %if.then47.out_unlock_crit_edge ], [ %4, %if.then47.out_unlock_crit_edge203 ], [ %4, %if.then47.out_unlock_crit_edge204 ], [ %4, %if.then47.out_unlock_crit_edge205 ], [ %4, %if.then47.out_unlock_crit_edge206 ], [ %4, %do.body65 ]
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call, i32 noundef 1) #10
  br label %out_mutex

out_mutex:                                        ; preds = %out_unlock, %do.body33, %if.then16.out_mutex_crit_edge, %if.then16.out_mutex_crit_edge200, %if.then16.out_mutex_crit_edge201, %if.then16.out_mutex_crit_edge202
  %status.1 = phi i32 [ %status.0, %out_unlock ], [ %call13, %if.then16.out_mutex_crit_edge ], [ %call13, %if.then16.out_mutex_crit_edge200 ], [ %call13, %if.then16.out_mutex_crit_edge201 ], [ %call13, %if.then16.out_mutex_crit_edge202 ], [ %call13, %do.body33 ]
  call void @up_write(ptr noundef %i_rwsem.i) #10
  %12 = ptrtoint ptr %main_bm_bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %main_bm_bh, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %out_mutex.out_crit_edge, label %if.then.i

out_mutex.out_crit_edge:                          ; preds = %out_mutex
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i:                                        ; preds = %out_mutex
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %13) #10
  br label %out

out:                                              ; preds = %if.then.i, %out_mutex.out_crit_edge
  call void @iput(ptr noundef nonnull %call) #10
  %14 = zext i32 %status.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %status.1, label %out.do.body131_crit_edge [
    i32 0, label %if.then111
    i32 -512, label %out.if.end142_crit_edge
    i32 -4, label %out.if.end142_crit_edge210
    i32 524289, label %out.if.end142_crit_edge211
    i32 -28, label %out.if.end142_crit_edge212
    i32 -122, label %out.if.end142_crit_edge213
  ]

out.if.end142_crit_edge213:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

out.if.end142_crit_edge212:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

out.if.end142_crit_edge211:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

out.if.end142_crit_edge210:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

out.if.end142_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

out.do.body131_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

if.then111:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_init_steal_slots(ptr noundef %osb) #10
  br label %if.end142

do.body131:                                       ; preds = %out.do.body131_crit_edge, %out.thread
  %status.2199 = phi i32 [ -22, %out.thread ], [ %status.1, %out.do.body131_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m132) #10
  %15 = ptrtoint ptr %_m132 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606846976, ptr %_m132, align 8
  %conv136 = sext i32 %status.2199 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m132, ptr noundef nonnull @__func__.ocfs2_complete_local_alloc_recovery, i32 noundef 603, ptr noundef nonnull @.str.1, i64 noundef %conv136) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m132) #10
  br label %if.end142

if.end142:                                        ; preds = %do.body131, %if.then111, %out.if.end142_crit_edge, %out.if.end142_crit_edge210, %out.if.end142_crit_edge211, %out.if.end142_crit_edge212, %out.if.end142_crit_edge213
  %status.2198 = phi i32 [ %status.1, %out.if.end142_crit_edge ], [ %status.1, %out.if.end142_crit_edge210 ], [ %status.1, %out.if.end142_crit_edge211 ], [ %status.1, %out.if.end142_crit_edge212 ], [ %status.1, %out.if.end142_crit_edge213 ], [ %status.2199, %do.body131 ], [ 0, %if.then111 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %main_bm_bh) #10
  ret i32 %status.2198
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_init_steal_slots(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_reserve_local_alloc_bits(ptr noundef %osb, i32 noundef %bits_wanted, ptr noundef %ac) local_unnamed_addr #2 align 64 {
entry:
  %cluster_off.i.i = alloca i32, align 4
  %cluster_count.i.i = alloca i32, align 4
  %_m.i298.i = alloca i64, align 8
  %_m69.i.i = alloca i64, align 8
  %_m.i.i = alloca i64, align 8
  %_m43.i.i = alloca i64, align 8
  %_m80.i.i = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m38.i = alloca i64, align 8
  %_m70.i = alloca i64, align 8
  %_m104.i = alloca i64, align 8
  %_m137.i = alloca i64, align 8
  %_m172.i = alloca i64, align 8
  %_m210.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m75 = alloca i64, align 8
  %_m130 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ac, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !100

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/localalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 623, 0\0A.popsection", ""() #10, !srcloc !101
  unreachable

do.end9:                                          ; preds = %entry
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %0 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_num, align 8
  %call = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 11, i32 noundef %1) #10
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %if.end109.thread, label %if.end27

if.end109.thread:                                 ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_reserve_local_alloc_bits, i32 noundef 631, ptr noundef nonnull @.str.1, i64 noundef -2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  %ac_max_block218 = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 10
  %3 = ptrtoint ptr %ac_max_block218 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ac_max_block218, align 8
  %5 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slot_num, align 8
  call fastcc void @trace_ocfs2_reserve_local_alloc_bits(i64 noundef %4, i32 noundef %bits_wanted, i32 noundef %6, i32 noundef -2)
  br label %do.body129

if.end27:                                         ; preds = %do.end9
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #10
  %local_alloc_state.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 51
  %7 = ptrtoint ptr %local_alloc_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %local_alloc_state.i, align 4
  %9 = add i32 %8, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %10 = icmp ult i32 %9, -2
  br i1 %10, label %if.end27.if.then32_crit_edge, label %lor.lhs.false

if.end27.if.then32_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end27
  %local_alloc_bits = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 48
  %11 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %local_alloc_bits, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %bits_wanted)
  %cmp30 = icmp ult i32 %12, %bits_wanted
  br i1 %cmp30, label %lor.lhs.false.if.then32_crit_edge, label %if.end34

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end27.if.then32_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #10
  br label %if.then108

if.end34:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #10
  %local_alloc_bh = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 52
  %13 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %local_alloc_bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 34
  %17 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id1, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %la_bitmap.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 35, i32 0, i32 7
  %la_size.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 35, i32 0, i32 2
  %20 = ptrtoint ptr %la_size.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %la_size.i, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  %conv.i = zext i16 %22 to i32
  %call.i = tail call i32 @memweight(ptr noundef %la_bitmap.i, i32 noundef %conv.i) #10
  tail call fastcc void @trace_ocfs2_local_alloc_count_bits(i32 noundef %call.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %call.i)
  %cmp37.not = icmp eq i32 %19, %call.i
  br i1 %cmp37.not, label %if.end44, label %bail

if.end44:                                         ; preds = %if.end34
  %i_total = getelementptr inbounds %struct.anon.79, ptr %id1, i32 0, i32 1
  %23 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_total, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id1, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %sub = sub i32 %25, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bits_wanted)
  %cmp48 = icmp ult i32 %sub, %bits_wanted
  br i1 %cmp48, label %if.then50, label %if.end44.if.end109.thread221_crit_edge

if.end44.if.end109.thread221_crit_edge:           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109.thread221

if.then50:                                        ; preds = %if.end44
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #10
  %29 = ptrtoint ptr %local_alloc_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %local_alloc_state.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %30, label %if.then52.i.i [
    i32 3, label %land.end.i.i
    i32 2, label %if.then50.ocfs2_recalc_la_window.exit.i_crit_edge
  ]

if.then50.ocfs2_recalc_la_window.exit.i_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_recalc_la_window.exit.i

land.end.i.i:                                     ; preds = %if.then50
  %.b75.i.i = load i1, ptr @ocfs2_recalc_la_window.__already_done, align 1
  br i1 %.b75.i.i, label %land.end.i.i.ocfs2_recalc_la_window.exit.i_crit_edge, label %if.then9.i.i, !prof !89

land.end.i.i.ocfs2_recalc_la_window.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_recalc_la_window.exit.i

if.then9.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ocfs2_recalc_la_window.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1047, i32 noundef 9, ptr noundef null) #10
  br label %ocfs2_recalc_la_window.exit.i

if.then52.i.i:                                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %local_alloc_default_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 49
  %32 = ptrtoint ptr %local_alloc_default_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %local_alloc_default_bits.i.i, align 4
  %34 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %local_alloc_bits, align 8
  br label %ocfs2_recalc_la_window.exit.i

ocfs2_recalc_la_window.exit.i:                    ; preds = %if.then52.i.i, %if.then9.i.i, %land.end.i.i.ocfs2_recalc_la_window.exit.i_crit_edge, %if.then50.ocfs2_recalc_la_window.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 72) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end60.i.thread.i, label %retry_enospc.preheader.i.i

retry_enospc.preheader.i.i:                       ; preds = %ocfs2_recalc_la_window.exit.i
  %36 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %local_alloc_bits, align 8
  %ac_bits_wanted137.i.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %ac_bits_wanted137.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ac_bits_wanted137.i.i, align 4
  %call13138.i.i = tail call i32 @ocfs2_reserve_cluster_bitmap_bits(ptr noundef %osb, ptr noundef nonnull %call7.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call13138.i.i)
  %cmp14139.i.i = icmp eq i32 %call13138.i.i, -28
  br i1 %cmp14139.i.i, label %retry_enospc.preheader.i.i.if.then16.i.i_crit_edge, label %retry_enospc.preheader.i.i.if.end22.i.i_crit_edge

retry_enospc.preheader.i.i.if.end22.i.i_crit_edge: ; preds = %retry_enospc.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

retry_enospc.preheader.i.i.if.then16.i.i_crit_edge: ; preds = %retry_enospc.preheader.i.i
  br label %if.then16.i.i

if.end60.i.thread.i:                              ; preds = %ocfs2_recalc_la_window.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #10
  %39 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606846976, ptr %_m.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_reserve_for_window, i32 noundef 1106, ptr noundef nonnull @.str.1, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #10
  br label %do.body79.i.i

if.then16.i.i:                                    ; preds = %if.end21.i.i.if.then16.i.i_crit_edge, %retry_enospc.preheader.i.i.if.then16.i.i_crit_edge
  %call17.i.i = tail call fastcc i32 @ocfs2_recalc_la_window(ptr noundef %osb, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call17.i.i)
  %cmp18.i.i = icmp eq i32 %call17.i.i, 3
  br i1 %cmp18.i.i, label %if.then.thread.i, label %if.end21.i.i

if.then.thread.i:                                 ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ocfs2_free_alloc_context(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %brelse.exit.i

if.end21.i.i:                                     ; preds = %if.then16.i.i
  tail call void @ocfs2_free_ac_resource(ptr noundef nonnull %call7.i.i.i.i) #10
  %40 = call ptr @memset(ptr %call7.i.i.i.i, i32 0, i32 72)
  %41 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %local_alloc_bits, align 8
  %43 = ptrtoint ptr %ac_bits_wanted137.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %ac_bits_wanted137.i.i, align 4
  %call13.i.i = tail call i32 @ocfs2_reserve_cluster_bitmap_bits(ptr noundef %osb, ptr noundef nonnull %call7.i.i.i.i) #10
  %cmp14.i.i = icmp eq i32 %call13.i.i, -28
  br i1 %cmp14.i.i, label %if.end21.i.i.if.then16.i.i_crit_edge, label %if.end21.i.i.if.end22.i.i_crit_edge

if.end21.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

if.end21.i.i.if.then16.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i.i

if.end22.i.i:                                     ; preds = %if.end21.i.i.if.end22.i.i_crit_edge, %retry_enospc.preheader.i.i.if.end22.i.i_crit_edge
  %call13.lcssa.i.i = phi i32 [ %call13138.i.i, %retry_enospc.preheader.i.i.if.end22.i.i_crit_edge ], [ %call13.i.i, %if.end21.i.i.if.end22.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.lcssa.i.i)
  %cmp23.i.i = icmp slt i32 %call13.lcssa.i.i, 0
  br i1 %cmp23.i.i, label %if.then25.i.i, label %if.end16.i

if.then25.i.i:                                    ; preds = %if.end22.i.i
  %44 = zext i32 %call13.lcssa.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call13.lcssa.i.i, label %do.body42.i.i [
    i32 -512, label %if.then25.i.i.if.end60.i.i_crit_edge
    i32 -4, label %if.then25.i.i.if.end60.i.i_crit_edge234
    i32 -122, label %if.then25.i.i.if.end60.i.i_crit_edge235
  ]

if.then25.i.i.if.end60.i.i_crit_edge235:          ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i.i

if.then25.i.i.if.end60.i.i_crit_edge234:          ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i.i

if.then25.i.i.if.end60.i.i_crit_edge:             ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i.i

do.body42.i.i:                                    ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43.i.i) #10
  %45 = ptrtoint ptr %_m43.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 1152921504606846976, ptr %_m43.i.i, align 8
  %conv47.i.i = sext i32 %call13.lcssa.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43.i.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_reserve_for_window, i32 noundef 1123, ptr noundef nonnull @.str.1, i64 noundef %conv47.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43.i.i) #10
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %do.body42.i.i, %if.then25.i.i.if.end60.i.i_crit_edge, %if.then25.i.i.if.end60.i.i_crit_edge234, %if.then25.i.i.if.end60.i.i_crit_edge235
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %call7.i.i.i.i) #10
  %46 = zext i32 %call13.lcssa.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call13.lcssa.i.i, label %if.end60.i.i.do.body79.i.i_crit_edge [
    i32 -122, label %if.end60.i.i.if.then.i_crit_edge
    i32 -512, label %if.end60.i.i.if.then.i_crit_edge236
    i32 -4, label %if.end60.i.i.if.then.i_crit_edge237
    i32 -28, label %if.end60.i.i.if.then.i_crit_edge238
  ]

if.end60.i.i.if.then.i_crit_edge238:              ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end60.i.i.if.then.i_crit_edge237:              ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end60.i.i.if.then.i_crit_edge236:              ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end60.i.i.if.then.i_crit_edge:                 ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end60.i.i.do.body79.i.i_crit_edge:             ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body79.i.i

do.body79.i.i:                                    ; preds = %if.end60.i.i.do.body79.i.i_crit_edge, %if.end60.i.thread.i
  %status.0.ph.i326329.i = phi i32 [ -12, %if.end60.i.thread.i ], [ %call13.lcssa.i.i, %if.end60.i.i.do.body79.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m80.i.i) #10
  %47 = ptrtoint ptr %_m80.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1152921504606846976, ptr %_m80.i.i, align 8
  %conv84.i.i = sext i32 %status.0.ph.i326329.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m80.i.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_reserve_for_window, i32 noundef 1139, ptr noundef nonnull @.str.1, i64 noundef %conv84.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m80.i.i) #10
  br label %if.then.i

if.then.i:                                        ; preds = %do.body79.i.i, %if.end60.i.i.if.then.i_crit_edge, %if.end60.i.i.if.then.i_crit_edge236, %if.end60.i.i.if.then.i_crit_edge237, %if.end60.i.i.if.then.i_crit_edge238
  %status.0132135.i.ph.i = phi i32 [ %call13.lcssa.i.i, %if.end60.i.i.if.then.i_crit_edge ], [ %call13.lcssa.i.i, %if.end60.i.i.if.then.i_crit_edge236 ], [ %call13.lcssa.i.i, %if.end60.i.i.if.then.i_crit_edge237 ], [ %call13.lcssa.i.i, %if.end60.i.i.if.then.i_crit_edge238 ], [ %status.0.ph.i326329.i, %do.body79.i.i ]
  %48 = zext i32 %status.0132135.i.ph.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %status.0132135.i.ph.i, label %do.body.i [
    i32 -28, label %if.then.i.brelse.exit.i_crit_edge
    i32 -512, label %if.then.i.brelse.exit.i_crit_edge239
    i32 -4, label %if.then.i.brelse.exit.i_crit_edge240
    i32 -122, label %if.then.i.brelse.exit.i_crit_edge241
  ]

if.then.i.brelse.exit.i_crit_edge241:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.i

if.then.i.brelse.exit.i_crit_edge240:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.i

if.then.i.brelse.exit.i_crit_edge239:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.i

if.then.i.brelse.exit.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #10
  %49 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i208 = sext i32 %status.0132135.i.ph.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_slide_window, i32 noundef 1254, ptr noundef nonnull @.str.1, i64 noundef %conv.i208) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #10
  br label %brelse.exit.i

if.end16.i:                                       ; preds = %if.end22.i.i
  %50 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i.i.i, align 8
  %call54.i.i = tail call ptr @igrab(ptr noundef %51) #10
  %ac_bh.i.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %ac_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ac_bh.i.i, align 4
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #10
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #10, !srcloc !102
  %call17.i = tail call ptr @ocfs2_start_trans(ptr noundef %osb, i32 noundef 6) #10
  %cmp.i297.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i297.i, label %if.then19.i, label %if.end48.i

if.then19.i:                                      ; preds = %if.end16.i
  %55 = ptrtoint ptr %call17.i to i32
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %55, label %do.body37.i [
    i32 -512, label %if.then19.i.if.end187.i_crit_edge
    i32 -4, label %if.then19.i.if.end187.i_crit_edge242
    i32 524289, label %if.then19.i.if.end187.i_crit_edge243
    i32 -28, label %if.then19.i.if.end187.i_crit_edge244
    i32 -122, label %if.then19.i.if.end187.i_crit_edge245
  ]

if.then19.i.if.end187.i_crit_edge245:             ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187.i

if.then19.i.if.end187.i_crit_edge244:             ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187.i

if.then19.i.if.end187.i_crit_edge243:             ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187.i

if.then19.i.if.end187.i_crit_edge242:             ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187.i

if.then19.i.if.end187.i_crit_edge:                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187.i

do.body37.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m38.i) #10
  %57 = ptrtoint ptr %_m38.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1152921504606846976, ptr %_m38.i, align 8
  %conv42.i = sext i32 %55 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m38.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_slide_window, i32 noundef 1262, ptr noundef nonnull @.str.1, i64 noundef %conv42.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m38.i) #10
  br label %if.end187.i

if.end48.i:                                       ; preds = %if.end16.i
  %58 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %local_alloc_bh, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %59, i32 0, i32 4
  %62 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %b_size.i, align 8
  %call50.i = tail call ptr @kmemdup(ptr noundef %61, i32 noundef %63, i32 noundef 3136) #10
  %tobool51.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool51.not.i, label %do.body69.i, label %if.end80.i

do.body69.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m70.i) #10
  %64 = ptrtoint ptr %_m70.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 1152921504606846976, ptr %_m70.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m70.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_slide_window, i32 noundef 1276, ptr noundef nonnull @.str.1, i64 noundef -12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m70.i) #10
  br label %bail.i

if.end80.i:                                       ; preds = %if.end48.i
  %ip_metadata_cache.i.i = getelementptr i8, ptr %call, i32 -56
  %65 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %local_alloc_bh, align 8
  %call83.i = tail call i32 @ocfs2_journal_access_di(ptr noundef %call17.i, ptr noundef %ip_metadata_cache.i.i, ptr noundef %66, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %cmp84.i = icmp slt i32 %call83.i, 0
  br i1 %cmp84.i, label %if.then86.i, label %if.end114.i

if.then86.i:                                      ; preds = %if.end80.i
  %67 = zext i32 %call83.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call83.i, label %do.body103.i [
    i32 -512, label %if.then86.i.bail.i_crit_edge
    i32 -4, label %if.then86.i.bail.i_crit_edge246
    i32 -28, label %if.then86.i.bail.i_crit_edge247
    i32 -122, label %if.then86.i.bail.i_crit_edge248
  ]

if.then86.i.bail.i_crit_edge248:                  ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then86.i.bail.i_crit_edge247:                  ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then86.i.bail.i_crit_edge246:                  ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then86.i.bail.i_crit_edge:                     ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

do.body103.i:                                     ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m104.i) #10
  %68 = ptrtoint ptr %_m104.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 1152921504606846976, ptr %_m104.i, align 8
  %conv108.i = sext i32 %call83.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m104.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_slide_window, i32 noundef 1285, ptr noundef nonnull @.str.1, i64 noundef %conv108.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m104.i) #10
  br label %bail.i

if.end114.i:                                      ; preds = %if.end80.i
  %id2.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %61, i32 0, i32 35
  %id1.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %61, i32 0, i32 34
  %i_total.i.i = getelementptr inbounds %struct.anon.79, ptr %id1.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %i_total.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %i_total.i.i, align 4
  %70 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %id1.i.i, align 8
  %71 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %id2.i.i, align 8
  %la_size.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %61, i32 0, i32 35, i32 0, i32 2
  %72 = ptrtoint ptr %la_size.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %la_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp9.not.i.i = icmp eq i16 %73, 0
  br i1 %cmp9.not.i.i, label %if.end114.i.ocfs2_clear_local_alloc.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end114.i.ocfs2_clear_local_alloc.exit.i_crit_edge: ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_clear_local_alloc.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #10
  %la_bitmap.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %61, i32 0, i32 35, i32 0, i32 7
  %75 = tail call i16 @llvm.umax.i16(i16 %74, i16 1) #10
  %umax.i.i = zext i16 %75 to i32
  %76 = call ptr @memset(ptr %la_bitmap.i.i, i32 0, i32 %umax.i.i)
  br label %ocfs2_clear_local_alloc.exit.i

ocfs2_clear_local_alloc.exit.i:                   ; preds = %for.body.lr.ph.i.i, %if.end114.i.ocfs2_clear_local_alloc.exit.i_crit_edge
  %77 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %local_alloc_bh, align 8
  tail call void @ocfs2_journal_dirty(ptr noundef %call17.i, ptr noundef %78) #10
  %call116.i = tail call fastcc i32 @ocfs2_sync_local_to_main(ptr noundef %osb, ptr noundef %call17.i, ptr noundef nonnull %call50.i, ptr noundef %51, ptr noundef %53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %cmp117.i = icmp slt i32 %call116.i, 0
  br i1 %cmp117.i, label %if.then119.i, label %if.end147.i

if.then119.i:                                     ; preds = %ocfs2_clear_local_alloc.exit.i
  %79 = zext i32 %call116.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call116.i, label %do.body136.i [
    i32 -512, label %if.then119.i.bail.i_crit_edge
    i32 -4, label %if.then119.i.bail.i_crit_edge249
    i32 -28, label %if.then119.i.bail.i_crit_edge250
    i32 -122, label %if.then119.i.bail.i_crit_edge251
  ]

if.then119.i.bail.i_crit_edge251:                 ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then119.i.bail.i_crit_edge250:                 ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then119.i.bail.i_crit_edge249:                 ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then119.i.bail.i_crit_edge:                    ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

do.body136.i:                                     ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m137.i) #10
  %80 = ptrtoint ptr %_m137.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 1152921504606846976, ptr %_m137.i, align 8
  %conv141.i = sext i32 %call116.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m137.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_slide_window, i32 noundef 1295, ptr noundef nonnull @.str.1, i64 noundef %conv141.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m137.i) #10
  br label %bail.i

if.end147.i:                                      ; preds = %ocfs2_clear_local_alloc.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cluster_off.i.i) #10
  %81 = ptrtoint ptr %cluster_off.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %cluster_off.i.i, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cluster_count.i.i) #10
  %82 = ptrtoint ptr %cluster_count.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %cluster_count.i.i, align 4, !annotation !103
  %83 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %local_alloc_bh, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %b_data.i.i, align 4
  %id2.i299.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %86, i32 0, i32 35
  %id1.i300.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %86, i32 0, i32 34
  %i_total.i301.i = getelementptr inbounds %struct.anon.79, ptr %id1.i300.i, i32 0, i32 1
  %87 = ptrtoint ptr %i_total.i301.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %i_total.i301.i, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  %90 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %local_alloc_bits, align 8
  tail call fastcc void @trace_ocfs2_local_alloc_new_window(i32 noundef %89, i32 noundef %91) #10
  %la_last_gd.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 53
  %92 = ptrtoint ptr %la_last_gd.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %la_last_gd.i.i, align 8
  %ac_last_group.i.i = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %call7.i.i.i.i, i32 0, i32 9
  %94 = ptrtoint ptr %ac_last_group.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %ac_last_group.i.i, align 8
  %95 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %local_alloc_bits, align 8
  %call.i.i = call i32 @ocfs2_claim_clusters(ptr noundef %call17.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %96, ptr noundef nonnull %cluster_off.i.i, ptr noundef nonnull %cluster_count.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i.i)
  %cmp.i303.i = icmp eq i32 %call.i.i, -28
  br i1 %cmp.i303.i, label %if.end147.i.retry_enospc.i.i_crit_edge, label %if.end147.i.if.end16.i.i_crit_edge

if.end147.i.if.end16.i.i_crit_edge:               ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.end147.i.retry_enospc.i.i_crit_edge:           ; preds = %if.end147.i
  br label %retry_enospc.i.i

retry_enospc.i.i:                                 ; preds = %if.end.i.i.retry_enospc.i.i_crit_edge, %if.end147.i.retry_enospc.i.i_crit_edge
  %call2.i.i = call fastcc i32 @ocfs2_recalc_la_window(ptr noundef %osb, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2.i.i)
  %cmp3.i.i = icmp eq i32 %call2.i.i, 3
  br i1 %cmp3.i.i, label %if.then151.thread.i, label %if.end.i.i

if.then151.thread.i:                              ; preds = %retry_enospc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cluster_count.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cluster_off.i.i) #10
  br label %bail.i

if.end.i.i:                                       ; preds = %retry_enospc.i.i
  %97 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %local_alloc_bits, align 8
  %99 = ptrtoint ptr %ac_bits_wanted137.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %ac_bits_wanted137.i.i, align 4
  %call7.i.i = call i32 @ocfs2_claim_clusters(ptr noundef %call17.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %98, ptr noundef nonnull %cluster_off.i.i, ptr noundef nonnull %cluster_count.i.i) #10
  %100 = zext i32 %call7.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call7.i.i, label %if.end.i.i.if.end16.i.i_crit_edge [
    i32 -28, label %if.end.i.i.retry_enospc.i.i_crit_edge
    i32 0, label %if.end16.thread.i.i
  ]

if.end.i.i.retry_enospc.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry_enospc.i.i

if.end.i.i.if.end16.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.end16.thread.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_lock(ptr noundef %osb_lock) #10
  %101 = ptrtoint ptr %cluster_count.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cluster_count.i.i, align 4
  %103 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %local_alloc_bits, align 8
  call void @_raw_spin_unlock(ptr noundef %osb_lock) #10
  br label %if.end34.i.i

if.end16.i.i:                                     ; preds = %if.end.i.i.if.end16.i.i_crit_edge, %if.end147.i.if.end16.i.i_crit_edge
  %status.1.i.i = phi i32 [ %call.i.i, %if.end147.i.if.end16.i.i_crit_edge ], [ %call7.i.i, %if.end.i.i.if.end16.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i.i)
  %cmp17.i.i = icmp slt i32 %status.1.i.i, 0
  br i1 %cmp17.i.i, label %if.then20.i.i, label %if.end16.i.i.if.end34.i.i_crit_edge

if.end16.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i

if.then20.i.i:                                    ; preds = %if.end16.i.i
  %104 = zext i32 %status.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %status.1.i.i, label %do.body.i307.i [
    i32 -512, label %if.then20.i.i.bail.i.i_crit_edge
    i32 -4, label %if.then20.i.i.bail.i.i_crit_edge252
    i32 -122, label %if.then20.i.i.bail.i.i_crit_edge253
  ]

if.then20.i.i.bail.i.i_crit_edge253:              ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i.i

if.then20.i.i.bail.i.i_crit_edge252:              ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i.i

if.then20.i.i.bail.i.i_crit_edge:                 ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i.i

do.body.i307.i:                                   ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i298.i) #10
  %105 = ptrtoint ptr %_m.i298.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 1152921504606846976, ptr %_m.i298.i, align 8
  %conv.i.i = sext i32 %status.1.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i298.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_new_window, i32 noundef 1203, ptr noundef nonnull @.str.1, i64 noundef %conv.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i298.i) #10
  br label %bail.i.i

if.end34.i.i:                                     ; preds = %if.end16.i.i.if.end34.i.i_crit_edge, %if.end16.thread.i.i
  %status.1126.i.i = phi i32 [ 0, %if.end16.thread.i.i ], [ %status.1.i.i, %if.end16.i.i.if.end34.i.i_crit_edge ]
  %106 = ptrtoint ptr %ac_last_group.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %ac_last_group.i.i, align 8
  %108 = ptrtoint ptr %la_last_gd.i.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %la_last_gd.i.i, align 8
  %109 = ptrtoint ptr %cluster_off.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cluster_off.i.i, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110) #10
  %112 = ptrtoint ptr %id2.i299.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %id2.i299.i, align 8
  %113 = ptrtoint ptr %cluster_count.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cluster_count.i.i, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %114) #10
  %116 = ptrtoint ptr %i_total.i301.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %i_total.i301.i, align 4
  %117 = ptrtoint ptr %id1.i300.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %id1.i300.i, align 8
  %la_bitmap.i308.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %86, i32 0, i32 35, i32 0, i32 7
  %la_size.i309.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %86, i32 0, i32 35, i32 0, i32 2
  %118 = ptrtoint ptr %la_size.i309.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %la_size.i309.i, align 4
  %120 = call i16 @llvm.bswap.i16(i16 %119) #10
  %conv41.i.i = zext i16 %120 to i32
  %121 = call ptr @memset(ptr %la_bitmap.i308.i, i32 0, i32 %conv41.i.i)
  %osb_la_resmap.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 54
  call void @ocfs2_resmap_restart(ptr noundef %osb_la_resmap.i.i, i32 noundef %114, ptr noundef %la_bitmap.i308.i) #10
  %122 = ptrtoint ptr %id2.i299.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %id2.i299.i, align 8
  %conv47.i310.i = zext i32 %123 to i64
  %124 = ptrtoint ptr %i_total.i301.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %i_total.i301.i, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125) #10
  call fastcc void @trace_ocfs2_local_alloc_new_window_result(i64 noundef %conv47.i310.i, i32 noundef %126) #10
  br label %bail.i.i

bail.i.i:                                         ; preds = %if.end34.i.i, %do.body.i307.i, %if.then20.i.i.bail.i.i_crit_edge, %if.then20.i.i.bail.i.i_crit_edge252, %if.then20.i.i.bail.i.i_crit_edge253
  %status.2.i.i = phi i32 [ %status.1126.i.i, %if.end34.i.i ], [ %status.1.i.i, %if.then20.i.i.bail.i.i_crit_edge ], [ %status.1.i.i, %if.then20.i.i.bail.i.i_crit_edge252 ], [ %status.1.i.i, %if.then20.i.i.bail.i.i_crit_edge253 ], [ %status.1.i.i, %do.body.i307.i ]
  %127 = zext i32 %status.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %status.2.i.i, label %do.body68.i.i [
    i32 0, label %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge
    i32 -512, label %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge254
    i32 -4, label %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge255
    i32 524289, label %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge256
    i32 -28, label %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge257
    i32 -122, label %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge258
  ]

bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge258: ; preds = %bail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_new_window.exit.i

bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge257: ; preds = %bail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_new_window.exit.i

bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge256: ; preds = %bail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_new_window.exit.i

bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge255: ; preds = %bail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_new_window.exit.i

bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge254: ; preds = %bail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_new_window.exit.i

bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge: ; preds = %bail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_new_window.exit.i

do.body68.i.i:                                    ; preds = %bail.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m69.i.i) #10
  %128 = ptrtoint ptr %_m69.i.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 1152921504606846976, ptr %_m69.i.i, align 8
  %conv73.i.i = sext i32 %status.2.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m69.i.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_new_window, i32 noundef 1228, ptr noundef nonnull @.str.1, i64 noundef %conv73.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m69.i.i) #10
  br label %ocfs2_local_alloc_new_window.exit.i

ocfs2_local_alloc_new_window.exit.i:              ; preds = %do.body68.i.i, %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge, %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge254, %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge255, %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge256, %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge257, %bail.i.i.ocfs2_local_alloc_new_window.exit.i_crit_edge258
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cluster_count.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cluster_off.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i)
  %cmp149.i = icmp slt i32 %status.2.i.i, 0
  br i1 %cmp149.i, label %if.then151.i, label %if.end183.i

if.then151.i:                                     ; preds = %ocfs2_local_alloc_new_window.exit.i
  %129 = zext i32 %status.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %status.2.i.i, label %do.body171.i [
    i32 -28, label %if.then151.i.bail.i_crit_edge
    i32 -512, label %if.then151.i.bail.i_crit_edge259
    i32 -4, label %if.then151.i.bail.i_crit_edge260
    i32 -122, label %if.then151.i.bail.i_crit_edge261
  ]

if.then151.i.bail.i_crit_edge261:                 ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then151.i.bail.i_crit_edge260:                 ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then151.i.bail.i_crit_edge259:                 ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.then151.i.bail.i_crit_edge:                    ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

do.body171.i:                                     ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m172.i) #10
  %130 = ptrtoint ptr %_m172.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 1152921504606846976, ptr %_m172.i, align 8
  %conv176.i = sext i32 %status.2.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m172.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_slide_window, i32 noundef 1302, ptr noundef nonnull @.str.1, i64 noundef %conv176.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m172.i) #10
  br label %bail.i

if.end183.i:                                      ; preds = %ocfs2_local_alloc_new_window.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %alloc_stats.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 60
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %alloc_stats.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %alloc_stats.i, i32 1, i32 3, i32 1) #10
  %131 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %alloc_stats.i, ptr %alloc_stats.i, i32 1, ptr elementtype(i32) %alloc_stats.i) #10, !srcloc !102
  br label %bail.i

bail.i:                                           ; preds = %if.end183.i, %do.body171.i, %if.then151.i.bail.i_crit_edge, %if.then151.i.bail.i_crit_edge259, %if.then151.i.bail.i_crit_edge260, %if.then151.i.bail.i_crit_edge261, %if.then151.thread.i, %do.body136.i, %if.then119.i.bail.i_crit_edge, %if.then119.i.bail.i_crit_edge249, %if.then119.i.bail.i_crit_edge250, %if.then119.i.bail.i_crit_edge251, %do.body103.i, %if.then86.i.bail.i_crit_edge, %if.then86.i.bail.i_crit_edge246, %if.then86.i.bail.i_crit_edge247, %if.then86.i.bail.i_crit_edge248, %do.body69.i
  %status.0.i = phi i32 [ %status.2.i.i, %if.then151.i.bail.i_crit_edge ], [ %status.2.i.i, %if.end183.i ], [ -12, %do.body69.i ], [ %call83.i, %if.then86.i.bail.i_crit_edge ], [ %call83.i, %if.then86.i.bail.i_crit_edge246 ], [ %call83.i, %if.then86.i.bail.i_crit_edge247 ], [ %call83.i, %if.then86.i.bail.i_crit_edge248 ], [ %call83.i, %do.body103.i ], [ %call116.i, %if.then119.i.bail.i_crit_edge ], [ %call116.i, %if.then119.i.bail.i_crit_edge249 ], [ %call116.i, %if.then119.i.bail.i_crit_edge250 ], [ %call116.i, %if.then119.i.bail.i_crit_edge251 ], [ %call116.i, %do.body136.i ], [ -28, %if.then151.thread.i ], [ %status.2.i.i, %do.body171.i ], [ %status.2.i.i, %if.then151.i.bail.i_crit_edge259 ], [ %status.2.i.i, %if.then151.i.bail.i_crit_edge260 ], [ %status.2.i.i, %if.then151.i.bail.i_crit_edge261 ]
  %tobool184.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool184.not.i, label %bail.i.if.end187.i_crit_edge, label %if.then185.i

bail.i.if.end187.i_crit_edge:                     ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187.i

if.then185.i:                                     ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #12
  %call186.i = call i32 @ocfs2_commit_trans(ptr noundef %osb, ptr noundef nonnull %call17.i) #10
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.then185.i, %bail.i.if.end187.i_crit_edge, %do.body37.i, %if.then19.i.if.end187.i_crit_edge, %if.then19.i.if.end187.i_crit_edge242, %if.then19.i.if.end187.i_crit_edge243, %if.then19.i.if.end187.i_crit_edge244, %if.then19.i.if.end187.i_crit_edge245
  %status.0358.i = phi i32 [ %status.0.i, %if.then185.i ], [ %status.0.i, %bail.i.if.end187.i_crit_edge ], [ %55, %do.body37.i ], [ %55, %if.then19.i.if.end187.i_crit_edge ], [ %55, %if.then19.i.if.end187.i_crit_edge242 ], [ %55, %if.then19.i.if.end187.i_crit_edge243 ], [ %55, %if.then19.i.if.end187.i_crit_edge244 ], [ %55, %if.then19.i.if.end187.i_crit_edge245 ]
  %alloc_copy.0357.i = phi ptr [ %call50.i, %if.then185.i ], [ %call50.i, %bail.i.if.end187.i_crit_edge ], [ null, %do.body37.i ], [ null, %if.then19.i.if.end187.i_crit_edge ], [ null, %if.then19.i.if.end187.i_crit_edge242 ], [ null, %if.then19.i.if.end187.i_crit_edge243 ], [ null, %if.then19.i.if.end187.i_crit_edge244 ], [ null, %if.then19.i.if.end187.i_crit_edge245 ]
  %tobool.not.i311.i = icmp eq ptr %53, null
  br i1 %tobool.not.i311.i, label %if.end187.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.end187.i.brelse.exit.i_crit_edge:              ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %53) #10
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.end187.i.brelse.exit.i_crit_edge, %do.body.i, %if.then.i.brelse.exit.i_crit_edge, %if.then.i.brelse.exit.i_crit_edge239, %if.then.i.brelse.exit.i_crit_edge240, %if.then.i.brelse.exit.i_crit_edge241, %if.then.thread.i
  %ac.1340354368.i = phi ptr [ %call7.i.i.i.i, %if.end187.i.brelse.exit.i_crit_edge ], [ %call7.i.i.i.i, %if.then.i.i ], [ null, %if.then.i.brelse.exit.i_crit_edge ], [ null, %if.then.thread.i ], [ null, %do.body.i ], [ null, %if.then.i.brelse.exit.i_crit_edge239 ], [ null, %if.then.i.brelse.exit.i_crit_edge240 ], [ null, %if.then.i.brelse.exit.i_crit_edge241 ]
  %main_bm_inode.0338355367.i = phi ptr [ %51, %if.end187.i.brelse.exit.i_crit_edge ], [ %51, %if.then.i.i ], [ null, %if.then.i.brelse.exit.i_crit_edge ], [ null, %if.then.thread.i ], [ null, %do.body.i ], [ null, %if.then.i.brelse.exit.i_crit_edge239 ], [ null, %if.then.i.brelse.exit.i_crit_edge240 ], [ null, %if.then.i.brelse.exit.i_crit_edge241 ]
  %alloc_copy.0357366.i = phi ptr [ %alloc_copy.0357.i, %if.end187.i.brelse.exit.i_crit_edge ], [ %alloc_copy.0357.i, %if.then.i.i ], [ null, %if.then.i.brelse.exit.i_crit_edge ], [ null, %if.then.thread.i ], [ null, %do.body.i ], [ null, %if.then.i.brelse.exit.i_crit_edge239 ], [ null, %if.then.i.brelse.exit.i_crit_edge240 ], [ null, %if.then.i.brelse.exit.i_crit_edge241 ]
  %status.0358365.i = phi i32 [ %status.0358.i, %if.end187.i.brelse.exit.i_crit_edge ], [ %status.0358.i, %if.then.i.i ], [ %status.0132135.i.ph.i, %if.then.i.brelse.exit.i_crit_edge ], [ -28, %if.then.thread.i ], [ %status.0132135.i.ph.i, %do.body.i ], [ %status.0132135.i.ph.i, %if.then.i.brelse.exit.i_crit_edge239 ], [ %status.0132135.i.ph.i, %if.then.i.brelse.exit.i_crit_edge240 ], [ %status.0132135.i.ph.i, %if.then.i.brelse.exit.i_crit_edge241 ]
  call void @iput(ptr noundef %main_bm_inode.0338355367.i) #10
  call void @kfree(ptr noundef %alloc_copy.0357366.i) #10
  %tobool188.not.i = icmp eq ptr %ac.1340354368.i, null
  br i1 %tobool188.not.i, label %brelse.exit.i.if.end190.i_crit_edge, label %if.then189.i

brelse.exit.i.if.end190.i_crit_edge:              ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190.i

if.then189.i:                                     ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %ac.1340354368.i) #10
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.then189.i, %brelse.exit.i.if.end190.i_crit_edge
  %132 = zext i32 %status.0358365.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %status.0358365.i, label %do.body209.i [
    i32 0, label %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge
    i32 -512, label %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge262
    i32 -4, label %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge263
    i32 524289, label %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge264
    i32 -28, label %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge265
    i32 -122, label %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge266
  ]

if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge266: ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_slide_window.exit

if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge265: ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_slide_window.exit

if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge264: ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_slide_window.exit

if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge263: ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_slide_window.exit

if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge262: ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_slide_window.exit

if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge: ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_slide_window.exit

do.body209.i:                                     ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m210.i) #10
  %133 = ptrtoint ptr %_m210.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 1152921504606846976, ptr %_m210.i, align 8
  %conv214.i = sext i32 %status.0358365.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m210.i, ptr noundef nonnull @__func__.ocfs2_local_alloc_slide_window, i32 noundef 1321, ptr noundef nonnull @.str.1, i64 noundef %conv214.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m210.i) #10
  br label %ocfs2_local_alloc_slide_window.exit

ocfs2_local_alloc_slide_window.exit:              ; preds = %do.body209.i, %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge, %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge262, %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge263, %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge264, %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge265, %if.end190.i.ocfs2_local_alloc_slide_window.exit_crit_edge266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0358365.i)
  %cmp52 = icmp slt i32 %status.0358365.i, 0
  br i1 %cmp52, label %if.then54, label %if.end86

if.then54:                                        ; preds = %ocfs2_local_alloc_slide_window.exit
  %134 = zext i32 %status.0358365.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %status.0358365.i, label %do.body74 [
    i32 -28, label %if.then54.if.then108_crit_edge
    i32 -512, label %if.then54.if.then108_crit_edge267
    i32 -4, label %if.then54.if.then108_crit_edge268
    i32 -122, label %if.then54.if.then108_crit_edge269
  ]

if.then54.if.then108_crit_edge269:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

if.then54.if.then108_crit_edge268:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

if.then54.if.then108_crit_edge267:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

if.then54.if.then108_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

do.body74:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m75) #10
  %135 = ptrtoint ptr %_m75 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 1152921504606846976, ptr %_m75, align 8
  %conv79 = sext i32 %status.0358365.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m75, ptr noundef nonnull @__func__.ocfs2_reserve_local_alloc_bits, i32 noundef 671, ptr noundef nonnull @.str.1, i64 noundef %conv79) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m75) #10
  br label %if.then108

if.end86:                                         ; preds = %ocfs2_local_alloc_slide_window.exit
  %136 = ptrtoint ptr %local_alloc_state.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %local_alloc_state.i, align 4
  %138 = add i32 %137, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %138)
  %139 = icmp ult i32 %138, -2
  br i1 %139, label %if.end86.if.then108_crit_edge, label %if.end90

if.end86.if.then108_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

if.end90:                                         ; preds = %if.end86
  %140 = ptrtoint ptr %i_total to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %i_total, align 4
  %142 = call i32 @llvm.bswap.i32(i32 %141)
  %143 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %id1, align 8
  %145 = call i32 @llvm.bswap.i32(i32 %144)
  %sub95 = sub i32 %142, %145
  call void @__sanitizer_cov_trace_cmp4(i32 %sub95, i32 %bits_wanted)
  %cmp96 = icmp ult i32 %sub95, %bits_wanted
  br i1 %cmp96, label %if.end90.if.then108_crit_edge, label %if.end90.if.end109.thread221_crit_edge

if.end90.if.end109.thread221_crit_edge:           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109.thread221

if.end90.if.then108_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

if.end109.thread221:                              ; preds = %if.end90.if.end109.thread221_crit_edge, %if.end44.if.end109.thread221_crit_edge
  %146 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call, ptr %ac, align 8
  %147 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %slot_num, align 8
  %ac_alloc_slot = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 2
  %149 = ptrtoint ptr %ac_alloc_slot to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %ac_alloc_slot, align 8
  %ac_which = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 5
  %150 = ptrtoint ptr %ac_which to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %ac_which, align 4
  %151 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %local_alloc_bh, align 8
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %152, i32 0, i32 11
  %call.i.i.i210 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #10
  %153 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #10, !srcloc !102
  %154 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %local_alloc_bh, align 8
  %ac_bh = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 1
  %156 = ptrtoint ptr %ac_bh to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %ac_bh, align 4
  %ac_max_block223 = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 10
  %157 = ptrtoint ptr %ac_max_block223 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %ac_max_block223, align 8
  %159 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %slot_num, align 8
  call fastcc void @trace_ocfs2_reserve_local_alloc_bits(i64 noundef %158, i32 noundef %bits_wanted, i32 noundef %160, i32 noundef 0)
  br label %if.end140

bail:                                             ; preds = %if.end34
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %161 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %sb, align 4
  %i_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %16, i32 0, i32 17
  %163 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %i_blkno, align 8
  %165 = tail call i64 @llvm.bswap.i64(i64 %164)
  %166 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %id1, align 8
  %168 = tail call i32 @llvm.bswap.i32(i32 %167)
  %169 = ptrtoint ptr %la_size.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %la_size.i, align 4
  %171 = tail call i16 @llvm.bswap.i16(i16 %170) #10
  %conv.i206 = zext i16 %171 to i32
  %call.i207 = tail call i32 @memweight(ptr noundef %la_bitmap.i, i32 noundef %conv.i206) #10
  tail call fastcc void @trace_ocfs2_local_alloc_count_bits(i32 noundef %call.i207) #10
  %call43 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %162, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_reserve_local_alloc_bits, ptr noundef nonnull @.str.5, i64 noundef %165, i32 noundef %168, i32 noundef %call.i207) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call43)
  %cmp104 = icmp sgt i32 %call43, -1
  br i1 %cmp104, label %bail.if.end109_crit_edge, label %bail.if.then108_crit_edge

bail.if.then108_crit_edge:                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

bail.if.end109_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then108:                                       ; preds = %bail.if.then108_crit_edge, %if.end90.if.then108_crit_edge, %if.end86.if.then108_crit_edge, %do.body74, %if.then54.if.then108_crit_edge, %if.then54.if.then108_crit_edge267, %if.then54.if.then108_crit_edge268, %if.then54.if.then108_crit_edge269, %if.then32
  %status.0228 = phi i32 [ %call43, %bail.if.then108_crit_edge ], [ -28, %if.end86.if.then108_crit_edge ], [ -28, %if.end90.if.then108_crit_edge ], [ %status.0358365.i, %if.then54.if.then108_crit_edge ], [ -28, %if.then32 ], [ %status.0358365.i, %if.then54.if.then108_crit_edge267 ], [ %status.0358365.i, %if.then54.if.then108_crit_edge268 ], [ %status.0358365.i, %if.then54.if.then108_crit_edge269 ], [ %status.0358365.i, %do.body74 ]
  call void @up_write(ptr noundef %i_rwsem.i) #10
  call void @iput(ptr noundef nonnull %call) #10
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %bail.if.end109_crit_edge
  %status.0229 = phi i32 [ %call43, %bail.if.end109_crit_edge ], [ %status.0228, %if.then108 ]
  %ac_max_block = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 10
  %172 = ptrtoint ptr %ac_max_block to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %ac_max_block, align 8
  %174 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %slot_num, align 8
  call fastcc void @trace_ocfs2_reserve_local_alloc_bits(i64 noundef %173, i32 noundef %bits_wanted, i32 noundef %175, i32 noundef %status.0229)
  %176 = zext i32 %status.0229 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %status.0229, label %if.end109.do.body129_crit_edge [
    i32 0, label %if.end109.if.end140_crit_edge
    i32 -512, label %if.end109.if.end140_crit_edge270
    i32 -4, label %if.end109.if.end140_crit_edge271
    i32 524289, label %if.end109.if.end140_crit_edge272
    i32 -28, label %if.end109.if.end140_crit_edge273
    i32 -122, label %if.end109.if.end140_crit_edge274
  ]

if.end109.if.end140_crit_edge274:                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.end109.if.end140_crit_edge273:                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.end109.if.end140_crit_edge272:                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.end109.if.end140_crit_edge271:                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.end109.if.end140_crit_edge270:                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.end109.if.end140_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.end109.do.body129_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body129

do.body129:                                       ; preds = %if.end109.do.body129_crit_edge, %if.end109.thread
  %status.0216220 = phi i32 [ -2, %if.end109.thread ], [ %status.0229, %if.end109.do.body129_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m130) #10
  %177 = ptrtoint ptr %_m130 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 1152921504606846976, ptr %_m130, align 8
  %conv134 = sext i32 %status.0216220 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m130, ptr noundef nonnull @__func__.ocfs2_reserve_local_alloc_bits, i32 noundef 709, ptr noundef nonnull @.str.1, i64 noundef %conv134) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m130) #10
  br label %if.end140

if.end140:                                        ; preds = %do.body129, %if.end109.if.end140_crit_edge, %if.end109.if.end140_crit_edge270, %if.end109.if.end140_crit_edge271, %if.end109.if.end140_crit_edge272, %if.end109.if.end140_crit_edge273, %if.end109.if.end140_crit_edge274, %if.end109.thread221
  %status.0216219 = phi i32 [ %status.0216220, %do.body129 ], [ %status.0229, %if.end109.if.end140_crit_edge ], [ %status.0229, %if.end109.if.end140_crit_edge270 ], [ %status.0229, %if.end109.if.end140_crit_edge271 ], [ %status.0229, %if.end109.if.end140_crit_edge272 ], [ %status.0229, %if.end109.if.end140_crit_edge273 ], [ %status.0229, %if.end109.if.end140_crit_edge274 ], [ 0, %if.end109.thread221 ]
  ret i32 %status.0216219
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocfs2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_reserve_local_alloc_bits(i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_local_alloc_bits, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_reserve_local_alloc_bits, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %call42 = tail call i32 @__traceiter_ocfs2_reserve_local_alloc_bits(ptr noundef null, i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_local_alloc_bits, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_reserve_local_alloc_bits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_reserve_local_alloc_bits.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_reserve_local_alloc_bits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 731, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_claim_local_alloc_bits(ptr noundef %osb, ptr noundef %handle, ptr nocapture noundef readonly %ac, i32 noundef %bits_wanted, ptr nocapture noundef writeonly %bit_off, ptr nocapture noundef %num_bits) local_unnamed_addr #2 align 64 {
entry:
  %numfound.i = alloca i32, align 4
  %bitoff.i = alloca i32, align 4
  %r.i = alloca %struct.ocfs2_alloc_reservation, align 4
  %_m50 = alloca i64, align 8
  %_m83 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ac_which = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 5
  %0 = ptrtoint ptr %ac_which to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ac_which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !89

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/localalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 726, 0\0A.popsection", ""() #10, !srcloc !106
  unreachable

do.end7:                                          ; preds = %entry
  %2 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac, align 8
  %local_alloc_bh = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 52
  %4 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_alloc_bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %ac_resv = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 13
  %8 = ptrtoint ptr %ac_resv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ac_resv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %numfound.i) #10
  %10 = ptrtoint ptr %numfound.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %numfound.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitoff.i) #10
  %11 = ptrtoint ptr %bitoff.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %bitoff.i, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %r.i) #10
  %12 = call ptr @memset(ptr %r.i, i32 255, i32 40)
  %osb_la_resmap.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 54
  %id1.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %7, i32 0, i32 34
  %i_total.i = getelementptr inbounds %struct.anon.79, ptr %id1.i, i32 0, i32 1
  %13 = ptrtoint ptr %i_total.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_total.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %bail.thread.i, label %if.end.i

bail.thread.i:                                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %bitoff.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %bitoff.i, align 4
  br label %ocfs2_local_alloc_find_clear_bits.exit

if.end.i:                                         ; preds = %do.end7
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_resv_init_once(ptr noundef nonnull %r.i) #10
  call void @ocfs2_resv_set_type(ptr noundef nonnull %r.i, i32 noundef 2) #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %resv.addr.0.i = phi ptr [ %9, %if.end.i.if.end3.i_crit_edge ], [ %r.i, %if.then2.i ]
  %16 = ptrtoint ptr %numfound.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bits_wanted, ptr %numfound.i, align 4
  %call.i = call i32 @ocfs2_resmap_resv_bits(ptr noundef %osb_la_resmap.i, ptr noundef nonnull %resv.addr.0.i, ptr noundef nonnull %bitoff.i, ptr noundef nonnull %numfound.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then4.i, label %do.body.i

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %numfound.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numfound.i, align 4
  %19 = call i32 @llvm.umin.i32(i32 %18, i32 %bits_wanted)
  br label %bail.i

do.body.i:                                        ; preds = %if.end3.i
  %osb_resv_level.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 55
  %20 = ptrtoint ptr %osb_resv_level.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %osb_resv_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp9.not.i = icmp eq i32 %21, 0
  br i1 %cmp9.not.i, label %do.end19.i, label %do.body13.i, !prof !89

do.body13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/localalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.end19.i:                                       ; preds = %do.body.i
  %la_bitmap.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %7, i32 0, i32 35, i32 0, i32 7
  %22 = ptrtoint ptr %bitoff.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %bitoff.i, align 4
  %23 = ptrtoint ptr %numfound.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %numfound.i, align 4
  %24 = ptrtoint ptr %i_total.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_total.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #10
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end30.i.while.cond.i_crit_edge, %do.end19.i
  %startoff.0.i = phi i32 [ 0, %do.end19.i ], [ %startoff.1.i, %if.end30.i.while.cond.i_crit_edge ]
  %call.i.i = call i32 @_find_next_zero_bit_le(ptr noundef %la_bitmap.i, i32 noundef %26, i32 noundef %startoff.0.i) #10
  %27 = ptrtoint ptr %bitoff.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call.i.i, ptr %bitoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp23.not.i = icmp eq i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %26)
  %cmp24.i = icmp eq i32 %call.i.i, %26
  %or.cond.i = select i1 %cmp23.not.i, i1 true, i1 %cmp24.i
  br i1 %or.cond.i, label %while.cond.i.while.end.i_crit_edge, label %if.end26.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end26.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %startoff.0.i)
  %cmp27.i = icmp eq i32 %call.i.i, %startoff.0.i
  br i1 %cmp27.i, label %if.then28.i, label %if.end26.i.if.end30.i_crit_edge

if.end26.i.if.end30.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %numfound.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %numfound.i, align 4
  %inc.i = add i32 %29, 1
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end30.i_crit_edge
  %storemerge.i = phi i32 [ %inc.i, %if.then28.i ], [ 1, %if.end26.i.if.end30.i_crit_edge ]
  %startoff.1.in.i = phi i32 [ %startoff.0.i, %if.then28.i ], [ %call.i.i, %if.end26.i.if.end30.i_crit_edge ]
  %30 = ptrtoint ptr %numfound.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge.i, ptr %numfound.i, align 4
  %startoff.1.i = add i32 %startoff.1.in.i, 1
  %cmp31.i = icmp eq i32 %storemerge.i, %bits_wanted
  br i1 %cmp31.i, label %if.end30.i.while.end.i_crit_edge, label %if.end30.i.while.cond.i_crit_edge

if.end30.i.while.cond.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.end30.i.while.end.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end30.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %startoff.2.i = phi i32 [ %startoff.1.i, %if.end30.i.while.end.i_crit_edge ], [ %startoff.0.i, %while.cond.i.while.end.i_crit_edge ]
  %31 = ptrtoint ptr %numfound.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %numfound.i, align 4
  call fastcc void @trace_ocfs2_local_alloc_find_clear_bits_search_bitmap(i32 noundef %call.i.i, i32 noundef %32) #10
  %33 = ptrtoint ptr %numfound.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %numfound.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %bits_wanted)
  %cmp34.i = icmp eq i32 %34, %bits_wanted
  br i1 %cmp34.i, label %if.then35.i, label %if.else36.i

if.then35.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %startoff.2.i, %bits_wanted
  %35 = ptrtoint ptr %bitoff.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i, ptr %bitoff.i, align 4
  br label %bail.i

if.else36.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %bitoff.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %bitoff.i, align 4
  br label %bail.i

bail.i:                                           ; preds = %if.else36.i, %if.then35.i, %if.then4.i
  %bits_wanted.addr.0 = phi i32 [ %bits_wanted, %if.then35.i ], [ %bits_wanted, %if.else36.i ], [ %19, %if.then4.i ]
  br i1 %tobool1.not.i, label %if.then39.i, label %bail.i.ocfs2_local_alloc_find_clear_bits.exit_crit_edge

bail.i.ocfs2_local_alloc_find_clear_bits.exit_crit_edge: ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocfs2_local_alloc_find_clear_bits.exit

if.then39.i:                                      ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ocfs2_resv_discard(ptr noundef %osb_la_resmap.i, ptr noundef %resv.addr.0.i) #10
  br label %ocfs2_local_alloc_find_clear_bits.exit

ocfs2_local_alloc_find_clear_bits.exit:           ; preds = %if.then39.i, %bail.i.ocfs2_local_alloc_find_clear_bits.exit_crit_edge, %bail.thread.i
  %bits_wanted.addr.1 = phi i32 [ %bits_wanted, %bail.thread.i ], [ %bits_wanted.addr.0, %if.then39.i ], [ %bits_wanted.addr.0, %bail.i.ocfs2_local_alloc_find_clear_bits.exit_crit_edge ]
  %conv.i = zext i32 %bits_wanted.addr.1 to i64
  %37 = ptrtoint ptr %i_total.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_total.i, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #10
  %40 = ptrtoint ptr %bitoff.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bitoff.i, align 4
  %42 = ptrtoint ptr %numfound.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %numfound.i, align 4
  call fastcc void @trace_ocfs2_local_alloc_find_clear_bits(i64 noundef %conv.i, i32 noundef %39, i32 noundef %41, i32 noundef %43) #10
  %44 = ptrtoint ptr %bitoff.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bitoff.i, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %r.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitoff.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numfound.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp8 = icmp eq i32 %45, -1
  br i1 %cmp8, label %ocfs2_local_alloc_find_clear_bits.exit.if.end93_crit_edge, label %if.end26

ocfs2_local_alloc_find_clear_bits.exit.if.end93_crit_edge: ; preds = %ocfs2_local_alloc_find_clear_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.end26:                                         ; preds = %ocfs2_local_alloc_find_clear_bits.exit
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %7, i32 0, i32 35
  %la_bitmap = getelementptr inbounds %struct.ocfs2_dinode, ptr %7, i32 0, i32 35, i32 0, i32 7
  %46 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id2, align 8
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %add = add i32 %48, %45
  %49 = ptrtoint ptr %bit_off to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add, ptr %bit_off, align 4
  %50 = ptrtoint ptr %num_bits to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %bits_wanted.addr.1, ptr %num_bits, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %3, i32 -56
  %51 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %local_alloc_bh, align 8
  %call29 = call i32 @ocfs2_journal_access_di(ptr noundef %handle, ptr noundef %ip_metadata_cache.i, ptr noundef %52, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end60

if.then32:                                        ; preds = %if.end26
  %53 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call29, label %do.body49 [
    i32 -512, label %if.then32.if.end93_crit_edge
    i32 -4, label %if.then32.if.end93_crit_edge144
    i32 -28, label %if.then32.if.end93_crit_edge145
    i32 -122, label %if.then32.if.end93_crit_edge146
  ]

if.then32.if.end93_crit_edge146:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then32.if.end93_crit_edge145:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then32.if.end93_crit_edge144:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then32.if.end93_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

do.body49:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m50) #10
  %54 = ptrtoint ptr %_m50 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 1152921504606846976, ptr %_m50, align 8
  %conv54 = sext i32 %call29 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m50, ptr noundef nonnull @__func__.ocfs2_claim_local_alloc_bits, i32 noundef 750, ptr noundef nonnull @.str.1, i64 noundef %conv54) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m50) #10
  br label %bail

if.end60:                                         ; preds = %if.end26
  %55 = ptrtoint ptr %ac_resv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ac_resv, align 8
  call void @ocfs2_resmap_claimed_bits(ptr noundef %osb_la_resmap.i, ptr noundef %56, i32 noundef %45, i32 noundef %bits_wanted.addr.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bits_wanted.addr.1)
  %tobool62.not141 = icmp eq i32 %bits_wanted.addr.1, 0
  br i1 %tobool62.not141, label %if.end60.while.end_crit_edge, label %if.end60.while.body_crit_edge

if.end60.while.body_crit_edge:                    ; preds = %if.end60
  br label %while.body

if.end60.while.end_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end60.while.body_crit_edge
  %start.0143 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %45, %if.end60.while.body_crit_edge ]
  %bits_wanted.addr.2142 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %bits_wanted.addr.1, %if.end60.while.body_crit_edge ]
  %dec = add i32 %bits_wanted.addr.2142, -1
  %inc = add i32 %start.0143, 1
  %xor.i.i = and i32 %start.0143, 31
  %rem.i.i.i = xor i32 %xor.i.i, 24
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %start.0143, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %la_bitmap, i32 %div2.i.i.i
  %57 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %58, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %tobool62.not = icmp eq i32 %dec, 0
  br i1 %tobool62.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end60.while.end_crit_edge
  %59 = ptrtoint ptr %num_bits to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_bits, align 4
  %61 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id1.i, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62) #10
  %add.i = add i32 %63, %60
  %64 = call i32 @llvm.bswap.i32(i32 %add.i) #10
  %65 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %id1.i, align 4
  %66 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %local_alloc_bh, align 8
  call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %67) #10
  br label %bail

bail:                                             ; preds = %while.end, %do.body49
  %68 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call29, label %do.body82 [
    i32 0, label %bail.if.end93_crit_edge
    i32 -512, label %bail.if.end93_crit_edge147
    i32 -4, label %bail.if.end93_crit_edge148
    i32 524289, label %bail.if.end93_crit_edge149
    i32 -28, label %bail.if.end93_crit_edge150
    i32 -122, label %bail.if.end93_crit_edge151
  ]

bail.if.end93_crit_edge151:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

bail.if.end93_crit_edge150:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

bail.if.end93_crit_edge149:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

bail.if.end93_crit_edge148:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

bail.if.end93_crit_edge147:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

bail.if.end93_crit_edge:                          ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

do.body82:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m83) #10
  %69 = ptrtoint ptr %_m83 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 1152921504606846976, ptr %_m83, align 8
  %conv87 = sext i32 %call29 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m83, ptr noundef nonnull @__func__.ocfs2_claim_local_alloc_bits, i32 noundef 765, ptr noundef nonnull @.str.1, i64 noundef %conv87) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m83) #10
  br label %if.end93

if.end93:                                         ; preds = %do.body82, %bail.if.end93_crit_edge, %bail.if.end93_crit_edge147, %bail.if.end93_crit_edge148, %bail.if.end93_crit_edge149, %bail.if.end93_crit_edge150, %bail.if.end93_crit_edge151, %if.then32.if.end93_crit_edge, %if.then32.if.end93_crit_edge144, %if.then32.if.end93_crit_edge145, %if.then32.if.end93_crit_edge146, %ocfs2_local_alloc_find_clear_bits.exit.if.end93_crit_edge
  %status.0140 = phi i32 [ %call29, %do.body82 ], [ %call29, %bail.if.end93_crit_edge ], [ %call29, %bail.if.end93_crit_edge147 ], [ %call29, %bail.if.end93_crit_edge148 ], [ %call29, %bail.if.end93_crit_edge149 ], [ %call29, %bail.if.end93_crit_edge150 ], [ %call29, %bail.if.end93_crit_edge151 ], [ -28, %ocfs2_local_alloc_find_clear_bits.exit.if.end93_crit_edge ], [ %call29, %if.then32.if.end93_crit_edge ], [ %call29, %if.then32.if.end93_crit_edge144 ], [ %call29, %if.then32.if.end93_crit_edge145 ], [ %call29, %if.then32.if.end93_crit_edge146 ]
  ret i32 %status.0140
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_resmap_claimed_bits(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_free_local_alloc_bits(ptr nocapture noundef readonly %osb, ptr noundef %handle, ptr nocapture noundef readonly %ac, i32 noundef %bit_off, i32 noundef %num_bits) local_unnamed_addr #2 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ac_which = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %ac, i32 0, i32 5
  %0 = ptrtoint ptr %ac_which to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ac_which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !89

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/localalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 782, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

do.end7:                                          ; preds = %entry
  %2 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac, align 8
  %local_alloc_bh = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 52
  %4 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_alloc_bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %7, i32 0, i32 35
  %la_bitmap = getelementptr inbounds %struct.ocfs2_dinode, ptr %7, i32 0, i32 35, i32 0, i32 7
  %8 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id2, align 8
  %ip_metadata_cache.i = getelementptr i8, ptr %3, i32 -56
  %call9 = tail call i32 @ocfs2_journal_access_di(ptr noundef %handle, ptr noundef %ip_metadata_cache.i, ptr noundef %5, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_bits)
  %tobool29.not47 = icmp eq i32 %num_bits, 0
  br i1 %tobool29.not47, label %while.cond.preheader.while.end_crit_edge, label %while.body.preheader

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %sub = sub i32 %bit_off, %10
  br label %while.body

if.then11:                                        ; preds = %do.end7
  %11 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call9, label %do.body21 [
    i32 -512, label %if.then11.bail_crit_edge
    i32 -4, label %if.then11.bail_crit_edge50
    i32 -28, label %if.then11.bail_crit_edge51
    i32 -122, label %if.then11.bail_crit_edge52
  ]

if.then11.bail_crit_edge52:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then11.bail_crit_edge51:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then11.bail_crit_edge50:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

if.then11.bail_crit_edge:                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

do.body21:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #10
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call9 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_free_local_alloc_bits, i32 noundef 797, ptr noundef nonnull @.str.1, i64 noundef %conv) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #10
  br label %bail

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %clear_bits.049 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %num_bits, %while.body.preheader ]
  %start.048 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %dec = add i32 %clear_bits.049, -1
  %inc = add i32 %start.048, 1
  %xor.i.i = and i32 %start.048, 31
  %rem.i.i.i = xor i32 %xor.i.i, 24
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %start.048, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %la_bitmap, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %14, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  %tobool29.not = icmp eq i32 %dec, 0
  br i1 %tobool29.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %7, i32 0, i32 34
  %15 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id1, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %add.i = sub i32 %17, %num_bits
  %18 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %19 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %id1, align 4
  %20 = ptrtoint ptr %local_alloc_bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %local_alloc_bh, align 8
  tail call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %21) #10
  br label %bail

bail:                                             ; preds = %while.end, %do.body21, %if.then11.bail_crit_edge, %if.then11.bail_crit_edge50, %if.then11.bail_crit_edge51, %if.then11.bail_crit_edge52
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_la_set_sizes(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_alloc_should_use_local(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_load_local_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_begin_local_alloc_recovery(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_reserve_local_alloc_bits(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memweight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_local_alloc_count_bits(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_count_bits, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_local_alloc_count_bits, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %call42 = tail call i32 @__traceiter_ocfs2_local_alloc_count_bits(ptr noundef null, i32 noundef %num) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_count_bits, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_count_bits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_local_alloc_count_bits.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_local_alloc_count_bits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 733, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
declare dso_local i32 @__traceiter_ocfs2_local_alloc_count_bits(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_resv_init_once(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_resv_set_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_resmap_resv_bits(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_local_alloc_find_clear_bits_search_bitmap(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_find_clear_bits_search_bitmap, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_local_alloc_find_clear_bits_search_bitmap, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %call42 = tail call i32 @__traceiter_ocfs2_local_alloc_find_clear_bits_search_bitmap(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_find_clear_bits_search_bitmap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_find_clear_bits_search_bitmap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_local_alloc_find_clear_bits_search_bitmap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_local_alloc_find_clear_bits_search_bitmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 735, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
declare dso_local void @ocfs2_resv_discard(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_local_alloc_find_clear_bits(i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_find_clear_bits, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_local_alloc_find_clear_bits, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !113
  %call42 = tail call i32 @__traceiter_ocfs2_local_alloc_find_clear_bits(ptr noundef null, i64 noundef %ull, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_find_clear_bits, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_find_clear_bits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_local_alloc_find_clear_bits.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_local_alloc_find_clear_bits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 737, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_local_alloc_find_clear_bits_search_bitmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_local_alloc_find_clear_bits(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_sync_local_to_main(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_local_to_main, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_sync_local_to_main, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
  %call42 = tail call i32 @__traceiter_ocfs2_sync_local_to_main(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_local_to_main, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_local_to_main, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_sync_local_to_main.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_sync_local_to_main.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 739, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_sync_local_to_main_free(i32 noundef %count, i32 noundef %bit, i64 noundef %start_blk, i64 noundef %blkno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_local_to_main_free, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_sync_local_to_main_free, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !117
  %call42 = tail call i32 @__traceiter_ocfs2_sync_local_to_main_free(ptr noundef null, i32 noundef %count, i32 noundef %bit, i64 noundef %start_blk, i64 noundef %blkno) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_local_to_main_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_sync_local_to_main_free, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_sync_local_to_main_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_sync_local_to_main_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 760, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
declare dso_local i32 @ocfs2_release_clusters(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_sync_local_to_main(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_sync_local_to_main_free(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_recalc_la_window(ptr noundef %osb, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #10
  %local_alloc_state = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 51
  %0 = ptrtoint ptr %local_alloc_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %local_alloc_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %land.end, label %if.end38

land.end:                                         ; preds = %entry
  %.b75 = load i1, ptr @ocfs2_recalc_la_window.__already_done, align 1
  br i1 %.b75, label %land.end.out_unlock_crit_edge, label %if.then9, !prof !89

land.end.out_unlock_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ocfs2_recalc_la_window.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1047, i32 noundef 9, ptr noundef null) #10
  br label %out_unlock

if.end38:                                         ; preds = %entry
  %event.off = add i32 %event, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.off)
  %switch = icmp ult i32 %event.off, 2
  br i1 %switch, label %if.then41, label %if.end49

if.then41:                                        ; preds = %if.end38
  %local_alloc_bits = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 48
  %2 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %local_alloc_bits, align 8
  %shr = lshr i32 %3, 1
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %4 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 36
  %8 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_clustersize_bits.i, align 8
  %sub.i = sub i32 20, %9
  %shl.i = shl nuw i32 1, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shl.i)
  %cmp42 = icmp ugt i32 %shr, %shl.i
  br i1 %cmp42, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %local_alloc_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %local_alloc_state, align 4
  %11 = ptrtoint ptr %local_alloc_bits to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr, ptr %local_alloc_bits, align 8
  br label %if.end47

if.else:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %local_alloc_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %local_alloc_state, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then43
  %ocfs2_wq = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 101
  %13 = ptrtoint ptr %ocfs2_wq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ocfs2_wq, align 4
  %la_enable_wq = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 47
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %la_enable_wq, i32 noundef 3000) #10
  br label %out_unlock

if.end49:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp51.not = icmp eq i32 %1, 2
  br i1 %cmp51.not, label %if.end49.out_unlock_crit_edge, label %if.then52

if.end49.out_unlock_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %local_alloc_default_bits = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 49
  %15 = ptrtoint ptr %local_alloc_default_bits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %local_alloc_default_bits, align 4
  %local_alloc_bits53 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 48
  %17 = ptrtoint ptr %local_alloc_bits53 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %local_alloc_bits53, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then52, %if.end49.out_unlock_crit_edge, %if.end47, %if.then9, %land.end.out_unlock_crit_edge
  %18 = ptrtoint ptr %local_alloc_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %local_alloc_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock) #10
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_free_alloc_context(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_reserve_cluster_bitmap_bits(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_free_ac_resource(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_local_alloc_new_window(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_new_window, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_local_alloc_new_window, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %call42 = tail call i32 @__traceiter_ocfs2_local_alloc_new_window(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !120
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_new_window, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_new_window, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_local_alloc_new_window.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_local_alloc_new_window.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 762, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
declare dso_local i32 @ocfs2_claim_clusters(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_resmap_restart(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_local_alloc_new_window_result(i64 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_new_window_result, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_local_alloc_new_window_result, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !89

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  %call42 = tail call i32 @__traceiter_ocfs2_local_alloc_new_window_result(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !89

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !78) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_new_window_result, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_local_alloc_new_window_result, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_local_alloc_new_window_result.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ocfs2_local_alloc_new_window_result.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 764, ptr noundef nonnull @.str.7) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !78) #10
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
declare dso_local i32 @__traceiter_ocfs2_local_alloc_new_window(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_local_alloc_new_window_result(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !59, !60, !62, !63, !65, !67, !68, !70, !72, !74, !75, !77}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__func__.ocfs2_load_local_alloc, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/localalloc.c", i32 281, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/localalloc.c", i32 294, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/localalloc.c", i32 310, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/localalloc.c", i32 318, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ocfs2/localalloc.c", i32 333, i32 3}
!11 = !{ptr @__func__.ocfs2_shutdown_local_alloc, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ocfs2/localalloc.c", i32 390, i32 3}
!13 = !{ptr @__func__.ocfs2_begin_local_alloc_recovery, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/localalloc.c", i32 494, i32 3}
!15 = !{ptr @__func__.ocfs2_complete_local_alloc_recovery, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/localalloc.c", i32 559, i32 3}
!17 = !{ptr @__func__.ocfs2_reserve_local_alloc_bits, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/localalloc.c", i32 631, i32 3}
!19 = !{ptr @__PRETTY_FUNCTION__.ocfs2_reserve_local_alloc_bits, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/localalloc.c", i32 655, i32 12}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__func__.ocfs2_claim_local_alloc_bits, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ocfs2/localalloc.c", i32 737, i32 3}
!24 = !{ptr @__func__.ocfs2_free_local_alloc_bits, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/localalloc.c", i32 797, i32 3}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 723, i32 1}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!30 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 725, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 727, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 729, i32 1}
!42 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 731, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 733, i32 1}
!48 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 735, i32 1}
!51 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 737, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = !{ptr @__func__.ocfs2_sync_local_to_main, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/localalloc.c", i32 1001, i32 5}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 739, i32 1}
!59 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 741, i32 1}
!62 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!63 = !{ptr @__func__.ocfs2_local_alloc_slide_window, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/localalloc.c", i32 1254, i32 4}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../fs/ocfs2/localalloc.c", i32 1047, i32 3}
!67 = !{ptr @.str.9, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__func__.ocfs2_local_alloc_reserve_for_window, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/localalloc.c", i32 1106, i32 3}
!70 = !{ptr @__func__.ocfs2_local_alloc_new_window, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ocfs2/localalloc.c", i32 1203, i32 4}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 762, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 764, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2148508962, i64 2148508967, i64 2148508980, i64 2148509024, i64 2148509058, i64 2148509079}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2155557827}
!91 = !{i64 2155558070}
!92 = !{i64 2149505369}
!93 = !{i64 2149506405}
!94 = !{i64 2155575723}
!95 = !{i64 2155575996}
!96 = !{i64 2155592867}
!97 = !{i64 2155593080}
!98 = !{i64 2155613834}
!99 = !{i64 2155614067}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{i64 2161203770, i64 2161204256, i64 2161203807, i64 2161203863, i64 2161203897, i64 2161203921, i64 2161203962, i64 2161203983, i64 2161204011, i64 2161204045}
!102 = !{i64 2148684364, i64 2148684390, i64 2148684419, i64 2148684453, i64 2148684484, i64 2148684507}
!103 = !{!"auto-init"}
!104 = !{i64 2155632294}
!105 = !{i64 2155632571}
!106 = !{i64 2161208393, i64 2161208879, i64 2161208430, i64 2161208486, i64 2161208520, i64 2161208544, i64 2161208585, i64 2161208606, i64 2161208634, i64 2161208668}
!107 = !{i64 2161214385, i64 2161214871, i64 2161214422, i64 2161214478, i64 2161214512, i64 2161214536, i64 2161214577, i64 2161214598, i64 2161214626, i64 2161214660}
!108 = !{i64 2161211819, i64 2161212305, i64 2161211856, i64 2161211912, i64 2161211946, i64 2161211970, i64 2161212011, i64 2161212032, i64 2161212060, i64 2161212094}
!109 = !{i64 2155649916}
!110 = !{i64 2155650141}
!111 = !{i64 2155672049}
!112 = !{i64 2155672326}
!113 = !{i64 2155691514}
!114 = !{i64 2155691797}
!115 = !{i64 2155709245}
!116 = !{i64 2155709476}
!117 = !{i64 2155731384}
!118 = !{i64 2155731661}
!119 = !{i64 2155749091}
!120 = !{i64 2155749330}
!121 = !{i64 2155767116}
!122 = !{i64 2155767369}
