; ModuleID = '/llk/IR_all_yes/fs/gfs2/recovery.c_pt.bc'
source_filename = "../fs/gfs2/recovery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.gfs2_jdesc = type { %struct.list_head, %struct.list_head, i32, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gfs2_revoke_replay = type { %struct.list_head, i64, i32 }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.83 }
%union.anon.83 = type { i32 }
%struct.gfs2_log_header = type { %struct.gfs2_meta_header, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.gfs2_sbd = type { ptr, ptr, %struct.kobject, %struct.completion, i32, %struct.gfs2_sb_host, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i64], i32, %struct.gfs2_args, %struct.gfs2_tune, %struct.lm_lockstruct, %struct.gfs2_holder, ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.completion, %struct.completion, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, %struct.spinlock, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32, %struct.spinlock, %struct.rb_root, i32, i32, %struct.list_head, %struct.spinlock, %struct.mutex, i32, ptr, %struct.gfs2_holder, %struct.gfs2_holder, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.completion, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, ptr, %struct.spinlock, i64, %struct.address_space, %struct.spinlock, ptr, i32, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, i64, i32, %struct.rw_semaphore, %struct.atomic_t, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.gfs2_holder, %struct.atomic_t, %struct.mutex, [270 x i8], [256 x i8], [256 x i8], i32, ptr, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gfs2_sb_host = type { i32, i32, i32, i32, i32, i32, %struct.gfs2_inum_host, %struct.gfs2_inum_host, [64 x i8], [64 x i8] }
%struct.gfs2_inum_host = type { i64, i64 }
%struct.gfs2_args = type { [64 x i8], [64 x i8], [64 x i8], i24, i32, i32, i32, i32 }
%struct.gfs2_tune = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lm_lockstruct = type { i32, i32, ptr, ptr, i32, i32, %struct.dlm_lksb, %struct.dlm_lksb, [32 x i8], %struct.completion, ptr, %struct.spinlock, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gfs2_log_header_host = type { i64, i32, i32, i32, i64, i64, i64 }
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.gfs2_log_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.gfs2_log_descriptor = type { %struct.gfs2_meta_header, i32, i32, i32, i32, [32 x i8] }
%struct.lm_lockops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__func__.gfs2_replay_read_block = private unnamed_addr constant [23 x i8] c"gfs2_replay_read_block\00", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/gfs2/recovery.c\00", [45 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013gfs2: fsid=%s: jid=%u: Recovery not attempted due to withdraw.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gfs2_recover_func\00", [46 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr = internal global ptr @gfs2_recover_func._entry, section ".printk_index", align 4
@gfs2_recover_func._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016gfs2: fsid=%s: jid=%u: Trying to acquire journal lock...\0A\00", [36 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.5 = internal global ptr @gfs2_recover_func._entry.3, section ".printk_index", align 4
@gfs2_journal_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@gfs2_recover_func._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016gfs2: fsid=%s: jid=%u: Busy\0A\00", [33 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.8 = internal global ptr @gfs2_recover_func._entry.6, section ".printk_index", align 4
@gfs2_recover_func._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016gfs2: fsid=%s: jid=%u, already locked for use\0A\00", [47 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.11 = internal global ptr @gfs2_recover_func._entry.9, section ".printk_index", align 4
@gfs2_recover_func._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016gfs2: fsid=%s: jid=%u: Looking at journal...\0A\00", [48 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.14 = internal global ptr @gfs2_recover_func._entry.12, section ".printk_index", align 4
@gfs2_recover_func._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016gfs2: fsid=%s: jid=%u: Journal head lookup took %lldms\0A\00", [38 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.17 = internal global ptr @gfs2_recover_func._entry.15, section ".printk_index", align 4
@gfs2_recover_func._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016gfs2: fsid=%s: jid=%u: Acquiring the transaction lock...\0A\00", [36 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.20 = internal global ptr @gfs2_recover_func._entry.18, section ".printk_index", align 4
@gfs2_recover_func._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016gfs2: fsid=%s: recovery required on read-only filesystem.\0A\00", [35 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.23 = internal global ptr @gfs2_recover_func._entry.21, section ".printk_index", align 4
@gfs2_recover_func._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016gfs2: fsid=%s: write access will be enabled during recovery.\0A\00", [32 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.26 = internal global ptr @gfs2_recover_func._entry.24, section ".printk_index", align 4
@gfs2_recover_func._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014gfs2: fsid=%s: jid=%u: Can't replay: read-only block device\0A\00", [33 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.29 = internal global ptr @gfs2_recover_func._entry.27, section ".printk_index", align 4
@gfs2_recover_func._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016gfs2: fsid=%s: jid=%u: Replaying journal...0x%x to 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.32 = internal global ptr @gfs2_recover_func._entry.30, section ".printk_index", align 4
@gfs2_recover_func._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\016gfs2: fsid=%s: jid=%u: Journal replayed in %lldms [jlck:%lldms, jhead:%lldms, tlck:%lldms, replay:%lldms]\0A\00", [51 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.35 = internal global ptr @gfs2_recover_func._entry.33, section ".printk_index", align 4
@gfs2_recover_func._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016gfs2: fsid=%s: jid=%u: Done\0A\00", [33 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.38 = internal global ptr @gfs2_recover_func._entry.36, section ".printk_index", align 4
@gfs2_recover_func._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016gfs2: fsid=%s: jid=%u: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@gfs2_recover_func._entry_ptr.41 = internal global ptr @gfs2_recover_func._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Done\00", [27 x i8] zeroinitializer }, align 32
@gfs_recovery_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gfs2_log_ops = external dso_local local_unnamed_addr global [0 x ptr], align 4
@__func__.foreach_descriptor = private unnamed_addr constant [19 x i8] c"foreach_descriptor\00", align 1
@gfs2_meta_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.46, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gfs2: fsid=%s: Magic number missing at %llu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gfs2_meta_check\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/gfs2/util.h\00", [17 x i8] zeroinitializer }, align 32
@gfs2_meta_check._entry_ptr = internal global ptr @gfs2_meta_check._entry, section ".printk_index", align 4
@update_statfs_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\016gfs2: fsid=%s: jid=%u: Updated master statfs Total:%lld, Free:%lld, Dinodes:%lld after change [%+lld,%+lld,%+lld]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"update_statfs_inode\00", [44 x i8] zeroinitializer }, align 32
@update_statfs_inode._entry_ptr = internal global ptr @update_statfs_inode._entry, section ".printk_index", align 4
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"JID=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RECOVERY=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 13]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 46, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 417, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 425, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 439, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 452, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 456, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 466, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 470, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 489, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 491, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 498, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 505, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 529, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 545, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 557, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"gfs_recovery_wq\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 30, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"../fs/gfs2/util.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 104, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 335, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 291, i32 19 }
@___asan_gen_.177 = private constant [22 x i8] c"../fs/gfs2/recovery.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 292, i32 22 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 73, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @gfs2_meta_check._entry, ptr @gfs2_meta_check._entry_ptr, ptr @gfs2_recover_func._entry, ptr @gfs2_recover_func._entry.12, ptr @gfs2_recover_func._entry.15, ptr @gfs2_recover_func._entry.18, ptr @gfs2_recover_func._entry.21, ptr @gfs2_recover_func._entry.24, ptr @gfs2_recover_func._entry.27, ptr @gfs2_recover_func._entry.3, ptr @gfs2_recover_func._entry.30, ptr @gfs2_recover_func._entry.33, ptr @gfs2_recover_func._entry.36, ptr @gfs2_recover_func._entry.39, ptr @gfs2_recover_func._entry.6, ptr @gfs2_recover_func._entry.9, ptr @gfs2_recover_func._entry_ptr, ptr @gfs2_recover_func._entry_ptr.11, ptr @gfs2_recover_func._entry_ptr.14, ptr @gfs2_recover_func._entry_ptr.17, ptr @gfs2_recover_func._entry_ptr.20, ptr @gfs2_recover_func._entry_ptr.23, ptr @gfs2_recover_func._entry_ptr.26, ptr @gfs2_recover_func._entry_ptr.29, ptr @gfs2_recover_func._entry_ptr.32, ptr @gfs2_recover_func._entry_ptr.35, ptr @gfs2_recover_func._entry_ptr.38, ptr @gfs2_recover_func._entry_ptr.41, ptr @gfs2_recover_func._entry_ptr.5, ptr @gfs2_recover_func._entry_ptr.8, ptr @update_statfs_inode._entry, ptr @update_statfs_inode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @gfs_recovery_wq, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_recover_func._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs_recovery_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_meta_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_statfs_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_replay_read_block(ptr nocapture noundef readonly %jd, i32 noundef %blk, ptr nocapture noundef writeonly %bh) local_unnamed_addr #0 align 64 {
entry:
  %dblock = alloca i64, align 8
  %extlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gl, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dblock) #12
  %4 = ptrtoint ptr %dblock to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %dblock, align 8, !annotation !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extlen) #12
  %5 = ptrtoint ptr %extlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %extlen, align 4
  %conv = zext i32 %blk to i64
  %call1 = call i32 @gfs2_get_extent(ptr noundef %1, i64 noundef %conv, ptr noundef nonnull %dblock, ptr noundef nonnull %extlen) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %dblock to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool2.not = icmp eq i64 %7, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_consist_inode_i(ptr noundef %1, ptr noundef nonnull @__func__.gfs2_replay_read_block, ptr noundef nonnull @.str, i32 noundef 46) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %extlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extlen, align 4
  %call5 = call ptr @gfs2_meta_ra(ptr noundef %3, i64 noundef %7, i32 noundef %9) #12
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %bh, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -5, %if.then3 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dblock) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_get_extent(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_consist_inode_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_meta_ra(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_revoke_add(ptr noundef %jd, i64 noundef %blkno, i32 noundef %where) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_revoke_list = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %rr.0.in = phi ptr [ %jd_revoke_list, %entry ], [ %rr.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %rr.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rr.0 = load ptr, ptr %rr.0.in, align 4
  %cmp.not = icmp eq ptr %rr.0, %jd_revoke_list
  br i1 %cmp.not, label %if.end8, label %for.body

for.body:                                         ; preds = %for.cond
  %rr_blkno = getelementptr inbounds %struct.gfs2_revoke_replay, ptr %rr.0, i32 0, i32 1
  %1 = ptrtoint ptr %rr_blkno to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %rr_blkno, align 8
  %cmp1 = icmp eq i64 %2, %blkno
  br i1 %cmp1, label %if.then7.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then7.critedge:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %rr_where = getelementptr inbounds %struct.gfs2_revoke_replay, ptr %rr.0, i32 0, i32 2
  %3 = ptrtoint ptr %rr_where to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %where, ptr %rr_where, align 8
  br label %cleanup

if.end8:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3136, i32 noundef 24) #15
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %rr_blkno12 = getelementptr inbounds %struct.gfs2_revoke_replay, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %rr_blkno12 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %blkno, ptr %rr_blkno12, align 8
  %rr_where13 = getelementptr inbounds %struct.gfs2_revoke_replay, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %rr_where13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %where, ptr %rr_where13, align 8
  %7 = ptrtoint ptr %jd_revoke_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %jd_revoke_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %jd_revoke_list, ptr noundef %8) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %jd_revoke_list, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %jd_revoke_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i, ptr %jd_revoke_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then7.critedge
  %retval.0 = phi i32 [ 0, %if.then7.critedge ], [ -12, %if.end8.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ 1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_revoke_check(ptr noundef readonly %jd, i64 noundef %blkno, i32 noundef %where) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_revoke_list = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %rr.0.in = phi ptr [ %jd_revoke_list, %entry ], [ %rr.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %rr.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %rr.0 = load ptr, ptr %rr.0.in, align 4
  %cmp.not = icmp eq ptr %rr.0, %jd_revoke_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %rr_blkno = getelementptr inbounds %struct.gfs2_revoke_replay, ptr %rr.0, i32 0, i32 1
  %1 = ptrtoint ptr %rr_blkno to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %rr_blkno, align 8
  %cmp2 = icmp eq i64 %2, %blkno
  br i1 %cmp2, label %if.end9, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %rr_where = getelementptr inbounds %struct.gfs2_revoke_replay, ptr %rr.0, i32 0, i32 2
  %3 = ptrtoint ptr %rr_where to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rr_where, align 8
  %jd_replay_tail = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 14
  %5 = ptrtoint ptr %jd_replay_tail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jd_replay_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp10 = icmp ult i32 %4, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %where)
  %cmp12 = icmp ult i32 %6, %where
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %where)
  %cmp15 = icmp ugt i32 %4, %where
  %phi.cast37 = zext i1 %cmp15 to i32
  %spec.select = select i1 %cmp12, i32 1, i32 %phi.cast37
  %spec.select38 = select i1 %cmp12, i32 %phi.cast37, i32 0
  %cond = select i1 %cmp10, i32 %spec.select, i32 %spec.select38
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end9 ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_revoke_clean(ptr noundef %jd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_revoke_list = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 13
  %0 = ptrtoint ptr %jd_revoke_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %jd_revoke_list, align 4
  %cmp.i.not3 = icmp eq ptr %1, %jd_revoke_list
  br i1 %cmp.i.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %2) #12
  %11 = ptrtoint ptr %jd_revoke_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %jd_revoke_list, align 4
  %cmp.i.not = icmp eq ptr %12, %jd_revoke_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__get_log_header(ptr nocapture noundef readonly %sdp, ptr noundef %lh, i32 noundef %blkno, ptr nocapture noundef writeonly %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lh, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %1)
  %cmp.not = icmp eq i32 %1, 18225520
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mh_type = getelementptr inbounds %struct.gfs2_meta_header, ptr %lh, i32 0, i32 1
  %2 = ptrtoint ptr %mh_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mh_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp2.not = icmp eq i32 %3, 8
  br i1 %cmp2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blkno)
  %tobool.not = icmp eq i32 %blkno, 0
  br i1 %tobool.not, label %lor.lhs.false3.if.end_crit_edge, label %land.lhs.true

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %lh_blkno = getelementptr inbounds %struct.gfs2_log_header, ptr %lh, i32 0, i32 4
  %4 = ptrtoint ptr %lh_blkno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lh_blkno, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %blkno)
  %cmp4.not = icmp eq i32 %5, %blkno
  br i1 %cmp4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false3.if.end_crit_edge
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %lh, i32 noundef 44) #16
  %call5 = tail call i32 @crc32_le_shift(i32 noundef %call, i32 noundef 4) #17
  %neg = xor i32 %call5, -1
  %lh_hash = getelementptr inbounds %struct.gfs2_log_header, ptr %lh, i32 0, i32 5
  %6 = ptrtoint ptr %lh_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lh_hash, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %neg)
  %cmp6.not = icmp eq i32 %7, %neg
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %add.ptr9 = getelementptr i8, ptr %lh, i32 52
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_bsize, align 8
  %sub10 = add i32 %9, -52
  %call11 = tail call i32 @crc32c(i32 noundef -1, ptr noundef %add.ptr9, i32 noundef %sub10) #12
  %lh_crc = getelementptr inbounds %struct.gfs2_log_header, ptr %lh, i32 0, i32 6
  %10 = ptrtoint ptr %lh_crc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lh_crc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12.not = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call11)
  %cmp15.not = icmp eq i32 %11, %call11
  %or.cond = select i1 %cmp12.not, i1 true, i1 %cmp15.not
  br i1 %or.cond, label %if.end17, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %lh_sequence = getelementptr inbounds %struct.gfs2_log_header, ptr %lh, i32 0, i32 1
  %12 = ptrtoint ptr %lh_sequence to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lh_sequence, align 8
  %14 = ptrtoint ptr %head to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %head, align 8
  %lh_flags = getelementptr inbounds %struct.gfs2_log_header, ptr %lh, i32 0, i32 2
  %15 = ptrtoint ptr %lh_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lh_flags, align 8
  %lh_flags19 = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 1
  %17 = ptrtoint ptr %lh_flags19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %lh_flags19, align 8
  %lh_tail = getelementptr inbounds %struct.gfs2_log_header, ptr %lh, i32 0, i32 3
  %18 = ptrtoint ptr %lh_tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lh_tail, align 4
  %lh_tail20 = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 2
  %20 = ptrtoint ptr %lh_tail20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %lh_tail20, align 4
  %lh_blkno21 = getelementptr inbounds %struct.gfs2_log_header, ptr %lh, i32 0, i32 4
  %21 = ptrtoint ptr %lh_blkno21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lh_blkno21, align 8
  %lh_blkno22 = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 3
  %23 = ptrtoint ptr %lh_blkno22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %lh_blkno22, align 8
  %lh_local_total = getelementptr inbounds %struct.gfs2_log_header, ptr %lh, i32 0, i32 13
  %24 = ptrtoint ptr %lh_local_total to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lh_local_total, align 8
  %lh_local_total23 = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 4
  %26 = ptrtoint ptr %lh_local_total23 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %lh_local_total23, align 8
  %lh_local_free = getelementptr inbounds %struct.gfs2_log_header, ptr %lh, i32 0, i32 14
  %27 = ptrtoint ptr %lh_local_free to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %lh_local_free, align 8
  %lh_local_free24 = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 5
  %29 = ptrtoint ptr %lh_local_free24 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %lh_local_free24, align 8
  %lh_local_dinodes = getelementptr inbounds %struct.gfs2_log_header, ptr %lh, i32 0, i32 15
  %30 = ptrtoint ptr %lh_local_dinodes to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lh_local_dinodes, align 8
  %lh_local_dinodes25 = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 6
  %32 = ptrtoint ptr %lh_local_dinodes25 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %lh_local_dinodes25, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @crc32_le_shift(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_recover_func(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %env_jid.i = alloca [20 x i8], align 1
  %env_status.i = alloca [20 x i8], align 1
  %envp.i = alloca [3 x ptr], align 4
  %dblock.i.i.i = alloca i64, align 8
  %extlen.i.i.i = alloca i32, align 4
  %dblock.i.i = alloca i64, align 8
  %extlen.i.i = alloca i32, align 4
  %lh.i = alloca %struct.gfs2_log_header_host, align 8
  %head = alloca %struct.gfs2_log_header_host, align 8
  %j_gh = alloca %struct.gfs2_holder, align 4
  %ji_gh = alloca %struct.gfs2_holder, align 4
  %thaw_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %jd_inode = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %head) #12
  %6 = call ptr @memset(ptr %head, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %j_gh) #12
  %7 = call ptr @memset(ptr %j_gh, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ji_gh) #12
  %8 = call ptr @memset(ptr %ji_gh, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %thaw_gh) #12
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 4
  %9 = call ptr @memset(ptr %thaw_gh, i32 255, i32 32)
  %10 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sd_flags.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

gfs2_withdrawn.exit:                              ; preds = %entry
  %13 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sd_flags.i, align 4
  %15 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.i.not = icmp eq i32 %15, 0
  br i1 %tobool3.i.not, label %if.end, label %gfs2_withdrawn.exit.do.end_crit_edge

gfs2_withdrawn.exit.do.end_crit_edge:             ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %gfs2_withdrawn.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 110
  %jd_jid = getelementptr i8, ptr %work, i32 56
  %16 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %jd_jid, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %sd_fsname, i32 noundef %17) #18
  br label %fail

if.end:                                           ; preds = %gfs2_withdrawn.exit
  %call6 = tail call i64 @ktime_get() #12
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 21, i32 3
  %18 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %if.end8, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end8:                                          ; preds = %if.end
  %jd_jid9 = getelementptr i8, ptr %work, i32 56
  %19 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %jd_jid9, align 4
  %sd_lockstruct = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 23
  %21 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sd_lockstruct, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.not = icmp eq i32 %20, %22
  %sd_fsname37 = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 110
  br i1 %cmp.not, label %do.end35, label %do.end13

do.end13:                                         ; preds = %if.end8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %sd_fsname37, i32 noundef %20) #18
  %23 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %jd_jid9, align 4
  %conv = zext i32 %24 to i64
  %call20 = call i32 @gfs2_glock_nq_num(ptr noundef %5, i64 noundef %conv, ptr noundef nonnull @gfs2_journal_glops, i32 noundef 1, i16 noundef zeroext 1029, ptr noundef nonnull %j_gh) #12
  %25 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call20, label %do.end13.fail_crit_edge [
    i32 0, label %sw.epilog
    i32 13, label %do.end23
  ]

do.end13.fail_crit_edge:                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

do.end23:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %jd_jid9, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %sd_fsname37, i32 noundef %27) #18
  br label %fail

sw.epilog:                                        ; preds = %do.end13
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_gl, align 4
  %call29 = call fastcc i32 @gfs2_glock_nq_init(ptr noundef %29, ptr noundef nonnull %ji_gh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %sw.epilog.if.end41_crit_edge, label %sw.epilog.fail_gunlock_j_crit_edge

sw.epilog.fail_gunlock_j_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_gunlock_j

sw.epilog.if.end41_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.end35:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %sd_fsname37, i32 noundef %20) #18
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %sw.epilog.if.end41_crit_edge
  %call42 = call i64 @ktime_get() #12
  %sd_fsname47 = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 110
  %30 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %jd_jid9, align 4
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %sd_fsname47, i32 noundef %31) #18
  %call51 = call i32 @gfs2_jdesc_check(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end41.fail_gunlock_ji_crit_edge

if.end41.fail_gunlock_ji_crit_edge:               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_gunlock_ji

if.end54:                                         ; preds = %if.end41
  %call55 = call i32 @gfs2_find_jhead(ptr noundef %add.ptr, ptr noundef nonnull %head, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.fail_gunlock_ji_crit_edge

if.end54.fail_gunlock_ji_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_gunlock_ji

if.end58:                                         ; preds = %if.end54
  %call59 = call i64 @ktime_get() #12
  %32 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %jd_jid9, align 4
  %sub.i = sub i64 %call59, %call42
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %34 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #12
  %35 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %34) #19, !srcloc !95
  %36 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %34, i64 %35, i32 0) #19, !srcloc !96
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %36, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %sd_fsname47, i32 noundef %33, i64 noundef %cond213.i.i.i) #18
  %lh_flags = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 1
  %37 = ptrtoint ptr %lh_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lh_flags, align 8
  %and = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool69.not = icmp eq i32 %and, 0
  br i1 %tobool69.not, label %do.end73, label %if.end58.if.end165_crit_edge

if.end58.if.end165_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

do.end73:                                         ; preds = %if.end58
  %39 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %jd_jid9, align 4
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %sd_fsname47, i32 noundef %40) #18
  %call79 = call i32 @gfs2_freeze_lock(ptr noundef %5, ptr noundef nonnull %thaw_gh, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %do.end73.fail_gunlock_ji_crit_edge

do.end73.fail_gunlock_ji_crit_edge:               ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_gunlock_ji

if.end82:                                         ; preds = %do.end73
  %41 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %sd_flags.i, align 4
  %43 = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool84.not = icmp eq i32 %43, 0
  br i1 %tobool84.not, label %if.else86, label %if.end82.do.end125_crit_edge

if.end82.do.end125_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

if.else86:                                        ; preds = %if.end82
  %44 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %sd_flags.i, align 4
  %and1.i274 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i274)
  %tobool89.not = icmp eq i32 %and1.i274, 0
  br i1 %tobool89.not, label %if.else96, label %if.then90

if.then90:                                        ; preds = %if.else86
  %46 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %sd_flags.i, align 4
  %48 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool93.not = icmp eq i32 %48, 0
  br i1 %tobool93.not, label %if.then90.do.end125_crit_edge, label %if.then90.if.end131_crit_edge

if.then90.if.end131_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then90.do.end125_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

if.else96:                                        ; preds = %if.else86
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %5, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else96.if.end131_crit_edge, label %if.then98

if.else96.if.end131_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then98:                                        ; preds = %if.else96
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 26
  %53 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_bdev, align 4
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bd_read_only.i, align 8, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i277 = icmp eq i8 %56, 0
  br i1 %tobool.not.i277, label %lor.rhs.i278, label %if.then98.do.end125_crit_edge

if.then98.do.end125_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

lor.rhs.i278:                                     ; preds = %if.then98
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %54, i32 0, i32 17
  %57 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bd_read_only.i.i, align 8, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i278.do.end125_crit_edge

lor.rhs.i278.do.end125_crit_edge:                 ; preds = %lor.rhs.i278
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

bdev_read_only.exit:                              ; preds = %lor.rhs.i278
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %58, i32 0, i32 12
  %63 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %state.i.i, align 4
  %65 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool101.not = icmp eq i32 %65, 0
  br i1 %tobool101.not, label %do.end105, label %bdev_read_only.exit.do.end125_crit_edge

bdev_read_only.exit.do.end125_crit_edge:          ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

do.end105:                                        ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %sd_fsname47) #18
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %sd_fsname47) #18
  br label %if.end131

do.end125:                                        ; preds = %bdev_read_only.exit.do.end125_crit_edge, %lor.rhs.i278.do.end125_crit_edge, %if.then98.do.end125_crit_edge, %if.then90.do.end125_crit_edge, %if.end82.do.end125_crit_edge
  %66 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %jd_jid9, align 4
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %sd_fsname47, i32 noundef %67) #18
  br label %fail_gunlock_thaw

if.end131:                                        ; preds = %do.end105, %if.else96.if.end131_crit_edge, %if.then90.if.end131_crit_edge
  %call132 = call i64 @ktime_get() #12
  %68 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %jd_jid9, align 4
  %lh_tail = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 2
  %70 = ptrtoint ptr %lh_tail to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lh_tail, align 4
  %lh_blkno = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 3
  %72 = ptrtoint ptr %lh_blkno to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %lh_blkno, align 8
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %sd_fsname47, i32 noundef %69, i32 noundef %71, i32 noundef %73) #18
  %sd_log_flush_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 95
  call void @down_read(ptr noundef %sd_log_flush_lock) #12
  %jd_blocks.i92.i = getelementptr i8, ptr %work, i32 60
  br label %for.body

for.cond:                                         ; preds = %lops_after_scan.exit
  %inc = add nuw nsw i32 %pass.0363, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end131
  %pass.0363 = phi i32 [ 0, %if.end131 ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_log_ops to i32))
  %74 = load ptr, ptr @gfs2_log_ops, align 4
  %tobool.not9.i = icmp eq ptr %74, null
  br i1 %tobool.not9.i, label %for.body.lops_before_scan.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.lops_before_scan.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %lops_before_scan.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %75 = phi ptr [ %79, %for.inc.i.for.body.i_crit_edge ], [ %74, %for.body.for.body.i_crit_edge ]
  %x.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %lo_before_scan.i = getelementptr inbounds %struct.gfs2_log_operations, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %lo_before_scan.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lo_before_scan.i, align 4
  %tobool2.not.i = icmp eq ptr %77, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %77(ptr noundef %add.ptr, ptr noundef nonnull %head, i32 noundef %pass.0363) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %x.010.i, 1
  %arrayidx.i = getelementptr [0 x ptr], ptr @gfs2_log_ops, i32 0, i32 %inc.i
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i279 = icmp eq ptr %79, null
  br i1 %tobool.not.i279, label %for.inc.i.lops_before_scan.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.lops_before_scan.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lops_before_scan.exit

lops_before_scan.exit:                            ; preds = %for.inc.i.lops_before_scan.exit_crit_edge, %for.body.lops_before_scan.exit_crit_edge
  %80 = ptrtoint ptr %lh_tail to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lh_tail, align 4
  %82 = ptrtoint ptr %lh_blkno to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lh_blkno, align 8
  %84 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %jd_inode, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 33
  %88 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp.not182.i361 = icmp eq i32 %81, %83
  br i1 %cmp.not182.i361, label %lops_before_scan.exit.foreach_descriptor.exit_crit_edge, label %lops_before_scan.exit.while.body.i_crit_edge

lops_before_scan.exit.while.body.i_crit_edge:     ; preds = %lops_before_scan.exit
  br label %while.body.i

lops_before_scan.exit.foreach_descriptor.exit_crit_edge: ; preds = %lops_before_scan.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %foreach_descriptor.exit

while.body.i:                                     ; preds = %while.body.i.backedge, %lops_before_scan.exit.while.body.i_crit_edge
  %start.addr.0183.i = phi i32 [ %start.addr.0183.i.be, %while.body.i.backedge ], [ %81, %lops_before_scan.exit.while.body.i_crit_edge ]
  %90 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %jd_inode, align 8
  %i_gl.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %i_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_gl.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dblock.i.i) #12
  %94 = ptrtoint ptr %dblock.i.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 -1, ptr %dblock.i.i, align 8, !annotation !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extlen.i.i) #12
  %95 = ptrtoint ptr %extlen.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 32, ptr %extlen.i.i, align 4
  %conv.i.i = zext i32 %start.addr.0183.i to i64
  %call1.i.i = call i32 @gfs2_get_extent(ptr noundef %91, i64 noundef %conv.i.i, ptr noundef nonnull %dblock.i.i, ptr noundef nonnull %extlen.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i280 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i280, label %if.end.i.i, label %while.body.i.gfs2_replay_read_block.exit.thread.i_crit_edge

while.body.i.gfs2_replay_read_block.exit.thread.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_replay_read_block.exit.thread.i

if.end.i.i:                                       ; preds = %while.body.i
  %96 = ptrtoint ptr %dblock.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %dblock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %tobool2.not.i.i = icmp eq i64 %97, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_consist_inode_i(ptr noundef %91, ptr noundef nonnull @__func__.gfs2_replay_read_block, ptr noundef nonnull @.str, i32 noundef 46) #12
  br label %gfs2_replay_read_block.exit.thread.i

gfs2_replay_read_block.exit.thread.i:             ; preds = %if.then3.i.i, %while.body.i.gfs2_replay_read_block.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %if.then3.i.i ], [ %call1.i.i, %while.body.i.gfs2_replay_read_block.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dblock.i.i) #12
  br label %foreach_descriptor.exit

if.end.i:                                         ; preds = %if.end.i.i
  %98 = ptrtoint ptr %extlen.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %extlen.i.i, align 4
  %call5.i.i = call ptr @gfs2_meta_ra(ptr noundef %93, i64 noundef %97, i32 noundef %99) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dblock.i.i) #12
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %call5.i.i, i32 0, i32 5
  %100 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %b_data.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %103)
  %cmp.not.i.i = icmp eq i32 %103, 18225520
  br i1 %cmp.not.i.i, label %if.end5.i, label %if.then4.i, !prof !98

if.then4.i:                                       ; preds = %if.end.i
  %sd_fsname.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %89, i32 0, i32 110
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %call5.i.i, i32 0, i32 3
  %104 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %b_blocknr.i.i, align 8
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %sd_fsname.i.i, i64 noundef %105) #18
  %tobool.not.i56.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i56.i, label %if.then4.i.foreach_descriptor.exit_crit_edge, label %if.then.i.i

if.then4.i.foreach_descriptor.exit_crit_edge:     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %foreach_descriptor.exit

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %call5.i.i) #12
  br label %foreach_descriptor.exit

if.end5.i:                                        ; preds = %if.end.i
  %ld_length.i = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %101, i32 0, i32 2
  %106 = ptrtoint ptr %ld_length.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ld_length.i, align 4
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %101, i32 0, i32 1
  %108 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mh_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %109)
  %cmp6.i = icmp eq i32 %109, 8
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i75.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %lh.i) #12
  %110 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %jd_inode, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %113, i32 0, i32 33
  %114 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %i_gl.i.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %111, i32 0, i32 6
  %116 = ptrtoint ptr %i_gl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i_gl.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dblock.i.i.i) #12
  %118 = ptrtoint ptr %dblock.i.i.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 -1, ptr %dblock.i.i.i, align 8, !annotation !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extlen.i.i.i) #12
  %119 = ptrtoint ptr %extlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 32, ptr %extlen.i.i.i, align 4
  %call1.i.i.i = call i32 @gfs2_get_extent(ptr noundef %111, i64 noundef %conv.i.i, ptr noundef nonnull %dblock.i.i.i, ptr noundef nonnull %extlen.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then7.i.get_log_header.exit.thread.i_crit_edge

if.then7.i.get_log_header.exit.thread.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_log_header.exit.thread.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  %120 = ptrtoint ptr %dblock.i.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %dblock.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %121)
  %tobool2.not.i.i.i = icmp eq i64 %121, 0
  br i1 %tobool2.not.i.i.i, label %if.then3.i.i.i, label %if.end.i60.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_consist_inode_i(ptr noundef %111, ptr noundef nonnull @__func__.gfs2_replay_read_block, ptr noundef nonnull @.str, i32 noundef 46) #12
  br label %get_log_header.exit.thread.i

get_log_header.exit.thread.i:                     ; preds = %if.then3.i.i.i, %if.then7.i.get_log_header.exit.thread.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -5, %if.then3.i.i.i ], [ %call1.i.i.i, %if.then7.i.get_log_header.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dblock.i.i.i) #12
  br label %if.end11.i

if.end.i60.i:                                     ; preds = %if.end.i.i.i
  %122 = ptrtoint ptr %extlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %extlen.i.i.i, align 4
  %call5.i.i.i = call ptr @gfs2_meta_ra(ptr noundef %117, i64 noundef %121, i32 noundef %123) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dblock.i.i.i) #12
  %b_data.i59.i = getelementptr inbounds %struct.buffer_head, ptr %call5.i.i.i, i32 0, i32 5
  %124 = ptrtoint ptr %b_data.i59.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %b_data.i59.i, align 4
  %call2.i.i = call i32 @__get_log_header(ptr noundef %115, ptr noundef %125, i32 noundef %start.addr.0183.i, ptr noundef nonnull %lh.i) #12
  %tobool.not.i9.i.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i9.i.i, label %if.end.i60.i.get_log_header.exit.i_crit_edge, label %if.then.i.i.i

if.end.i60.i.get_log_header.exit.i_crit_edge:     ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_log_header.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %call5.i.i.i) #12
  br label %get_log_header.exit.i

get_log_header.exit.i:                            ; preds = %if.then.i.i.i, %if.end.i60.i.get_log_header.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool9.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %get_log_header.exit.i.if.end11.i_crit_edge

get_log_header.exit.i.if.end11.i_crit_edge:       ; preds = %get_log_header.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then10.i:                                      ; preds = %get_log_header.exit.i
  %inc.i.i = add i32 %start.addr.0183.i, 1
  %126 = ptrtoint ptr %jd_blocks.i92.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %jd_blocks.i92.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %127)
  %cmp.i.i = icmp eq i32 %inc.i.i, %127
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %tobool.not.i62.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i62.i, label %cleanup.i, label %if.then.i63.i

if.then.i63.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %call5.i.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %lh.i) #12
  br label %while.cond.backedge.i

if.end11.i:                                       ; preds = %get_log_header.exit.i.if.end11.i_crit_edge, %get_log_header.exit.thread.i
  %retval.0.i61125.i = phi i32 [ %retval.0.i.ph.i.i, %get_log_header.exit.thread.i ], [ %call2.i.i, %get_log_header.exit.i.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i61125.i)
  %cmp12.i = icmp eq i32 %retval.0.i61125.i, 1
  br i1 %cmp12.i, label %if.then13.i, label %if.end11.i.if.end16.i_crit_edge

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %jd_inode, align 8
  call void @gfs2_consist_inode_i(ptr noundef %129, ptr noundef nonnull @__func__.foreach_descriptor, ptr noundef nonnull @.str, i32 noundef 231) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end16.i_crit_edge
  %error.0.i = phi i32 [ -5, %if.then13.i ], [ %retval.0.i61125.i, %if.end11.i.if.end16.i_crit_edge ]
  %tobool.not.i66.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i66.i, label %cleanup.thread.i, label %if.then.i67.i

cleanup.thread.i:                                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %lh.i) #12
  br label %foreach_descriptor.exit

if.then.i67.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %call5.i.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %lh.i) #12
  br label %foreach_descriptor.exit

cleanup.i:                                        ; preds = %if.then10.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %lh.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i.i, i32 %83)
  %cmp.not182.i = icmp eq i32 %spec.store.select.i.i, %83
  br i1 %cmp.not182.i, label %cleanup.i.foreach_descriptor.exit_crit_edge, label %cleanup.i.while.body.i.backedge_crit_edge

cleanup.i.while.body.i.backedge_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.backedge

cleanup.i.foreach_descriptor.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %foreach_descriptor.exit

if.end.i75.i:                                     ; preds = %if.end5.i
  %conv3.i.i = and i32 %109, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv3.i.i)
  %cmp5.not.i.i = icmp eq i32 %conv3.i.i, 9
  br i1 %cmp5.not.i.i, label %if.end.i75.i.if.end21.i_crit_edge, label %gfs2_metatype_check_i.exit.i, !prof !98

if.end.i75.i.if.end21.i_crit_edge:                ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

gfs2_metatype_check_i.exit.i:                     ; preds = %if.end.i75.i
  %conv.i71.i = trunc i32 %109 to i16
  %call14.i.i = call i32 @gfs2_metatype_check_ii(ptr noundef %89, ptr noundef %call5.i.i, i16 noundef zeroext 9, i16 noundef zeroext %conv.i71.i, ptr noundef nonnull @__func__.foreach_descriptor, ptr noundef nonnull @.str, i32 noundef 236) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool18.not.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool18.not.i, label %gfs2_metatype_check_i.exit.i.if.end21.i_crit_edge, label %if.then19.i

gfs2_metatype_check_i.exit.i.if.end21.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then19.i:                                      ; preds = %gfs2_metatype_check_i.exit.i
  %tobool.not.i77.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i77.i, label %if.then19.i.foreach_descriptor.exit_crit_edge, label %if.then.i78.i

if.then19.i.foreach_descriptor.exit_crit_edge:    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %foreach_descriptor.exit

if.then.i78.i:                                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %call5.i.i) #12
  br label %foreach_descriptor.exit

if.end21.i:                                       ; preds = %gfs2_metatype_check_i.exit.i.if.end21.i_crit_edge, %if.end.i75.i.if.end21.i_crit_edge
  %130 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %131, i32 72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_log_ops to i32))
  %132 = load ptr, ptr @gfs2_log_ops, align 4
  %tobool.not14.i.i = icmp eq ptr %132, null
  br i1 %tobool.not14.i.i, label %if.end21.i.lops_scan_elements.exit.i_crit_edge, label %if.end21.i.for.body.i.i_crit_edge

if.end21.i.for.body.i.i_crit_edge:                ; preds = %if.end21.i
  br label %for.body.i.i

if.end21.i.lops_scan_elements.exit.i_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lops_scan_elements.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end21.i.for.body.i.i_crit_edge
  %133 = phi ptr [ %137, %for.inc.i.i.for.body.i.i_crit_edge ], [ %132, %if.end21.i.for.body.i.i_crit_edge ]
  %x.015.i.i = phi i32 [ %inc.i84.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end21.i.for.body.i.i_crit_edge ]
  %lo_scan_elements.i.i = getelementptr inbounds %struct.gfs2_log_operations, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %lo_scan_elements.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %lo_scan_elements.i.i, align 4
  %tobool2.not.i81.i = icmp eq ptr %135, null
  br i1 %tobool2.not.i81.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i83.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i83.i:                                    ; preds = %for.body.i.i
  %call.i82.i = call i32 %135(ptr noundef %add.ptr, i32 noundef %start.addr.0183.i, ptr noundef %101, ptr noundef %add.ptr.i, i32 noundef %pass.0363) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %tobool5.not.i.i = icmp eq i32 %call.i82.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i83.i.for.inc.i.i_crit_edge, label %if.then25.i

if.then.i83.i.for.inc.i.i_crit_edge:              ; preds = %if.then.i83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i83.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i84.i = add i32 %x.015.i.i, 1
  %arrayidx.i.i = getelementptr [0 x ptr], ptr @gfs2_log_ops, i32 0, i32 %inc.i84.i
  %136 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i85.i = icmp eq ptr %137, null
  br i1 %tobool.not.i85.i, label %for.inc.i.i.lops_scan_elements.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.lops_scan_elements.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lops_scan_elements.exit.i

lops_scan_elements.exit.i:                        ; preds = %for.inc.i.i.lops_scan_elements.exit.i_crit_edge, %if.end21.i.lops_scan_elements.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool28.not179.i = icmp eq i32 %107, 0
  br i1 %tobool28.not179.i, label %lops_scan_elements.exit.i.while.end.i_crit_edge, label %while.body29.lr.ph.i

lops_scan_elements.exit.i.while.end.i_crit_edge:  ; preds = %lops_scan_elements.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body29.lr.ph.i:                             ; preds = %lops_scan_elements.exit.i
  %138 = ptrtoint ptr %jd_blocks.i92.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %jd_blocks.i92.i, align 8
  br label %while.body29.i

if.then25.i:                                      ; preds = %if.then.i83.i
  %tobool.not.i87.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i87.i, label %if.then25.i.foreach_descriptor.exit_crit_edge, label %if.then.i88.i

if.then25.i.foreach_descriptor.exit_crit_edge:    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %foreach_descriptor.exit

if.then.i88.i:                                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %call5.i.i) #12
  br label %foreach_descriptor.exit

while.body29.i:                                   ; preds = %while.body29.i.while.body29.i_crit_edge, %while.body29.lr.ph.i
  %length.0181.i = phi i32 [ %107, %while.body29.lr.ph.i ], [ %dec.i, %while.body29.i.while.body29.i_crit_edge ]
  %start.addr.2180.i = phi i32 [ %start.addr.0183.i, %while.body29.lr.ph.i ], [ %spec.store.select.i94.i, %while.body29.i.while.body29.i_crit_edge ]
  %dec.i = add i32 %length.0181.i, -1
  %inc.i91.i = add i32 %start.addr.2180.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i91.i, i32 %139)
  %cmp.i93.i = icmp eq i32 %inc.i91.i, %139
  %spec.store.select.i94.i = select i1 %cmp.i93.i, i32 0, i32 %inc.i91.i
  %tobool28.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool28.not.i, label %while.body29.i.while.end.i_crit_edge, label %while.body29.i.while.body29.i_crit_edge

while.body29.i.while.body29.i_crit_edge:          ; preds = %while.body29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body29.i

while.body29.i.while.end.i_crit_edge:             ; preds = %while.body29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %while.body29.i.while.end.i_crit_edge, %lops_scan_elements.exit.i.while.end.i_crit_edge
  %start.addr.2.lcssa.i = phi i32 [ %start.addr.0183.i, %lops_scan_elements.exit.i.while.end.i_crit_edge ], [ %spec.store.select.i94.i, %while.body29.i.while.end.i_crit_edge ]
  %tobool.not.i95.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i95.i, label %while.end.i.while.cond.backedge.i_crit_edge, label %if.then.i96.i

while.end.i.while.cond.backedge.i_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i

if.then.i96.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %call5.i.i) #12
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.then.i96.i, %while.end.i.while.cond.backedge.i_crit_edge, %if.then.i63.i
  %start.addr.0.be.i = phi i32 [ %spec.store.select.i.i, %if.then.i63.i ], [ %start.addr.2.lcssa.i, %while.end.i.while.cond.backedge.i_crit_edge ], [ %start.addr.2.lcssa.i, %if.then.i96.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0.be.i, i32 %83)
  %cmp.not.i = icmp eq i32 %start.addr.0.be.i, %83
  br i1 %cmp.not.i, label %while.cond.backedge.i.foreach_descriptor.exit_crit_edge, label %while.cond.backedge.i.while.body.i.backedge_crit_edge

while.cond.backedge.i.while.body.i.backedge_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.backedge

while.cond.backedge.i.foreach_descriptor.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %foreach_descriptor.exit

while.body.i.backedge:                            ; preds = %while.cond.backedge.i.while.body.i.backedge_crit_edge, %cleanup.i.while.body.i.backedge_crit_edge
  %start.addr.0183.i.be = phi i32 [ %start.addr.0.be.i, %while.cond.backedge.i.while.body.i.backedge_crit_edge ], [ %spec.store.select.i.i, %cleanup.i.while.body.i.backedge_crit_edge ]
  br label %while.body.i

foreach_descriptor.exit:                          ; preds = %while.cond.backedge.i.foreach_descriptor.exit_crit_edge, %if.then.i88.i, %if.then25.i.foreach_descriptor.exit_crit_edge, %if.then.i78.i, %if.then19.i.foreach_descriptor.exit_crit_edge, %cleanup.i.foreach_descriptor.exit_crit_edge, %if.then.i67.i, %cleanup.thread.i, %if.then.i.i, %if.then4.i.foreach_descriptor.exit_crit_edge, %gfs2_replay_read_block.exit.thread.i, %lops_before_scan.exit.foreach_descriptor.exit_crit_edge
  %retval.2.i = phi i32 [ %retval.0.i.ph.i, %gfs2_replay_read_block.exit.thread.i ], [ -5, %if.then4.i.foreach_descriptor.exit_crit_edge ], [ -5, %if.then.i.i ], [ %error.0.i, %if.then.i67.i ], [ -5, %if.then19.i.foreach_descriptor.exit_crit_edge ], [ -5, %if.then.i78.i ], [ %call.i82.i, %if.then25.i.foreach_descriptor.exit_crit_edge ], [ %call.i82.i, %if.then.i88.i ], [ %error.0.i, %cleanup.thread.i ], [ 0, %lops_before_scan.exit.foreach_descriptor.exit_crit_edge ], [ 0, %while.cond.backedge.i.foreach_descriptor.exit_crit_edge ], [ 0, %cleanup.i.foreach_descriptor.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_log_ops to i32))
  %140 = load ptr, ptr @gfs2_log_ops, align 4
  %tobool.not7.i = icmp eq ptr %140, null
  br i1 %tobool.not7.i, label %foreach_descriptor.exit.lops_after_scan.exit_crit_edge, label %foreach_descriptor.exit.for.body.i283_crit_edge

foreach_descriptor.exit.for.body.i283_crit_edge:  ; preds = %foreach_descriptor.exit
  br label %for.body.i283

foreach_descriptor.exit.lops_after_scan.exit_crit_edge: ; preds = %foreach_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lops_after_scan.exit

for.body.i283:                                    ; preds = %for.inc.i288.for.body.i283_crit_edge, %foreach_descriptor.exit.for.body.i283_crit_edge
  %141 = phi ptr [ %147, %for.inc.i288.for.body.i283_crit_edge ], [ %140, %foreach_descriptor.exit.for.body.i283_crit_edge ]
  %x.08.i = phi i32 [ %inc.i285, %for.inc.i288.for.body.i283_crit_edge ], [ 0, %foreach_descriptor.exit.for.body.i283_crit_edge ]
  %lo_before_scan.i281 = getelementptr inbounds %struct.gfs2_log_operations, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %lo_before_scan.i281 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %lo_before_scan.i281, align 4
  %tobool2.not.i282 = icmp eq ptr %143, null
  br i1 %tobool2.not.i282, label %for.body.i283.for.inc.i288_crit_edge, label %if.then.i284

for.body.i283.for.inc.i288_crit_edge:             ; preds = %for.body.i283
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i288

if.then.i284:                                     ; preds = %for.body.i283
  call void @__sanitizer_cov_trace_pc() #14
  %lo_after_scan.i = getelementptr inbounds %struct.gfs2_log_operations, ptr %141, i32 0, i32 4
  %144 = ptrtoint ptr %lo_after_scan.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %lo_after_scan.i, align 4
  call void %145(ptr noundef %add.ptr, i32 noundef %retval.2.i, i32 noundef %pass.0363) #12
  br label %for.inc.i288

for.inc.i288:                                     ; preds = %if.then.i284, %for.body.i283.for.inc.i288_crit_edge
  %inc.i285 = add i32 %x.08.i, 1
  %arrayidx.i286 = getelementptr [0 x ptr], ptr @gfs2_log_ops, i32 0, i32 %inc.i285
  %146 = ptrtoint ptr %arrayidx.i286 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i286, align 4
  %tobool.not.i287 = icmp eq ptr %147, null
  br i1 %tobool.not.i287, label %for.inc.i288.lops_after_scan.exit_crit_edge, label %for.inc.i288.for.body.i283_crit_edge

for.inc.i288.for.body.i283_crit_edge:             ; preds = %for.inc.i288
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i283

for.inc.i288.lops_after_scan.exit_crit_edge:      ; preds = %for.inc.i288
  call void @__sanitizer_cov_trace_pc() #14
  br label %lops_after_scan.exit

lops_after_scan.exit:                             ; preds = %for.inc.i288.lops_after_scan.exit_crit_edge, %foreach_descriptor.exit.lops_after_scan.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %tobool146.not = icmp eq i32 %retval.2.i, 0
  br i1 %tobool146.not, label %for.cond, label %if.then147

if.then147:                                       ; preds = %lops_after_scan.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @up_read(ptr noundef %sd_log_flush_lock) #12
  br label %fail_gunlock_thaw

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @recover_local_statfs(ptr noundef %add.ptr, ptr noundef nonnull %head)
  call fastcc void @clean_journal(ptr noundef %add.ptr, ptr noundef nonnull %head)
  call void @up_read(ptr noundef %sd_log_flush_lock) #12
  call void @gfs2_freeze_unlock(ptr noundef nonnull %thaw_gh) #12
  %call151 = call i64 @ktime_get() #12
  %148 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %jd_jid9, align 4
  %sub.i289 = sub i64 %call151, %call6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i289)
  %cmp8.i.i.i290 = icmp slt i64 %sub.i289, 0
  %150 = call i64 @llvm.abs.i64(i64 %sub.i289, i1 false) #12
  %151 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %150) #19, !srcloc !95
  %152 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %150, i64 %151, i32 0) #19, !srcloc !96
  %asmresult10.i.i.i.i291 = extractvalue { i64, i32 } %152, 0
  %div1811.i.i.i292 = lshr i64 %asmresult10.i.i.i.i291, 18
  %sub210.i.i.i293 = sub nsw i64 0, %div1811.i.i.i292
  %cond213.i.i.i294 = select i1 %cmp8.i.i.i290, i64 %sub210.i.i.i293, i64 %div1811.i.i.i292
  %sub.i295 = sub i64 %call42, %call6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i295)
  %cmp8.i.i.i296 = icmp slt i64 %sub.i295, 0
  %153 = call i64 @llvm.abs.i64(i64 %sub.i295, i1 false) #12
  %154 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %153) #19, !srcloc !95
  %155 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %153, i64 %154, i32 0) #19, !srcloc !96
  %asmresult10.i.i.i.i297 = extractvalue { i64, i32 } %155, 0
  %div1811.i.i.i298 = lshr i64 %asmresult10.i.i.i.i297, 18
  %sub210.i.i.i299 = sub nsw i64 0, %div1811.i.i.i298
  %cond213.i.i.i300 = select i1 %cmp8.i.i.i296, i64 %sub210.i.i.i299, i64 %div1811.i.i.i298
  %sub.i307 = sub i64 %call132, %call59
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i307)
  %cmp8.i.i.i308 = icmp slt i64 %sub.i307, 0
  %156 = call i64 @llvm.abs.i64(i64 %sub.i307, i1 false) #12
  %157 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %156) #19, !srcloc !95
  %158 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %156, i64 %157, i32 0) #19, !srcloc !96
  %asmresult10.i.i.i.i309 = extractvalue { i64, i32 } %158, 0
  %div1811.i.i.i310 = lshr i64 %asmresult10.i.i.i.i309, 18
  %sub210.i.i.i311 = sub nsw i64 0, %div1811.i.i.i310
  %cond213.i.i.i312 = select i1 %cmp8.i.i.i308, i64 %sub210.i.i.i311, i64 %div1811.i.i.i310
  %sub.i313 = sub i64 %call151, %call132
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i313)
  %cmp8.i.i.i314 = icmp slt i64 %sub.i313, 0
  %159 = call i64 @llvm.abs.i64(i64 %sub.i313, i1 false) #12
  %160 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %159) #19, !srcloc !95
  %161 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %159, i64 %160, i32 0) #19, !srcloc !96
  %asmresult10.i.i.i.i315 = extractvalue { i64, i32 } %161, 0
  %div1811.i.i.i316 = lshr i64 %asmresult10.i.i.i.i315, 18
  %sub210.i.i.i317 = sub nsw i64 0, %div1811.i.i.i316
  %cond213.i.i.i318 = select i1 %cmp8.i.i.i314, i64 %sub210.i.i.i317, i64 %div1811.i.i.i316
  %call164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %sd_fsname47, i32 noundef %149, i64 noundef %cond213.i.i.i294, i64 noundef %cond213.i.i.i300, i64 noundef %cond213.i.i.i, i64 noundef %cond213.i.i.i312, i64 noundef %cond213.i.i.i318) #18
  br label %if.end165

if.end165:                                        ; preds = %for.end, %if.end58.if.end165_crit_edge
  %162 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %jd_jid9, align 4
  call fastcc void @gfs2_recovery_done(ptr noundef %5, i32 noundef %163, i32 noundef 309)
  br i1 %cmp.not, label %if.end165.do.end172_crit_edge, label %if.then168

if.end165.do.end172_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end172

if.then168:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %ji_gh) #12
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %j_gh) #12
  br label %do.end172

do.end172:                                        ; preds = %if.then168, %if.end165.do.end172_crit_edge
  %164 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %jd_jid9, align 4
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %sd_fsname47, i32 noundef %165) #18
  br label %done

fail_gunlock_thaw:                                ; preds = %if.then147, %do.end125
  %error.0 = phi i32 [ -30, %do.end125 ], [ %retval.2.i, %if.then147 ]
  call void @gfs2_freeze_unlock(ptr noundef nonnull %thaw_gh) #12
  br label %fail_gunlock_ji

fail_gunlock_ji:                                  ; preds = %fail_gunlock_thaw, %do.end73.fail_gunlock_ji_crit_edge, %if.end54.fail_gunlock_ji_crit_edge, %if.end41.fail_gunlock_ji_crit_edge
  %error.1 = phi i32 [ %call51, %if.end41.fail_gunlock_ji_crit_edge ], [ %call55, %if.end54.fail_gunlock_ji_crit_edge ], [ %call79, %do.end73.fail_gunlock_ji_crit_edge ], [ %error.0, %fail_gunlock_thaw ]
  br i1 %cmp.not, label %fail_gunlock_ji.do.end183_crit_edge, label %if.then179

fail_gunlock_ji.do.end183_crit_edge:              ; preds = %fail_gunlock_ji
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end183

if.then179:                                       ; preds = %fail_gunlock_ji
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %ji_gh) #12
  br label %fail_gunlock_j

fail_gunlock_j:                                   ; preds = %if.then179, %sw.epilog.fail_gunlock_j_crit_edge
  %error.2 = phi i32 [ %call29, %sw.epilog.fail_gunlock_j_crit_edge ], [ %error.1, %if.then179 ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %j_gh) #12
  br label %do.end183

do.end183:                                        ; preds = %fail_gunlock_j, %fail_gunlock_ji.do.end183_crit_edge
  %error.3 = phi i32 [ %error.2, %fail_gunlock_j ], [ %error.1, %fail_gunlock_ji.do.end183_crit_edge ]
  %sd_fsname185 = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 110
  %166 = ptrtoint ptr %jd_jid9 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %jd_jid9, align 4
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %sd_fsname185, i32 noundef %167, ptr noundef nonnull @.str.42) #18
  br label %fail

fail:                                             ; preds = %do.end183, %do.end23, %do.end13.fail_crit_edge, %if.end.fail_crit_edge, %do.end
  %error.4 = phi i32 [ 0, %do.end ], [ 0, %if.end.fail_crit_edge ], [ %call20, %do.end13.fail_crit_edge ], [ 0, %do.end23 ], [ %error.3, %do.end183 ]
  %jd_recover_error = getelementptr i8, ptr %work, i32 64
  %168 = ptrtoint ptr %jd_recover_error to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %error.4, ptr %jd_recover_error, align 4
  %jd_jid190 = getelementptr i8, ptr %work, i32 56
  %169 = ptrtoint ptr %jd_jid190 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %jd_jid190, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %env_jid.i) #12
  %171 = call ptr @memset(ptr %env_jid.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %env_status.i) #12
  %172 = call ptr @memset(ptr %env_status.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp.i) #12
  %173 = getelementptr inbounds [3 x ptr], ptr %envp.i, i32 0, i32 1
  %174 = getelementptr inbounds [3 x ptr], ptr %envp.i, i32 0, i32 2
  %175 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %env_jid.i, ptr %envp.i, align 4
  %176 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %env_status.i, ptr %173, align 4
  %177 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr null, ptr %174, align 4
  %ls_recover_jid_done.i = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 23, i32 4
  %178 = ptrtoint ptr %ls_recover_jid_done.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %170, ptr %ls_recover_jid_done.i, align 4
  %ls_recover_jid_status.i = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 23, i32 5
  %179 = ptrtoint ptr %ls_recover_jid_status.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 308, ptr %ls_recover_jid_status.i, align 4
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %env_jid.i, ptr noundef nonnull @.str.50, i32 noundef %170) #12
  %call5.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %env_status.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.42) #12
  %sd_kobj.i = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 2
  %call7.i = call i32 @kobject_uevent_env(ptr noundef %sd_kobj.i, i32 noundef 2, ptr noundef nonnull %envp.i) #12
  %ls_ops.i = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 23, i32 2
  %180 = ptrtoint ptr %ls_ops.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ls_ops.i, align 4
  %lm_recovery_result.i = getelementptr inbounds %struct.lm_lockops, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %lm_recovery_result.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %lm_recovery_result.i, align 4
  %tobool.not.i319 = icmp eq ptr %183, null
  br i1 %tobool.not.i319, label %fail.gfs2_recovery_done.exit_crit_edge, label %if.then.i320

fail.gfs2_recovery_done.exit_crit_edge:           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_recovery_done.exit

if.then.i320:                                     ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  call void %183(ptr noundef %5, i32 noundef %170, i32 noundef 308) #12
  br label %gfs2_recovery_done.exit

gfs2_recovery_done.exit:                          ; preds = %if.then.i320, %fail.gfs2_recovery_done.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %env_status.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %env_jid.i) #12
  br label %done

done:                                             ; preds = %gfs2_recovery_done.exit, %do.end172
  %jd_flags = getelementptr i8, ptr %work, i32 52
  call void @_clear_bit(i32 noundef 1, ptr noundef %jd_flags) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  call void @wake_up_bit(ptr noundef %jd_flags, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %thaw_gh) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ji_gh) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %j_gh) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %head) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq_num(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_glock_nq_init(ptr noundef %gl, ptr noundef %gh) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @__gfs2_holder_init(ptr noundef %gl, i32 noundef 3, i16 noundef zeroext 1028, ptr noundef %gh, i32 noundef %1) #12
  %call = tail call i32 @gfs2_glock_nq(ptr noundef %gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_holder_uninit(ptr noundef %gh) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_jdesc_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_find_jhead(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_freeze_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @recover_local_statfs(ptr nocapture noundef readonly %jd, ptr noundef %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %lh_local_total = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 4
  %6 = ptrtoint ptr %lh_local_total to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lh_local_total, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %lh_local_free = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 5
  %8 = ptrtoint ptr %lh_local_free to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lh_local_free, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool1.not = icmp eq i64 %9, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %lh_local_dinodes = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 6
  %10 = ptrtoint ptr %lh_local_dinodes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lh_local_dinodes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool3.not = icmp eq i64 %11, 0
  br i1 %tobool3.not, label %land.lhs.true2.zero_local_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true2.zero_local_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %zero_local

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sd_statfs_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 37
  %12 = ptrtoint ptr %sd_statfs_inode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_statfs_inode, align 8
  %call4 = tail call fastcc i32 @update_statfs_inode(ptr noundef %jd, ptr noundef %head, ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.zero_local_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.zero_local_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %zero_local

zero_local:                                       ; preds = %if.end.zero_local_crit_edge, %land.lhs.true2.zero_local_crit_edge
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 7
  %14 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %jd_jid, align 4
  %call8 = tail call ptr @find_local_statfs_inode(ptr noundef %5, i32 noundef %15) #12
  %call9 = tail call fastcc i32 @update_statfs_inode(ptr noundef %jd, ptr noundef null, ptr noundef %call8)
  br label %out

out:                                              ; preds = %zero_local, %if.end.out_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clean_journal(ptr noundef %jd, ptr nocapture noundef readonly %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %lh_blkno = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 3
  %6 = ptrtoint ptr %lh_blkno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lh_blkno, align 8
  %inc.i = add i32 %7, 1
  %jd_blocks.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 8
  %8 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jd_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %9)
  %cmp.i = icmp eq i32 %inc.i, %9
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %head, align 8
  %add = add i64 %11, 1
  tail call void @gfs2_write_log_header(ptr noundef %5, ptr noundef %jd, i64 noundef %add, i32 noundef 0, i32 noundef %spec.store.select.i, i32 noundef 33, i32 noundef 399360) #12
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 7
  %12 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jd_jid, align 4
  %sd_lockstruct = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 23
  %14 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sd_lockstruct, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp eq i32 %13, %15
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sd_log_flush_head = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 103
  %16 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select.i, ptr %sd_log_flush_head, align 8
  tail call void @gfs2_log_incr_head(ptr noundef %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_freeze_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_recovery_done(ptr noundef %sdp, i32 noundef %jid, i32 noundef %message) unnamed_addr #0 align 64 {
entry:
  %env_jid = alloca [20 x i8], align 1
  %env_status = alloca [20 x i8], align 1
  %envp = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %env_jid) #12
  %0 = call ptr @memset(ptr %env_jid, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %env_status) #12
  %1 = call ptr @memset(ptr %env_status, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp) #12
  %2 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 1
  %3 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 2
  %4 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %env_jid, ptr %envp, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %env_status, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %3, align 4
  %ls_recover_jid_done = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 4
  %7 = ptrtoint ptr %ls_recover_jid_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %jid, ptr %ls_recover_jid_done, align 4
  %ls_recover_jid_status = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 5
  %8 = ptrtoint ptr %ls_recover_jid_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %message, ptr %ls_recover_jid_status, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %env_jid, ptr noundef nonnull @.str.50, i32 noundef %jid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 309, i32 %message)
  %cmp = icmp eq i32 %message, 309
  %cond = select i1 %cmp, ptr @.str.43, ptr @.str.42
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %env_status, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond)
  %sd_kobj = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 2
  %call7 = call i32 @kobject_uevent_env(ptr noundef %sd_kobj, i32 noundef 2, ptr noundef nonnull %envp) #12
  %ls_ops = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 2
  %9 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ls_ops, align 4
  %lm_recovery_result = getelementptr inbounds %struct.lm_lockops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %lm_recovery_result to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lm_recovery_result, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void %12(ptr noundef %sdp, i32 noundef %jid, i32 noundef %message) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %env_status) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %env_jid) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_recover_journal(ptr noundef %jd, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_flags = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %jd_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @gfs_recovery_wq, align 4
  %jd_work = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %jd_work) #12
  br i1 %call.i, label %do.end13, label %do.body7, !prof !98

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 576, 0\0A.popsection", ""() #12, !srcloc !100
  unreachable

do.end13:                                         ; preds = %if.end
  br i1 %wait, label %if.then15, label %do.end13.cleanup_crit_edge

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %do.end13
  tail call void @__might_sleep(ptr noundef nonnull @.str.52, i32 noundef 73) #12
  %1 = ptrtoint ptr %jd_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %jd_flags, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then15.wait_on_bit.exit_crit_edge, label %if.end.i

if.then15.wait_on_bit.exit_crit_edge:             ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_on_bit.exit

if.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %jd_flags, i32 noundef 1, ptr noundef nonnull @bit_wait, i32 noundef 2) #12
  br label %wait_on_bit.exit

wait_on_bit.exit:                                 ; preds = %if.end.i, %if.then15.wait_on_bit.exit_crit_edge
  %jd_recover_error = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 9
  %4 = ptrtoint ptr %jd_recover_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jd_recover_error, align 4
  br label %cleanup

cleanup:                                          ; preds = %wait_on_bit.exit, %do.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %5, %wait_on_bit.exit ], [ 0, %do.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_metatype_check_ii(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_statfs_inode(ptr nocapture noundef readonly %jd, ptr noundef readonly %head, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %sc = alloca %struct.gfs2_statfs_change_host, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sc) #12
  %7 = getelementptr inbounds %struct.gfs2_statfs_change_host, ptr %sc, i32 0, i32 1
  %8 = getelementptr inbounds %struct.gfs2_statfs_change_host, ptr %sc, i32 0, i32 2
  %tobool.not = icmp eq ptr %inode, null
  %9 = call ptr @memset(ptr %sc, i32 255, i32 24)
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !101

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/recovery.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 319, 0\0A.popsection", ""() #12, !srcloc !102
  unreachable

do.end9:                                          ; preds = %entry
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %10 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_no_addr.i, align 8
  %call.i = call i32 @gfs2_meta_buffer(ptr noundef nonnull %inode, i32 noundef 4, i64 noundef %11, ptr noundef nonnull %bh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %do.end9.out_crit_edge

do.end9.out_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end14:                                         ; preds = %do.end9
  %sd_statfs_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %sd_statfs_spin) #12
  %tobool15.not = icmp eq ptr %head, null
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bh, align 4
  %b_data31 = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data31, align 4
  %add.ptr32 = getelementptr i8, ptr %15, i32 232
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_statfs_change_in(ptr noundef nonnull %sc, ptr noundef %add.ptr32) #12
  %lh_local_total = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 4
  %16 = ptrtoint ptr %lh_local_total to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %lh_local_total, align 8
  %18 = ptrtoint ptr %sc to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sc, align 8
  %add = add i64 %19, %17
  store i64 %add, ptr %sc, align 8
  %lh_local_free = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 5
  %20 = ptrtoint ptr %lh_local_free to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lh_local_free, align 8
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %7, align 8
  %add17 = add i64 %23, %21
  store i64 %add17, ptr %7, align 8
  %lh_local_dinodes = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 6
  %24 = ptrtoint ptr %lh_local_dinodes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lh_local_dinodes, align 8
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %8, align 8
  %add18 = add i64 %27, %25
  store i64 %add18, ptr %8, align 8
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bh, align 4
  %b_data19 = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %b_data19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data19, align 4
  %add.ptr20 = getelementptr i8, ptr %31, i32 232
  call void @gfs2_statfs_change_out(ptr noundef nonnull %sc, ptr noundef %add.ptr20) #12
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 110
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 7
  %32 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %jd_jid, align 4
  %34 = ptrtoint ptr %sc to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sc, align 8
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %7, align 8
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %8, align 8
  %40 = ptrtoint ptr %lh_local_total to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %lh_local_total, align 8
  %42 = ptrtoint ptr %lh_local_free to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %lh_local_free, align 8
  %44 = ptrtoint ptr %lh_local_dinodes to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %lh_local_dinodes, align 8
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %sd_fsname, i32 noundef %33, i64 noundef %35, i64 noundef %37, i64 noundef %39, i64 noundef %41, i64 noundef %43, i64 noundef %45) #18
  br label %if.end36

if.else:                                          ; preds = %if.end14
  %46 = call ptr @memset(ptr %add.ptr32, i32 0, i32 24)
  %jd_jid33 = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 7
  %47 = ptrtoint ptr %jd_jid33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %jd_jid33, align 4
  %sd_lockstruct = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 23
  %49 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sd_lockstruct, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp = icmp eq i32 %48, %50
  br i1 %cmp, label %if.then34, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sd_statfs_local = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 45
  %51 = call ptr @memset(ptr %sd_statfs_local, i32 0, i32 24)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.else.if.end36_crit_edge, %if.then16
  call void @_raw_spin_unlock(ptr noundef %sd_statfs_spin) #12
  %52 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %53) #12
  %54 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.end36.brelse.exit_crit_edge, label %if.then.i

if.end36.brelse.exit_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %55) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end36.brelse.exit_crit_edge
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %56 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_gl, align 4
  %call38 = call i32 @gfs2_inode_metasync(ptr noundef %57) #12
  br label %out

out:                                              ; preds = %brelse.exit, %do.end9.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sc) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_local_statfs_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_statfs_change_in(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_statfs_change_out(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_inode_metasync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_buffer(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_write_log_header(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_incr_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind readnone willreturn }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !62, !64, !66, !68, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__func__.gfs2_replay_read_block, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/recovery.c", i32 46, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/gfs2/recovery.c", i32 417, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gfs2_recover_func._entry, !4, !"_entry", i1 false, i1 false}
!7 = !{ptr @gfs2_recover_func._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/gfs2/recovery.c", i32 425, i32 3}
!10 = !{ptr @gfs2_recover_func._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gfs2_recover_func._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/gfs2/recovery.c", i32 439, i32 4}
!14 = !{ptr @gfs2_recover_func._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gfs2_recover_func._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/gfs2/recovery.c", i32 452, i32 3}
!18 = !{ptr @gfs2_recover_func._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @gfs2_recover_func._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/gfs2/recovery.c", i32 456, i32 2}
!22 = !{ptr @gfs2_recover_func._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @gfs2_recover_func._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/gfs2/recovery.c", i32 466, i32 2}
!26 = !{ptr @gfs2_recover_func._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gfs2_recover_func._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/gfs2/recovery.c", i32 470, i32 3}
!30 = !{ptr @gfs2_recover_func._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @gfs2_recover_func._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/gfs2/recovery.c", i32 489, i32 6}
!34 = !{ptr @gfs2_recover_func._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @gfs2_recover_func._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/gfs2/recovery.c", i32 491, i32 6}
!38 = !{ptr @gfs2_recover_func._entry.24, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @gfs2_recover_func._entry_ptr.26, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/gfs2/recovery.c", i32 498, i32 4}
!42 = !{ptr @gfs2_recover_func._entry.27, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @gfs2_recover_func._entry_ptr.29, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.31, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/gfs2/recovery.c", i32 505, i32 3}
!46 = !{ptr @gfs2_recover_func._entry.30, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @gfs2_recover_func._entry_ptr.32, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.34, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/gfs2/recovery.c", i32 529, i32 3}
!50 = !{ptr @gfs2_recover_func._entry.33, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @gfs2_recover_func._entry_ptr.35, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.37, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/gfs2/recovery.c", i32 545, i32 2}
!54 = !{ptr @gfs2_recover_func._entry.36, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @gfs2_recover_func._entry_ptr.38, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.40, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/gfs2/recovery.c", i32 557, i32 2}
!58 = !{ptr @gfs2_recover_func._entry.39, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @gfs2_recover_func._entry_ptr.41, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.42, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.43, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @gfs_recovery_wq, !63, !"gfs_recovery_wq", i1 false, i1 false}
!63 = !{!"../fs/gfs2/recovery.c", i32 30, i32 26}
!64 = !{ptr @__func__.foreach_descriptor, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/gfs2/recovery.c", i32 231, i32 5}
!66 = !{ptr @.str.44, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/gfs2/util.h", i32 104, i32 3}
!68 = !{ptr @.str.45, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.46, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @gfs2_meta_check._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @gfs2_meta_check._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/gfs2/util.h", i32 126, i32 38}
!74 = !{ptr @.str.48, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/gfs2/recovery.c", i32 335, i32 3}
!76 = !{ptr @.str.49, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @update_statfs_inode._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @update_statfs_inode._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/gfs2/recovery.c", i32 291, i32 19}
!81 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/gfs2/recovery.c", i32 292, i32 22}
!83 = !{ptr @.str.52, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"auto-init"}
!95 = !{i64 713929, i64 713956}
!96 = !{i64 714624, i64 714651, i64 714684, i64 714705, i64 714732, i64 714758}
!97 = !{i8 0, i8 2}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2155177234}
!100 = !{i64 2155177674, i64 2155178157, i64 2155177711, i64 2155177767, i64 2155177801, i64 2155177825, i64 2155177866, i64 2155177887, i64 2155177915, i64 2155177949}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i64 2155141642, i64 2155142125, i64 2155141679, i64 2155141735, i64 2155141769, i64 2155141793, i64 2155141834, i64 2155141855, i64 2155141883, i64 2155141917}
