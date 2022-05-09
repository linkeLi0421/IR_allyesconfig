; ModuleID = '/llk/IR_all_yes/fs/ocfs2/quota_local.c_pt.bc'
source_filename = "../fs/ocfs2/quota_local.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.quota_format_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.quota_format_type = type { i32, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.user_namespace = type opaque
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ocfs2_recovery_chunk = type { %struct.list_head, i32, ptr }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.86, ptr }
%union.anon.86 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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
%struct.ocfs2_local_disk_dqinfo = type { i32, i32, i32 }
%struct.ocfs2_local_disk_chunk = type { i32, [0 x i8] }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, %struct.kqid, i64, i32, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.19, i32 }
%union.anon.19 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ocfs2_local_disk_dqblk = type { i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ocfs2_dquot = type { %struct.dquot, i64, i64, ptr, i32, i64, i64, %struct.llist_node }
%struct.llist_node = type { ptr }
%struct.ocfs2_mem_dqinfo = type { i32, i32, i32, i32, i32, %struct.list_head, ptr, %struct.ocfs2_lock_res, ptr, i32, i64, ptr, ptr, %struct.qtree_mem_dqinfo, %struct.delayed_work, ptr }
%struct.qtree_mem_dqinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.ocfs2_quota_chunk = type { %struct.list_head, i32, ptr }
%struct.ocfs2_disk_dqheader = type { i32, i32 }

@ocfs2_begin_quota_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015ocfs2: Beginning quota recovery on device (%s) for slot %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ocfs2_begin_quota_recovery\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/quota_local.c\00", [41 x i8] zeroinitializer }, align 32
@ocfs2_begin_quota_recovery._entry_ptr = internal global ptr @ocfs2_begin_quota_recovery._entry, section ".printk_index", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"failed to read quota file info header (slot=%d type=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@__const.ocfs2_finish_quota_recovery.ino = private unnamed_addr constant [2 x i32] [i32 13, i32 14], align 4
@ocfs2_finish_quota_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015ocfs2: Finishing quota recovery on device (%s) for slot %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ocfs2_finish_quota_recovery\00", [36 x i8] zeroinitializer }, align 32
@ocfs2_finish_quota_recovery._entry_ptr = internal global ptr @ocfs2_finish_quota_recovery._entry, section ".printk_index", align 4
@ocfs2_finish_quota_recovery._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\015ocfs2: Skipping quota recovery on device (%s) for slot %d because quota file is locked.\0A\00", [37 x i8] zeroinitializer }, align 32
@ocfs2_finish_quota_recovery._entry_ptr.9 = internal global ptr @ocfs2_finish_quota_recovery._entry.7, section ".printk_index", align 4
@__func__.ocfs2_local_write_dquot = private unnamed_addr constant [24 x i8] c"ocfs2_local_write_dquot\00", align 1
@__func__.ocfs2_create_local_dquot = private unnamed_addr constant [25 x i8] c"ocfs2_create_local_dquot\00", align 1
@__func__.ocfs2_local_release_dquot = private unnamed_addr constant [26 x i8] c"ocfs2_local_release_dquot\00", align 1
@ocfs2_format_ops = internal constant { %struct.quota_format_ops, [32 x i8] } { %struct.quota_format_ops { ptr @ocfs2_local_check_quota_file, ptr @ocfs2_local_read_info, ptr @ocfs2_global_write_info, ptr @ocfs2_local_free_info, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ocfs2_quota_format = dso_local global { %struct.quota_format_type, [16 x i8] } { %struct.quota_format_type { i32 3, ptr @ocfs2_format_ops, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__PRETTY_FUNCTION__.ocfs2_read_quota_block = private unnamed_addr constant [71 x i8] c"int ocfs2_read_quota_block(struct inode *, u64, struct buffer_head **)\00", align 1
@.str.10 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"Quota file %llu is probably corrupted! Requested to read block %Lu but file has size only %Lu\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.ocfs2_read_quota_block = private unnamed_addr constant [23 x i8] c"ocfs2_read_quota_block\00", align 1
@__func__.ocfs2_recovery_load_quota = private unnamed_addr constant [26 x i8] c"ocfs2_recovery_load_quota\00", align 1
@__tracepoint_ocfs2_finish_quota_recovery = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_finish_quota_recovery.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_recover_local_quota_file = private unnamed_addr constant [31 x i8] c"ocfs2_recover_local_quota_file\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.14 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Failed to get quota structure for id %u, type %d. Cannot finish quota file recovery.\0A\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_recover_local_quota_file = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_recover_local_quota_file.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__func__.ocfs2_modify_bh = private unnamed_addr constant [16 x i8] c"ocfs2_modify_bh\00", align 1
@__tracepoint_olq_set_dquot = external dso_local global %struct.tracepoint, align 4
@trace_olq_set_dquot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_find_free_entry = private unnamed_addr constant [22 x i8] c"ocfs2_find_free_entry\00", align 1
@.str.16 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Did not find empty entry in chunk %d with %u entries free (type=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.ocfs2_extend_local_quota_file = private unnamed_addr constant [30 x i8] c"ocfs2_extend_local_quota_file\00", align 1
@__func__.ocfs2_local_quota_add_chunk = private unnamed_addr constant [28 x i8] c"ocfs2_local_quota_add_chunk\00", align 1
@ocfs2_qf_chunk_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__func__.ocfs2_local_write_info = private unnamed_addr constant [23 x i8] c"ocfs2_local_write_info\00", align 1
@dq_data_lock = external dso_local global %struct.spinlock, align 4
@__const.ocfs2_local_check_quota_file.lmagics = private unnamed_addr constant [2 x i32] [i32 217392320, i32 217392321], align 4
@__const.ocfs2_local_check_quota_file.gmagics = private unnamed_addr constant [2 x i32] [i32 217392240, i32 217392241], align 4
@__const.ocfs2_local_check_quota_file.ino = private unnamed_addr constant [2 x i32] [i32 5, i32 6], align 4
@__func__.ocfs2_local_check_quota_file = private unnamed_addr constant [29 x i8] c"ocfs2_local_check_quota_file\00", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to read quota file header (type=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"quota file magic does not match (%u != %u), type=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"quota file version does not match (%u != %u), type=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cannot get global quota file inode (type=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to read global quota file header (type=%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"global quota file magic does not match (%u != %u), type=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"global quota file version does not match (%u != %u), type=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.ocfs2_local_read_info = private unnamed_addr constant [22 x i8] c"ocfs2_local_read_info\00", align 1
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to allocate memory for ocfs2 quota info.\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to read quota file info header (type=%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.ocfs2_load_local_quota_bitmaps = private unnamed_addr constant [31 x i8] c"ocfs2_load_local_quota_bitmaps\00", align 1
@__func__.ocfs2_local_free_info = private unnamed_addr constant [22 x i8] c"ocfs2_local_free_info\00", align 1
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"releasing quota file with used entries (type=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.30 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.32 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.43 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.68 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.69 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.71 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 401, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 422, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 430, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 597, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 615, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"ocfs2_format_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1303, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"ocfs2_quota_format\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1310, i32 26 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 141, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1974, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 108, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 503, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 366, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 952, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 178, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 184, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 190, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 202, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 210, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 216, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 222, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 698, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 726, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [26 x i8] c"../fs/ocfs2/quota_local.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 833, i32 4 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @ocfs2_begin_quota_recovery._entry, ptr @ocfs2_begin_quota_recovery._entry_ptr, ptr @ocfs2_finish_quota_recovery._entry, ptr @ocfs2_finish_quota_recovery._entry.7, ptr @ocfs2_finish_quota_recovery._entry_ptr, ptr @ocfs2_finish_quota_recovery._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ocfs2_format_ops, ptr @ocfs2_quota_format, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_begin_quota_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_finish_quota_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_finish_quota_recovery._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_format_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_quota_format to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_free_quota_recovery(ptr noundef %rec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rec, align 4
  %cmp.not19.i = icmp eq ptr %1, %rec
  br i1 %cmp.not19.i, label %entry.free_recovery_list.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.free_recovery_list.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_recovery_list.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %rchunk.020.i = phi ptr [ %next.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %rchunk.020.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0.i = load ptr, ptr %rchunk.020.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rchunk.020.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %rchunk.020.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %rchunk.020.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rchunk.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %rchunk.020.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %rchunk.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rchunk.020.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %rc_bitmap.i = getelementptr inbounds %struct.ocfs2_recovery_chunk, ptr %rchunk.020.i, i32 0, i32 2
  %11 = ptrtoint ptr %rc_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rc_bitmap.i, align 4
  tail call void @kfree(ptr noundef %12) #12
  tail call void @kfree(ptr noundef %rchunk.020.i) #12
  %cmp.not.i = icmp eq ptr %next.0.i, %rec
  br i1 %cmp.not.i, label %list_del.exit.i.free_recovery_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.free_recovery_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_recovery_list.exit

free_recovery_list.exit:                          ; preds = %list_del.exit.i.free_recovery_list.exit_crit_edge, %entry.free_recovery_list.exit_crit_edge
  %arrayidx.1 = getelementptr [2 x %struct.list_head], ptr %rec, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %cmp.not19.i.1 = icmp eq ptr %14, %arrayidx.1
  br i1 %cmp.not19.i.1, label %free_recovery_list.exit.free_recovery_list.exit.1_crit_edge, label %free_recovery_list.exit.for.body.i.1_crit_edge

free_recovery_list.exit.for.body.i.1_crit_edge:   ; preds = %free_recovery_list.exit
  br label %for.body.i.1

free_recovery_list.exit.free_recovery_list.exit.1_crit_edge: ; preds = %free_recovery_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_recovery_list.exit.1

for.body.i.1:                                     ; preds = %list_del.exit.i.1.for.body.i.1_crit_edge, %free_recovery_list.exit.for.body.i.1_crit_edge
  %rchunk.020.i.1 = phi ptr [ %next.0.i.1, %list_del.exit.i.1.for.body.i.1_crit_edge ], [ %14, %free_recovery_list.exit.for.body.i.1_crit_edge ]
  %15 = ptrtoint ptr %rchunk.020.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %next.0.i.1 = load ptr, ptr %rchunk.020.i.1, align 4
  %call.i.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rchunk.020.i.1) #12
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %for.body.i.1.list_del.exit.i.1_crit_edge

for.body.i.1.list_del.exit.i.1_crit_edge:         ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.1

if.end.i.i.i.1:                                   ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %rchunk.020.i.1, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i.1, align 4
  %18 = ptrtoint ptr %rchunk.020.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rchunk.020.i.1, align 4
  %prev1.i.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i.1, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i.1

list_del.exit.i.1:                                ; preds = %if.end.i.i.i.1, %for.body.i.1.list_del.exit.i.1_crit_edge
  %22 = ptrtoint ptr %rchunk.020.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %rchunk.020.i.1, align 4
  %prev.i.i.1 = getelementptr inbounds %struct.list_head, ptr %rchunk.020.i.1, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.1, align 4
  %rc_bitmap.i.1 = getelementptr inbounds %struct.ocfs2_recovery_chunk, ptr %rchunk.020.i.1, i32 0, i32 2
  %24 = ptrtoint ptr %rc_bitmap.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rc_bitmap.i.1, align 4
  tail call void @kfree(ptr noundef %25) #12
  tail call void @kfree(ptr noundef %rchunk.020.i.1) #12
  %cmp.not.i.1 = icmp eq ptr %next.0.i.1, %arrayidx.1
  br i1 %cmp.not.i.1, label %list_del.exit.i.1.free_recovery_list.exit.1_crit_edge, label %list_del.exit.i.1.for.body.i.1_crit_edge

list_del.exit.i.1.for.body.i.1_crit_edge:         ; preds = %list_del.exit.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.1

list_del.exit.i.1.free_recovery_list.exit.1_crit_edge: ; preds = %list_del.exit.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_recovery_list.exit.1

free_recovery_list.exit.1:                        ; preds = %list_del.exit.i.1.free_recovery_list.exit.1_crit_edge, %free_recovery_list.exit.free_recovery_list.exit.1_crit_edge
  tail call void @kfree(ptr noundef %rec) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocfs2_begin_quota_recovery(ptr noundef %osb, i32 noundef %slot_num) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m54 = alloca i64, align 8
  %_m65 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %dev_str = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 61
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %dev_str, i32 noundef %slot_num) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3136, i32 noundef 16) #16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ocfs2_alloc_quota_recovery.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ocfs2_alloc_quota_recovery.exit:                  ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %arrayidx.1.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %arrayidx.1.i, ptr %arrayidx.1.i, align 8
  %prev.i.1.i = getelementptr [2 x %struct.list_head], ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.1.i, ptr %prev.i.1.i, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  %s_feature_ro_compat = getelementptr inbounds %struct.ocfs2_super, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %s_feature_ro_compat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_feature_ro_compat, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %ocfs2_alloc_quota_recovery.exit.for.inc_crit_edge, label %if.end6

ocfs2_alloc_quota_recovery.exit.for.inc_crit_edge: ; preds = %ocfs2_alloc_quota_recovery.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end6:                                          ; preds = %ocfs2_alloc_quota_recovery.exit
  %call8 = call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 13, i32 noundef %slot_num) #12
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.if.then81_crit_edge, label %if.end11

if.end6.if.then81_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81

if.end11:                                         ; preds = %if.end6
  %call12 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call8, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.if.then14_crit_edge, label %if.end33

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then14:                                        ; preds = %if.end11.1.if.then14_crit_edge, %if.end11.if.then14_crit_edge
  %call8.lcssa141 = phi ptr [ %call8, %if.end11.if.then14_crit_edge ], [ %call8.1, %if.end11.1.if.then14_crit_edge ]
  %call12.lcssa = phi i32 [ %call12, %if.end11.if.then14_crit_edge ], [ %call12.1, %if.end11.1.if.then14_crit_edge ]
  %11 = zext i32 %call12.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12.lcssa, label %do.body24 [
    i32 -512, label %if.then14.out_put.thread_crit_edge
    i32 -4, label %if.then14.out_put.thread_crit_edge142
    i32 -28, label %if.then14.out_put.thread_crit_edge143
    i32 -122, label %if.then14.out_put.thread_crit_edge144
  ]

if.then14.out_put.thread_crit_edge144:            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.thread

if.then14.out_put.thread_crit_edge143:            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.thread

if.then14.out_put.thread_crit_edge142:            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.thread

if.then14.out_put.thread_crit_edge:               ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.thread

do.body24:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call12.lcssa to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @.str.1, i32 noundef 422, ptr noundef nonnull @.str.3, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %out_put.thread

if.end33:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %bh, align 4
  %call34 = call fastcc i32 @ocfs2_read_quota_block(ptr noundef nonnull %call8, i64 noundef 0, ptr noundef nonnull %bh)
  %14 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call34, label %do.body53 [
    i32 0, label %if.end72
    i32 -512, label %if.end33.if.end62_crit_edge
    i32 -4, label %if.end33.if.end62_crit_edge145
    i32 524289, label %if.end33.if.end62_crit_edge146
    i32 -28, label %if.end33.if.end62_crit_edge147
    i32 -122, label %if.end33.if.end62_crit_edge148
  ]

if.end33.if.end62_crit_edge148:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end33.if.end62_crit_edge147:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end33.if.end62_crit_edge146:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end33.if.end62_crit_edge145:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end33.if.end62_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

do.body53:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m54) #12
  %15 = ptrtoint ptr %_m54 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606846976, ptr %_m54, align 8
  %conv58 = sext i32 %call34 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m54, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @.str.3, i64 noundef %conv58) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m54) #12
  br label %if.end62

if.end62:                                         ; preds = %do.body53, %if.end33.if.end62_crit_edge, %if.end33.if.end62_crit_edge145, %if.end33.if.end62_crit_edge146, %if.end33.if.end62_crit_edge147, %if.end33.if.end62_crit_edge148
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m65) #12
  %16 = ptrtoint ptr %_m65 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606846976, ptr %_m65, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m65, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @.str.4, i32 noundef %slot_num, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m65) #12
  br label %out_put

if.end72:                                         ; preds = %if.end33
  %17 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 8
  %call74 = call fastcc i32 @ocfs2_recovery_load_quota(ptr noundef nonnull %call8, ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i)
  %tobool.not.i128 = icmp eq ptr %18, null
  br i1 %tobool.not.i128, label %if.end72.out_put_crit_edge, label %if.then.i

if.end72.out_put_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put

if.then.i:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %18) #12
  br label %out_put

out_put.thread:                                   ; preds = %do.body24, %if.then14.out_put.thread_crit_edge, %if.then14.out_put.thread_crit_edge142, %if.then14.out_put.thread_crit_edge143, %if.then14.out_put.thread_crit_edge144
  call void @iput(ptr noundef nonnull %call8.lcssa141) #12
  br label %if.then81

out_put:                                          ; preds = %if.then.i, %if.end72.out_put_crit_edge, %if.end62
  %status.1 = phi i32 [ %call34, %if.end62 ], [ %call74, %if.end72.out_put_crit_edge ], [ %call74, %if.then.i ]
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call8, i32 noundef 1) #12
  call void @iput(ptr noundef nonnull %call8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp75 = icmp slt i32 %status.1, 0
  br i1 %cmp75, label %out_put.if.then81_crit_edge, label %out_put.for.inc_crit_edge

out_put.for.inc_crit_edge:                        ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

out_put.if.then81_crit_edge:                      ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81

for.inc:                                          ; preds = %out_put.for.inc_crit_edge, %ocfs2_alloc_quota_recovery.exit.for.inc_crit_edge
  %21 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info, align 16
  %s_feature_ro_compat.1 = getelementptr inbounds %struct.ocfs2_super, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %s_feature_ro_compat.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_feature_ro_compat.1, align 4
  %and.1 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool4.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool4.not.1, label %for.inc.cleanup_crit_edge, label %if.end6.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.1:                                        ; preds = %for.inc
  %call8.1 = call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 14, i32 noundef %slot_num) #12
  %tobool9.not.1 = icmp eq ptr %call8.1, null
  br i1 %tobool9.not.1, label %if.end6.1.if.then81_crit_edge, label %if.end11.1

if.end6.1.if.then81_crit_edge:                    ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81

if.end11.1:                                       ; preds = %if.end6.1
  %call12.1 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call8.1, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %cmp13.1 = icmp slt i32 %call12.1, 0
  br i1 %cmp13.1, label %if.end11.1.if.then14_crit_edge, label %if.end33.1

if.end11.1.if.then14_crit_edge:                   ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.end33.1:                                       ; preds = %if.end11.1
  %25 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %bh, align 4
  %call34.1 = call fastcc i32 @ocfs2_read_quota_block(ptr noundef nonnull %call8.1, i64 noundef 0, ptr noundef nonnull %bh)
  %26 = zext i32 %call34.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call34.1, label %do.body53.1 [
    i32 0, label %if.end72.1
    i32 -512, label %if.end33.1.if.end62.1_crit_edge
    i32 -4, label %if.end33.1.if.end62.1_crit_edge149
    i32 524289, label %if.end33.1.if.end62.1_crit_edge150
    i32 -28, label %if.end33.1.if.end62.1_crit_edge151
    i32 -122, label %if.end33.1.if.end62.1_crit_edge152
  ]

if.end33.1.if.end62.1_crit_edge152:               ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.1

if.end33.1.if.end62.1_crit_edge151:               ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.1

if.end33.1.if.end62.1_crit_edge150:               ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.1

if.end33.1.if.end62.1_crit_edge149:               ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.1

if.end33.1.if.end62.1_crit_edge:                  ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.1

if.end72.1:                                       ; preds = %if.end33.1
  %27 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bh, align 4
  %b_data.1 = getelementptr inbounds %struct.buffer_head, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %b_data.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data.1, align 4
  %add.ptr.1 = getelementptr i8, ptr %30, i32 8
  %call74.1 = call fastcc i32 @ocfs2_recovery_load_quota(ptr noundef nonnull %call8.1, ptr noundef %add.ptr.1, ptr noundef %arrayidx.1.i)
  %tobool.not.i128.1 = icmp eq ptr %28, null
  br i1 %tobool.not.i128.1, label %if.end72.1.out_put.1_crit_edge, label %if.then.i.1

if.end72.1.out_put.1_crit_edge:                   ; preds = %if.end72.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.1

if.then.i.1:                                      ; preds = %if.end72.1
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %28) #12
  br label %out_put.1

do.body53.1:                                      ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m54) #12
  %31 = ptrtoint ptr %_m54 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606846976, ptr %_m54, align 8
  %conv58.1 = sext i32 %call34.1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m54, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @.str.3, i64 noundef %conv58.1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m54) #12
  br label %if.end62.1

if.end62.1:                                       ; preds = %do.body53.1, %if.end33.1.if.end62.1_crit_edge, %if.end33.1.if.end62.1_crit_edge149, %if.end33.1.if.end62.1_crit_edge150, %if.end33.1.if.end62.1_crit_edge151, %if.end33.1.if.end62.1_crit_edge152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m65) #12
  %32 = ptrtoint ptr %_m65 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606846976, ptr %_m65, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m65, ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @.str.4, i32 noundef %slot_num, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m65) #12
  br label %out_put.1

out_put.1:                                        ; preds = %if.end62.1, %if.then.i.1, %if.end72.1.out_put.1_crit_edge
  %status.1.1 = phi i32 [ %call34.1, %if.end62.1 ], [ %call74.1, %if.end72.1.out_put.1_crit_edge ], [ %call74.1, %if.then.i.1 ]
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call8.1, i32 noundef 1) #12
  call void @iput(ptr noundef nonnull %call8.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.1)
  %cmp75.1 = icmp slt i32 %status.1.1, 0
  br i1 %cmp75.1, label %out_put.1.if.then81_crit_edge, label %out_put.1.cleanup_crit_edge

out_put.1.cleanup_crit_edge:                      ; preds = %out_put.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out_put.1.if.then81_crit_edge:                    ; preds = %out_put.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81

if.then81:                                        ; preds = %out_put.1.if.then81_crit_edge, %if.end6.1.if.then81_crit_edge, %out_put.if.then81_crit_edge, %out_put.thread, %if.end6.if.then81_crit_edge
  %status.4133 = phi i32 [ %call12.lcssa, %out_put.thread ], [ -2, %if.end6.if.then81_crit_edge ], [ %status.1, %out_put.if.then81_crit_edge ], [ -2, %if.end6.1.if.then81_crit_edge ], [ %status.1.1, %out_put.1.if.then81_crit_edge ]
  call void @ocfs2_free_quota_recovery(ptr noundef nonnull %call7.i.i)
  %33 = inttoptr i32 %status.4133 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %out_put.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %33, %if.then81 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %out_put.1.cleanup_crit_edge ], [ %call7.i.i, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ocfs2_alloc_quota_recovery() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 16) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr [2 x %struct.list_head], ptr %call7.i, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %prev.i, align 4
  %arrayidx.1 = getelementptr [2 x %struct.list_head], ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 8
  %prev.i.1 = getelementptr [2 x %struct.list_head], ptr %call7.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx.1, ptr %prev.i.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_get_system_file_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_read_quota_block(ptr noundef %inode, i64 noundef %v_block, ptr nocapture noundef %bh) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca ptr, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #12
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh, align 4
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %tmp, align 4
  %call = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %6 to i64
  %shr = ashr i64 %call, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %v_block)
  %cmp.not = icmp ugt i64 %shr, %v_block
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i, align 8
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %call5 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %4, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_read_quota_block, ptr noundef nonnull @.str.10, i64 noundef %8, i64 noundef %v_block, i64 noundef %call4) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call i32 @ocfs2_read_virt_blocks(ptr noundef %inode, i64 noundef %v_block, i32 noundef 1, ptr noundef nonnull %tmp, i32 noundef 0, ptr noundef nonnull @ocfs2_validate_quota_block) #12
  %9 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call6, label %do.body [
    i32 0, label %land.lhs.true30.critedge
    i32 -512, label %if.end.cleanup_crit_edge
    i32 -4, label %if.end.cleanup_crit_edge54
    i32 524289, label %if.end.cleanup_crit_edge55
    i32 -28, label %if.end.cleanup_crit_edge56
    i32 -122, label %if.end.cleanup_crit_edge57
  ]

if.end.cleanup_crit_edge57:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.cleanup_crit_edge56:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.cleanup_crit_edge55:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.cleanup_crit_edge54:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %10 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv24 = sext i32 %call6 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_read_quota_block, i32 noundef 150, ptr noundef nonnull @.str.3, i64 noundef %conv24) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %cleanup

land.lhs.true30.critedge:                         ; preds = %if.end
  %11 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bh, align 4
  %tobool31.not = icmp eq ptr %12, null
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true30.critedge.cleanup_crit_edge

land.lhs.true30.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true30.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then32:                                        ; preds = %land.lhs.true30.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tmp, align 4
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %bh, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %land.lhs.true30.critedge.cleanup_crit_edge, %do.body, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge54, %if.end.cleanup_crit_edge55, %if.end.cleanup_crit_edge56, %if.end.cleanup_crit_edge57, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %call6, %do.body ], [ 0, %if.then32 ], [ 0, %land.lhs.true30.critedge.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge54 ], [ %call6, %if.end.cleanup_crit_edge55 ], [ %call6, %if.end.cleanup_crit_edge56 ], [ %call6, %if.end.cleanup_crit_edge57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_recovery_load_quota(ptr noundef %lqinode, ptr nocapture noundef readonly %ldinfo, ptr noundef %head) unnamed_addr #0 align 64 {
entry:
  %hbh = alloca ptr, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %lqinode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hbh) #12
  %dqi_chunks = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, ptr %ldinfo, i32 0, i32 1
  %2 = ptrtoint ptr %dqi_chunks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dqi_chunks, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp25 = icmp sgt i32 %4, 0
  br i1 %cmp25, label %for.body.lr.ph, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

for.body.lr.ph:                                   ; preds = %entry
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %brelse.exit
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.cond.if.end34_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.if.end34_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %5 = ptrtoint ptr %hbh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %hbh, align 4
  %6 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize.i.i, align 16
  %sub1.i.i = shl i32 %7, 3
  %shl.i.i = add i32 %sub1.i.i, -96
  %sub.i.i.i = add i32 %7, -8
  %div.i.i.i = udiv i32 %sub.i.i.i, 24
  %div.i.i = udiv i32 %shl.i.i, %div.i.i.i
  %add.i = add i32 %div.i.i, 1
  %mul.i = mul i32 %add.i, %i.026
  %add1.i = add i32 %mul.i, 1
  %conv = zext i32 %add1.i to i64
  %call1 = call fastcc i32 @ocfs2_read_quota_block(ptr noundef %lqinode, i64 noundef %conv, ptr noundef nonnull %hbh)
  %8 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call1, label %do.body [
    i32 0, label %if.end20
    i32 -512, label %for.body.for.end_crit_edge
    i32 -4, label %for.body.for.end_crit_edge57
    i32 524289, label %for.body.for.end_crit_edge58
    i32 -28, label %for.body.for.end_crit_edge59
    i32 -122, label %for.body.for.end_crit_edge60
  ]

for.body.for.end_crit_edge60:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.end_crit_edge59:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.end_crit_edge58:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.end_crit_edge57:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv18 = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_recovery_load_quota, i32 noundef 355, ptr noundef nonnull @.str.3, i64 noundef %conv18) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %for.end

if.end20:                                         ; preds = %for.body
  %10 = ptrtoint ptr %hbh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hbh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize.i.i, align 16
  %sub1.i.i2 = shl i32 %18, 3
  %shl.i.i3 = add i32 %sub1.i.i2, -96
  %sub.i.i.i4 = add i32 %18, -8
  %div.i.i.i5 = udiv i32 %sub.i.i.i4, 24
  %19 = urem i32 %shl.i.i3, %div.i.i.i5
  %mul.i6 = sub i32 %shl.i.i3, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %mul.i6)
  %cmp22 = icmp ult i32 %16, %mul.i6
  br i1 %cmp22, label %if.then24, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3136, i32 noundef 16) #16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then24.if.end26_crit_edge, label %if.end.i

if.then24.if.end26_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end.i:                                         ; preds = %if.then24
  %rc_chunk.i = getelementptr inbounds %struct.ocfs2_recovery_chunk, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %rc_chunk.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.026, ptr %rc_chunk.i, align 8
  %22 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize.i.i, align 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3136) #17
  %rc_bitmap.i = getelementptr inbounds %struct.ocfs2_recovery_chunk, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %rc_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i, ptr %rc_bitmap.i, align 4
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %if.end26

if.end5.i:                                        ; preds = %if.end.i
  %dqc_bitmap.i = getelementptr inbounds %struct.ocfs2_local_disk_chunk, ptr %13, i32 0, i32 1
  %25 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize.i.i, align 16
  %sub1.i.i.i = shl i32 %26, 3
  %shl.i.i.i = add i32 %sub1.i.i.i, -96
  %sub.i.i.i16.i = add i32 %26, -8
  %div.i.i.i.i = udiv i32 %sub.i.i.i16.i, 24
  %27 = urem i32 %shl.i.i.i, %div.i.i.i.i
  %28 = sub nuw nsw i32 -89, %27
  %add.i7 = add i32 %28, %sub1.i.i.i
  %shr.i = lshr i32 %add.i7, 3
  %29 = call ptr @memcpy(ptr %call9.i.i, ptr %dqc_bitmap.i, i32 %shr.i)
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %31, ptr noundef %head) #12
  br i1 %call.i.i.i, label %if.end.i.i17.i, label %if.end5.i.if.end26_crit_edge

if.end5.i.if.end26_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end.i.i17.i:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %head, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call7.i.i, ptr %31, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end.i.i17.i, %if.end5.i.if.end26_crit_edge, %if.then4.i, %if.then24.if.end26_crit_edge, %if.end20.if.end26_crit_edge
  %cmp27 = phi i1 [ false, %if.end.i.i17.i ], [ false, %if.end5.i.if.end26_crit_edge ], [ true, %if.then4.i ], [ true, %if.then24.if.end26_crit_edge ], [ false, %if.end20.if.end26_crit_edge ]
  %status.1 = phi i32 [ 0, %if.end.i.i17.i ], [ 0, %if.end5.i.if.end26_crit_edge ], [ -12, %if.then4.i ], [ -12, %if.then24.if.end26_crit_edge ], [ 0, %if.end20.if.end26_crit_edge ]
  %36 = ptrtoint ptr %hbh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hbh, align 4
  %tobool.not.i8 = icmp eq ptr %37, null
  br i1 %tobool.not.i8, label %if.end26.brelse.exit_crit_edge, label %if.then.i

if.end26.brelse.exit_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %37) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end26.brelse.exit_crit_edge
  br i1 %cmp27, label %brelse.exit.if.then33_crit_edge, label %for.cond

brelse.exit.if.then33_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

for.end:                                          ; preds = %do.body, %for.body.for.end_crit_edge, %for.body.for.end_crit_edge57, %for.body.for.end_crit_edge58, %for.body.for.end_crit_edge59, %for.body.for.end_crit_edge60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp31 = icmp slt i32 %call1, 0
  br i1 %cmp31, label %for.end.if.then33_crit_edge, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

for.end.if.then33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

if.then33:                                        ; preds = %for.end.if.then33_crit_edge, %brelse.exit.if.then33_crit_edge
  %status.217 = phi i32 [ %call1, %for.end.if.then33_crit_edge ], [ %status.1, %brelse.exit.if.then33_crit_edge ]
  %38 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head, align 4
  %cmp.not19.i = icmp eq ptr %39, %head
  br i1 %cmp.not19.i, label %if.then33.if.end34_crit_edge, label %if.then33.for.body.i_crit_edge

if.then33.for.body.i_crit_edge:                   ; preds = %if.then33
  br label %for.body.i

if.then33.if.end34_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then33.for.body.i_crit_edge
  %rchunk.020.i = phi ptr [ %next.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %39, %if.then33.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %rchunk.020.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %next.0.i = load ptr, ptr %rchunk.020.i, align 4
  %call.i.i.i10 = call zeroext i1 @__list_del_entry_valid(ptr noundef %rchunk.020.i) #12
  br i1 %call.i.i.i10, label %if.end.i.i.i11, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i11:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %rchunk.020.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %rchunk.020.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rchunk.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i11, %for.body.i.list_del.exit.i_crit_edge
  %47 = ptrtoint ptr %rchunk.020.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %rchunk.020.i, align 4
  %prev.i.i12 = getelementptr inbounds %struct.list_head, ptr %rchunk.020.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i12 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i12, align 4
  %rc_bitmap.i13 = getelementptr inbounds %struct.ocfs2_recovery_chunk, ptr %rchunk.020.i, i32 0, i32 2
  %49 = ptrtoint ptr %rc_bitmap.i13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rc_bitmap.i13, align 4
  call void @kfree(ptr noundef %50) #12
  call void @kfree(ptr noundef %rchunk.020.i) #12
  %cmp.not.i = icmp eq ptr %next.0.i, %head
  br i1 %cmp.not.i, label %list_del.exit.i.if.end34_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.if.end34_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end34:                                         ; preds = %list_del.exit.i.if.end34_crit_edge, %if.then33.if.end34_crit_edge, %for.end.if.end34_crit_edge, %for.cond.if.end34_crit_edge, %entry.if.end34_crit_edge
  %status.216 = phi i32 [ %call1, %for.end.if.end34_crit_edge ], [ %status.217, %if.then33.if.end34_crit_edge ], [ 0, %entry.if.end34_crit_edge ], [ %status.217, %list_del.exit.i.if.end34_crit_edge ], [ 0, %for.cond.if.end34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hbh) #12
  ret i32 %status.216
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_finish_quota_recovery(ptr noundef %osb, ptr noundef %rec, i32 noundef %slot_num) local_unnamed_addr #0 align 64 {
entry:
  %hbh.i = alloca ptr, align 4
  %qbh.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m62.i = alloca i64, align 8
  %_m82.i = alloca i64, align 8
  %_m113.i = alloca i64, align 8
  %_m145.i = alloca i64, align 8
  %_m181.i = alloca i64, align 8
  %_m214.i = alloca i64, align 8
  %_m306.i = alloca i64, align 8
  %bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m59 = alloca i64, align 8
  %_m70 = alloca i64, align 8
  %_m109 = alloca i64, align 8
  %_m142 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %dev_str = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 61
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %dev_str, i32 noundef %slot_num) #15
  %s_umount = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 14
  tail call void @down_read(ptr noundef %s_umount) #12
  %slot_num83 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %type.0246 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %status.0245 = phi i32 [ 0, %entry ], [ %status.5, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.list_head], ptr %rec, i32 0, i32 %type.0246
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %3, %arrayidx
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  call fastcc void @trace_ocfs2_finish_quota_recovery(i32 noundef %slot_num)
  %arrayidx3 = getelementptr [2 x i32], ptr @__const.ocfs2_finish_quota_recovery.ino, i32 0, i32 %type.0246
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %call4 = call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef %5, i32 noundef %slot_num) #12
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call4, ptr noundef null, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call8)
  %cmp9 = icmp eq i32 %call8, -11
  br i1 %cmp9, label %out_put.thread231, label %if.else

out_put.thread231:                                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %dev_str, i32 noundef %slot_num) #15
  call void @iput(ptr noundef nonnull %call4) #12
  br label %for.inc

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp18 = icmp slt i32 %call8, 0
  br i1 %cmp18, label %if.then19, label %if.end38

if.then19:                                        ; preds = %if.else
  %6 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call8, label %do.body29 [
    i32 -512, label %if.then19.out_put.thread_crit_edge
    i32 -4, label %if.then19.out_put.thread_crit_edge307
    i32 -122, label %if.then19.out_put.thread_crit_edge308
    i32 -28, label %if.then19.out_put.thread_crit_edge309
  ]

if.then19.out_put.thread_crit_edge309:            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.thread

if.then19.out_put.thread_crit_edge308:            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.thread

if.then19.out_put.thread_crit_edge307:            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.thread

if.then19.out_put.thread_crit_edge:               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.thread

do.body29:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call8 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @.str.6, i32 noundef 621, ptr noundef nonnull @.str.3, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %out_put.thread

if.end38:                                         ; preds = %if.else
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bh, align 4
  %call39 = call fastcc i32 @ocfs2_read_quota_block(ptr noundef nonnull %call4, i64 noundef 0, ptr noundef nonnull %bh)
  %9 = zext i32 %call39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call39, label %do.body58 [
    i32 0, label %if.end77
    i32 -512, label %if.end38.if.end67_crit_edge
    i32 -4, label %if.end38.if.end67_crit_edge310
    i32 524289, label %if.end38.if.end67_crit_edge311
    i32 -28, label %if.end38.if.end67_crit_edge312
    i32 -122, label %if.end38.if.end67_crit_edge313
  ]

if.end38.if.end67_crit_edge313:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.end38.if.end67_crit_edge312:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.end38.if.end67_crit_edge311:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.end38.if.end67_crit_edge310:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.end38.if.end67_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

do.body58:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m59) #12
  %10 = ptrtoint ptr %_m59 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606846976, ptr %_m59, align 8
  %conv63 = sext i32 %call39 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m59, ptr noundef nonnull @.str.6, i32 noundef 628, ptr noundef nonnull @.str.3, i64 noundef %conv63) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m59) #12
  br label %if.end67

if.end67:                                         ; preds = %do.body58, %if.end38.if.end67_crit_edge, %if.end38.if.end67_crit_edge310, %if.end38.if.end67_crit_edge311, %if.end38.if.end67_crit_edge312, %if.end38.if.end67_crit_edge313
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m70) #12
  %11 = ptrtoint ptr %_m70 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m70, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m70, ptr noundef nonnull @.str.6, i32 noundef 630, ptr noundef nonnull @.str.4, i32 noundef %slot_num, i32 noundef %type.0246) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m70) #12
  br label %out_put

if.end77:                                         ; preds = %if.end38
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %and78 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then80, label %if.end77.if.end82_crit_edge

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then80:                                        ; preds = %if.end77
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %info.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 31, i32 3
  %dqi_priv.i = getelementptr %struct.mem_dqinfo, ptr %info.i.i, i32 %type.0246, i32 8
  %21 = ptrtoint ptr %dqi_priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dqi_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hbh.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qbh.i) #12
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino.i, align 8
  %conv.i224 = zext i32 %24 to i64
  call fastcc void @trace_ocfs2_recover_local_quota_file(i64 noundef %conv.i224, i32 noundef %type.0246) #12
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %cmp.not514.i = icmp eq ptr %26, %arrayidx
  br i1 %cmp.not514.i, label %if.then80.ocfs2_recover_local_quota_file.exit_crit_edge, label %for.body.lr.ph.i

if.then80.ocfs2_recover_local_quota_file.exit_crit_edge: ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recover_local_quota_file.exit

for.body.lr.ph.i:                                 ; preds = %if.then80
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 3
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %dqio_sem.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 31, i32 1
  %ip_metadata_cache.i.i = getelementptr i8, ptr %call4, i32 -56
  br label %for.body.i

for.cond.i:                                       ; preds = %list_del.exit.i
  %cmp.not.i = icmp eq ptr %next.0517.i, %arrayidx
  br i1 %cmp.not.i, label %for.cond.i.if.end286.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.if.end286.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end286.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rchunk.0515.i = phi ptr [ %26, %for.body.lr.ph.i ], [ %next.0517.i, %for.cond.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %rchunk.0515.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %next.0517.i = load ptr, ptr %rchunk.0515.i, align 4
  %rc_chunk.i = getelementptr inbounds %struct.ocfs2_recovery_chunk, ptr %rchunk.0515.i, i32 0, i32 1
  %28 = ptrtoint ptr %rc_chunk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rc_chunk.i, align 4
  %30 = ptrtoint ptr %hbh.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %hbh.i, align 4
  %31 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_blocksize.i.i.i, align 16
  %sub1.i.i.i = shl i32 %32, 3
  %shl.i.i.i = add i32 %sub1.i.i.i, -96
  %sub.i.i.i.i = add i32 %32, -8
  %div.i.i.i.i = udiv i32 %sub.i.i.i.i, 24
  %div.i.i.i = udiv i32 %shl.i.i.i, %div.i.i.i.i
  %add.i.i = add i32 %div.i.i.i, 1
  %mul.i.i = mul i32 %add.i.i, %29
  %add1.i.i = add i32 %mul.i.i, 1
  %conv11.i = zext i32 %add1.i.i to i64
  %call12.i = call fastcc i32 @ocfs2_read_quota_block(ptr noundef nonnull %call4, i64 noundef %conv11.i, ptr noundef nonnull %hbh.i) #12
  %33 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call12.i, label %do.body.i [
    i32 0, label %if.end32.i
    i32 -512, label %for.body.i.for.end280.i_crit_edge
    i32 -4, label %for.body.i.for.end280.i_crit_edge314
    i32 524289, label %for.body.i.for.end280.i_crit_edge315
    i32 -28, label %for.body.i.for.end280.i_crit_edge316
    i32 -122, label %for.body.i.for.end280.i_crit_edge317
  ]

for.body.i.for.end280.i_crit_edge317:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end280.i

for.body.i.for.end280.i_crit_edge316:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end280.i

for.body.i.for.end280.i_crit_edge315:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end280.i

for.body.i.for.end280.i_crit_edge314:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end280.i

for.body.i.for.end280.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end280.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #12
  %34 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv29.i = sext i32 %call12.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_recover_local_quota_file, i32 noundef 483, ptr noundef nonnull @.str.3, i64 noundef %conv29.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #12
  br label %for.end280.i

if.end32.i:                                       ; preds = %for.body.i
  %35 = ptrtoint ptr %hbh.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hbh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_data.i, align 4
  %rc_bitmap.i = getelementptr inbounds %struct.ocfs2_recovery_chunk, ptr %rchunk.0515.i, i32 0, i32 2
  %39 = ptrtoint ptr %rc_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rc_bitmap.i, align 4
  %41 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize.i.i.i, align 16
  %sub1.i.i432.i = shl i32 %42, 3
  %shl.i.i433.i = add i32 %sub1.i.i432.i, -96
  %sub.i.i.i434.i = add i32 %42, -8
  %div.i.i.i435.i = udiv i32 %sub.i.i.i434.i, 24
  %43 = urem i32 %shl.i.i433.i, %div.i.i.i435.i
  %mul.i436.i = sub i32 %shl.i.i433.i, %43
  %call34.i = call i32 @_find_next_bit_be(ptr noundef %40, i32 noundef %mul.i436.i, i32 noundef 0) #12
  %44 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_blocksize.i.i.i, align 16
  %sub1.i.i438490.i = shl i32 %45, 3
  %shl.i.i439491.i = add i32 %sub1.i.i438490.i, -96
  %sub.i.i.i440492.i = add i32 %45, -8
  %div.i.i.i441493.i = udiv i32 %sub.i.i.i440492.i, 24
  %46 = urem i32 %shl.i.i439491.i, %div.i.i.i441493.i
  %mul.i442494.i = sub i32 %shl.i.i439491.i, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %call34.i, i32 %mul.i442494.i)
  %cmp37495.i = icmp ult i32 %call34.i, %mul.i442494.i
  br i1 %cmp37495.i, label %for.body39.lr.ph.i, label %if.end32.i.for.end.i_crit_edge

if.end32.i.for.end.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body39.lr.ph.i:                               ; preds = %if.end32.i
  %dqc_bitmap.i = getelementptr inbounds %struct.ocfs2_local_disk_chunk, ptr %38, i32 0, i32 1
  %47 = ptrtoint ptr %dqc_bitmap.i to i32
  %and.i.i.i = shl i32 %47, 3
  %shl.i.i453.i = and i32 %and.i.i.i, 24
  %and1.i.i.i = and i32 %47, -4
  %48 = inttoptr i32 %and1.i.i.i to ptr
  br label %for.body39.i

for.body39.i:                                     ; preds = %for.inc.i.for.body39.i_crit_edge, %for.body39.lr.ph.i
  %div.i.i.i441502.i = phi i32 [ %div.i.i.i441493.i, %for.body39.lr.ph.i ], [ %div.i.i.i441.i, %for.inc.i.for.body39.i_crit_edge ]
  %shl.i.i439501.i = phi i32 [ %shl.i.i439491.i, %for.body39.lr.ph.i ], [ %shl.i.i439.i, %for.inc.i.for.body39.i_crit_edge ]
  %bit.0496.i = phi i32 [ %call34.i, %for.body39.lr.ph.i ], [ %call267.i, %for.inc.i.for.body39.i_crit_edge ]
  %49 = ptrtoint ptr %qbh.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %qbh.i, align 4
  %div.i.i.i445.i = udiv i32 %shl.i.i439501.i, %div.i.i.i441502.i
  %add.i.i.i = add i32 %div.i.i.i445.i, 1
  %mul.i.i.i = mul i32 %add.i.i.i, %29
  %div.i.i = sdiv i32 %bit.0496.i, %div.i.i.i441502.i
  %add.i446.i = add i32 %div.i.i, 2
  %add2.i.i = add i32 %add.i446.i, %mul.i.i.i
  %conv41.i = zext i32 %add2.i.i to i64
  %call42.i = call fastcc i32 @ocfs2_read_quota_block(ptr noundef nonnull %call4, i64 noundef %conv41.i, ptr noundef nonnull %qbh.i) #12
  %50 = zext i32 %call42.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call42.i, label %do.body61.i [
    i32 0, label %if.end72.i
    i32 -512, label %for.body39.i.for.end.i_crit_edge
    i32 -4, label %for.body39.i.for.end.i_crit_edge318
    i32 524289, label %for.body39.i.for.end.i_crit_edge319
    i32 -28, label %for.body39.i.for.end.i_crit_edge320
    i32 -122, label %for.body39.i.for.end.i_crit_edge321
  ]

for.body39.i.for.end.i_crit_edge321:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body39.i.for.end.i_crit_edge320:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body39.i.for.end.i_crit_edge319:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body39.i.for.end.i_crit_edge318:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body39.i.for.end.i_crit_edge:                 ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

do.body61.i:                                      ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m62.i) #12
  %51 = ptrtoint ptr %_m62.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 1152921504606846976, ptr %_m62.i, align 8
  %conv66.i = sext i32 %call42.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m62.i, ptr noundef nonnull @__func__.ocfs2_recover_local_quota_file, i32 noundef 493, ptr noundef nonnull @.str.3, i64 noundef %conv66.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m62.i) #12
  br label %for.end.i

if.end72.i:                                       ; preds = %for.body39.i
  %52 = ptrtoint ptr %qbh.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %qbh.i, align 4
  %b_data73.i = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %b_data73.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data73.i, align 4
  %56 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_blocksize.i.i.i, align 16
  %sub.i.i448.i = add i32 %57, -8
  %div.i.i449.i = udiv i32 %sub.i.i448.i, 24
  %rem.i.i = srem i32 %bit.0496.i, %div.i.i449.i
  %mul.i450.i = mul i32 %rem.i.i, 24
  %add.ptr75.i = getelementptr i8, ptr %55, i32 %mul.i450.i
  %58 = ptrtoint ptr %add.ptr75.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %add.ptr75.i, align 8
  %60 = call i64 @llvm.bswap.i64(i64 %59) #12
  %conv76.i = trunc i64 %60 to i32
  %61 = zext i32 %type.0246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %type.0246, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
    i32 2, label %sw.bb6.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %conv76.i) #12, !noalias !103
  br label %make_kqid.exit.i

sw.bb2.i.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i.i = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %conv76.i) #12, !noalias !103
  br label %make_kqid.exit.i

sw.bb6.i.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i.i = call i32 @make_kprojid(ptr noundef nonnull @init_user_ns, i32 noundef %conv76.i) #12, !noalias !103
  br label %make_kqid.exit.i

do.body.i.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/quota.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !noalias !103, !srcloc !106
  unreachable

make_kqid.exit.i:                                 ; preds = %sw.bb6.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %call8.sink.i.i = phi i32 [ %call8.i.i, %sw.bb6.i.i ], [ %call4.i.i, %sw.bb2.i.i ], [ %call.i.i, %sw.bb.i.i ]
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %call8.sink.i.i, 0
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %type.0246, 1
  %call77.i = call ptr @dqget(ptr noundef %20, [2 x i32] %.fca.1.insert.i) #12
  %cmp.i.i = icmp ugt ptr %call77.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then79.i, label %if.end91.i

if.then79.i:                                      ; preds = %make_kqid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %call77.i to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m82.i) #12
  %63 = ptrtoint ptr %_m82.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 1152921504606846976, ptr %_m82.i, align 8
  %64 = ptrtoint ptr %add.ptr75.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %add.ptr75.i, align 8
  %66 = call i64 @llvm.bswap.i64(i64 %65) #12
  %conv87.i = trunc i64 %66 to i32
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m82.i, ptr noundef nonnull @__func__.ocfs2_recover_local_quota_file, i32 noundef 507, ptr noundef nonnull @.str.14, i32 noundef %conv87.i, i32 noundef %type.0246) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m82.i) #12
  br label %out_put_bh.i

if.end91.i:                                       ; preds = %make_kqid.exit.i
  %call92.i = call i32 @ocfs2_lock_global_qf(ptr noundef %22, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %cmp93.i = icmp slt i32 %call92.i, 0
  br i1 %cmp93.i, label %if.then95.i, label %if.end123.i

if.then95.i:                                      ; preds = %if.end91.i
  %67 = zext i32 %call92.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call92.i, label %do.body112.i [
    i32 -512, label %if.then95.i.out_put_dquot.i_crit_edge
    i32 -4, label %if.then95.i.out_put_dquot.i_crit_edge322
    i32 -28, label %if.then95.i.out_put_dquot.i_crit_edge323
    i32 -122, label %if.then95.i.out_put_dquot.i_crit_edge324
  ]

if.then95.i.out_put_dquot.i_crit_edge324:         ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put_dquot.i

if.then95.i.out_put_dquot.i_crit_edge323:         ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put_dquot.i

if.then95.i.out_put_dquot.i_crit_edge322:         ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put_dquot.i

if.then95.i.out_put_dquot.i_crit_edge:            ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put_dquot.i

do.body112.i:                                     ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m113.i) #12
  %68 = ptrtoint ptr %_m113.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 1152921504606846976, ptr %_m113.i, align 8
  %conv117.i = sext i32 %call92.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m113.i, ptr noundef nonnull @__func__.ocfs2_recover_local_quota_file, i32 noundef 512, ptr noundef nonnull @.str.3, i64 noundef %conv117.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m113.i) #12
  br label %out_put_dquot.i

if.end123.i:                                      ; preds = %if.end91.i
  %69 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info.i, align 16
  %call124.i = call ptr @ocfs2_start_trans(ptr noundef %70, i32 noundef 4) #12
  %cmp.i451.i = icmp ugt ptr %call124.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i451.i, label %if.then126.i, label %if.end155.i

if.then126.i:                                     ; preds = %if.end123.i
  %71 = ptrtoint ptr %call124.i to i32
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %71, label %do.body144.i [
    i32 -512, label %if.then126.i.out_drop_lock.i_crit_edge
    i32 -4, label %if.then126.i.out_drop_lock.i_crit_edge325
    i32 524289, label %if.then126.i.out_drop_lock.i_crit_edge326
    i32 -28, label %if.then126.i.out_drop_lock.i_crit_edge327
    i32 -122, label %if.then126.i.out_drop_lock.i_crit_edge328
  ]

if.then126.i.out_drop_lock.i_crit_edge328:        ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_drop_lock.i

if.then126.i.out_drop_lock.i_crit_edge327:        ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_drop_lock.i

if.then126.i.out_drop_lock.i_crit_edge326:        ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_drop_lock.i

if.then126.i.out_drop_lock.i_crit_edge325:        ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_drop_lock.i

if.then126.i.out_drop_lock.i_crit_edge:           ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_drop_lock.i

do.body144.i:                                     ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m145.i) #12
  %73 = ptrtoint ptr %_m145.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 1152921504606846976, ptr %_m145.i, align 8
  %conv149.i = sext i32 %71 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m145.i, ptr noundef nonnull @__func__.ocfs2_recover_local_quota_file, i32 noundef 520, ptr noundef nonnull @.str.3, i64 noundef %conv149.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m145.i) #12
  br label %out_drop_lock.i

if.end155.i:                                      ; preds = %if.end123.i
  call void @down_write(ptr noundef %dqio_sem.i) #12
  %dq_dqb_lock.i = getelementptr inbounds %struct.dquot, ptr %call77.i, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %dq_dqb_lock.i) #12
  %dqb_spacemod.i = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, ptr %add.ptr75.i, i32 0, i32 1
  %74 = ptrtoint ptr %dqb_spacemod.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %dqb_spacemod.i, align 8
  %76 = call i64 @llvm.bswap.i64(i64 %75) #12
  %dqb_inodemod.i = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, ptr %add.ptr75.i, i32 0, i32 2
  %77 = ptrtoint ptr %dqb_inodemod.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %dqb_inodemod.i, align 8
  %79 = call i64 @llvm.bswap.i64(i64 %78) #12
  %dqb_curspace.i = getelementptr inbounds %struct.dquot, ptr %call77.i, i32 0, i32 11, i32 2
  %80 = ptrtoint ptr %dqb_curspace.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %dqb_curspace.i, align 8
  %add.i = add i64 %81, %76
  store i64 %add.i, ptr %dqb_curspace.i, align 8
  %dqb_curinodes.i = getelementptr inbounds %struct.dquot, ptr %call77.i, i32 0, i32 11, i32 6
  %82 = ptrtoint ptr %dqb_curinodes.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %dqb_curinodes.i, align 8
  %add158.i = add i64 %83, %79
  store i64 %add158.i, ptr %dqb_curinodes.i, align 8
  call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock.i) #12
  %call.i452.i = call i32 @__ocfs2_sync_dquot(ptr noundef %call77.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i452.i)
  %cmp161.i = icmp slt i32 %call.i452.i, 0
  br i1 %cmp161.i, label %if.then163.i, label %if.end191.i

if.then163.i:                                     ; preds = %if.end155.i
  %84 = zext i32 %call.i452.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call.i452.i, label %do.body180.i [
    i32 -512, label %if.then163.i.out_commit.i_crit_edge
    i32 -4, label %if.then163.i.out_commit.i_crit_edge329
    i32 -28, label %if.then163.i.out_commit.i_crit_edge330
    i32 -122, label %if.then163.i.out_commit.i_crit_edge331
  ]

if.then163.i.out_commit.i_crit_edge331:           ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_commit.i

if.then163.i.out_commit.i_crit_edge330:           ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_commit.i

if.then163.i.out_commit.i_crit_edge329:           ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_commit.i

if.then163.i.out_commit.i_crit_edge:              ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_commit.i

do.body180.i:                                     ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m181.i) #12
  %85 = ptrtoint ptr %_m181.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 1152921504606846976, ptr %_m181.i, align 8
  %conv185.i = sext i32 %call.i452.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m181.i, ptr noundef nonnull @__func__.ocfs2_recover_local_quota_file, i32 noundef 538, ptr noundef nonnull @.str.3, i64 noundef %conv185.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m181.i) #12
  br label %out_commit.i

if.end191.i:                                      ; preds = %if.end155.i
  %call193.i = call i32 @ocfs2_journal_access_dq(ptr noundef %call124.i, ptr noundef %ip_metadata_cache.i.i, ptr noundef %53, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193.i)
  %cmp194.i = icmp slt i32 %call193.i, 0
  br i1 %cmp194.i, label %if.then196.i, label %if.end224.i

if.then196.i:                                     ; preds = %if.end191.i
  %86 = zext i32 %call193.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call193.i, label %do.body213.i [
    i32 -512, label %if.then196.i.out_commit.i_crit_edge
    i32 -4, label %if.then196.i.out_commit.i_crit_edge332
    i32 -28, label %if.then196.i.out_commit.i_crit_edge333
    i32 -122, label %if.then196.i.out_commit.i_crit_edge334
  ]

if.then196.i.out_commit.i_crit_edge334:           ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_commit.i

if.then196.i.out_commit.i_crit_edge333:           ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_commit.i

if.then196.i.out_commit.i_crit_edge332:           ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_commit.i

if.then196.i.out_commit.i_crit_edge:              ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_commit.i

do.body213.i:                                     ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m214.i) #12
  %87 = ptrtoint ptr %_m214.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 1152921504606846976, ptr %_m214.i, align 8
  %conv218.i = sext i32 %call193.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m214.i, ptr noundef nonnull @__func__.ocfs2_recover_local_quota_file, i32 noundef 546, ptr noundef nonnull @.str.3, i64 noundef %conv218.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m214.i) #12
  br label %out_commit.i

if.end224.i:                                      ; preds = %if.end191.i
  call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 366) #12
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %53, i32 noundef 4) #12
  %88 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %53, align 4
  %and.i.i.i.i.i = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.end224.i.if.then.i.i_crit_edge

if.end224.i.if.then.i.i_crit_edge:                ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

trylock_buffer.exit.i.i:                          ; preds = %if.end224.i
  call void @llvm.prefetch.p0(ptr %53, i32 1, i32 3, i32 1) #12
  %90 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 4, ptr elementtype(i32) %53) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %90, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %91 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.not.i.i = icmp eq i32 %91, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i.i_crit_edge

trylock_buffer.exit.i.i.if.then.i.i_crit_edge:    ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_buffer.exit.i

if.then.i.i:                                      ; preds = %trylock_buffer.exit.i.i.if.then.i.i_crit_edge, %if.end224.i.if.then.i.i_crit_edge
  call void @__lock_buffer(ptr noundef %53) #12
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %add.i.i454.i = add i32 %bit.0496.i, %shl.i.i453.i
  %div3.i.i.i.i = lshr i32 %add.i.i454.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %48, i32 %div3.i.i.i.i
  %92 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %xor.i.i.i = and i32 %add.i.i454.i, 31
  %and.i.i.i.i = xor i32 %xor.i.i.i, 24
  %94 = shl nuw i32 1, %and.i.i.i.i
  %95 = and i32 %93, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool226.not.i = icmp eq i32 %95, 0
  br i1 %tobool226.not.i, label %do.end240.i, label %lock_buffer.exit.i.if.end246.i_crit_edge, !prof !109

lock_buffer.exit.i.if.end246.i_crit_edge:         ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end246.i

do.end240.i:                                      ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 550, i32 noundef 9, ptr noundef null) #12
  br label %if.end246.i

if.end246.i:                                      ; preds = %do.end240.i, %lock_buffer.exit.i.if.end246.i_crit_edge
  %neg.i.i.i.i.i = xor i32 %94, -1
  %96 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i459.i = and i32 %97, %neg.i.i.i.i.i
  store i32 %and.i.i.i.i459.i, ptr %arrayidx.i.i.i.i, align 4
  %98 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %38, align 4
  %100 = call i32 @llvm.bswap.i32(i32 %99) #12
  %add.i460.i = add i32 %100, 1
  %101 = call i32 @llvm.bswap.i32(i32 %add.i460.i) #12
  %102 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %38, align 4
  call void @unlock_buffer(ptr noundef %53) #12
  call void @ocfs2_journal_dirty(ptr noundef %call124.i, ptr noundef %53) #12
  br label %out_commit.i

out_commit.i:                                     ; preds = %if.end246.i, %do.body213.i, %if.then196.i.out_commit.i_crit_edge, %if.then196.i.out_commit.i_crit_edge332, %if.then196.i.out_commit.i_crit_edge333, %if.then196.i.out_commit.i_crit_edge334, %do.body180.i, %if.then163.i.out_commit.i_crit_edge, %if.then163.i.out_commit.i_crit_edge329, %if.then163.i.out_commit.i_crit_edge330, %if.then163.i.out_commit.i_crit_edge331
  %status.2.i = phi i32 [ %call193.i, %if.end246.i ], [ %call.i452.i, %if.then163.i.out_commit.i_crit_edge ], [ %call.i452.i, %if.then163.i.out_commit.i_crit_edge329 ], [ %call.i452.i, %if.then163.i.out_commit.i_crit_edge330 ], [ %call.i452.i, %if.then163.i.out_commit.i_crit_edge331 ], [ %call.i452.i, %do.body180.i ], [ %call193.i, %if.then196.i.out_commit.i_crit_edge ], [ %call193.i, %if.then196.i.out_commit.i_crit_edge332 ], [ %call193.i, %if.then196.i.out_commit.i_crit_edge333 ], [ %call193.i, %if.then196.i.out_commit.i_crit_edge334 ], [ %call193.i, %do.body213.i ]
  call void @up_write(ptr noundef %dqio_sem.i) #12
  %103 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_fs_info.i, align 16
  %call259.i = call i32 @ocfs2_commit_trans(ptr noundef %104, ptr noundef %call124.i) #12
  br label %out_drop_lock.i

out_drop_lock.i:                                  ; preds = %out_commit.i, %do.body144.i, %if.then126.i.out_drop_lock.i_crit_edge, %if.then126.i.out_drop_lock.i_crit_edge325, %if.then126.i.out_drop_lock.i_crit_edge326, %if.then126.i.out_drop_lock.i_crit_edge327, %if.then126.i.out_drop_lock.i_crit_edge328
  %status.3.i = phi i32 [ %status.2.i, %out_commit.i ], [ %71, %if.then126.i.out_drop_lock.i_crit_edge ], [ %71, %if.then126.i.out_drop_lock.i_crit_edge325 ], [ %71, %if.then126.i.out_drop_lock.i_crit_edge326 ], [ %71, %if.then126.i.out_drop_lock.i_crit_edge327 ], [ %71, %if.then126.i.out_drop_lock.i_crit_edge328 ], [ %71, %do.body144.i ]
  call void @ocfs2_unlock_global_qf(ptr noundef %22, i32 noundef 1) #12
  br label %out_put_dquot.i

out_put_dquot.i:                                  ; preds = %out_drop_lock.i, %do.body112.i, %if.then95.i.out_put_dquot.i_crit_edge, %if.then95.i.out_put_dquot.i_crit_edge322, %if.then95.i.out_put_dquot.i_crit_edge323, %if.then95.i.out_put_dquot.i_crit_edge324
  %status.4.i = phi i32 [ %status.3.i, %out_drop_lock.i ], [ %call92.i, %if.then95.i.out_put_dquot.i_crit_edge ], [ %call92.i, %if.then95.i.out_put_dquot.i_crit_edge322 ], [ %call92.i, %if.then95.i.out_put_dquot.i_crit_edge323 ], [ %call92.i, %if.then95.i.out_put_dquot.i_crit_edge324 ], [ %call92.i, %do.body112.i ]
  call void @dqput(ptr noundef %call77.i) #12
  br label %out_put_bh.i

out_put_bh.i:                                     ; preds = %out_put_dquot.i, %if.then79.i
  %status.5.i = phi i32 [ %62, %if.then79.i ], [ %status.4.i, %out_put_dquot.i ]
  %105 = ptrtoint ptr %qbh.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %qbh.i, align 4
  %tobool.not.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i, label %out_put_bh.i.brelse.exit.i_crit_edge, label %if.then.i462.i

out_put_bh.i.brelse.exit.i_crit_edge:             ; preds = %out_put_bh.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i

if.then.i462.i:                                   ; preds = %out_put_bh.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %106) #12
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i462.i, %out_put_bh.i.brelse.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.5.i)
  %cmp260.i = icmp slt i32 %status.5.i, 0
  br i1 %cmp260.i, label %brelse.exit.i.for.end.i_crit_edge, label %for.inc.i

brelse.exit.i.for.end.i_crit_edge:                ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i:                                        ; preds = %brelse.exit.i
  %107 = ptrtoint ptr %rc_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rc_bitmap.i, align 4
  %109 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %s_blocksize.i.i.i, align 16
  %sub1.i.i464.i = shl i32 %110, 3
  %shl.i.i465.i = add i32 %sub1.i.i464.i, -96
  %sub.i.i.i466.i = add i32 %110, -8
  %div.i.i.i467.i = udiv i32 %sub.i.i.i466.i, 24
  %111 = urem i32 %shl.i.i465.i, %div.i.i.i467.i
  %mul.i468.i = sub i32 %shl.i.i465.i, %111
  %add266.i = add nuw i32 %bit.0496.i, 1
  %call267.i = call i32 @_find_next_bit_be(ptr noundef %108, i32 noundef %mul.i468.i, i32 noundef %add266.i) #12
  %112 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_blocksize.i.i.i, align 16
  %sub1.i.i438.i = shl i32 %113, 3
  %shl.i.i439.i = add i32 %sub1.i.i438.i, -96
  %sub.i.i.i440.i = add i32 %113, -8
  %div.i.i.i441.i = udiv i32 %sub.i.i.i440.i, 24
  %114 = urem i32 %shl.i.i439.i, %div.i.i.i441.i
  %mul.i442.i = sub i32 %shl.i.i439.i, %114
  %cmp37.i = icmp ult i32 %call267.i, %mul.i442.i
  br i1 %cmp37.i, label %for.inc.i.for.body39.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body39.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body39.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %brelse.exit.i.for.end.i_crit_edge, %do.body61.i, %for.body39.i.for.end.i_crit_edge, %for.body39.i.for.end.i_crit_edge318, %for.body39.i.for.end.i_crit_edge319, %for.body39.i.for.end.i_crit_edge320, %for.body39.i.for.end.i_crit_edge321, %if.end32.i.for.end.i_crit_edge
  %status.6.i = phi i32 [ %call42.i, %do.body61.i ], [ 0, %if.end32.i.for.end.i_crit_edge ], [ %call42.i, %for.body39.i.for.end.i_crit_edge ], [ %call42.i, %for.body39.i.for.end.i_crit_edge318 ], [ %call42.i, %for.body39.i.for.end.i_crit_edge319 ], [ %call42.i, %for.body39.i.for.end.i_crit_edge320 ], [ %call42.i, %for.body39.i.for.end.i_crit_edge321 ], [ %status.5.i, %brelse.exit.i.for.end.i_crit_edge ], [ %status.5.i, %for.inc.i.for.end.i_crit_edge ]
  %115 = ptrtoint ptr %hbh.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hbh.i, align 4
  %tobool.not.i469.i = icmp eq ptr %116, null
  br i1 %tobool.not.i469.i, label %for.end.i.brelse.exit471.i_crit_edge, label %if.then.i470.i

for.end.i.brelse.exit471.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit471.i

if.then.i470.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %116) #12
  br label %brelse.exit471.i

brelse.exit471.i:                                 ; preds = %if.then.i470.i, %for.end.i.brelse.exit471.i_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %rchunk.0515.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %brelse.exit471.i.list_del.exit.i_crit_edge

brelse.exit471.i.list_del.exit.i_crit_edge:       ; preds = %brelse.exit471.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %brelse.exit471.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %rchunk.0515.i, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i.i.i, align 4
  %119 = ptrtoint ptr %rchunk.0515.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rchunk.0515.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev1.i.i.i.i, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %120, ptr %118, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %brelse.exit471.i.list_del.exit.i_crit_edge
  %123 = ptrtoint ptr %rchunk.0515.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 256 to ptr), ptr %rchunk.0515.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rchunk.0515.i, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %125 = ptrtoint ptr %rc_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rc_bitmap.i, align 4
  call void @kfree(ptr noundef %126) #12
  call void @kfree(ptr noundef %rchunk.0515.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.6.i)
  %cmp270.i = icmp slt i32 %status.6.i, 0
  br i1 %cmp270.i, label %list_del.exit.i.if.then283.i_crit_edge, label %for.cond.i

list_del.exit.i.if.then283.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then283.i

for.end280.i:                                     ; preds = %do.body.i, %for.body.i.for.end280.i_crit_edge, %for.body.i.for.end280.i_crit_edge314, %for.body.i.for.end280.i_crit_edge315, %for.body.i.for.end280.i_crit_edge316, %for.body.i.for.end280.i_crit_edge317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp281.i = icmp slt i32 %call12.i, 0
  br i1 %cmp281.i, label %for.end280.i.if.then283.i_crit_edge, label %for.end280.i.if.end286.i_crit_edge

for.end280.i.if.end286.i_crit_edge:               ; preds = %for.end280.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end286.i

for.end280.i.if.then283.i_crit_edge:              ; preds = %for.end280.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then283.i

if.then283.i:                                     ; preds = %for.end280.i.if.then283.i_crit_edge, %list_del.exit.i.if.then283.i_crit_edge
  %status.7476.i = phi i32 [ %call12.i, %for.end280.i.if.then283.i_crit_edge ], [ %status.6.i, %list_del.exit.i.if.then283.i_crit_edge ]
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx, align 4
  %cmp.not19.i.i = icmp eq ptr %128, %arrayidx
  br i1 %cmp.not19.i.i, label %if.then283.i.if.end286.i_crit_edge, label %if.then283.i.for.body.i.i_crit_edge

if.then283.i.for.body.i.i_crit_edge:              ; preds = %if.then283.i
  br label %for.body.i.i

if.then283.i.if.end286.i_crit_edge:               ; preds = %if.then283.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end286.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.then283.i.for.body.i.i_crit_edge
  %rchunk.020.i.i = phi ptr [ %next.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %128, %if.then283.i.for.body.i.i_crit_edge ]
  %129 = ptrtoint ptr %rchunk.020.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %next.0.i.i = load ptr, ptr %rchunk.020.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %rchunk.020.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %rchunk.020.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i.i.i.i, align 4
  %132 = ptrtoint ptr %rchunk.020.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rchunk.020.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev1.i.i.i.i.i, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %133, ptr %131, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %136 = ptrtoint ptr %rchunk.020.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr inttoptr (i32 256 to ptr), ptr %rchunk.020.i.i, align 4
  %prev.i.i472.i = getelementptr inbounds %struct.list_head, ptr %rchunk.020.i.i, i32 0, i32 1
  %137 = ptrtoint ptr %prev.i.i472.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i472.i, align 4
  %rc_bitmap.i.i = getelementptr inbounds %struct.ocfs2_recovery_chunk, ptr %rchunk.020.i.i, i32 0, i32 2
  %138 = ptrtoint ptr %rc_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rc_bitmap.i.i, align 4
  call void @kfree(ptr noundef %139) #12
  call void @kfree(ptr noundef %rchunk.020.i.i) #12
  %cmp.not.i.i = icmp eq ptr %next.0.i.i, %arrayidx
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.if.end286.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

list_del.exit.i.i.if.end286.i_crit_edge:          ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end286.i

if.end286.i:                                      ; preds = %list_del.exit.i.i.if.end286.i_crit_edge, %if.then283.i.if.end286.i_crit_edge, %for.end280.i.if.end286.i_crit_edge, %for.cond.i.if.end286.i_crit_edge
  %status.7475.i = phi i32 [ %call12.i, %for.end280.i.if.end286.i_crit_edge ], [ %status.7476.i, %if.then283.i.if.end286.i_crit_edge ], [ %status.7476.i, %list_del.exit.i.i.if.end286.i_crit_edge ], [ %status.6.i, %for.cond.i.if.end286.i_crit_edge ]
  %140 = zext i32 %status.7475.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %status.7475.i, label %do.body305.i [
    i32 0, label %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge
    i32 -512, label %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge335
    i32 -4, label %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge336
    i32 524289, label %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge337
    i32 -28, label %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge338
    i32 -122, label %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge339
  ]

if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge339: ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recover_local_quota_file.exit

if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge338: ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recover_local_quota_file.exit

if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge337: ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recover_local_quota_file.exit

if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge336: ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recover_local_quota_file.exit

if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge335: ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recover_local_quota_file.exit

if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge: ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recover_local_quota_file.exit

do.body305.i:                                     ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m306.i) #12
  %141 = ptrtoint ptr %_m306.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 1152921504606846976, ptr %_m306.i, align 8
  %conv310.i = sext i32 %status.7475.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m306.i, ptr noundef nonnull @__func__.ocfs2_recover_local_quota_file, i32 noundef 577, ptr noundef nonnull @.str.3, i64 noundef %conv310.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m306.i) #12
  br label %ocfs2_recover_local_quota_file.exit

ocfs2_recover_local_quota_file.exit:              ; preds = %do.body305.i, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge335, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge336, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge337, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge338, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge339, %if.then80.ocfs2_recover_local_quota_file.exit_crit_edge
  %status.7475529.i = phi i32 [ %status.7475.i, %do.body305.i ], [ %status.7475.i, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge ], [ %status.7475.i, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge335 ], [ %status.7475.i, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge336 ], [ %status.7475.i, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge337 ], [ %status.7475.i, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge338 ], [ %status.7475.i, %if.end286.i.ocfs2_recover_local_quota_file.exit_crit_edge339 ], [ 0, %if.then80.ocfs2_recover_local_quota_file.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qbh.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hbh.i) #12
  br label %if.end82

if.end82:                                         ; preds = %ocfs2_recover_local_quota_file.exit, %if.end77.if.end82_crit_edge
  %status.1 = phi i32 [ 0, %if.end77.if.end82_crit_edge ], [ %status.7475529.i, %ocfs2_recover_local_quota_file.exit ]
  %142 = ptrtoint ptr %slot_num83 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %slot_num83, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %slot_num)
  %cmp84 = icmp eq i32 %143, %slot_num
  br i1 %cmp84, label %if.end82.out_bh_crit_edge, label %if.end87

if.end82.out_bh_crit_edge:                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bh

if.end87:                                         ; preds = %if.end82
  %call88 = call ptr @ocfs2_start_trans(ptr noundef %osb, i32 noundef 1) #12
  %cmp.i225 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %if.then90, label %if.end119

if.then90:                                        ; preds = %if.end87
  %144 = ptrtoint ptr %call88 to i32
  %145 = zext i32 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %144, label %do.body108 [
    i32 -512, label %if.then90.out_bh_crit_edge
    i32 -4, label %if.then90.out_bh_crit_edge340
    i32 524289, label %if.then90.out_bh_crit_edge341
    i32 -28, label %if.then90.out_bh_crit_edge342
    i32 -122, label %if.then90.out_bh_crit_edge343
  ]

if.then90.out_bh_crit_edge343:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bh

if.then90.out_bh_crit_edge342:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bh

if.then90.out_bh_crit_edge341:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bh

if.then90.out_bh_crit_edge340:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bh

if.then90.out_bh_crit_edge:                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bh

do.body108:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m109) #12
  %146 = ptrtoint ptr %_m109 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 1152921504606846976, ptr %_m109, align 8
  %conv113 = sext i32 %144 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m109, ptr noundef nonnull @.str.6, i32 noundef 651, ptr noundef nonnull @.str.3, i64 noundef %conv113) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m109) #12
  br label %out_bh

if.end119:                                        ; preds = %if.end87
  %ip_metadata_cache.i = getelementptr i8, ptr %call4, i32 -56
  %147 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bh, align 4
  %call121 = call i32 @ocfs2_journal_access_dq(ptr noundef %call88, ptr noundef %ip_metadata_cache.i, ptr noundef %148, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.then124, label %if.end152

if.then124:                                       ; preds = %if.end119
  %149 = zext i32 %call121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call121, label %do.body141 [
    i32 -512, label %if.then124.out_trans_crit_edge
    i32 -4, label %if.then124.out_trans_crit_edge344
    i32 -28, label %if.then124.out_trans_crit_edge345
    i32 -122, label %if.then124.out_trans_crit_edge346
  ]

if.then124.out_trans_crit_edge346:                ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans

if.then124.out_trans_crit_edge345:                ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans

if.then124.out_trans_crit_edge344:                ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans

if.then124.out_trans_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans

do.body141:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m142) #12
  %150 = ptrtoint ptr %_m142 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 1152921504606846976, ptr %_m142, align 8
  %conv146 = sext i32 %call121 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m142, ptr noundef nonnull @.str.6, i32 noundef 658, ptr noundef nonnull @.str.3, i64 noundef %conv146) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m142) #12
  br label %out_trans

if.end152:                                        ; preds = %if.end119
  call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 366) #12
  %call.i.i.i.i226 = call zeroext i1 @__kasan_check_write(ptr noundef %148, i32 noundef 4) #12
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %148, align 4
  %and.i.i.i.i227 = and i32 %152, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i227)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i227, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end152.if.then.i_crit_edge

if.end152.if.then.i_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end152
  call void @llvm.prefetch.p0(ptr %148, i32 1, i32 3, i32 1) #12
  %153 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 4, ptr elementtype(i32) %148) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %153, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %154 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.not.i = icmp eq i32 %154, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end152.if.then.i_crit_edge
  call void @__lock_buffer(ptr noundef %148) #12
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %or = or i32 %18, 1
  %155 = call i32 @llvm.bswap.i32(i32 %or)
  %156 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %add.ptr, align 4
  call void @unlock_buffer(ptr noundef %148) #12
  call void @ocfs2_journal_dirty(ptr noundef %call88, ptr noundef %148) #12
  br label %out_trans

out_trans:                                        ; preds = %lock_buffer.exit, %do.body141, %if.then124.out_trans_crit_edge, %if.then124.out_trans_crit_edge344, %if.then124.out_trans_crit_edge345, %if.then124.out_trans_crit_edge346
  %call154 = call i32 @ocfs2_commit_trans(ptr noundef %osb, ptr noundef %call88) #12
  br label %out_bh

out_bh:                                           ; preds = %out_trans, %do.body108, %if.then90.out_bh_crit_edge, %if.then90.out_bh_crit_edge340, %if.then90.out_bh_crit_edge341, %if.then90.out_bh_crit_edge342, %if.then90.out_bh_crit_edge343, %if.end82.out_bh_crit_edge
  %status.2 = phi i32 [ %status.1, %if.end82.out_bh_crit_edge ], [ %call121, %out_trans ], [ %144, %if.then90.out_bh_crit_edge ], [ %144, %if.then90.out_bh_crit_edge340 ], [ %144, %if.then90.out_bh_crit_edge341 ], [ %144, %if.then90.out_bh_crit_edge342 ], [ %144, %if.then90.out_bh_crit_edge343 ], [ %144, %do.body108 ]
  %157 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %158, null
  br i1 %tobool.not.i, label %out_bh.out_put_crit_edge, label %if.then.i228

out_bh.out_put_crit_edge:                         ; preds = %out_bh
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put

if.then.i228:                                     ; preds = %out_bh
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %158) #12
  br label %out_put

out_put.thread:                                   ; preds = %do.body29, %if.then19.out_put.thread_crit_edge, %if.then19.out_put.thread_crit_edge307, %if.then19.out_put.thread_crit_edge308, %if.then19.out_put.thread_crit_edge309
  call void @iput(ptr noundef nonnull %call4) #12
  br label %out

out_put:                                          ; preds = %if.then.i228, %out_bh.out_put_crit_edge, %if.end67
  %status.3 = phi i32 [ %call39, %if.end67 ], [ %status.2, %out_bh.out_put_crit_edge ], [ %status.2, %if.then.i228 ]
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call4, i32 noundef 1) #12
  call void @iput(ptr noundef nonnull %call4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.3)
  %cmp155 = icmp slt i32 %status.3, 0
  br i1 %cmp155, label %out_put.out_crit_edge, label %out_put.for.inc_crit_edge

out_put.for.inc_crit_edge:                        ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

out_put.out_crit_edge:                            ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc:                                          ; preds = %out_put.for.inc_crit_edge, %out_put.thread231, %for.body.for.inc_crit_edge
  %status.5 = phi i32 [ %status.0245, %for.body.for.inc_crit_edge ], [ %status.3, %out_put.for.inc_crit_edge ], [ 0, %out_put.thread231 ]
  %inc = add nuw nsw i32 %type.0246, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %out_put.out_crit_edge, %out_put.thread, %if.end.out_crit_edge
  %status.6 = phi i32 [ %call8, %out_put.thread ], [ -2, %if.end.out_crit_edge ], [ %status.5, %for.inc.out_crit_edge ], [ %status.3, %out_put.out_crit_edge ]
  call void @up_read(ptr noundef %s_umount) #12
  call void @kfree(ptr noundef %rec) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret i32 %status.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_finish_quota_recovery(i32 noundef %num) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_finish_quota_recovery, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_finish_quota_recovery, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !112
  %call42 = tail call i32 @__traceiter_ocfs2_finish_quota_recovery(ptr noundef null, i32 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_finish_quota_recovery, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_finish_quota_recovery, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_finish_quota_recovery.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_finish_quota_recovery.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 1974, ptr noundef nonnull @.str.12) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_start_trans(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_journal_access_dq(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %bh) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 366) #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #12
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and.i.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

trylock_buffer.exit:                              ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %3 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %trylock_buffer.exit.if.end_crit_edge, label %trylock_buffer.exit.if.then_crit_edge

trylock_buffer.exit.if.then_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

trylock_buffer.exit.if.end_crit_edge:             ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %trylock_buffer.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %trylock_buffer.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_journal_dirty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_local_write_dquot(ptr noundef %dquot) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m36 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !116
  %type = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %dq_local_phys_blk = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 2
  %7 = ptrtoint ptr %dq_local_phys_blk to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dq_local_phys_blk, align 8
  %call2 = call i32 @ocfs2_read_quota_phys_block(ptr noundef %6, i64 noundef %8, ptr noundef nonnull %bh) #12
  %9 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call2, label %do.body [
    i32 0, label %if.end14
    i32 -512, label %entry.out_crit_edge
    i32 -4, label %entry.out_crit_edge67
    i32 524289, label %entry.out_crit_edge68
    i32 -28, label %entry.out_crit_edge69
    i32 -122, label %entry.out_crit_edge70
  ]

entry.out_crit_edge70:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

entry.out_crit_edge69:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

entry.out_crit_edge68:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

entry.out_crit_edge67:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %10 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call2 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_local_write_dquot, i32 noundef 906, ptr noundef nonnull @.str.3, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %out

if.end14:                                         ; preds = %entry
  %11 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bh, align 4
  %call15 = call fastcc i32 @ocfs2_modify_bh(ptr noundef %6, ptr noundef %12, ptr noundef nonnull @olq_set_dquot, ptr noundef %dquot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then18:                                        ; preds = %if.end14
  %13 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call15, label %do.body35 [
    i32 -512, label %if.then18.out_crit_edge
    i32 -4, label %if.then18.out_crit_edge71
    i32 -28, label %if.then18.out_crit_edge72
    i32 -122, label %if.then18.out_crit_edge73
  ]

if.then18.out_crit_edge73:                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then18.out_crit_edge72:                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then18.out_crit_edge71:                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body35:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m36) #12
  %14 = ptrtoint ptr %_m36 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606846976, ptr %_m36, align 8
  %conv40 = sext i32 %call15 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m36, ptr noundef nonnull @__func__.ocfs2_local_write_dquot, i32 noundef 911, ptr noundef nonnull @.str.3, i64 noundef %conv40) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m36) #12
  br label %out

out:                                              ; preds = %do.body35, %if.then18.out_crit_edge, %if.then18.out_crit_edge71, %if.then18.out_crit_edge72, %if.then18.out_crit_edge73, %if.end14.out_crit_edge, %do.body, %entry.out_crit_edge, %entry.out_crit_edge67, %entry.out_crit_edge68, %entry.out_crit_edge69, %entry.out_crit_edge70
  %status.0 = phi i32 [ %call15, %if.end14.out_crit_edge ], [ %call2, %entry.out_crit_edge ], [ %call2, %entry.out_crit_edge67 ], [ %call2, %entry.out_crit_edge68 ], [ %call2, %entry.out_crit_edge69 ], [ %call2, %entry.out_crit_edge70 ], [ %call2, %do.body ], [ %call15, %if.then18.out_crit_edge ], [ %call15, %if.then18.out_crit_edge71 ], [ %call15, %if.then18.out_crit_edge72 ], [ %call15, %if.then18.out_crit_edge73 ], [ %call15, %do.body35 ]
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %16) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_quota_phys_block(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_modify_bh(ptr noundef %inode, ptr noundef %bh, ptr nocapture noundef readonly %modify, ptr noundef %private) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m36 = alloca i64, align 8
  %_m71 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %call = tail call ptr @ocfs2_start_trans(ptr noundef %3, i32 noundef 1) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %4, label %do.body [
    i32 -512, label %if.then.cleanup_crit_edge
    i32 -4, label %if.then.cleanup_crit_edge121
    i32 524289, label %if.then.cleanup_crit_edge122
    i32 -28, label %if.then.cleanup_crit_edge123
    i32 -122, label %if.then.cleanup_crit_edge124
  ]

if.then.cleanup_crit_edge124:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.cleanup_crit_edge123:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.cleanup_crit_edge122:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.cleanup_crit_edge121:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_modify_bh, i32 noundef 105, ptr noundef nonnull @.str.3, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %cleanup

if.end13:                                         ; preds = %entry
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call15 = tail call i32 @ocfs2_journal_access_dq(ptr noundef %call, ptr noundef %ip_metadata_cache.i, ptr noundef %bh, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end48

if.then18:                                        ; preds = %if.end13
  %7 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call15, label %do.body35 [
    i32 -512, label %if.then18.if.end44_crit_edge
    i32 -4, label %if.then18.if.end44_crit_edge125
    i32 -28, label %if.then18.if.end44_crit_edge126
    i32 -122, label %if.then18.if.end44_crit_edge127
  ]

if.then18.if.end44_crit_edge127:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then18.if.end44_crit_edge126:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then18.if.end44_crit_edge125:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then18.if.end44_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.body35:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m36) #12
  %8 = ptrtoint ptr %_m36 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m36, align 8
  %conv40 = sext i32 %call15 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m36, ptr noundef nonnull @__func__.ocfs2_modify_bh, i32 noundef 111, ptr noundef nonnull @.str.3, i64 noundef %conv40) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m36) #12
  br label %if.end44

if.end44:                                         ; preds = %do.body35, %if.then18.if.end44_crit_edge, %if.then18.if.end44_crit_edge125, %if.then18.if.end44_crit_edge126, %if.then18.if.end44_crit_edge127
  %9 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info, align 16
  %call47 = call i32 @ocfs2_commit_trans(ptr noundef %10, ptr noundef %call) #12
  br label %cleanup

if.end48:                                         ; preds = %if.end13
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 366) #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #12
  %11 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end48.if.then.i_crit_edge

if.end48.if.then.i_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end48
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %14 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end48.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #12
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  tail call void %modify(ptr noundef %bh, ptr noundef %private) #12, !callees !117
  tail call void @unlock_buffer(ptr noundef %bh) #12
  tail call void @ocfs2_journal_dirty(ptr noundef %call, ptr noundef %bh) #12
  %15 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info, align 16
  %call50 = tail call i32 @ocfs2_commit_trans(ptr noundef %16, ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %lock_buffer.exit.cleanup_crit_edge

lock_buffer.exit.cleanup_crit_edge:               ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then53:                                        ; preds = %lock_buffer.exit
  %17 = zext i32 %call50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call50, label %do.body70 [
    i32 -512, label %if.then53.cleanup_crit_edge
    i32 -4, label %if.then53.cleanup_crit_edge128
    i32 -28, label %if.then53.cleanup_crit_edge129
    i32 -122, label %if.then53.cleanup_crit_edge130
  ]

if.then53.cleanup_crit_edge130:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then53.cleanup_crit_edge129:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then53.cleanup_crit_edge128:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body70:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m71) #12
  %18 = ptrtoint ptr %_m71 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606846976, ptr %_m71, align 8
  %conv75 = sext i32 %call50 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m71, ptr noundef nonnull @__func__.ocfs2_modify_bh, i32 noundef 122, ptr noundef nonnull @.str.3, i64 noundef %conv75) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m71) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body70, %if.then53.cleanup_crit_edge, %if.then53.cleanup_crit_edge128, %if.then53.cleanup_crit_edge129, %if.then53.cleanup_crit_edge130, %lock_buffer.exit.cleanup_crit_edge, %if.end44, %do.body, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge121, %if.then.cleanup_crit_edge122, %if.then.cleanup_crit_edge123, %if.then.cleanup_crit_edge124
  %retval.0 = phi i32 [ %call15, %if.end44 ], [ %4, %if.then.cleanup_crit_edge ], [ %4, %if.then.cleanup_crit_edge121 ], [ %4, %if.then.cleanup_crit_edge122 ], [ %4, %if.then.cleanup_crit_edge123 ], [ %4, %if.then.cleanup_crit_edge124 ], [ %4, %do.body ], [ %call50, %if.then53.cleanup_crit_edge ], [ %call50, %if.then53.cleanup_crit_edge128 ], [ %call50, %if.then53.cleanup_crit_edge129 ], [ %call50, %if.then53.cleanup_crit_edge130 ], [ %call50, %do.body70 ], [ 0, %lock_buffer.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @olq_set_dquot(ptr nocapture noundef readonly %bh, ptr noundef %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %private, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %dq_local_off = getelementptr inbounds %struct.ocfs2_dquot, ptr %private, i32 0, i32 1
  %4 = ptrtoint ptr %dq_local_off to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dq_local_off, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %7 to i32
  %notmask.i = shl nsw i32 -1, %conv.i
  %sub.i = xor i32 %notmask.i, -1
  %8 = trunc i64 %5 to i32
  %conv2.i = and i32 %sub.i, %8
  %add.ptr = getelementptr i8, ptr %3, i32 %conv2.i
  %dq_id = getelementptr inbounds %struct.dquot, ptr %private, i32 0, i32 8
  %9 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack = load i32, ptr %dq_id, align 8
  %10 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt28 = getelementptr inbounds %struct.dquot, ptr %private, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %.elt28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack29 = load i32, ptr %.elt28, align 4
  %12 = insertvalue [2 x i32] %10, i32 %.unpack29, 1
  %call2 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %12) #12
  %conv = zext i32 %call2 to i64
  %13 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %add.ptr, align 8
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %private, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dq_dqb_lock) #12
  %dqb_curspace = getelementptr inbounds %struct.dquot, ptr %private, i32 0, i32 11, i32 2
  %15 = ptrtoint ptr %dqb_curspace to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dqb_curspace, align 8
  %dq_origspace = getelementptr inbounds %struct.ocfs2_dquot, ptr %private, i32 0, i32 5
  %17 = ptrtoint ptr %dq_origspace to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dq_origspace, align 8
  %sub = sub i64 %16, %18
  %19 = tail call i64 @llvm.bswap.i64(i64 %sub)
  %dqb_spacemod = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %dqb_spacemod to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %dqb_spacemod, align 8
  %dqb_curinodes = getelementptr inbounds %struct.dquot, ptr %private, i32 0, i32 11, i32 6
  %21 = ptrtoint ptr %dqb_curinodes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dqb_curinodes, align 8
  %dq_originodes = getelementptr inbounds %struct.ocfs2_dquot, ptr %private, i32 0, i32 6
  %23 = ptrtoint ptr %dq_originodes to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dq_originodes, align 8
  %sub7 = sub i64 %22, %24
  %25 = tail call i64 @llvm.bswap.i64(i64 %sub7)
  %dqb_inodemod = getelementptr inbounds %struct.ocfs2_local_disk_dqblk, ptr %add.ptr, i32 0, i32 2
  %26 = ptrtoint ptr %dqb_inodemod to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %dqb_inodemod, align 8
  tail call void @_raw_spin_unlock(ptr noundef %dq_dqb_lock) #12
  %27 = ptrtoint ptr %dqb_spacemod to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dqb_spacemod, align 8
  %29 = tail call i64 @llvm.bswap.i64(i64 %28)
  %30 = ptrtoint ptr %dqb_inodemod to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %dqb_inodemod, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %33 = ptrtoint ptr %dq_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack30 = load i32, ptr %dq_id, align 8
  %34 = insertvalue [2 x i32] undef, i32 %.unpack30, 0
  %35 = ptrtoint ptr %.elt28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack32 = load i32, ptr %.elt28, align 4
  %36 = insertvalue [2 x i32] %34, i32 %.unpack32, 1
  %call14 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %36) #12
  tail call fastcc void @trace_olq_set_dquot(i64 noundef %29, i64 noundef %32, i32 noundef %call14)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_create_local_dquot(ptr noundef %dquot) local_unnamed_addr #0 align 64 {
entry:
  %p_blkno.i = alloca i64, align 8
  %_m.i113 = alloca i64, align 8
  %_m64.i = alloca i64, align 8
  %_m98.i = alloca i64, align 8
  %_m129.i = alloca i64, align 8
  %_m162.i = alloca i64, align 8
  %_m195.i = alloca i64, align 8
  %_m229.i = alloca i64, align 8
  %_m268.i = alloca i64, align 8
  %_m301.i = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %offset = alloca i32, align 4
  %pcount = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m62 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %0 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dq_sb, align 4
  %type1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %1, i32 0, i32 31, i32 2, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #12
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %offset, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pcount) #12
  %7 = ptrtoint ptr %pcount to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %pcount, align 8, !annotation !116
  %ip_alloc_sem = getelementptr i8, ptr %5, i32 -424
  tail call void @down_write(ptr noundef %ip_alloc_sem) #12
  %info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 31, i32 3
  %dqi_priv.i = getelementptr %struct.mem_dqinfo, ptr %info.i.i, i32 %3, i32 8
  %8 = ptrtoint ptr %dqi_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dqi_priv.i, align 8
  %dqi_chunk.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %9, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %chunk.0.in.i = phi ptr [ %dqi_chunk.i, %entry ], [ %chunk.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %chunk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %chunk.0.i = load ptr, ptr %chunk.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %chunk.0.i, %dqi_chunk.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %qc_headerbh.i = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %chunk.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %qc_headerbh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qc_headerbh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %cmp2.not.i = icmp eq i32 %16, 0
  br i1 %cmp2.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.end9.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.end9.i:                                        ; preds = %for.body.i
  %qc_num.i = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %chunk.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %qc_num.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qc_num.i, align 4
  %dqi_chunks.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %9, i32 0, i32 2
  %19 = ptrtoint ptr %dqi_chunks.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dqi_chunks.i, align 8
  %sub.i = add i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub.i)
  %cmp10.i = icmp ult i32 %18, %sub.i
  br i1 %cmp10.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize.i.i.i, align 16
  %sub1.i.i.i = shl i32 %22, 3
  %shl.i.i.i = add i32 %sub1.i.i.i, -96
  %sub.i.i.i.i = add i32 %22, -8
  %div.i.i.i.i = udiv i32 %sub.i.i.i.i, 24
  %23 = urem i32 %shl.i.i.i, %div.i.i.i.i
  %mul.i.i = sub i32 %shl.i.i.i, %23
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %dqi_blocks.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %9, i32 0, i32 3
  %24 = ptrtoint ptr %dqi_blocks.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dqi_blocks.i, align 4
  %s_blocksize.i.i52.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %s_blocksize.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocksize.i.i52.i, align 16
  %sub1.i.i53.i = shl i32 %27, 3
  %shl.i.i54.i = add i32 %sub1.i.i53.i, -96
  %sub.i.i.i55.i = add i32 %27, -8
  %div.i.i.i56.i = udiv i32 %sub.i.i.i55.i, 24
  %div.i.i.i = udiv i32 %shl.i.i54.i, %div.i.i.i56.i
  %add.i.neg.i = xor i32 %div.i.i.i, -1
  %mul.i57.neg.i = mul i32 %18, %add.i.neg.i
  %28 = add i32 %25, -2
  %sub16.i = add i32 %28, %mul.i57.neg.i
  %mul.i = mul i32 %sub16.i, %div.i.i.i56.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then11.i
  %len.0.i = phi i32 [ %mul.i.i, %if.then11.i ], [ %mul.i, %if.else.i ]
  %dqc_bitmap.i = getelementptr inbounds %struct.ocfs2_local_disk_chunk, ptr %14, i32 0, i32 1
  %29 = ptrtoint ptr %dqc_bitmap.i to i32
  %and.i.i.i = shl i32 %29, 3
  %shl.i.i58.i = and i32 %and.i.i.i, 24
  %and1.i.i.i = and i32 %29, -4
  %30 = inttoptr i32 %and1.i.i.i to ptr
  %add.i59.i = add i32 %len.0.i, %shl.i.i58.i
  %call.i.i.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %30, i32 noundef %add.i59.i, i32 noundef %shl.i.i58.i) #12
  %sub.i60.i = sub i32 %call.i.i.i, %shl.i.i58.i
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.i, i32 %sub.i60.i)
  %cmp20.not.i = icmp sgt i32 %len.0.i, %sub.i60.i
  br i1 %cmp20.not.i, label %ocfs2_find_free_entry.exit, label %if.else.thread

if.else.thread:                                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #12
  %31 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %32 = ptrtoint ptr %qc_num.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qc_num.i, align 4
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %14, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_find_free_entry, i32 noundef 954, ptr noundef nonnull @.str.16, i32 noundef %33, i32 noundef %36, i32 noundef %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #12
  br label %if.then10

ocfs2_find_free_entry.exit:                       ; preds = %if.end18.i
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.i60.i, ptr %offset, align 4
  %tobool.not = icmp eq ptr %chunk.0.i, null
  br i1 %tobool.not, label %ocfs2_find_free_entry.exit.if.then_crit_edge, label %if.else

ocfs2_find_free_entry.exit.if.then_crit_edge:     ; preds = %ocfs2_find_free_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %ocfs2_find_free_entry.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %38 = ptrtoint ptr %dqi_priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dqi_priv.i, align 8
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %43, -8
  %div.i.i = udiv i32 %sub.i.i, 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_blkno.i) #12
  %44 = ptrtoint ptr %p_blkno.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %p_blkno.i, align 8, !annotation !116
  %dqi_chunk.i116 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %39, i32 0, i32 5
  %45 = ptrtoint ptr %dqi_chunk.i116 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %dqi_chunk.i116, align 4
  %cmp.i.not.i = icmp eq ptr %46, %dqi_chunk.i116
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = call fastcc ptr @ocfs2_local_quota_add_chunk(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %offset) #12
  br label %ocfs2_extend_local_quota_file.exit

if.end.i:                                         ; preds = %if.then
  %prev.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %39, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %dqi_blocks.i117 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %39, i32 0, i32 3
  %49 = ptrtoint ptr %dqi_blocks.i117 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dqi_blocks.i117, align 4
  %qc_num.i118 = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %qc_num.i118 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qc_num.i118, align 4
  %sub1.i.i.i119 = shl i32 %43, 3
  %shl.i.i.i120 = add i32 %sub1.i.i.i119, -96
  %div.i.i.i121 = udiv i32 %shl.i.i.i120, %div.i.i
  %add.i.neg.i122 = xor i32 %div.i.i.i121, -1
  %mul.i.neg.i = mul i32 %52, %add.i.neg.i122
  %53 = add i32 %50, -2
  %sub7.i = add i32 %53, %mul.i.neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i121, i32 %sub7.i)
  %cmp.i = icmp eq i32 %div.i.i.i121, %sub7.i
  br i1 %cmp.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i = call fastcc ptr @ocfs2_local_quota_add_chunk(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %offset) #12
  br label %ocfs2_extend_local_quota_file.exit

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call fastcc i64 @i_size_read(ptr noundef %41) #12
  %54 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_blocksize.i.i, align 16
  %conv.i = zext i32 %55 to i64
  %add.i = add i64 %call12.i, %conv.i
  %call13.i = tail call fastcc i64 @i_size_read(ptr noundef %41) #12
  %call14.i = tail call i32 @ocfs2_extend_no_holes(ptr noundef %41, ptr noundef null, i64 noundef %add.i, i64 noundef %call13.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then17.i, label %if.end38.i

if.then17.i:                                      ; preds = %if.end11.i
  %56 = zext i32 %call14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call14.i, label %do.body.i123 [
    i32 -512, label %if.then17.i.out.i_crit_edge
    i32 -4, label %if.then17.i.out.i_crit_edge162
    i32 -28, label %if.then17.i.out.i_crit_edge163
    i32 -122, label %if.then17.i.out.i_crit_edge164
  ]

if.then17.i.out.i_crit_edge164:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then17.i.out.i_crit_edge163:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then17.i.out.i_crit_edge162:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then17.i.out.i_crit_edge:                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

do.body.i123:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i113) #12
  %57 = ptrtoint ptr %_m.i113 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1152921504606846976, ptr %_m.i113, align 8
  %conv34.i = sext i32 %call14.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i113, ptr noundef nonnull @__func__.ocfs2_extend_local_quota_file, i32 noundef 1125, ptr noundef nonnull @.str.3, i64 noundef %conv34.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i113) #12
  br label %out.i

if.end38.i:                                       ; preds = %if.end11.i
  %dqi_lqi_bh.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %39, i32 0, i32 11
  %58 = ptrtoint ptr %dqi_lqi_bh.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dqi_lqi_bh.i, align 8
  %call39.i = tail call fastcc i64 @i_size_read(ptr noundef %41) #12
  %60 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_blocksize.i.i, align 16
  %conv41.i = zext i32 %61 to i64
  %add42.i = add i64 %call39.i, %conv41.i
  %call43.i = tail call i32 @ocfs2_simple_size_update(ptr noundef %41, ptr noundef %59, i64 noundef %add42.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.i = icmp slt i32 %call43.i, 0
  br i1 %cmp44.i, label %if.then46.i, label %if.end74.i

if.then46.i:                                      ; preds = %if.end38.i
  %62 = zext i32 %call43.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call43.i, label %do.body63.i [
    i32 -512, label %if.then46.i.out.i_crit_edge
    i32 -4, label %if.then46.i.out.i_crit_edge165
    i32 -28, label %if.then46.i.out.i_crit_edge166
    i32 -122, label %if.then46.i.out.i_crit_edge167
  ]

if.then46.i.out.i_crit_edge167:                   ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then46.i.out.i_crit_edge166:                   ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then46.i.out.i_crit_edge165:                   ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then46.i.out.i_crit_edge:                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

do.body63.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m64.i) #12
  %63 = ptrtoint ptr %_m64.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 1152921504606846976, ptr %_m64.i, align 8
  %conv68.i = sext i32 %call43.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m64.i, ptr noundef nonnull @__func__.ocfs2_extend_local_quota_file, i32 noundef 1131, ptr noundef nonnull @.str.3, i64 noundef %conv68.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m64.i) #12
  br label %out.i

if.end74.i:                                       ; preds = %if.end38.i
  %64 = ptrtoint ptr %dqi_blocks.i117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dqi_blocks.i117, align 4
  %conv76.i = zext i32 %65 to i64
  %call77.i = call i32 @ocfs2_extent_map_get_blocks(ptr noundef %41, i64 noundef %conv76.i, ptr noundef nonnull %p_blkno.i, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %cmp78.i = icmp slt i32 %call77.i, 0
  br i1 %cmp78.i, label %if.then80.i, label %if.end108.i

if.then80.i:                                      ; preds = %if.end74.i
  %66 = zext i32 %call77.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call77.i, label %do.body97.i [
    i32 -512, label %if.then80.i.out.i_crit_edge
    i32 -4, label %if.then80.i.out.i_crit_edge168
    i32 -28, label %if.then80.i.out.i_crit_edge169
    i32 -122, label %if.then80.i.out.i_crit_edge170
  ]

if.then80.i.out.i_crit_edge170:                   ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then80.i.out.i_crit_edge169:                   ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then80.i.out.i_crit_edge168:                   ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then80.i.out.i_crit_edge:                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

do.body97.i:                                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m98.i) #12
  %67 = ptrtoint ptr %_m98.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 1152921504606846976, ptr %_m98.i, align 8
  %conv102.i = sext i32 %call77.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m98.i, ptr noundef nonnull @__func__.ocfs2_extend_local_quota_file, i32 noundef 1139, ptr noundef nonnull @.str.3, i64 noundef %conv102.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m98.i) #12
  br label %out.i

if.end108.i:                                      ; preds = %if.end74.i
  %68 = ptrtoint ptr %p_blkno.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %p_blkno.i, align 8
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %70 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_bdev.i.i, align 4
  %72 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__getblk_gfp(ptr noundef %71, i64 noundef %69, i32 noundef %73, i32 noundef 8) #12
  %tobool110.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool110.not.i, label %do.body128.i, label %if.end139.i

do.body128.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m129.i) #12
  %74 = ptrtoint ptr %_m129.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 1152921504606846976, ptr %_m129.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m129.i, ptr noundef nonnull @__func__.ocfs2_extend_local_quota_file, i32 noundef 1145, ptr noundef nonnull @.str.3, i64 noundef -12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m129.i) #12
  br label %out.i

if.end139.i:                                      ; preds = %if.end108.i
  %ip_metadata_cache.i.i = getelementptr i8, ptr %41, i32 -56
  call void @ocfs2_set_new_buffer_uptodate(ptr noundef %ip_metadata_cache.i.i, ptr noundef nonnull %call.i.i) #12
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %75 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_fs_info.i, align 16
  %call141.i = call ptr @ocfs2_start_trans(ptr noundef %76, i32 noundef 3) #12
  %cmp.i453.i = icmp ugt ptr %call141.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i453.i, label %if.then143.i, label %if.end172.i

if.then143.i:                                     ; preds = %if.end139.i
  %77 = ptrtoint ptr %call141.i to i32
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %77, label %do.body161.i [
    i32 -512, label %if.then143.i.out.i_crit_edge
    i32 -4, label %if.then143.i.out.i_crit_edge171
    i32 524289, label %if.then143.i.out.i_crit_edge172
    i32 -28, label %if.then143.i.out.i_crit_edge173
    i32 -122, label %if.then143.i.out.i_crit_edge174
  ]

if.then143.i.out.i_crit_edge174:                  ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then143.i.out.i_crit_edge173:                  ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then143.i.out.i_crit_edge172:                  ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then143.i.out.i_crit_edge171:                  ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then143.i.out.i_crit_edge:                     ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

do.body161.i:                                     ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m162.i) #12
  %79 = ptrtoint ptr %_m162.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 1152921504606846976, ptr %_m162.i, align 8
  %conv166.i = sext i32 %77 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m162.i, ptr noundef nonnull @__func__.ocfs2_extend_local_quota_file, i32 noundef 1156, ptr noundef nonnull @.str.3, i64 noundef %conv166.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m162.i) #12
  br label %out.i

if.end172.i:                                      ; preds = %if.end139.i
  %call174.i = call i32 @ocfs2_journal_access_dq(ptr noundef %call141.i, ptr noundef %ip_metadata_cache.i.i, ptr noundef nonnull %call.i.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.i)
  %cmp175.i = icmp slt i32 %call174.i, 0
  br i1 %cmp175.i, label %if.then177.i, label %if.end205.i

if.then177.i:                                     ; preds = %if.end172.i
  %80 = zext i32 %call174.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call174.i, label %do.body194.i [
    i32 -512, label %if.then177.i.out_trans.i_crit_edge
    i32 -4, label %if.then177.i.out_trans.i_crit_edge175
    i32 -28, label %if.then177.i.out_trans.i_crit_edge176
    i32 -122, label %if.then177.i.out_trans.i_crit_edge177
  ]

if.then177.i.out_trans.i_crit_edge177:            ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans.i

if.then177.i.out_trans.i_crit_edge176:            ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans.i

if.then177.i.out_trans.i_crit_edge175:            ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans.i

if.then177.i.out_trans.i_crit_edge:               ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans.i

do.body194.i:                                     ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m195.i) #12
  %81 = ptrtoint ptr %_m195.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 1152921504606846976, ptr %_m195.i, align 8
  %conv199.i = sext i32 %call174.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m195.i, ptr noundef nonnull @__func__.ocfs2_extend_local_quota_file, i32 noundef 1163, ptr noundef nonnull @.str.3, i64 noundef %conv199.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m195.i) #12
  br label %out_trans.i

if.end205.i:                                      ; preds = %if.end172.i
  call fastcc void @lock_buffer(ptr noundef nonnull %call.i.i) #12
  %b_data.i124 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %82 = ptrtoint ptr %b_data.i124 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %b_data.i124, align 4
  %84 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_blocksize.i.i, align 16
  %86 = call ptr @memset(ptr %83, i32 0, i32 %85)
  call void @unlock_buffer(ptr noundef nonnull %call.i.i) #12
  call void @ocfs2_journal_dirty(ptr noundef %call141.i, ptr noundef nonnull %call.i.i) #12
  %qc_headerbh.i125 = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %48, i32 0, i32 2
  %87 = ptrtoint ptr %qc_headerbh.i125 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %qc_headerbh.i125, align 4
  %call208.i = call i32 @ocfs2_journal_access_dq(ptr noundef %call141.i, ptr noundef %ip_metadata_cache.i.i, ptr noundef %88, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208.i)
  %cmp209.i = icmp slt i32 %call208.i, 0
  br i1 %cmp209.i, label %if.then211.i, label %if.end239.i

if.then211.i:                                     ; preds = %if.end205.i
  %89 = zext i32 %call208.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call208.i, label %do.body228.i [
    i32 -512, label %if.then211.i.out_trans.i_crit_edge
    i32 -4, label %if.then211.i.out_trans.i_crit_edge178
    i32 -28, label %if.then211.i.out_trans.i_crit_edge179
    i32 -122, label %if.then211.i.out_trans.i_crit_edge180
  ]

if.then211.i.out_trans.i_crit_edge180:            ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans.i

if.then211.i.out_trans.i_crit_edge179:            ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans.i

if.then211.i.out_trans.i_crit_edge178:            ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans.i

if.then211.i.out_trans.i_crit_edge:               ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans.i

do.body228.i:                                     ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m229.i) #12
  %90 = ptrtoint ptr %_m229.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 1152921504606846976, ptr %_m229.i, align 8
  %conv233.i = sext i32 %call208.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m229.i, ptr noundef nonnull @__func__.ocfs2_extend_local_quota_file, i32 noundef 1176, ptr noundef nonnull @.str.3, i64 noundef %conv233.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m229.i) #12
  br label %out_trans.i

if.end239.i:                                      ; preds = %if.end205.i
  %91 = ptrtoint ptr %qc_headerbh.i125 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %qc_headerbh.i125, align 4
  %b_data241.i = getelementptr inbounds %struct.buffer_head, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %b_data241.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %b_data241.i, align 4
  call fastcc void @lock_buffer(ptr noundef %92) #12
  %95 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i457.i = add i32 %96, -8
  %div.i458.i = udiv i32 %sub.i457.i, 24
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %94, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %98) #12
  %add.i459.i = add i32 %99, %div.i458.i
  %100 = call i32 @llvm.bswap.i32(i32 %add.i459.i) #12
  %101 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %94, align 4
  %102 = ptrtoint ptr %qc_headerbh.i125 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %qc_headerbh.i125, align 4
  call void @unlock_buffer(ptr noundef %103) #12
  %104 = ptrtoint ptr %qc_headerbh.i125 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %qc_headerbh.i125, align 4
  call void @ocfs2_journal_dirty(ptr noundef %call141.i, ptr noundef %105) #12
  %106 = ptrtoint ptr %dqi_blocks.i117 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dqi_blocks.i117, align 4
  %inc.i = add i32 %107, 1
  store i32 %inc.i, ptr %dqi_blocks.i117, align 4
  %call247.i = call fastcc i32 @ocfs2_local_write_info(ptr noundef %1, i32 noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247.i)
  %cmp248.i = icmp slt i32 %call247.i, 0
  br i1 %cmp248.i, label %do.body267.i, label %if.end278.i

do.body267.i:                                     ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m268.i) #12
  %108 = ptrtoint ptr %_m268.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 1152921504606846976, ptr %_m268.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m268.i, ptr noundef nonnull @__func__.ocfs2_extend_local_quota_file, i32 noundef 1190, ptr noundef nonnull @.str.3, i64 noundef -1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m268.i) #12
  br label %out_trans.i

if.end278.i:                                      ; preds = %if.end239.i
  %109 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %s_fs_info.i, align 16
  %call280.i = call i32 @ocfs2_commit_trans(ptr noundef %110, ptr noundef %call141.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280.i)
  %cmp281.i = icmp slt i32 %call280.i, 0
  br i1 %cmp281.i, label %if.then283.i, label %if.end311.i

if.then283.i:                                     ; preds = %if.end278.i
  %111 = zext i32 %call280.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call280.i, label %do.body300.i [
    i32 -512, label %if.then283.i.out.i_crit_edge
    i32 -4, label %if.then283.i.out.i_crit_edge181
    i32 -28, label %if.then283.i.out.i_crit_edge182
    i32 -122, label %if.then283.i.out.i_crit_edge183
  ]

if.then283.i.out.i_crit_edge183:                  ; preds = %if.then283.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then283.i.out.i_crit_edge182:                  ; preds = %if.then283.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then283.i.out.i_crit_edge181:                  ; preds = %if.then283.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then283.i.out.i_crit_edge:                     ; preds = %if.then283.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

do.body300.i:                                     ; preds = %if.then283.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m301.i) #12
  %112 = ptrtoint ptr %_m301.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 1152921504606846976, ptr %_m301.i, align 8
  %conv305.i = sext i32 %call280.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m301.i, ptr noundef nonnull @__func__.ocfs2_extend_local_quota_file, i32 noundef 1196, ptr noundef nonnull @.str.3, i64 noundef %conv305.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m301.i) #12
  br label %out.i

if.end311.i:                                      ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i126 = mul i32 %sub7.i, %div.i.i
  %113 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %mul.i126, ptr %offset, align 4
  br label %ocfs2_extend_local_quota_file.exit

out_trans.i:                                      ; preds = %do.body267.i, %do.body228.i, %if.then211.i.out_trans.i_crit_edge, %if.then211.i.out_trans.i_crit_edge178, %if.then211.i.out_trans.i_crit_edge179, %if.then211.i.out_trans.i_crit_edge180, %do.body194.i, %if.then177.i.out_trans.i_crit_edge, %if.then177.i.out_trans.i_crit_edge175, %if.then177.i.out_trans.i_crit_edge176, %if.then177.i.out_trans.i_crit_edge177
  %status.0.i = phi i32 [ -1, %do.body267.i ], [ %call174.i, %if.then177.i.out_trans.i_crit_edge ], [ %call174.i, %if.then177.i.out_trans.i_crit_edge175 ], [ %call174.i, %if.then177.i.out_trans.i_crit_edge176 ], [ %call174.i, %if.then177.i.out_trans.i_crit_edge177 ], [ %call174.i, %do.body194.i ], [ %call208.i, %if.then211.i.out_trans.i_crit_edge ], [ %call208.i, %if.then211.i.out_trans.i_crit_edge178 ], [ %call208.i, %if.then211.i.out_trans.i_crit_edge179 ], [ %call208.i, %if.then211.i.out_trans.i_crit_edge180 ], [ %call208.i, %do.body228.i ]
  %114 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_fs_info.i, align 16
  %call313.i = call i32 @ocfs2_commit_trans(ptr noundef %115, ptr noundef %call141.i) #12
  br label %out.i

out.i:                                            ; preds = %out_trans.i, %do.body300.i, %if.then283.i.out.i_crit_edge, %if.then283.i.out.i_crit_edge181, %if.then283.i.out.i_crit_edge182, %if.then283.i.out.i_crit_edge183, %do.body161.i, %if.then143.i.out.i_crit_edge, %if.then143.i.out.i_crit_edge171, %if.then143.i.out.i_crit_edge172, %if.then143.i.out.i_crit_edge173, %if.then143.i.out.i_crit_edge174, %do.body128.i, %do.body97.i, %if.then80.i.out.i_crit_edge, %if.then80.i.out.i_crit_edge168, %if.then80.i.out.i_crit_edge169, %if.then80.i.out.i_crit_edge170, %do.body63.i, %if.then46.i.out.i_crit_edge, %if.then46.i.out.i_crit_edge165, %if.then46.i.out.i_crit_edge166, %if.then46.i.out.i_crit_edge167, %do.body.i123, %if.then17.i.out.i_crit_edge, %if.then17.i.out.i_crit_edge162, %if.then17.i.out.i_crit_edge163, %if.then17.i.out.i_crit_edge164
  %status.1.i = phi i32 [ %status.0.i, %out_trans.i ], [ -12, %do.body128.i ], [ %call14.i, %if.then17.i.out.i_crit_edge ], [ %call14.i, %if.then17.i.out.i_crit_edge162 ], [ %call14.i, %if.then17.i.out.i_crit_edge163 ], [ %call14.i, %if.then17.i.out.i_crit_edge164 ], [ %call14.i, %do.body.i123 ], [ %call43.i, %if.then46.i.out.i_crit_edge ], [ %call43.i, %if.then46.i.out.i_crit_edge165 ], [ %call43.i, %if.then46.i.out.i_crit_edge166 ], [ %call43.i, %if.then46.i.out.i_crit_edge167 ], [ %call43.i, %do.body63.i ], [ %call77.i, %if.then80.i.out.i_crit_edge ], [ %call77.i, %if.then80.i.out.i_crit_edge168 ], [ %call77.i, %if.then80.i.out.i_crit_edge169 ], [ %call77.i, %if.then80.i.out.i_crit_edge170 ], [ %call77.i, %do.body97.i ], [ %77, %if.then143.i.out.i_crit_edge ], [ %77, %if.then143.i.out.i_crit_edge171 ], [ %77, %if.then143.i.out.i_crit_edge172 ], [ %77, %if.then143.i.out.i_crit_edge173 ], [ %77, %if.then143.i.out.i_crit_edge174 ], [ %77, %do.body161.i ], [ %call280.i, %if.then283.i.out.i_crit_edge ], [ %call280.i, %if.then283.i.out.i_crit_edge181 ], [ %call280.i, %if.then283.i.out.i_crit_edge182 ], [ %call280.i, %if.then283.i.out.i_crit_edge183 ], [ %call280.i, %do.body300.i ]
  %116 = inttoptr i32 %status.1.i to ptr
  br label %ocfs2_extend_local_quota_file.exit

ocfs2_extend_local_quota_file.exit:               ; preds = %out.i, %if.end311.i, %if.then9.i, %if.then.i
  %retval.0.i127 = phi ptr [ %call4.i, %if.then.i ], [ %call10.i, %if.then9.i ], [ %116, %out.i ], [ %48, %if.end311.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_blkno.i) #12
  %cmp.i128 = icmp ugt ptr %retval.0.i127, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then7, label %ocfs2_extend_local_quota_file.exit.if.end13_crit_edge

ocfs2_extend_local_quota_file.exit.if.end13_crit_edge: ; preds = %ocfs2_extend_local_quota_file.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then7:                                         ; preds = %ocfs2_extend_local_quota_file.exit
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %retval.0.i127 to i32
  br label %out

if.else:                                          ; preds = %ocfs2_find_free_entry.exit
  %cmp.i129 = icmp ugt ptr %chunk.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %if.else.if.then10_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else.if.then10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then10:                                        ; preds = %if.else.if.then10_crit_edge, %if.else.thread
  %retval.0.i152155 = phi ptr [ inttoptr (i32 -5 to ptr), %if.else.thread ], [ %chunk.0.i, %if.else.if.then10_crit_edge ]
  %118 = ptrtoint ptr %retval.0.i152155 to i32
  br label %out

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %ocfs2_extend_local_quota_file.exit.if.end13_crit_edge
  %chunk.0 = phi ptr [ %chunk.0.i, %if.else.if.end13_crit_edge ], [ %retval.0.i127, %ocfs2_extend_local_quota_file.exit.if.end13_crit_edge ]
  %qc_num = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %chunk.0, i32 0, i32 1
  %119 = ptrtoint ptr %qc_num to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %qc_num, align 4
  %121 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %offset, align 4
  %s_blocksize.i.i.i130 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %123 = ptrtoint ptr %s_blocksize.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_blocksize.i.i.i130, align 16
  %sub.i.i.i = add i32 %124, -8
  %div.i.i.i131 = udiv i32 %sub.i.i.i, 24
  %sub1.i.i.i.i = shl i32 %124, 3
  %shl.i.i.i.i = add i32 %sub1.i.i.i.i, -96
  %div.i.i.i.i132 = udiv i32 %shl.i.i.i.i, %div.i.i.i131
  %add.i.i.i = add i32 %div.i.i.i.i132, 1
  %mul.i.i.i = mul i32 %add.i.i.i, %120
  %.frozen = freeze i32 %122
  %div.i.i.i131.frozen = freeze i32 %div.i.i.i131
  %div.i.i133 = sdiv i32 %.frozen, %div.i.i.i131.frozen
  %add.i.i = add i32 %div.i.i133, 2
  %add2.i.i = add i32 %add.i.i, %mul.i.i.i
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %125 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i134 = zext i8 %126 to i32
  %shl.i = shl i32 %add2.i.i, %conv.i134
  %127 = mul i32 %div.i.i133, %div.i.i.i131.frozen
  %rem.i.i.decomposed = sub i32 %.frozen, %127
  %mul.i.i135 = mul i32 %rem.i.i.decomposed, 24
  %add.i136 = add i32 %shl.i, %mul.i.i135
  %conv2.i = zext i32 %add.i136 to i64
  %dq_local_off = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 1
  %128 = ptrtoint ptr %dq_local_off to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %conv2.i, ptr %dq_local_off, align 8
  %dq_chunk = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 3
  %129 = ptrtoint ptr %dq_chunk to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %chunk.0, ptr %dq_chunk, align 8
  %130 = load i32, ptr %qc_num, align 4
  %131 = load i32, ptr %s_blocksize.i.i.i130, align 16
  %sub.i.i138 = add i32 %131, -8
  %div.i.i139 = udiv i32 %sub.i.i138, 24
  %sub1.i.i.i140 = shl i32 %131, 3
  %shl.i.i.i141 = add i32 %sub1.i.i.i140, -96
  %div.i.i.i142 = udiv i32 %shl.i.i.i141, %div.i.i139
  %add.i.i143 = add i32 %div.i.i.i142, 1
  %mul.i.i144 = mul i32 %add.i.i143, %130
  %div.i = sdiv i32 %122, %div.i.i139
  %add.i145 = add i32 %div.i, 2
  %add2.i = add i32 %add.i145, %mul.i.i144
  %conv = zext i32 %add2.i to i64
  %dq_local_phys_blk = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 2
  %call17 = call i32 @ocfs2_extent_map_get_blocks(ptr noundef %5, i64 noundef %conv, ptr noundef %dq_local_phys_blk, ptr noundef nonnull %pcount, ptr noundef null) #12
  %call18 = call i32 @ocfs2_local_write_dquot(ptr noundef %dquot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.then20, label %if.end40

if.then20:                                        ; preds = %if.end13
  %132 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call18, label %do.body [
    i32 -512, label %if.then20.out_crit_edge
    i32 -4, label %if.then20.out_crit_edge184
    i32 -28, label %if.then20.out_crit_edge185
    i32 -122, label %if.then20.out_crit_edge186
  ]

if.then20.out_crit_edge186:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then20.out_crit_edge185:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then20.out_crit_edge184:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %133 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv37 = sext i32 %call18 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_create_local_dquot, i32 noundef 1252, ptr noundef nonnull @.str.3, i64 noundef %conv37) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %out

if.end40:                                         ; preds = %if.end13
  %qc_headerbh = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %chunk.0, i32 0, i32 2
  %134 = ptrtoint ptr %qc_headerbh to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %qc_headerbh, align 4
  %call41 = call fastcc i32 @ocfs2_modify_bh(ptr noundef %5, ptr noundef %135, ptr noundef nonnull @olq_alloc_dquot, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end40.out_crit_edge

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then44:                                        ; preds = %if.end40
  %136 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call41, label %do.body61 [
    i32 -512, label %if.then44.out_crit_edge
    i32 -4, label %if.then44.out_crit_edge187
    i32 -28, label %if.then44.out_crit_edge188
    i32 -122, label %if.then44.out_crit_edge189
  ]

if.then44.out_crit_edge189:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then44.out_crit_edge188:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then44.out_crit_edge187:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body61:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m62) #12
  %137 = ptrtoint ptr %_m62 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 1152921504606846976, ptr %_m62, align 8
  %conv66 = sext i32 %call41 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m62, ptr noundef nonnull @__func__.ocfs2_create_local_dquot, i32 noundef 1260, ptr noundef nonnull @.str.3, i64 noundef %conv66) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m62) #12
  br label %out

out:                                              ; preds = %do.body61, %if.then44.out_crit_edge, %if.then44.out_crit_edge187, %if.then44.out_crit_edge188, %if.then44.out_crit_edge189, %if.end40.out_crit_edge, %do.body, %if.then20.out_crit_edge, %if.then20.out_crit_edge184, %if.then20.out_crit_edge185, %if.then20.out_crit_edge186, %if.then10, %if.then7
  %status.0 = phi i32 [ %118, %if.then10 ], [ %call41, %if.end40.out_crit_edge ], [ %117, %if.then7 ], [ %call18, %if.then20.out_crit_edge ], [ %call18, %if.then20.out_crit_edge184 ], [ %call18, %if.then20.out_crit_edge185 ], [ %call18, %if.then20.out_crit_edge186 ], [ %call18, %do.body ], [ %call41, %if.then44.out_crit_edge ], [ %call41, %if.then44.out_crit_edge187 ], [ %call41, %if.then44.out_crit_edge188 ], [ %call41, %if.then44.out_crit_edge189 ], [ %call41, %do.body61 ]
  call void @up_write(ptr noundef %ip_alloc_sem) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pcount) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #12
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_extent_map_get_blocks(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @olq_alloc_dquot(ptr nocapture noundef readonly %bh, ptr nocapture noundef readonly %private) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private, align 4
  %dqc_bitmap = getelementptr inbounds %struct.ocfs2_local_disk_chunk, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dqc_bitmap to i32
  %and.i.i = shl i32 %4, 3
  %shl.i.i = and i32 %and.i.i, 24
  %add.i.i = add i32 %shl.i.i, %3
  %and1.i.i = and i32 %4, -4
  %5 = inttoptr i32 %and1.i.i to ptr
  %xor.i.i.i = and i32 %add.i.i, 31
  %rem.i.i.i.i = xor i32 %xor.i.i.i, 24
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %add.i.i, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %5, i32 %div2.i.i.i.i
  %6 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %7
  store i32 %or.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %add.i = add i32 %10, -1
  %11 = tail call i32 @llvm.bswap.i32(i32 %add.i) #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_local_release_dquot(ptr noundef %handle, ptr nocapture noundef readonly %dquot) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type1, align 4
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %dquot, i32 0, i32 7
  %2 = ptrtoint ptr %dq_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dq_sb, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %3, i32 0, i32 31, i32 2, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %5, i32 -56
  %dq_chunk = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 3
  %6 = ptrtoint ptr %dq_chunk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dq_chunk, align 8
  %qc_headerbh = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %qc_headerbh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qc_headerbh, align 4
  %call4 = tail call i32 @ocfs2_journal_access_dq(ptr noundef %handle, ptr noundef %ip_metadata_cache.i, ptr noundef %9, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %10 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call4, label %do.body [
    i32 -512, label %if.then.out_crit_edge
    i32 -4, label %if.then.out_crit_edge48
    i32 -28, label %if.then.out_crit_edge49
    i32 -122, label %if.then.out_crit_edge50
  ]

if.then.out_crit_edge50:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.out_crit_edge49:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.out_crit_edge48:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %11 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_local_release_dquot, i32 noundef 1285, ptr noundef nonnull @.str.3, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %out

if.end16:                                         ; preds = %entry
  %12 = ptrtoint ptr %dq_chunk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dq_chunk, align 8
  %qc_num = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %qc_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qc_num, align 4
  %dq_local_off = getelementptr inbounds %struct.ocfs2_dquot, ptr %dquot, i32 0, i32 1
  %16 = ptrtoint ptr %dq_local_off to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dq_local_off, align 8
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %19, -8
  %div.i.i = udiv i32 %sub.i.i, 24
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %21 to i64
  %shr.i = ashr i64 %17, %sh_prom.i
  %sub1.i.i.i = shl i32 %19, 3
  %shl.i.i.i = add i32 %sub1.i.i.i, -96
  %div.i.i.i = udiv i32 %shl.i.i.i, %div.i.i
  %add.i.i = add i32 %div.i.i.i, 1
  %mul.i.i = mul i32 %add.i.i, %15
  %add1.i.i = add i32 %mul.i.i, 1
  %conv2.i = zext i32 %add1.i.i to i64
  %22 = xor i64 %conv2.i, -1
  %sub3.i = add i64 %shr.i, %22
  %conv6.i = zext i8 %21 to i32
  %notmask.i = shl nsw i32 -1, %conv6.i
  %sub7.i = xor i32 %notmask.i, -1
  %23 = trunc i64 %17 to i32
  %conv9.i = and i32 %sub7.i, %23
  %div.i = udiv i32 %conv9.i, 24
  %24 = trunc i64 %sub3.i to i32
  %25 = mul i32 %div.i.i, %24
  %qc_headerbh20 = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %13, i32 0, i32 2
  %26 = ptrtoint ptr %qc_headerbh20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qc_headerbh20, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 366) #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %27, i32 noundef 4) #12
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %27, align 4
  %and.i.i.i.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end16.if.then.i_crit_edge

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end16
  tail call void @llvm.prefetch.p0(ptr %27, i32 1, i32 3, i32 1) #12
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 4, ptr elementtype(i32) %27) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %33 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end16.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %27) #12
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %dqc_bitmap = getelementptr inbounds %struct.ocfs2_local_disk_chunk, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %dqc_bitmap to i32
  %and.i.i = shl i32 %34, 3
  %shl.i.i = and i32 %and.i.i, 24
  %conv11.i = add nuw nsw i32 %shl.i.i, %div.i
  %add.i.i46 = add i32 %conv11.i, %25
  %and1.i.i = and i32 %34, -4
  %35 = inttoptr i32 %and1.i.i to ptr
  %xor.i.i.i = and i32 %add.i.i46, 31
  %rem.i.i.i.i = xor i32 %xor.i.i.i, 24
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %add.i.i46, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %35, i32 %div2.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %36 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %and.i.i.i.i47 = and i32 %37, %neg.i.i.i.i
  store i32 %and.i.i.i.i47, ptr %add.ptr.i.i.i.i, align 4
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %29, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  %add.i = add i32 %40, 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.i) #12
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %29, align 4
  %43 = ptrtoint ptr %dq_chunk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dq_chunk, align 8
  %qc_headerbh24 = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %qc_headerbh24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qc_headerbh24, align 4
  tail call void @unlock_buffer(ptr noundef %46) #12
  %47 = ptrtoint ptr %dq_chunk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dq_chunk, align 8
  %qc_headerbh26 = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %qc_headerbh26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %qc_headerbh26, align 4
  tail call void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %50) #12
  br label %out

out:                                              ; preds = %lock_buffer.exit, %do.body, %if.then.out_crit_edge, %if.then.out_crit_edge48, %if.then.out_crit_edge49, %if.then.out_crit_edge50
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !118
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !119
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !109

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !120
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !122
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !124
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocfs2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_virt_blocks(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_validate_quota_block(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_finish_quota_recovery(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_recover_local_quota_file(i64 noundef %val1, i32 noundef %val2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_local_quota_file, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_recover_local_quota_file, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  %call42 = tail call i32 @__traceiter_ocfs2_recover_local_quota_file(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_local_quota_file, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_local_quota_file, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_recover_local_quota_file.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_recover_local_quota_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 1972, ptr noundef nonnull @.str.12) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dqget(ptr noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_lock_global_qf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_unlock_global_qf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dqput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_recover_local_quota_file(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocfs2_sync_dquot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kqid(ptr noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_olq_set_dquot(i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_olq_set_dquot, i32 0, i32 1), ptr blockaddress(@trace_olq_set_dquot, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !110

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !127
  %call42 = tail call i32 @__traceiter_olq_set_dquot(ptr noundef null, i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_olq_set_dquot, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_olq_set_dquot, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_olq_set_dquot.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_olq_set_dquot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 1976, ptr noundef nonnull @.str.12) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #12
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
declare dso_local i32 @__traceiter_olq_set_dquot(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ocfs2_local_quota_add_chunk(ptr noundef %sb, i32 noundef %type, ptr nocapture noundef writeonly %offset) unnamed_addr #0 align 64 {
entry:
  %p_blkno = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m50 = alloca i64, align 8
  %_m81 = alloca i64, align 8
  %_m113 = alloca i64, align 8
  %_m146 = alloca i64, align 8
  %_m177 = alloca i64, align 8
  %_m211 = alloca i64, align 8
  %_m249 = alloca i64, align 8
  %_m280 = alloca i64, align 8
  %_m314 = alloca i64, align 8
  %_m351 = alloca i64, align 8
  %_m384 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 8
  %0 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_priv, align 8
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_blkno) #12
  %4 = ptrtoint ptr %p_blkno to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %p_blkno, align 8, !annotation !116
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %6, 1
  %conv = zext i32 %mul to i64
  %add = add i64 %call2, %conv
  %call3 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %call4 = tail call i32 @ocfs2_extend_no_holes(ptr noundef %3, ptr noundef null, i64 noundef %add, i64 noundef %call3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %7 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call4, label %do.body [
    i32 -512, label %if.then.brelse.exit571_crit_edge
    i32 -4, label %if.then.brelse.exit571_crit_edge613
    i32 -28, label %if.then.brelse.exit571_crit_edge614
    i32 -122, label %if.then.brelse.exit571_crit_edge615
  ]

if.then.brelse.exit571_crit_edge615:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

if.then.brelse.exit571_crit_edge614:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

if.then.brelse.exit571_crit_edge613:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

if.then.brelse.exit571_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %8 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv21 = sext i32 %call4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 982, ptr noundef nonnull @.str.3, i64 noundef %conv21) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %brelse.exit571

if.end23:                                         ; preds = %entry
  %dqi_lqi_bh = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %dqi_lqi_bh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dqi_lqi_bh, align 8
  %call24 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %11 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocksize, align 16
  %mul26 = shl i32 %12, 1
  %conv27 = zext i32 %mul26 to i64
  %add28 = add i64 %call24, %conv27
  %call29 = tail call i32 @ocfs2_simple_size_update(ptr noundef %3, ptr noundef %10, i64 noundef %add28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end60

if.then32:                                        ; preds = %if.end23
  %13 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call29, label %do.body49 [
    i32 -512, label %if.then32.brelse.exit571_crit_edge
    i32 -4, label %if.then32.brelse.exit571_crit_edge616
    i32 -28, label %if.then32.brelse.exit571_crit_edge617
    i32 -122, label %if.then32.brelse.exit571_crit_edge618
  ]

if.then32.brelse.exit571_crit_edge618:            ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

if.then32.brelse.exit571_crit_edge617:            ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

if.then32.brelse.exit571_crit_edge616:            ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

if.then32.brelse.exit571_crit_edge:               ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

do.body49:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m50) #12
  %14 = ptrtoint ptr %_m50 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606846976, ptr %_m50, align 8
  %conv54 = sext i32 %call29 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m50, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 988, ptr noundef nonnull @.str.3, i64 noundef %conv54) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m50) #12
  br label %brelse.exit571

if.end60:                                         ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ocfs2_qf_chunk_cachep to i32))
  %15 = load ptr, ptr @ocfs2_qf_chunk_cachep, align 4
  %call61 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef 3136) #12
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %do.body80, label %if.end91

do.body80:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m81) #12
  %16 = ptrtoint ptr %_m81 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606846976, ptr %_m81, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m81, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 995, ptr noundef nonnull @.str.3, i64 noundef -12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m81) #12
  br label %brelse.exit571

if.end91:                                         ; preds = %if.end60
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info, align 16
  %call92 = tail call ptr @ocfs2_start_trans(ptr noundef %18, i32 noundef 3) #12
  %cmp.i = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then94, label %if.end123

if.then94:                                        ; preds = %if.end91
  %19 = ptrtoint ptr %call92 to i32
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %19, label %do.body112 [
    i32 -512, label %if.then94.brelse.exit571_crit_edge
    i32 -4, label %if.then94.brelse.exit571_crit_edge619
    i32 524289, label %if.then94.brelse.exit571_crit_edge620
    i32 -28, label %if.then94.brelse.exit571_crit_edge621
    i32 -122, label %if.then94.brelse.exit571_crit_edge622
  ]

if.then94.brelse.exit571_crit_edge622:            ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

if.then94.brelse.exit571_crit_edge621:            ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

if.then94.brelse.exit571_crit_edge620:            ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

if.then94.brelse.exit571_crit_edge619:            ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

if.then94.brelse.exit571_crit_edge:               ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

do.body112:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m113) #12
  %21 = ptrtoint ptr %_m113 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1152921504606846976, ptr %_m113, align 8
  %conv117 = sext i32 %19 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m113, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 1004, ptr noundef nonnull @.str.3, i64 noundef %conv117) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m113) #12
  br label %brelse.exit571

if.end123:                                        ; preds = %if.end91
  %dqi_blocks = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dqi_blocks, align 4
  %conv124 = zext i32 %23 to i64
  %call125 = call i32 @ocfs2_extent_map_get_blocks(ptr noundef %3, i64 noundef %conv124, ptr noundef nonnull %p_blkno, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.end156

if.then128:                                       ; preds = %if.end123
  %24 = zext i32 %call125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call125, label %do.body145 [
    i32 -512, label %if.then128.out_crit_edge
    i32 -4, label %if.then128.out_crit_edge623
    i32 -28, label %if.then128.out_crit_edge624
    i32 -122, label %if.then128.out_crit_edge625
  ]

if.then128.out_crit_edge625:                      ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then128.out_crit_edge624:                      ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then128.out_crit_edge623:                      ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then128.out_crit_edge:                         ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body145:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m146) #12
  %25 = ptrtoint ptr %_m146 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1152921504606846976, ptr %_m146, align 8
  %conv150 = sext i32 %call125 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m146, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 1012, ptr noundef nonnull @.str.3, i64 noundef %conv150) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m146) #12
  br label %out

if.end156:                                        ; preds = %if.end123
  %26 = ptrtoint ptr %p_blkno to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %p_blkno, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %28 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_bdev.i, align 4
  %30 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocksize, align 16
  %call.i = call ptr @__getblk_gfp(ptr noundef %29, i64 noundef %27, i32 noundef %31, i32 noundef 8) #12
  %tobool158.not = icmp eq ptr %call.i, null
  br i1 %tobool158.not, label %do.body176, label %if.end187

do.body176:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m177) #12
  %32 = ptrtoint ptr %_m177 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606846976, ptr %_m177, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m177, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 1018, ptr noundef nonnull @.str.3, i64 noundef -12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m177) #12
  br label %out

if.end187:                                        ; preds = %if.end156
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %3, i32 -56
  call void @ocfs2_set_new_buffer_uptodate(ptr noundef %ip_metadata_cache.i, ptr noundef nonnull %call.i) #12
  %call190 = call i32 @ocfs2_journal_access_dq(ptr noundef %call92, ptr noundef %ip_metadata_cache.i, ptr noundef nonnull %call.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191 = icmp slt i32 %call190, 0
  br i1 %cmp191, label %if.then193, label %if.end221

if.then193:                                       ; preds = %if.end187
  %35 = zext i32 %call190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call190, label %do.body210 [
    i32 -512, label %if.then193.brelse.exit_crit_edge
    i32 -4, label %if.then193.brelse.exit_crit_edge626
    i32 -28, label %if.then193.brelse.exit_crit_edge627
    i32 -122, label %if.then193.brelse.exit_crit_edge628
  ]

if.then193.brelse.exit_crit_edge628:              ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then193.brelse.exit_crit_edge627:              ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then193.brelse.exit_crit_edge626:              ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then193.brelse.exit_crit_edge:                 ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

do.body210:                                       ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m211) #12
  %36 = ptrtoint ptr %_m211 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m211, align 8
  %conv215 = sext i32 %call190 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m211, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 1026, ptr noundef nonnull @.str.3, i64 noundef %conv215) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m211) #12
  br label %brelse.exit

if.end221:                                        ; preds = %if.end187
  call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 366) #12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end221.if.then.i_crit_edge

if.end221.if.then.i_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end221
  call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #12
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 4, ptr nonnull elementtype(i32) %call.i) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %40 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end221.if.then.i_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call.i) #12
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %41 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize, align 16
  %sub.i = add i32 %42, -8
  %div.i = udiv i32 %sub.i, 24
  %43 = call i32 @llvm.bswap.i32(i32 %div.i)
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %34, align 4
  %dqc_bitmap = getelementptr inbounds %struct.ocfs2_local_disk_chunk, ptr %34, i32 0, i32 1
  %45 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_blocksize, align 16
  %sub224 = add i32 %46, -12
  %47 = call ptr @memset(ptr %dqc_bitmap, i32 0, i32 %sub224)
  call void @unlock_buffer(ptr noundef nonnull %call.i) #12
  call void @ocfs2_journal_dirty(ptr noundef %call92, ptr noundef nonnull %call.i) #12
  %48 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dqi_blocks, align 4
  %add226 = add i32 %49, 1
  %conv227 = zext i32 %add226 to i64
  %call228 = call i32 @ocfs2_extent_map_get_blocks(ptr noundef %3, i64 noundef %conv227, ptr noundef nonnull %p_blkno, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %cmp229 = icmp slt i32 %call228, 0
  br i1 %cmp229, label %if.then231, label %if.end259

if.then231:                                       ; preds = %lock_buffer.exit
  %50 = zext i32 %call228 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call228, label %do.body248 [
    i32 -512, label %if.then231.brelse.exit_crit_edge
    i32 -4, label %if.then231.brelse.exit_crit_edge629
    i32 -28, label %if.then231.brelse.exit_crit_edge630
    i32 -122, label %if.then231.brelse.exit_crit_edge631
  ]

if.then231.brelse.exit_crit_edge631:              ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then231.brelse.exit_crit_edge630:              ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then231.brelse.exit_crit_edge629:              ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then231.brelse.exit_crit_edge:                 ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

do.body248:                                       ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m249) #12
  %51 = ptrtoint ptr %_m249 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 1152921504606846976, ptr %_m249, align 8
  %conv253 = sext i32 %call228 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m249, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 1041, ptr noundef nonnull @.str.3, i64 noundef %conv253) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m249) #12
  br label %brelse.exit

if.end259:                                        ; preds = %lock_buffer.exit
  %52 = ptrtoint ptr %p_blkno to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %p_blkno, align 8
  %54 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_bdev.i, align 4
  %56 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_blocksize, align 16
  %call.i565 = call ptr @__getblk_gfp(ptr noundef %55, i64 noundef %53, i32 noundef %57, i32 noundef 8) #12
  %tobool261.not = icmp eq ptr %call.i565, null
  br i1 %tobool261.not, label %do.body279, label %if.end290

do.body279:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m280) #12
  %58 = ptrtoint ptr %_m280 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 1152921504606846976, ptr %_m280, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m280, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 1047, ptr noundef nonnull @.str.3, i64 noundef -12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m280) #12
  br label %brelse.exit

if.end290:                                        ; preds = %if.end259
  call void @ocfs2_set_new_buffer_uptodate(ptr noundef %ip_metadata_cache.i, ptr noundef nonnull %call.i565) #12
  %call293 = call i32 @ocfs2_journal_access_dq(ptr noundef %call92, ptr noundef %ip_metadata_cache.i, ptr noundef nonnull %call.i565, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293)
  %cmp294 = icmp slt i32 %call293, 0
  br i1 %cmp294, label %if.then296, label %if.end324

if.then296:                                       ; preds = %if.end290
  %59 = zext i32 %call293 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call293, label %do.body313 [
    i32 -512, label %if.then296.brelse.exit_crit_edge
    i32 -4, label %if.then296.brelse.exit_crit_edge632
    i32 -28, label %if.then296.brelse.exit_crit_edge633
    i32 -122, label %if.then296.brelse.exit_crit_edge634
  ]

if.then296.brelse.exit_crit_edge634:              ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then296.brelse.exit_crit_edge633:              ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then296.brelse.exit_crit_edge632:              ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then296.brelse.exit_crit_edge:                 ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

do.body313:                                       ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m314) #12
  %60 = ptrtoint ptr %_m314 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 1152921504606846976, ptr %_m314, align 8
  %conv318 = sext i32 %call293 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m314, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 1054, ptr noundef nonnull @.str.3, i64 noundef %conv318) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m314) #12
  br label %brelse.exit

if.end324:                                        ; preds = %if.end290
  call fastcc void @lock_buffer(ptr noundef nonnull %call.i565)
  %b_data325 = getelementptr inbounds %struct.buffer_head, ptr %call.i565, i32 0, i32 5
  %61 = ptrtoint ptr %b_data325 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data325, align 4
  %63 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_blocksize, align 16
  %sub327 = add i32 %64, -8
  %65 = call ptr @memset(ptr %62, i32 0, i32 %sub327)
  call void @unlock_buffer(ptr noundef nonnull %call.i565) #12
  call void @ocfs2_journal_dirty(ptr noundef %call92, ptr noundef nonnull %call.i565) #12
  %66 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dqi_blocks, align 4
  %add329 = add i32 %67, 2
  store i32 %add329, ptr %dqi_blocks, align 4
  %dqi_chunks = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %dqi_chunks to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dqi_chunks, align 8
  %inc = add i32 %69, 1
  store i32 %inc, ptr %dqi_chunks, align 8
  %call330 = call fastcc i32 @ocfs2_local_write_info(ptr noundef %sb, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %cmp331 = icmp slt i32 %call330, 0
  br i1 %cmp331, label %if.then333, label %if.end361

if.then333:                                       ; preds = %if.end324
  %70 = zext i32 %call330 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call330, label %do.body350 [
    i32 -512, label %if.then333.brelse.exit_crit_edge
    i32 -4, label %if.then333.brelse.exit_crit_edge635
    i32 -28, label %if.then333.brelse.exit_crit_edge636
    i32 -122, label %if.then333.brelse.exit_crit_edge637
  ]

if.then333.brelse.exit_crit_edge637:              ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then333.brelse.exit_crit_edge636:              ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then333.brelse.exit_crit_edge635:              ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then333.brelse.exit_crit_edge:                 ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

do.body350:                                       ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m351) #12
  %71 = ptrtoint ptr %_m351 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 1152921504606846976, ptr %_m351, align 8
  %conv355 = sext i32 %call330 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m351, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 1067, ptr noundef nonnull @.str.3, i64 noundef %conv355) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m351) #12
  br label %brelse.exit

if.end361:                                        ; preds = %if.end324
  %72 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info, align 16
  %call363 = call i32 @ocfs2_commit_trans(ptr noundef %73, ptr noundef %call92) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call363)
  %cmp364 = icmp slt i32 %call363, 0
  br i1 %cmp364, label %if.then366, label %if.end394

if.then366:                                       ; preds = %if.end361
  %74 = zext i32 %call363 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call363, label %do.body383 [
    i32 -512, label %if.then366.brelse.exit.thread604_crit_edge
    i32 -4, label %if.then366.brelse.exit.thread604_crit_edge638
    i32 -28, label %if.then366.brelse.exit.thread604_crit_edge639
    i32 -122, label %if.then366.brelse.exit.thread604_crit_edge640
  ]

if.then366.brelse.exit.thread604_crit_edge640:    ; preds = %if.then366
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.thread604

if.then366.brelse.exit.thread604_crit_edge639:    ; preds = %if.then366
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.thread604

if.then366.brelse.exit.thread604_crit_edge638:    ; preds = %if.then366
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.thread604

if.then366.brelse.exit.thread604_crit_edge:       ; preds = %if.then366
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.thread604

do.body383:                                       ; preds = %if.then366
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m384) #12
  %75 = ptrtoint ptr %_m384 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 1152921504606846976, ptr %_m384, align 8
  %conv388 = sext i32 %call363 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m384, ptr noundef nonnull @__func__.ocfs2_local_quota_add_chunk, i32 noundef 1072, ptr noundef nonnull @.str.3, i64 noundef %conv388) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m384) #12
  br label %brelse.exit.thread604

if.end394:                                        ; preds = %if.end361
  %dqi_chunk = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 5, i32 1
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call61, ptr noundef %77, ptr noundef %dqi_chunk) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end394.list_add_tail.exit_crit_edge

if.end394.list_add_tail.exit_crit_edge:           ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call61, ptr %prev.i, align 4
  %79 = ptrtoint ptr %call61 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %dqi_chunk, ptr %call61, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call61, i32 0, i32 1
  %80 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %call61, ptr %77, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end394.list_add_tail.exit_crit_edge
  %prev = getelementptr inbounds %struct.list_head, ptr %call61, i32 0, i32 1
  %82 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev, align 4
  %qc_num = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %qc_num to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %qc_num, align 4
  %add397 = add i32 %85, 1
  %qc_num398 = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %call61, i32 0, i32 1
  %86 = ptrtoint ptr %qc_num398 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add397, ptr %qc_num398, align 8
  %qc_headerbh = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %call61, i32 0, i32 2
  %87 = ptrtoint ptr %qc_headerbh to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i, ptr %qc_headerbh, align 4
  %88 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %offset, align 4
  br label %cleanup

brelse.exit.thread604:                            ; preds = %do.body383, %if.then366.brelse.exit.thread604_crit_edge, %if.then366.brelse.exit.thread604_crit_edge638, %if.then366.brelse.exit.thread604_crit_edge639, %if.then366.brelse.exit.thread604_crit_edge640
  call void @__brelse(ptr noundef nonnull %call.i) #12
  br label %if.then.i570

out:                                              ; preds = %do.body176, %do.body145, %if.then128.out_crit_edge, %if.then128.out_crit_edge623, %if.then128.out_crit_edge624, %if.then128.out_crit_edge625
  %status.0 = phi i32 [ -12, %do.body176 ], [ %call125, %if.then128.out_crit_edge ], [ %call125, %if.then128.out_crit_edge623 ], [ %call125, %if.then128.out_crit_edge624 ], [ %call125, %if.then128.out_crit_edge625 ], [ %call125, %do.body145 ]
  %89 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %s_fs_info, align 16
  %call400 = call i32 @ocfs2_commit_trans(ptr noundef %90, ptr noundef %call92) #12
  br label %brelse.exit571

brelse.exit:                                      ; preds = %do.body350, %if.then333.brelse.exit_crit_edge, %if.then333.brelse.exit_crit_edge635, %if.then333.brelse.exit_crit_edge636, %if.then333.brelse.exit_crit_edge637, %do.body313, %if.then296.brelse.exit_crit_edge, %if.then296.brelse.exit_crit_edge632, %if.then296.brelse.exit_crit_edge633, %if.then296.brelse.exit_crit_edge634, %do.body279, %do.body248, %if.then231.brelse.exit_crit_edge, %if.then231.brelse.exit_crit_edge629, %if.then231.brelse.exit_crit_edge630, %if.then231.brelse.exit_crit_edge631, %do.body210, %if.then193.brelse.exit_crit_edge, %if.then193.brelse.exit_crit_edge626, %if.then193.brelse.exit_crit_edge627, %if.then193.brelse.exit_crit_edge628
  %dbh.0.ph = phi ptr [ %call.i565, %do.body350 ], [ %call.i565, %if.then333.brelse.exit_crit_edge ], [ %call.i565, %if.then333.brelse.exit_crit_edge635 ], [ %call.i565, %if.then333.brelse.exit_crit_edge636 ], [ %call.i565, %if.then333.brelse.exit_crit_edge637 ], [ %call.i565, %do.body313 ], [ %call.i565, %if.then296.brelse.exit_crit_edge ], [ %call.i565, %if.then296.brelse.exit_crit_edge632 ], [ %call.i565, %if.then296.brelse.exit_crit_edge633 ], [ %call.i565, %if.then296.brelse.exit_crit_edge634 ], [ null, %do.body248 ], [ null, %if.then231.brelse.exit_crit_edge ], [ null, %if.then231.brelse.exit_crit_edge629 ], [ null, %if.then231.brelse.exit_crit_edge630 ], [ null, %if.then231.brelse.exit_crit_edge631 ], [ null, %do.body210 ], [ null, %if.then193.brelse.exit_crit_edge ], [ null, %if.then193.brelse.exit_crit_edge626 ], [ null, %if.then193.brelse.exit_crit_edge627 ], [ null, %if.then193.brelse.exit_crit_edge628 ], [ null, %do.body279 ]
  %status.0.ph = phi i32 [ %call330, %do.body350 ], [ %call330, %if.then333.brelse.exit_crit_edge ], [ %call330, %if.then333.brelse.exit_crit_edge635 ], [ %call330, %if.then333.brelse.exit_crit_edge636 ], [ %call330, %if.then333.brelse.exit_crit_edge637 ], [ %call293, %do.body313 ], [ %call293, %if.then296.brelse.exit_crit_edge ], [ %call293, %if.then296.brelse.exit_crit_edge632 ], [ %call293, %if.then296.brelse.exit_crit_edge633 ], [ %call293, %if.then296.brelse.exit_crit_edge634 ], [ %call228, %do.body248 ], [ %call228, %if.then231.brelse.exit_crit_edge ], [ %call228, %if.then231.brelse.exit_crit_edge629 ], [ %call228, %if.then231.brelse.exit_crit_edge630 ], [ %call228, %if.then231.brelse.exit_crit_edge631 ], [ %call190, %do.body210 ], [ %call190, %if.then193.brelse.exit_crit_edge ], [ %call190, %if.then193.brelse.exit_crit_edge626 ], [ %call190, %if.then193.brelse.exit_crit_edge627 ], [ %call190, %if.then193.brelse.exit_crit_edge628 ], [ -12, %do.body279 ]
  %91 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info, align 16
  %call400596 = call i32 @ocfs2_commit_trans(ptr noundef %92, ptr noundef %call92) #12
  call void @__brelse(ptr noundef nonnull %call.i) #12
  %tobool.not.i569 = icmp eq ptr %dbh.0.ph, null
  br i1 %tobool.not.i569, label %brelse.exit.brelse.exit571_crit_edge, label %brelse.exit.if.then.i570_crit_edge

brelse.exit.if.then.i570_crit_edge:               ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i570

brelse.exit.brelse.exit571_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit571

if.then.i570:                                     ; preds = %brelse.exit.if.then.i570_crit_edge, %brelse.exit.thread604
  %dbh.1587612 = phi ptr [ %call.i565, %brelse.exit.thread604 ], [ %dbh.0.ph, %brelse.exit.if.then.i570_crit_edge ]
  %status.1589611 = phi i32 [ %call363, %brelse.exit.thread604 ], [ %status.0.ph, %brelse.exit.if.then.i570_crit_edge ]
  call void @__brelse(ptr noundef nonnull %dbh.1587612) #12
  br label %brelse.exit571

brelse.exit571:                                   ; preds = %if.then.i570, %brelse.exit.brelse.exit571_crit_edge, %out, %do.body112, %if.then94.brelse.exit571_crit_edge, %if.then94.brelse.exit571_crit_edge619, %if.then94.brelse.exit571_crit_edge620, %if.then94.brelse.exit571_crit_edge621, %if.then94.brelse.exit571_crit_edge622, %do.body80, %do.body49, %if.then32.brelse.exit571_crit_edge, %if.then32.brelse.exit571_crit_edge616, %if.then32.brelse.exit571_crit_edge617, %if.then32.brelse.exit571_crit_edge618, %do.body, %if.then.brelse.exit571_crit_edge, %if.then.brelse.exit571_crit_edge613, %if.then.brelse.exit571_crit_edge614, %if.then.brelse.exit571_crit_edge615
  %status.1578603 = phi i32 [ %status.0.ph, %brelse.exit.brelse.exit571_crit_edge ], [ %status.1589611, %if.then.i570 ], [ %status.0, %out ], [ %19, %do.body112 ], [ %19, %if.then94.brelse.exit571_crit_edge ], [ %19, %if.then94.brelse.exit571_crit_edge619 ], [ %19, %if.then94.brelse.exit571_crit_edge620 ], [ %19, %if.then94.brelse.exit571_crit_edge621 ], [ %19, %if.then94.brelse.exit571_crit_edge622 ], [ %call29, %do.body49 ], [ %call29, %if.then32.brelse.exit571_crit_edge ], [ %call29, %if.then32.brelse.exit571_crit_edge616 ], [ %call29, %if.then32.brelse.exit571_crit_edge617 ], [ %call29, %if.then32.brelse.exit571_crit_edge618 ], [ %call4, %do.body ], [ %call4, %if.then.brelse.exit571_crit_edge ], [ %call4, %if.then.brelse.exit571_crit_edge613 ], [ %call4, %if.then.brelse.exit571_crit_edge614 ], [ %call4, %if.then.brelse.exit571_crit_edge615 ], [ -12, %do.body80 ]
  %chunk.0579602 = phi ptr [ %call61, %brelse.exit.brelse.exit571_crit_edge ], [ %call61, %if.then.i570 ], [ %call61, %out ], [ %call61, %do.body112 ], [ %call61, %if.then94.brelse.exit571_crit_edge ], [ %call61, %if.then94.brelse.exit571_crit_edge619 ], [ %call61, %if.then94.brelse.exit571_crit_edge620 ], [ %call61, %if.then94.brelse.exit571_crit_edge621 ], [ %call61, %if.then94.brelse.exit571_crit_edge622 ], [ null, %do.body49 ], [ null, %if.then32.brelse.exit571_crit_edge ], [ null, %if.then32.brelse.exit571_crit_edge616 ], [ null, %if.then32.brelse.exit571_crit_edge617 ], [ null, %if.then32.brelse.exit571_crit_edge618 ], [ null, %do.body ], [ null, %if.then.brelse.exit571_crit_edge ], [ null, %if.then.brelse.exit571_crit_edge613 ], [ null, %if.then.brelse.exit571_crit_edge614 ], [ null, %if.then.brelse.exit571_crit_edge615 ], [ null, %do.body80 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ocfs2_qf_chunk_cachep to i32))
  %93 = load ptr, ptr @ocfs2_qf_chunk_cachep, align 4
  call void @kmem_cache_free(ptr noundef %93, ptr noundef %chunk.0579602) #12
  %94 = inttoptr i32 %status.1578603 to ptr
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit571, %list_add_tail.exit
  %retval.0 = phi ptr [ %94, %brelse.exit571 ], [ %call61, %list_add_tail.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_blkno) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_extend_no_holes(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_simple_size_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_set_new_buffer_uptodate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_local_write_info(ptr noundef %sb, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %add.ptr.i = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 8
  %0 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_priv, align 8
  %dqi_libh = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dqi_libh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dqi_libh, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call fastcc i32 @ocfs2_modify_bh(ptr noundef %5, ptr noundef %3, ptr noundef nonnull @olq_update_info, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call2, label %do.body [
    i32 -512, label %if.then.cleanup_crit_edge
    i32 -4, label %if.then.cleanup_crit_edge27
    i32 -28, label %if.then.cleanup_crit_edge28
    i32 -122, label %if.then.cleanup_crit_edge29
  ]

if.then.cleanup_crit_edge29:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.cleanup_crit_edge28:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.cleanup_crit_edge27:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call2 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_local_write_info, i32 noundef 801, ptr noundef nonnull @.str.3, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge27, %if.then.cleanup_crit_edge28, %if.then.cleanup_crit_edge29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then.cleanup_crit_edge ], [ -1, %if.then.cleanup_crit_edge27 ], [ -1, %if.then.cleanup_crit_edge28 ], [ -1, %if.then.cleanup_crit_edge29 ], [ -1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @olq_update_info(ptr nocapture noundef readonly %bh, ptr nocapture noundef readonly %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dqi_priv = getelementptr inbounds %struct.mem_dqinfo, ptr %private, i32 0, i32 8
  %0 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_priv, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %2 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @dq_data_lock) #12
  %dqi_flags = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dqi_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dqi_flags, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr, align 4
  %dqi_chunks = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dqi_chunks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dqi_chunks, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %dqi_chunks2 = getelementptr i8, ptr %3, i32 12
  %11 = ptrtoint ptr %dqi_chunks2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dqi_chunks2, align 4
  %dqi_blocks = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dqi_blocks, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %dqi_blocks3 = getelementptr i8, ptr %3, i32 16
  %15 = ptrtoint ptr %dqi_blocks3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dqi_blocks3, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dq_data_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_local_check_quota_file(ptr nocapture noundef readonly %sb, i32 noundef %type) #0 align 64 {
entry:
  %lversions = alloca [2 x i32], align 8
  %gversions = alloca [2 x i32], align 8
  %bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m14 = alloca i64, align 8
  %_m27 = alloca i64, align 8
  %_m42 = alloca i64, align 8
  %_m57 = alloca i64, align 8
  %_m85 = alloca i64, align 8
  %_m96 = alloca i64, align 8
  %_m111 = alloca i64, align 8
  %_m127 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lversions) #12
  %0 = ptrtoint ptr %lversions to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %lversions, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gversions) #12
  %1 = ptrtoint ptr %gversions to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %gversions, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bh, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call1 = call fastcc i32 @ocfs2_read_quota_block(ptr noundef %4, i64 noundef 0, ptr noundef nonnull %bh)
  %5 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call1, label %do.body [
    i32 0, label %if.end21
    i32 -512, label %entry.if.end12_crit_edge
    i32 -4, label %entry.if.end12_crit_edge181
    i32 524289, label %entry.if.end12_crit_edge182
    i32 -28, label %entry.if.end12_crit_edge183
    i32 -122, label %entry.if.end12_crit_edge184
  ]

entry.if.end12_crit_edge184:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

entry.if.end12_crit_edge183:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

entry.if.end12_crit_edge182:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

entry.if.end12_crit_edge181:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_local_check_quota_file, i32 noundef 177, ptr noundef nonnull @.str.3, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end12

if.end12:                                         ; preds = %do.body, %entry.if.end12_crit_edge, %entry.if.end12_crit_edge181, %entry.if.end12_crit_edge182, %entry.if.end12_crit_edge183, %entry.if.end12_crit_edge184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m14) #12
  %7 = ptrtoint ptr %_m14 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m14, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m14, ptr noundef nonnull @__func__.ocfs2_local_check_quota_file, i32 noundef 179, ptr noundef nonnull @.str.17, i32 noundef %type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m14) #12
  br label %out_err

if.end21:                                         ; preds = %entry
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx22 = getelementptr [2 x i32], ptr @__const.ocfs2_local_check_quota_file.lmagics, i32 0, i32 %type
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp23.not = icmp eq i32 %14, %16
  br i1 %cmp23.not, label %if.end36, label %do.body26

do.body26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m27) #12
  %17 = ptrtoint ptr %_m27 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606846976, ptr %_m27, align 8
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %11, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m27, ptr noundef nonnull @__func__.ocfs2_local_check_quota_file, i32 noundef 186, ptr noundef nonnull @.str.18, i32 noundef %20, i32 noundef %16, i32 noundef %type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m27) #12
  br label %out_err

if.end36:                                         ; preds = %if.end21
  %dqh_version = getelementptr inbounds %struct.ocfs2_disk_dqheader, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %dqh_version to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dqh_version, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %arrayidx37 = getelementptr [2 x i32], ptr %lversions, i32 0, i32 %type
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp38.not = icmp eq i32 %23, %25
  br i1 %cmp38.not, label %if.end51, label %do.body41

do.body41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m42) #12
  %26 = ptrtoint ptr %_m42 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1152921504606846976, ptr %_m42, align 8
  %27 = ptrtoint ptr %dqh_version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dqh_version, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m42, ptr noundef nonnull @__func__.ocfs2_local_check_quota_file, i32 noundef 192, ptr noundef nonnull @.str.19, i32 noundef %29, i32 noundef %25, i32 noundef %type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m42) #12
  br label %out_err

if.end51:                                         ; preds = %if.end36
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end51.brelse.exit_crit_edge, label %if.then.i

if.end51.brelse.exit_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %9) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end51.brelse.exit_crit_edge
  %30 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %bh, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info, align 16
  %arrayidx52 = getelementptr [2 x i32], ptr @__const.ocfs2_local_check_quota_file.ino, i32 0, i32 %type
  %33 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx52, align 4
  %call53 = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %32, i32 noundef %34, i32 noundef 65535) #12
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %do.body56, label %if.end64

do.body56:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m57) #12
  %35 = ptrtoint ptr %_m57 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606846976, ptr %_m57, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m57, ptr noundef nonnull @__func__.ocfs2_local_check_quota_file, i32 noundef 203, ptr noundef nonnull @.str.20, i32 noundef %type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m57) #12
  br label %out_err

if.end64:                                         ; preds = %brelse.exit
  %call65 = call fastcc i32 @ocfs2_read_quota_block(ptr noundef nonnull %call53, i64 noundef 0, ptr noundef nonnull %bh)
  %36 = zext i32 %call65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call65, label %do.body84 [
    i32 0, label %if.end103
    i32 -512, label %if.end64.if.end93_crit_edge
    i32 -4, label %if.end64.if.end93_crit_edge185
    i32 524289, label %if.end64.if.end93_crit_edge186
    i32 -28, label %if.end64.if.end93_crit_edge187
    i32 -122, label %if.end64.if.end93_crit_edge188
  ]

if.end64.if.end93_crit_edge188:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.end64.if.end93_crit_edge187:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.end64.if.end93_crit_edge186:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.end64.if.end93_crit_edge185:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.end64.if.end93_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

do.body84:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m85) #12
  %37 = ptrtoint ptr %_m85 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1152921504606846976, ptr %_m85, align 8
  %conv89 = sext i32 %call65 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m85, ptr noundef nonnull @__func__.ocfs2_local_check_quota_file, i32 noundef 209, ptr noundef nonnull @.str.3, i64 noundef %conv89) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m85) #12
  br label %if.end93

if.end93:                                         ; preds = %do.body84, %if.end64.if.end93_crit_edge, %if.end64.if.end93_crit_edge185, %if.end64.if.end93_crit_edge186, %if.end64.if.end93_crit_edge187, %if.end64.if.end93_crit_edge188
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m96) #12
  %38 = ptrtoint ptr %_m96 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1152921504606846976, ptr %_m96, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m96, ptr noundef nonnull @__func__.ocfs2_local_check_quota_file, i32 noundef 211, ptr noundef nonnull @.str.21, i32 noundef %type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m96) #12
  br label %out_err

if.end103:                                        ; preds = %if.end64
  %39 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bh, align 4
  %b_data104 = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %b_data104 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data104, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %arrayidx106 = getelementptr [2 x i32], ptr @__const.ocfs2_local_check_quota_file.gmagics, i32 0, i32 %type
  %46 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp107.not = icmp eq i32 %45, %47
  br i1 %cmp107.not, label %if.end120, label %do.body110

do.body110:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m111) #12
  %48 = ptrtoint ptr %_m111 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 1152921504606846976, ptr %_m111, align 8
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %42, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m111, ptr noundef nonnull @__func__.ocfs2_local_check_quota_file, i32 noundef 218, ptr noundef nonnull @.str.22, i32 noundef %51, i32 noundef %47, i32 noundef %type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m111) #12
  br label %out_err

if.end120:                                        ; preds = %if.end103
  %dqh_version121 = getelementptr inbounds %struct.ocfs2_disk_dqheader, ptr %42, i32 0, i32 1
  %52 = ptrtoint ptr %dqh_version121 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dqh_version121, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %arrayidx122 = getelementptr [2 x i32], ptr %gversions, i32 0, i32 %type
  %55 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp123.not = icmp eq i32 %54, %56
  br i1 %cmp123.not, label %if.end120.out_err_crit_edge, label %do.body126

if.end120.out_err_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

do.body126:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m127) #12
  %57 = ptrtoint ptr %_m127 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1152921504606846976, ptr %_m127, align 8
  %58 = ptrtoint ptr %dqh_version121 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dqh_version121, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m127, ptr noundef nonnull @__func__.ocfs2_local_check_quota_file, i32 noundef 225, ptr noundef nonnull @.str.23, i32 noundef %60, i32 noundef %56, i32 noundef %type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m127) #12
  br label %out_err

out_err:                                          ; preds = %do.body126, %if.end120.out_err_crit_edge, %do.body110, %if.end93, %do.body56, %do.body41, %do.body26, %if.end12
  %ret.0 = phi i32 [ 0, %if.end12 ], [ 0, %do.body26 ], [ 0, %do.body41 ], [ 0, %if.end93 ], [ 0, %do.body110 ], [ 0, %do.body126 ], [ 0, %do.body56 ], [ 1, %if.end120.out_err_crit_edge ]
  %ginode.0 = phi ptr [ null, %if.end12 ], [ null, %do.body26 ], [ null, %do.body41 ], [ %call53, %if.end93 ], [ %call53, %do.body110 ], [ %call53, %do.body126 ], [ null, %do.body56 ], [ %call53, %if.end120.out_err_crit_edge ]
  %61 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bh, align 4
  %tobool.not.i178 = icmp eq ptr %62, null
  br i1 %tobool.not.i178, label %out_err.brelse.exit180_crit_edge, label %if.then.i179

out_err.brelse.exit180_crit_edge:                 ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit180

if.then.i179:                                     ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %62) #12
  br label %brelse.exit180

brelse.exit180:                                   ; preds = %if.then.i179, %out_err.brelse.exit180_crit_edge
  call void @iput(ptr noundef %ginode.0) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gversions) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lversions) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_local_read_info(ptr noundef %sb, i32 noundef %type) #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m23 = alloca i64, align 8
  %_m52 = alloca i64, align 8
  %_m63 = alloca i64, align 8
  %_m101 = alloca i64, align 8
  %_m137 = alloca i64, align 8
  %_m171 = alloca i64, align 8
  %_m205 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %add.ptr.i = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bh, align 4
  %dqi_max_spc_limit = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 6
  %3 = ptrtoint ptr %dqi_max_spc_limit to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 9223372036854775807, ptr %dqi_max_spc_limit, align 8
  %dqi_max_ino_limit = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 7
  %4 = ptrtoint ptr %dqi_max_ino_limit to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 9223372036854775807, ptr %dqi_max_ino_limit, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3136, i32 noundef 592) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %out_err.thread356, label %if.end5

out_err.thread356:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_local_read_info, i32 noundef 699, ptr noundef nonnull @.str.24) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end227

if.end5:                                          ; preds = %entry
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 8
  %7 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %dqi_priv, align 8
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %type, ptr %call7.i, align 8
  %dqi_chunk = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %call7.i, i32 0, i32 5
  %9 = ptrtoint ptr %dqi_chunk to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %dqi_chunk, ptr %dqi_chunk, align 4
  %prev.i = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %call7.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dqi_chunk, ptr %prev.i, align 8
  %dqi_gqinode = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %call7.i, i32 0, i32 6
  %11 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dqi_gqinode, align 4
  %dqi_gqlock = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %call7.i, i32 0, i32 7
  tail call void @ocfs2_qinfo_lock_res_init(ptr noundef %dqi_gqlock, ptr noundef nonnull %call7.i) #12
  %dqi_rec = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %call7.i, i32 0, i32 15
  %12 = ptrtoint ptr %dqi_rec to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dqi_rec, align 4
  %dqi_lqi_bh = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %call7.i, i32 0, i32 11
  %13 = ptrtoint ptr %dqi_lqi_bh to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dqi_lqi_bh, align 8
  %dqi_libh = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %call7.i, i32 0, i32 12
  %14 = ptrtoint ptr %dqi_libh to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dqi_libh, align 4
  %call6 = tail call i32 @ocfs2_global_read_info(ptr noundef %sb, i32 noundef %type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.if.then217_crit_edge, label %if.end8

if.end5.if.then217_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.end8:                                          ; preds = %if.end5
  %call10 = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %1, ptr noundef %dqi_lqi_bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end31

if.then12:                                        ; preds = %if.end8
  %15 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call10, label %do.body22 [
    i32 -512, label %if.then12.if.then217_crit_edge
    i32 -4, label %if.then12.if.then217_crit_edge400
    i32 -28, label %if.then12.if.then217_crit_edge401
    i32 -122, label %if.then12.if.then217_crit_edge402
  ]

if.then12.if.then217_crit_edge402:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then12.if.then217_crit_edge401:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then12.if.then217_crit_edge400:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then12.if.then217_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

do.body22:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m23) #12
  %16 = ptrtoint ptr %_m23 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606846976, ptr %_m23, align 8
  %conv = sext i32 %call10 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m23, ptr noundef nonnull @__func__.ocfs2_local_read_info, i32 noundef 717, ptr noundef nonnull @.str.3, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m23) #12
  br label %if.then217

if.end31:                                         ; preds = %if.end8
  %call32 = call fastcc i32 @ocfs2_read_quota_block(ptr noundef %1, i64 noundef 0, ptr noundef nonnull %bh)
  %17 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call32, label %do.body51 [
    i32 0, label %if.end70
    i32 -512, label %if.end31.if.end60_crit_edge
    i32 -4, label %if.end31.if.end60_crit_edge403
    i32 524289, label %if.end31.if.end60_crit_edge404
    i32 -28, label %if.end31.if.end60_crit_edge405
    i32 -122, label %if.end31.if.end60_crit_edge406
  ]

if.end31.if.end60_crit_edge406:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.end31.if.end60_crit_edge405:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.end31.if.end60_crit_edge404:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.end31.if.end60_crit_edge403:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.end31.if.end60_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

do.body51:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m52) #12
  %18 = ptrtoint ptr %_m52 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1152921504606846976, ptr %_m52, align 8
  %conv56 = sext i32 %call32 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m52, ptr noundef nonnull @__func__.ocfs2_local_read_info, i32 noundef 725, ptr noundef nonnull @.str.3, i64 noundef %conv56) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m52) #12
  br label %if.end60

if.end60:                                         ; preds = %do.body51, %if.end31.if.end60_crit_edge, %if.end31.if.end60_crit_edge403, %if.end31.if.end60_crit_edge404, %if.end31.if.end60_crit_edge405, %if.end31.if.end60_crit_edge406
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m63) #12
  %19 = ptrtoint ptr %_m63 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606846976, ptr %_m63, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m63, ptr noundef nonnull @__func__.ocfs2_local_read_info, i32 noundef 727, ptr noundef nonnull @.str.25, i32 noundef %type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m63) #12
  br label %if.then217

if.end70:                                         ; preds = %if.end31
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 8
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %dqi_flags71 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %call7.i, i32 0, i32 1
  %27 = ptrtoint ptr %dqi_flags71 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dqi_flags71, align 4
  %dqi_chunks = getelementptr i8, ptr %23, i32 12
  %28 = ptrtoint ptr %dqi_chunks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dqi_chunks, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %dqi_chunks72 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %call7.i, i32 0, i32 2
  %31 = ptrtoint ptr %dqi_chunks72 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dqi_chunks72, align 8
  %dqi_blocks = getelementptr i8, ptr %23, i32 16
  %32 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dqi_blocks, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %dqi_blocks73 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %call7.i, i32 0, i32 3
  %35 = ptrtoint ptr %dqi_blocks73 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dqi_blocks73, align 4
  %36 = ptrtoint ptr %dqi_libh to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %21, ptr %dqi_libh, align 4
  %and76 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then78, label %if.end70.if.end148_crit_edge

if.end70.if.end148_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.then78:                                        ; preds = %if.end70
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %37 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info, align 16
  %quota_rec = getelementptr inbounds %struct.ocfs2_super, ptr %38, i32 0, i32 58
  %39 = ptrtoint ptr %quota_rec to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %quota_rec, align 4
  %tobool79.not = icmp eq ptr %40, null
  br i1 %tobool79.not, label %if.then80, label %if.then78.if.end114_crit_edge

if.then78.if.end114_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then80:                                        ; preds = %if.then78
  %call81 = tail call fastcc ptr @ocfs2_alloc_quota_recovery()
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %do.body100, label %if.end111

do.body100:                                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m101) #12
  %41 = ptrtoint ptr %_m101 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1152921504606846976, ptr %_m101, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m101, ptr noundef nonnull @__func__.ocfs2_local_read_info, i32 noundef 744, ptr noundef nonnull @.str.3, i64 noundef -12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m101) #12
  br label %if.then217

if.end111:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info, align 16
  %quota_rec113 = getelementptr inbounds %struct.ocfs2_super, ptr %43, i32 0, i32 58
  %44 = ptrtoint ptr %quota_rec113 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call81, ptr %quota_rec113, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.end111, %if.then78.if.end114_crit_edge
  %rec.0 = phi ptr [ %40, %if.then78.if.end114_crit_edge ], [ %call81, %if.end111 ]
  %arrayidx115 = getelementptr [2 x %struct.list_head], ptr %rec.0, i32 0, i32 %type
  %call116 = tail call fastcc i32 @ocfs2_recovery_load_quota(ptr noundef %1, ptr noundef %add.ptr, ptr noundef %arrayidx115)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.end114.if.end148_crit_edge

if.end114.if.end148_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.then119:                                       ; preds = %if.end114
  %45 = zext i32 %call116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call116, label %do.body136 [
    i32 -512, label %if.then119.if.then217_crit_edge
    i32 -4, label %if.then119.if.then217_crit_edge407
    i32 -28, label %if.then119.if.then217_crit_edge408
    i32 -122, label %if.then119.if.then217_crit_edge409
  ]

if.then119.if.then217_crit_edge409:               ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then119.if.then217_crit_edge408:               ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then119.if.then217_crit_edge407:               ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then119.if.then217_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

do.body136:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m137) #12
  %46 = ptrtoint ptr %_m137 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1152921504606846976, ptr %_m137, align 8
  %conv141 = sext i32 %call116 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m137, ptr noundef nonnull @__func__.ocfs2_local_read_info, i32 noundef 753, ptr noundef nonnull @.str.3, i64 noundef %conv141) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m137) #12
  br label %if.then217

if.end148:                                        ; preds = %if.end114.if.end148_crit_edge, %if.end70.if.end148_crit_edge
  %47 = ptrtoint ptr %dqi_chunk to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %dqi_chunk, ptr %dqi_chunk, align 4
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dqi_chunk, ptr %prev.i, align 8
  %49 = ptrtoint ptr %dqi_chunks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dqi_chunks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp72.not.i = icmp eq i32 %50, 0
  br i1 %cmp72.not.i, label %if.end148.if.end181_crit_edge, label %for.body.lr.ph.i

if.end148.if.end181_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

for.body.lr.ph.i:                                 ; preds = %if.end148
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ocfs2_qf_chunk_cachep to i32))
  %51 = load ptr, ptr @ocfs2_qf_chunk_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %51, i32 noundef 3136) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %52 = ptrtoint ptr %dqi_chunk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dqi_chunk, align 4
  %cmp.not19.i.i = icmp eq ptr %53, %dqi_chunk
  br i1 %cmp.not19.i.i, label %if.then.i.do.body170_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.do.body170_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body170

for.body.i.i:                                     ; preds = %brelse.exit.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %pos.020.i.i = phi ptr [ %next.0.i.i, %brelse.exit.i.i.for.body.i.i_crit_edge ], [ %53, %if.then.i.for.body.i.i_crit_edge ]
  %54 = ptrtoint ptr %pos.020.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %next.0.i.i = load ptr, ptr %pos.020.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.020.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.020.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i.i, align 4
  %57 = ptrtoint ptr %pos.020.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pos.020.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %61 = ptrtoint ptr %pos.020.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.020.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.020.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %qc_headerbh.i.i = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %pos.020.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %qc_headerbh.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %qc_headerbh.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.i, label %list_del.exit.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

list_del.exit.i.i.brelse.exit.i.i_crit_edge:      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %64) #12
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %list_del.exit.i.i.brelse.exit.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ocfs2_qf_chunk_cachep to i32))
  %65 = load ptr, ptr @ocfs2_qf_chunk_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %65, ptr noundef %pos.020.i.i) #12
  %cmp.not.i.i = icmp eq ptr %next.0.i.i, %dqi_chunk
  br i1 %cmp.not.i.i, label %brelse.exit.i.i.do.body170_crit_edge, label %brelse.exit.i.i.for.body.i.i_crit_edge

brelse.exit.i.i.for.body.i.i_crit_edge:           ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

brelse.exit.i.i.do.body170_crit_edge:             ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body170

if.end.i:                                         ; preds = %for.body.i
  %qc_num.i = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %call.i, i32 0, i32 1
  %66 = ptrtoint ptr %qc_num.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %i.073.i, ptr %qc_num.i, align 8
  %qc_headerbh.i = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %call.i, i32 0, i32 2
  %67 = ptrtoint ptr %qc_headerbh.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %qc_headerbh.i, align 4
  %68 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_blocksize.i.i.i, align 16
  %sub1.i.i.i = shl i32 %71, 3
  %shl.i.i.i = add i32 %sub1.i.i.i, -96
  %sub.i.i.i.i = add i32 %71, -8
  %div.i.i.i.i = udiv i32 %sub.i.i.i.i, 24
  %div.i.i.i = udiv i32 %shl.i.i.i, %div.i.i.i.i
  %add.i.i = add i32 %div.i.i.i, 1
  %mul.i.i = mul i32 %add.i.i, %i.073.i
  %add1.i.i = add i32 %mul.i.i, 1
  %conv.i = zext i32 %add1.i.i to i64
  %call3.i = tail call fastcc i32 @ocfs2_read_quota_block(ptr noundef %1, i64 noundef %conv.i, ptr noundef %qc_headerbh.i) #12
  %72 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call3.i, label %do.body.i [
    i32 0, label %if.end25.i
    i32 -512, label %if.end.i.if.end24.i_crit_edge
    i32 -4, label %if.end.i.if.end24.i_crit_edge410
    i32 524289, label %if.end.i.if.end24.i_crit_edge411
    i32 -28, label %if.end.i.if.end24.i_crit_edge412
    i32 -122, label %if.end.i.if.end24.i_crit_edge413
  ]

if.end.i.if.end24.i_crit_edge413:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end.i.if.end24.i_crit_edge412:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end.i.if.end24.i_crit_edge411:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end.i.if.end24.i_crit_edge410:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #12
  %73 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv22.i = sext i32 %call3.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_load_local_quota_bitmaps, i32 noundef 269, ptr noundef nonnull @.str.3, i64 noundef %conv22.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #12
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.body.i, %if.end.i.if.end24.i_crit_edge, %if.end.i.if.end24.i_crit_edge410, %if.end.i.if.end24.i_crit_edge411, %if.end.i.if.end24.i_crit_edge412, %if.end.i.if.end24.i_crit_edge413
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ocfs2_qf_chunk_cachep to i32))
  %74 = load ptr, ptr @ocfs2_qf_chunk_cachep, align 4
  call void @kmem_cache_free(ptr noundef %74, ptr noundef nonnull %call.i) #12
  %75 = ptrtoint ptr %dqi_chunk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dqi_chunk, align 4
  %cmp.not19.i48.i = icmp eq ptr %76, %dqi_chunk
  br i1 %cmp.not19.i48.i, label %if.end24.i.ocfs2_load_local_quota_bitmaps.exit_crit_edge, label %if.end24.i.for.body.i52.i_crit_edge

if.end24.i.for.body.i52.i_crit_edge:              ; preds = %if.end24.i
  br label %for.body.i52.i

if.end24.i.ocfs2_load_local_quota_bitmaps.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_load_local_quota_bitmaps.exit

for.body.i52.i:                                   ; preds = %brelse.exit.i62.i.for.body.i52.i_crit_edge, %if.end24.i.for.body.i52.i_crit_edge
  %pos.020.i49.i = phi ptr [ %next.0.i50.i, %brelse.exit.i62.i.for.body.i52.i_crit_edge ], [ %76, %if.end24.i.for.body.i52.i_crit_edge ]
  %77 = ptrtoint ptr %pos.020.i49.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %next.0.i50.i = load ptr, ptr %pos.020.i49.i, align 4
  %call.i.i.i51.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.020.i49.i) #12
  br i1 %call.i.i.i51.i, label %if.end.i.i.i55.i, label %for.body.i52.i.list_del.exit.i59.i_crit_edge

for.body.i52.i.list_del.exit.i59.i_crit_edge:     ; preds = %for.body.i52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i59.i

if.end.i.i.i55.i:                                 ; preds = %for.body.i52.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i53.i = getelementptr inbounds %struct.list_head, ptr %pos.020.i49.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i.i53.i, align 4
  %80 = ptrtoint ptr %pos.020.i49.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pos.020.i49.i, align 4
  %prev1.i.i.i.i54.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i.i54.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit.i59.i

list_del.exit.i59.i:                              ; preds = %if.end.i.i.i55.i, %for.body.i52.i.list_del.exit.i59.i_crit_edge
  %84 = ptrtoint ptr %pos.020.i49.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.020.i49.i, align 4
  %prev.i.i56.i = getelementptr inbounds %struct.list_head, ptr %pos.020.i49.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i56.i, align 4
  %qc_headerbh.i57.i = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %pos.020.i49.i, i32 0, i32 2
  %86 = ptrtoint ptr %qc_headerbh.i57.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %qc_headerbh.i57.i, align 4
  %tobool.not.i.i58.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i58.i, label %list_del.exit.i59.i.brelse.exit.i62.i_crit_edge, label %if.then.i.i60.i

list_del.exit.i59.i.brelse.exit.i62.i_crit_edge:  ; preds = %list_del.exit.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i62.i

if.then.i.i60.i:                                  ; preds = %list_del.exit.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %87) #12
  br label %brelse.exit.i62.i

brelse.exit.i62.i:                                ; preds = %if.then.i.i60.i, %list_del.exit.i59.i.brelse.exit.i62.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ocfs2_qf_chunk_cachep to i32))
  %88 = load ptr, ptr @ocfs2_qf_chunk_cachep, align 4
  call void @kmem_cache_free(ptr noundef %88, ptr noundef %pos.020.i49.i) #12
  %cmp.not.i61.i = icmp eq ptr %next.0.i50.i, %dqi_chunk
  br i1 %cmp.not.i61.i, label %brelse.exit.i62.i.ocfs2_load_local_quota_bitmaps.exit_crit_edge, label %brelse.exit.i62.i.for.body.i52.i_crit_edge

brelse.exit.i62.i.for.body.i52.i_crit_edge:       ; preds = %brelse.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i52.i

brelse.exit.i62.i.ocfs2_load_local_quota_bitmaps.exit_crit_edge: ; preds = %brelse.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_load_local_quota_bitmaps.exit

if.end25.i:                                       ; preds = %if.end.i
  %89 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %90, ptr noundef %dqi_chunk) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end25.i.list_add_tail.exit.i_crit_edge

if.end25.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call.i, ptr %prev.i, align 8
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %dqi_chunk, ptr %call.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev3.i.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %call.i, ptr %90, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end25.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw i32 %i.073.i, 1
  %95 = ptrtoint ptr %dqi_chunks to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dqi_chunks, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #12
  %cmp.i = icmp ult i32 %inc.i, %97
  br i1 %cmp.i, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.if.end181_crit_edge

list_add_tail.exit.i.if.end181_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

ocfs2_load_local_quota_bitmaps.exit:              ; preds = %brelse.exit.i62.i.ocfs2_load_local_quota_bitmaps.exit_crit_edge, %if.end24.i.ocfs2_load_local_quota_bitmaps.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp151 = icmp slt i32 %call3.i, 0
  br i1 %cmp151, label %if.then153, label %ocfs2_load_local_quota_bitmaps.exit.if.end181_crit_edge

ocfs2_load_local_quota_bitmaps.exit.if.end181_crit_edge: ; preds = %ocfs2_load_local_quota_bitmaps.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

if.then153:                                       ; preds = %ocfs2_load_local_quota_bitmaps.exit
  %98 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call3.i, label %if.then153.do.body170_crit_edge [
    i32 -512, label %if.then153.if.then217_crit_edge
    i32 -4, label %if.then153.if.then217_crit_edge414
    i32 -28, label %if.then153.if.then217_crit_edge415
    i32 -122, label %if.then153.if.then217_crit_edge416
  ]

if.then153.if.then217_crit_edge416:               ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then153.if.then217_crit_edge415:               ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then153.if.then217_crit_edge414:               ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then153.if.then217_crit_edge:                  ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then153.do.body170_crit_edge:                  ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body170

do.body170:                                       ; preds = %if.then153.do.body170_crit_edge, %brelse.exit.i.i.do.body170_crit_edge, %if.then.i.do.body170_crit_edge
  %retval.0.i347353 = phi i32 [ %call3.i, %if.then153.do.body170_crit_edge ], [ -12, %if.then.i.do.body170_crit_edge ], [ -12, %brelse.exit.i.i.do.body170_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m171) #12
  %99 = ptrtoint ptr %_m171 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 1152921504606846976, ptr %_m171, align 8
  %conv175 = sext i32 %retval.0.i347353 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m171, ptr noundef nonnull @__func__.ocfs2_local_read_info, i32 noundef 762, ptr noundef nonnull @.str.3, i64 noundef %conv175) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m171) #12
  br label %if.then217

if.end181:                                        ; preds = %ocfs2_load_local_quota_bitmaps.exit.if.end181_crit_edge, %list_add_tail.exit.i.if.end181_crit_edge, %if.end148.if.end181_crit_edge
  %100 = ptrtoint ptr %dqi_flags71 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dqi_flags71, align 4
  %and183 = and i32 %101, -2
  store i32 %and183, ptr %dqi_flags71, align 4
  %call184 = call fastcc i32 @ocfs2_modify_bh(ptr noundef %1, ptr noundef %21, ptr noundef nonnull @olq_update_info, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp185 = icmp slt i32 %call184, 0
  br i1 %cmp185, label %if.then187, label %if.end181.cleanup_crit_edge

if.end181.cleanup_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then187:                                       ; preds = %if.end181
  %102 = zext i32 %call184 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call184, label %do.body204 [
    i32 -512, label %if.then187.if.then217_crit_edge
    i32 -4, label %if.then187.if.then217_crit_edge417
    i32 -28, label %if.then187.if.then217_crit_edge418
    i32 -122, label %if.then187.if.then217_crit_edge419
  ]

if.then187.if.then217_crit_edge419:               ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then187.if.then217_crit_edge418:               ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then187.if.then217_crit_edge417:               ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

if.then187.if.then217_crit_edge:                  ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then217

do.body204:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m205) #12
  %103 = ptrtoint ptr %_m205 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 1152921504606846976, ptr %_m205, align 8
  %conv209 = sext i32 %call184 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m205, ptr noundef nonnull @__func__.ocfs2_local_read_info, i32 noundef 770, ptr noundef nonnull @.str.3, i64 noundef %conv209) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m205) #12
  br label %if.then217

if.then217:                                       ; preds = %do.body204, %if.then187.if.then217_crit_edge, %if.then187.if.then217_crit_edge417, %if.then187.if.then217_crit_edge418, %if.then187.if.then217_crit_edge419, %do.body170, %if.then153.if.then217_crit_edge, %if.then153.if.then217_crit_edge414, %if.then153.if.then217_crit_edge415, %if.then153.if.then217_crit_edge416, %do.body136, %if.then119.if.then217_crit_edge, %if.then119.if.then217_crit_edge407, %if.then119.if.then217_crit_edge408, %if.then119.if.then217_crit_edge409, %do.body100, %if.end60, %do.body22, %if.then12.if.then217_crit_edge, %if.then12.if.then217_crit_edge400, %if.then12.if.then217_crit_edge401, %if.then12.if.then217_crit_edge402, %if.end5.if.then217_crit_edge
  %tobool223.not355 = phi i1 [ false, %do.body136 ], [ false, %if.then119.if.then217_crit_edge ], [ false, %if.then119.if.then217_crit_edge407 ], [ false, %if.then119.if.then217_crit_edge408 ], [ false, %if.then119.if.then217_crit_edge409 ], [ true, %do.body22 ], [ true, %if.then12.if.then217_crit_edge ], [ true, %if.then12.if.then217_crit_edge400 ], [ true, %if.then12.if.then217_crit_edge401 ], [ true, %if.then12.if.then217_crit_edge402 ], [ false, %if.end60 ], [ false, %do.body100 ], [ true, %if.end5.if.then217_crit_edge ], [ false, %do.body204 ], [ false, %if.then187.if.then217_crit_edge ], [ false, %if.then187.if.then217_crit_edge417 ], [ false, %if.then187.if.then217_crit_edge418 ], [ false, %if.then187.if.then217_crit_edge419 ], [ false, %do.body170 ], [ false, %if.then153.if.then217_crit_edge ], [ false, %if.then153.if.then217_crit_edge414 ], [ false, %if.then153.if.then217_crit_edge415 ], [ false, %if.then153.if.then217_crit_edge416 ]
  %104 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dqi_gqinode, align 4
  call void @iput(ptr noundef %105) #12
  %s_fs_info219 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %106 = ptrtoint ptr %s_fs_info219 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_fs_info219, align 16
  call void @ocfs2_simple_drop_lockres(ptr noundef %107, ptr noundef %dqi_gqlock) #12
  call void @ocfs2_lock_res_free(ptr noundef %dqi_gqlock) #12
  %108 = ptrtoint ptr %dqi_lqi_bh to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dqi_lqi_bh, align 8
  %tobool.not.i332 = icmp eq ptr %109, null
  br i1 %tobool.not.i332, label %if.then217.brelse.exit_crit_edge, label %if.then.i333

if.then217.brelse.exit_crit_edge:                 ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i333:                                     ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %109) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i333, %if.then217.brelse.exit_crit_edge
  br i1 %tobool223.not355, label %brelse.exit.if.end225_crit_edge, label %if.then224

brelse.exit.if.end225_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end225

if.then224:                                       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @ocfs2_inode_unlock(ptr noundef %1, i32 noundef 1) #12
  br label %if.end225

if.end225:                                        ; preds = %if.then224, %brelse.exit.if.end225_crit_edge
  %110 = ptrtoint ptr %dqi_chunk to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dqi_chunk, align 4
  %cmp.not19.i = icmp eq ptr %111, %dqi_chunk
  br i1 %cmp.not19.i, label %if.end225.ocfs2_release_local_quota_bitmaps.exit_crit_edge, label %if.end225.for.body.i336_crit_edge

if.end225.for.body.i336_crit_edge:                ; preds = %if.end225
  br label %for.body.i336

if.end225.ocfs2_release_local_quota_bitmaps.exit_crit_edge: ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_release_local_quota_bitmaps.exit

for.body.i336:                                    ; preds = %brelse.exit.i.for.body.i336_crit_edge, %if.end225.for.body.i336_crit_edge
  %pos.020.i = phi ptr [ %next.0.i, %brelse.exit.i.for.body.i336_crit_edge ], [ %111, %if.end225.for.body.i336_crit_edge ]
  %112 = ptrtoint ptr %pos.020.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %next.0.i = load ptr, ptr %pos.020.i, align 4
  %call.i.i.i335 = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.020.i) #12
  br i1 %call.i.i.i335, label %if.end.i.i.i338, label %for.body.i336.list_del.exit.i_crit_edge

for.body.i336.list_del.exit.i_crit_edge:          ; preds = %for.body.i336
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i338:                                  ; preds = %for.body.i336
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i337 = getelementptr inbounds %struct.list_head, ptr %pos.020.i, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i.i.i337 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %prev.i.i.i337, align 4
  %115 = ptrtoint ptr %pos.020.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pos.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %prev1.i.i.i.i, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %116, ptr %114, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i338, %for.body.i336.list_del.exit.i_crit_edge
  %119 = ptrtoint ptr %pos.020.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.020.i, align 4
  %prev.i.i339 = getelementptr inbounds %struct.list_head, ptr %pos.020.i, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i339 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i339, align 4
  %qc_headerbh.i340 = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %pos.020.i, i32 0, i32 2
  %121 = ptrtoint ptr %qc_headerbh.i340 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %qc_headerbh.i340, align 4
  %tobool.not.i.i = icmp eq ptr %122, null
  br i1 %tobool.not.i.i, label %list_del.exit.i.brelse.exit.i_crit_edge, label %if.then.i.i

list_del.exit.i.brelse.exit.i_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %122) #12
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %list_del.exit.i.brelse.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ocfs2_qf_chunk_cachep to i32))
  %123 = load ptr, ptr @ocfs2_qf_chunk_cachep, align 4
  call void @kmem_cache_free(ptr noundef %123, ptr noundef %pos.020.i) #12
  %cmp.not.i = icmp eq ptr %next.0.i, %dqi_chunk
  br i1 %cmp.not.i, label %brelse.exit.i.ocfs2_release_local_quota_bitmaps.exit_crit_edge, label %brelse.exit.i.for.body.i336_crit_edge

brelse.exit.i.for.body.i336_crit_edge:            ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i336

brelse.exit.i.ocfs2_release_local_quota_bitmaps.exit_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_release_local_quota_bitmaps.exit

ocfs2_release_local_quota_bitmaps.exit:           ; preds = %brelse.exit.i.ocfs2_release_local_quota_bitmaps.exit_crit_edge, %if.end225.ocfs2_release_local_quota_bitmaps.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %if.end227

if.end227:                                        ; preds = %ocfs2_release_local_quota_bitmaps.exit, %out_err.thread356
  %124 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bh, align 4
  %tobool.not.i341 = icmp eq ptr %125, null
  br i1 %tobool.not.i341, label %if.end227.cleanup_crit_edge, label %if.then.i342

if.end227.cleanup_crit_edge:                      ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i342:                                     ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %125) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i342, %if.end227.cleanup_crit_edge, %if.end181.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end181.cleanup_crit_edge ], [ -1, %if.end227.cleanup_crit_edge ], [ -1, %if.then.i342 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_global_write_info(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_local_free_info(ptr noundef %sb, i32 noundef %type) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m42 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 31, i32 3
  %add.ptr.i = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type
  %dqi_priv = getelementptr %struct.mem_dqinfo, ptr %info.i, i32 %type, i32 8
  %0 = ptrtoint ptr %dqi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dqi_priv, align 8
  %dqi_gqinode = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dqi_gqinode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dqi_gqinode, align 4
  tail call void @iput(ptr noundef %3) #12
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %dqi_gqlock = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 7
  tail call void @ocfs2_simple_drop_lockres(ptr noundef %5, ptr noundef %dqi_gqlock) #12
  tail call void @ocfs2_lock_res_free(ptr noundef %dqi_gqlock) #12
  %dqi_chunk = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dqi_chunk to i32
  call void @__asan_load4_noabort(i32 %6)
  %chunk.0104 = load ptr, ptr %dqi_chunk, align 4
  %cmp.not105 = icmp eq ptr %chunk.0104, %dqi_chunk
  br i1 %cmp.not105, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dqi_chunks = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 2
  %dqi_blocks = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 3
  %s_blocksize.i.i92 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %chunk.0107 = phi ptr [ %chunk.0104, %for.body.lr.ph ], [ %chunk.0, %for.inc.for.body_crit_edge ]
  %mark_clean.0106 = phi i32 [ 1, %for.body.lr.ph ], [ %mark_clean.1, %for.inc.for.body_crit_edge ]
  %qc_headerbh = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %chunk.0107, i32 0, i32 2
  %7 = ptrtoint ptr %qc_headerbh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qc_headerbh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %qc_num = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %chunk.0107, i32 0, i32 1
  %11 = ptrtoint ptr %qc_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qc_num, align 4
  %13 = ptrtoint ptr %dqi_chunks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dqi_chunks, align 8
  %sub = add i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub)
  %cmp3 = icmp ult i32 %12, %sub
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %s_blocksize.i.i92 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocksize.i.i92, align 16
  %sub1.i.i = shl i32 %16, 3
  %shl.i.i = add i32 %sub1.i.i, -96
  %sub.i.i.i = add i32 %16, -8
  %div.i.i.i = udiv i32 %sub.i.i.i, 24
  %17 = urem i32 %shl.i.i, %div.i.i.i
  %mul.i = sub i32 %shl.i.i, %17
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %dqi_blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dqi_blocks, align 4
  %20 = ptrtoint ptr %s_blocksize.i.i92 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize.i.i92, align 16
  %sub1.i.i93 = shl i32 %21, 3
  %shl.i.i94 = add i32 %sub1.i.i93, -96
  %sub.i.i.i95 = add i32 %21, -8
  %div.i.i.i96 = udiv i32 %sub.i.i.i95, 24
  %div.i.i = udiv i32 %shl.i.i94, %div.i.i.i96
  %add.i.neg = xor i32 %div.i.i, -1
  %mul.i97.neg = mul i32 %12, %add.i.neg
  %22 = add i32 %19, -2
  %sub8 = add i32 %22, %mul.i97.neg
  %mul = mul i32 %sub8, %div.i.i.i96
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.0 = phi i32 [ %mul.i, %if.then ], [ %mul, %if.else ]
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %10, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %len.0)
  %cmp10.not = icmp eq i32 %25, %len.0
  br i1 %cmp10.not, label %if.end.for.inc_crit_edge, label %do.body

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %26 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_local_free_info, i32 noundef 834, ptr noundef nonnull @.str.26, i32 noundef %type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %for.inc

for.inc:                                          ; preds = %do.body, %if.end.for.inc_crit_edge
  %mark_clean.1 = phi i32 [ 0, %do.body ], [ %mark_clean.0106, %if.end.for.inc_crit_edge ]
  %27 = ptrtoint ptr %chunk.0107 to i32
  call void @__asan_load4_noabort(i32 %27)
  %chunk.0 = load ptr, ptr %chunk.0107, align 4
  %cmp.not = icmp eq ptr %chunk.0, %dqi_chunk
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %mark_clean.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %mark_clean.1, %for.inc.for.end_crit_edge ]
  %28 = ptrtoint ptr %dqi_chunk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dqi_chunk, align 4
  %cmp.not19.i = icmp eq ptr %29, %dqi_chunk
  br i1 %cmp.not19.i, label %for.end.ocfs2_release_local_quota_bitmaps.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.ocfs2_release_local_quota_bitmaps.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_release_local_quota_bitmaps.exit

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %pos.020.i = phi ptr [ %next.0.i, %brelse.exit.i.for.body.i_crit_edge ], [ %29, %for.end.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %pos.020.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %next.0.i = load ptr, ptr %pos.020.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.020.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.020.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %pos.020.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pos.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %37 = ptrtoint ptr %pos.020.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.020.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %qc_headerbh.i = getelementptr inbounds %struct.ocfs2_quota_chunk, ptr %pos.020.i, i32 0, i32 2
  %39 = ptrtoint ptr %qc_headerbh.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %qc_headerbh.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %list_del.exit.i.brelse.exit.i_crit_edge, label %if.then.i.i

list_del.exit.i.brelse.exit.i_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %40) #12
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %list_del.exit.i.brelse.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ocfs2_qf_chunk_cachep to i32))
  %41 = load ptr, ptr @ocfs2_qf_chunk_cachep, align 4
  call void @kmem_cache_free(ptr noundef %41, ptr noundef %pos.020.i) #12
  %cmp.not.i = icmp eq ptr %next.0.i, %dqi_chunk
  br i1 %cmp.not.i, label %brelse.exit.i.ocfs2_release_local_quota_bitmaps.exit_crit_edge, label %brelse.exit.i.for.body.i_crit_edge

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

brelse.exit.i.ocfs2_release_local_quota_bitmaps.exit_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_release_local_quota_bitmaps.exit

ocfs2_release_local_quota_bitmaps.exit:           ; preds = %brelse.exit.i.ocfs2_release_local_quota_bitmaps.exit_crit_edge, %for.end.ocfs2_release_local_quota_bitmaps.exit_crit_edge
  %dqi_rec = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 15
  %42 = ptrtoint ptr %dqi_rec to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dqi_rec, align 4
  %tobool21.not = icmp eq ptr %43, null
  br i1 %tobool21.not, label %if.end24, label %if.end24.thread

if.end24.thread:                                  ; preds = %ocfs2_release_local_quota_bitmaps.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @ocfs2_free_quota_recovery(ptr noundef nonnull %43)
  br label %out

if.end24:                                         ; preds = %ocfs2_release_local_quota_bitmaps.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mark_clean.0.lcssa)
  %tobool25.not = icmp eq i32 %mark_clean.0.lcssa, 0
  br i1 %tobool25.not, label %if.end24.out_crit_edge, label %if.end27

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end27:                                         ; preds = %if.end24
  %dqi_flags = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %dqi_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dqi_flags, align 4
  %or = or i32 %45, 1
  store i32 %or, ptr %dqi_flags, align 4
  %arrayidx = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %dqi_libh = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 12
  %48 = ptrtoint ptr %dqi_libh to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dqi_libh, align 4
  %call29 = call fastcc i32 @ocfs2_modify_bh(ptr noundef %47, ptr noundef %49, ptr noundef nonnull @olq_update_info, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then31:                                        ; preds = %if.end27
  %50 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call29, label %do.body41 [
    i32 -512, label %if.then31.out_crit_edge
    i32 -4, label %if.then31.out_crit_edge108
    i32 -28, label %if.then31.out_crit_edge109
    i32 -122, label %if.then31.out_crit_edge110
  ]

if.then31.out_crit_edge110:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then31.out_crit_edge109:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then31.out_crit_edge108:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then31.out_crit_edge:                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body41:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m42) #12
  %51 = ptrtoint ptr %_m42 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 1152921504606846976, ptr %_m42, align 8
  %conv = sext i32 %call29 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m42, ptr noundef nonnull @__func__.ocfs2_local_free_info, i32 noundef 859, ptr noundef nonnull @.str.3, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m42) #12
  br label %out

out:                                              ; preds = %do.body41, %if.then31.out_crit_edge, %if.then31.out_crit_edge108, %if.then31.out_crit_edge109, %if.then31.out_crit_edge110, %if.end27.out_crit_edge, %if.end24.out_crit_edge, %if.end24.thread
  %arrayidx54 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 31, i32 2, i32 %type
  %52 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx54, align 4
  call void @ocfs2_inode_unlock(ptr noundef %53, i32 noundef 1) #12
  %dqi_libh55 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 12
  %54 = ptrtoint ptr %dqi_libh55 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dqi_libh55, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %out.brelse.exit_crit_edge, label %if.then.i

out.brelse.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %55) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %out.brelse.exit_crit_edge
  %dqi_lqi_bh = getelementptr inbounds %struct.ocfs2_mem_dqinfo, ptr %1, i32 0, i32 11
  %56 = ptrtoint ptr %dqi_lqi_bh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dqi_lqi_bh, align 8
  %tobool.not.i99 = icmp eq ptr %57, null
  br i1 %tobool.not.i99, label %brelse.exit.brelse.exit101_crit_edge, label %if.then.i100

brelse.exit.brelse.exit101_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit101

if.then.i100:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %57) #12
  br label %brelse.exit101

brelse.exit101:                                   ; preds = %if.then.i100, %brelse.exit.brelse.exit101_crit_edge
  call void @kfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_qinfo_lock_res_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_global_read_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_simple_drop_lockres(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_lock_res_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !49, !51, !53, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !90, !92}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/quota_local.c", i32 401, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ocfs2_begin_quota_recovery._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ocfs2_begin_quota_recovery._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/quota_local.c", i32 422, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ocfs2/quota_local.c", i32 430, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/quota_local.c", i32 597, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ocfs2_finish_quota_recovery._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ocfs2_finish_quota_recovery._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/quota_local.c", i32 615, i32 4}
!17 = !{ptr @ocfs2_finish_quota_recovery._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ocfs2_finish_quota_recovery._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__func__.ocfs2_local_write_dquot, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/quota_local.c", i32 906, i32 3}
!21 = !{ptr @__func__.ocfs2_create_local_dquot, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/quota_local.c", i32 1252, i32 3}
!23 = !{ptr @__func__.ocfs2_local_release_dquot, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/quota_local.c", i32 1285, i32 3}
!25 = !{ptr @ocfs2_quota_format, !26, !"ocfs2_quota_format", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/quota_local.c", i32 1310, i32 26}
!27 = !{ptr @__PRETTY_FUNCTION__.ocfs2_read_quota_block, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/quota_local.c", i32 141, i32 10}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__func__.ocfs2_read_quota_block, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ocfs2/quota_local.c", i32 150, i32 3}
!32 = !{ptr @__func__.ocfs2_recovery_load_quota, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ocfs2/quota_local.c", i32 355, i32 4}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1974, i32 1}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!38 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__func__.ocfs2_recover_local_quota_file, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/quota_local.c", i32 483, i32 4}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/quota_local.c", i32 503, i32 5}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1972, i32 1}
!48 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!51 = !{ptr @__func__.ocfs2_modify_bh, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/quota_local.c", i32 105, i32 3}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1976, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = !{ptr @__func__.ocfs2_find_free_entry, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ocfs2/quota_local.c", i32 952, i32 3}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__func__.ocfs2_extend_local_quota_file, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/quota_local.c", i32 1125, i32 3}
!61 = !{ptr @__func__.ocfs2_local_quota_add_chunk, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ocfs2/quota_local.c", i32 982, i32 3}
!63 = !{ptr @__func__.ocfs2_local_write_info, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/quota_local.c", i32 801, i32 3}
!65 = !{ptr @ocfs2_format_ops, !66, !"ocfs2_format_ops", i1 false, i1 false}
!66 = !{!"../fs/ocfs2/quota_local.c", i32 1303, i32 38}
!67 = !{ptr @__func__.ocfs2_local_check_quota_file, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ocfs2/quota_local.c", i32 177, i32 3}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ocfs2/quota_local.c", i32 178, i32 3}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ocfs2/quota_local.c", i32 184, i32 3}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ocfs2/quota_local.c", i32 190, i32 3}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ocfs2/quota_local.c", i32 202, i32 3}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ocfs2/quota_local.c", i32 210, i32 3}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ocfs2/quota_local.c", i32 216, i32 3}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ocfs2/quota_local.c", i32 222, i32 3}
!83 = !{ptr @__func__.ocfs2_local_read_info, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ocfs2/quota_local.c", i32 698, i32 3}
!85 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ocfs2/quota_local.c", i32 726, i32 3}
!88 = !{ptr @__func__.ocfs2_load_local_quota_bitmaps, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ocfs2/quota_local.c", i32 269, i32 4}
!90 = !{ptr @__func__.ocfs2_local_free_info, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ocfs2/quota_local.c", i32 833, i32 4}
!92 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"make_kqid: %agg.result"}
!105 = distinct !{!105, !"make_kqid"}
!106 = !{i64 2152508344, i64 2152508830, i64 2152508381, i64 2152508437, i64 2152508471, i64 2152508495, i64 2152508536, i64 2152508557, i64 2152508585, i64 2152508619}
!107 = !{i64 2148695577, i64 2148695609, i64 2148695638, i64 2148695672, i64 2148695703, i64 2148695726}
!108 = !{i64 2148784682}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{i64 2148511317, i64 2148511322, i64 2148511335, i64 2148511379, i64 2148511413, i64 2148511434}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 2159025637}
!113 = !{i64 2159025860}
!114 = !{i64 2149507724}
!115 = !{i64 2149508760}
!116 = !{!"auto-init"}
!117 = !{ptr @olq_alloc_dquot, ptr @olq_set_dquot, ptr @olq_update_info}
!118 = !{i64 1091399, i64 1091460}
!119 = !{i64 1094131}
!120 = !{i64 1094416}
!121 = !{i64 2152529550}
!122 = !{i64 2152529392}
!123 = !{i64 2152529720}
!124 = !{i64 2150115534}
!125 = !{i64 2159008365}
!126 = !{i64 2159008608}
!127 = !{i64 2159043189}
!128 = !{i64 2159043410}
