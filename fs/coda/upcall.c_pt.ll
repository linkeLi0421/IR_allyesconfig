; ModuleID = '/llk/IR_all_yes/fs/coda/upcall.c_pt.bc'
source_filename = "../fs/coda/upcall.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pid_namespace = type opaque
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.coda_in_hdr = type { i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
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
%struct.venus_comm = type { i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex }
%struct.upc_req = type { %struct.list_head, ptr, i16, i16, i16, i16, i32, %struct.wait_queue_head }
%struct.coda_out_hdr = type { i32, i32, i32 }
%struct.coda_getattr_in = type { %struct.coda_in_hdr, %struct.CodaFid }
%struct.CodaFid = type { [4 x i32] }
%struct.coda_setattr_in = type { %struct.coda_in_hdr, %struct.CodaFid, %struct.coda_vattr }
%struct.coda_vattr = type { i32, i16, i16, i32, i32, i32, i64, i32, %struct.coda_timespec, %struct.coda_timespec, %struct.coda_timespec, i32, i32, i64, i64, i64 }
%struct.coda_timespec = type { i64, i32 }
%struct.coda_lookup_in = type { %struct.coda_in_hdr, %struct.CodaFid, i32, i32 }
%struct.coda_lookup_out = type { %struct.coda_out_hdr, %struct.CodaFid, i32 }
%struct.coda_close_in = type { %struct.coda_in_hdr, %struct.CodaFid, i32 }
%struct.coda_open_by_fd_in = type { %struct.coda_in_hdr, %struct.CodaFid, i32 }
%struct.coda_mkdir_in = type { %struct.coda_in_hdr, %struct.CodaFid, %struct.coda_vattr, i32 }
%struct.coda_mkdir_out = type { %struct.coda_out_hdr, %struct.CodaFid, %struct.coda_vattr }
%struct.coda_rename_in = type { %struct.coda_in_hdr, %struct.CodaFid, i32, %struct.CodaFid, i32 }
%struct.coda_create_in = type { %struct.coda_in_hdr, %struct.CodaFid, %struct.coda_vattr, i32, i32, i32 }
%struct.coda_create_out = type { %struct.coda_out_hdr, %struct.CodaFid, %struct.coda_vattr }
%struct.coda_rmdir_in = type { %struct.coda_in_hdr, %struct.CodaFid, i32 }
%struct.coda_remove_in = type { %struct.coda_in_hdr, %struct.CodaFid, i32 }
%struct.coda_readlink_in = type { %struct.coda_in_hdr, %struct.CodaFid }
%struct.coda_link_in = type { %struct.coda_in_hdr, %struct.CodaFid, %struct.CodaFid, i32 }
%struct.coda_symlink_in = type { %struct.coda_in_hdr, %struct.CodaFid, i32, %struct.coda_vattr, i32 }
%struct.coda_fsync_in = type { %struct.coda_in_hdr, %struct.CodaFid }
%struct.coda_access_in = type { %struct.coda_in_hdr, %struct.CodaFid, i32 }
%struct.PioctlData = type { ptr, i32, %struct.ViceIoctl }
%struct.ViceIoctl = type { ptr, ptr, i16, i16 }
%struct.coda_ioctl_in = type { %struct.coda_in_hdr, %struct.CodaFid, i32, i32, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { %struct.spinlock, i32 }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.coda_statfs_out = type { %struct.coda_out_hdr, %struct.coda_statfs }
%struct.coda_statfs = type { i32, i32, i32, i32, i32 }
%struct.coda_access_intent_in = type { %struct.coda_in_hdr, %struct.CodaFid, i32, i32, i32 }
%struct.coda_zapdir_out = type { %struct.coda_out_hdr, %struct.CodaFid }
%struct.coda_zapfile_out = type { %struct.coda_out_hdr, %struct.CodaFid }
%struct.coda_purgefid_out = type { %struct.coda_out_hdr, %struct.CodaFid }
%struct.coda_replace_out = type { %struct.coda_out_hdr, %struct.CodaFid, %struct.CodaFid }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@venus_pioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014coda: %s: Venus returns: %d for %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"venus_pioctl\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/coda/upcall.c\00", [47 x i8] zeroinitializer }, align 32
@venus_pioctl._entry_ptr = internal global ptr @venus_pioctl._entry, section ".printk_index", align 4
@init_pid_ns = external dso_local global %struct.pid_namespace, align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@coda_upcall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015coda: Venus dead, not sending upcall\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"coda_upcall\00", [20 x i8] zeroinitializer }, align 32
@coda_upcall._entry_ptr = internal global ptr @coda_upcall._entry, section ".printk_index", align 4
@coda_upcall.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&req->uc_sleep\00", [17 x i8] zeroinitializer }, align 32
@coda_upcall._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014coda: Unexpected interruption.\0A\00", [62 x i8] zeroinitializer }, align 32
@coda_upcall._entry_ptr.11 = internal global ptr @coda_upcall._entry.9, section ".printk_index", align 4
@coda_upcall._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016coda: Venus dead, not sending signal.\0A\00", [55 x i8] zeroinitializer }, align 32
@coda_upcall._entry_ptr.14 = internal global ptr @coda_upcall._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@coda_timeout = external dso_local local_unnamed_addr global i32, align 4
@coda_hard = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 24, i64 26, i64 27, i64 28, i64 30]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 24, i64 25, i64 26, i64 27, i64 28, i64 30]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 24, i64 27, i64 28, i64 30]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 16, i64 5, i64 35, i64 36, i64 37]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 16, i64 5, i64 35, i64 36, i64 37]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 521, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 230, i32 6 }
@___asan_gen_.37 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 214, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 156, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 721, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 741, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 776, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [20 x i8] c"../fs/coda/upcall.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 786, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @coda_upcall._entry, ptr @coda_upcall._entry.12, ptr @coda_upcall._entry.9, ptr @coda_upcall._entry_ptr, ptr @coda_upcall._entry_ptr.11, ptr @coda_upcall._entry_ptr.14, ptr @venus_pioctl._entry, ptr @venus_pioctl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @coda_upcall.__key, ptr @.str.8, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_pioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_upcall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_upcall.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_upcall._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_upcall._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_rootfid(ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %fidp) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 28, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %0 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %call.i.i.i, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i.i, ptr %pid.i, align 8
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i21 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i21 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  %16 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 28, ptr %outsize, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  %call4 = call fastcc i32 @coda_upcall(ptr noundef %18, i32 noundef 28, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = call ptr @memcpy(ptr %fidp, ptr %pgid.i, i32 16)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call4, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coda_upcall(ptr noundef %vcp, i32 noundef %inSize, ptr noundef %outSize, ptr noundef %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_mutex = getelementptr inbounds %struct.venus_comm, ptr %vcp, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #9
  %vc_inuse = getelementptr inbounds %struct.venus_comm, ptr %vcp, i32 0, i32 4
  %0 = ptrtoint ptr %vc_inuse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #13
  br label %exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 76) #14
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.exit_crit_edge, label %if.end4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %vcp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vcp, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %vcp, align 4
  %unique = getelementptr inbounds %struct.coda_in_hdr, ptr %buffer, i32 0, i32 1
  %5 = ptrtoint ptr %unique to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %unique, align 4
  %uc_data = getelementptr inbounds %struct.upc_req, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %uc_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buffer, ptr %uc_data, align 8
  %tobool5.not = icmp eq ptr %outSize, null
  %conv = zext i1 %tobool5.not to i16
  %uc_flags = getelementptr inbounds %struct.upc_req, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %uc_flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %uc_flags, align 4
  %conv6 = trunc i32 %inSize to i16
  %uc_inSize = getelementptr inbounds %struct.upc_req, ptr %call7.i, i32 0, i32 3
  %8 = ptrtoint ptr %uc_inSize to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6, ptr %uc_inSize, align 2
  br i1 %tobool5.not, label %if.end4.cond.end_crit_edge, label %land.lhs.true

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

land.lhs.true:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %outSize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %outSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  %.pre = trunc i32 %10 to i16
  %spec.select = select i1 %tobool8.not, i16 %conv6, i16 %.pre
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %if.end4.cond.end_crit_edge
  %conv10.pre-phi = phi i16 [ %conv6, %if.end4.cond.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %uc_outSize = getelementptr inbounds %struct.upc_req, ptr %call7.i, i32 0, i32 4
  %11 = ptrtoint ptr %uc_outSize to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv10.pre-phi, ptr %uc_outSize, align 8
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer, align 8
  %conv11 = trunc i32 %13 to i16
  %uc_opcode = getelementptr inbounds %struct.upc_req, ptr %call7.i, i32 0, i32 5
  %14 = ptrtoint ptr %uc_opcode to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv11, ptr %uc_opcode, align 2
  %uc_unique = getelementptr inbounds %struct.upc_req, ptr %call7.i, i32 0, i32 6
  %15 = ptrtoint ptr %uc_unique to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc, ptr %uc_unique, align 4
  %uc_sleep = getelementptr inbounds %struct.upc_req, ptr %call7.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %uc_sleep, ptr noundef nonnull @.str.8, ptr noundef nonnull @coda_upcall.__key) #9
  %vc_pending = getelementptr inbounds %struct.venus_comm, ptr %vcp, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.venus_comm, ptr %vcp, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %17, ptr noundef %vc_pending) #9
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_add_tail.exit_crit_edge

cond.end.list_add_tail.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %prev.i, align 4
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vc_pending, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end.list_add_tail.exit_crit_edge
  %vc_waitq = getelementptr inbounds %struct.venus_comm, ptr %vcp, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %vc_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br i1 %tobool5.not, label %list_add_tail.exit.cleanup_crit_edge, label %if.end19

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %list_add_tail.exit
  tail call fastcc void @coda_waitfor_upcall(ptr noundef %vcp, ptr noundef nonnull %call7.i)
  %22 = ptrtoint ptr %uc_flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %uc_flags, align 4
  %conv21 = zext i16 %23 to i32
  %and = and i32 %conv21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %uc_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uc_data, align 8
  %result = getelementptr inbounds %struct.coda_out_hdr, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %result, align 8
  %sub = sub i32 0, %27
  %28 = ptrtoint ptr %uc_outSize to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %uc_outSize, align 8
  %conv26 = zext i16 %29 to i32
  %30 = ptrtoint ptr %outSize to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv26, ptr %outSize, align 4
  br label %exit

if.end27:                                         ; preds = %if.end19
  %and30 = and i32 %conv21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %if.end27.do.end38_crit_edge

if.end27.do.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

lor.lhs.false:                                    ; preds = %if.end27
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stack.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %39 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %lor.lhs.false.if.end41_crit_edge, !prof !47

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

signal_pending.exit:                              ; preds = %lor.lhs.false
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %36, align 4
  %and1.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool34.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool34.not, label %signal_pending.exit.do.end38_crit_edge, label %signal_pending.exit.if.end41_crit_edge

signal_pending.exit.if.end41_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

signal_pending.exit.do.end38_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

do.end38:                                         ; preds = %signal_pending.exit.do.end38_crit_edge, %if.end27.do.end38_crit_edge
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %exit

if.end41:                                         ; preds = %signal_pending.exit.if.end41_crit_edge, %lor.lhs.false.if.end41_crit_edge
  %42 = and i16 %23, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool45.not = icmp eq i16 %42, 0
  br i1 %tobool45.not, label %if.end41.exit_crit_edge, label %if.end47

if.end41.exit_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end47:                                         ; preds = %if.end41
  %43 = ptrtoint ptr %vc_inuse to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vc_inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool49.not = icmp eq i32 %44, 0
  br i1 %tobool49.not, label %do.end53, label %if.end56

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %exit

if.end56:                                         ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i133 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3264, i32 noundef 76) #14
  %tobool58.not = icmp eq ptr %call7.i133, null
  br i1 %tobool58.not, label %if.end56.exit_crit_edge, label %if.end60

if.end56.exit_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end60:                                         ; preds = %if.end56
  %call.i.i134 = tail call noalias ptr @kvmalloc_node(i32 noundef 20, i32 noundef 3520, i32 noundef -1) #12
  %tobool62.not = icmp eq ptr %call.i.i134, null
  br i1 %tobool62.not, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i133) #9
  br label %exit

if.end64:                                         ; preds = %if.end60
  %46 = ptrtoint ptr %call.i.i134 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 23, ptr %call.i.i134, align 8
  %47 = ptrtoint ptr %uc_unique to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %uc_unique, align 4
  %unique67 = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i134, i32 0, i32 1
  %49 = ptrtoint ptr %unique67 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %unique67, align 4
  %uc_flags68 = getelementptr inbounds %struct.upc_req, ptr %call7.i133, i32 0, i32 2
  %50 = ptrtoint ptr %uc_flags68 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %uc_flags68, align 4
  %uc_opcode71 = getelementptr inbounds %struct.upc_req, ptr %call7.i133, i32 0, i32 5
  %51 = ptrtoint ptr %uc_opcode71 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 23, ptr %uc_opcode71, align 2
  %uc_unique73 = getelementptr inbounds %struct.upc_req, ptr %call7.i133, i32 0, i32 6
  %52 = ptrtoint ptr %uc_unique73 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %48, ptr %uc_unique73, align 4
  %uc_data74 = getelementptr inbounds %struct.upc_req, ptr %call7.i133, i32 0, i32 1
  %53 = ptrtoint ptr %uc_data74 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i134, ptr %uc_data74, align 8
  %uc_inSize75 = getelementptr inbounds %struct.upc_req, ptr %call7.i133, i32 0, i32 3
  %54 = ptrtoint ptr %uc_inSize75 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 20, ptr %uc_inSize75, align 2
  %uc_outSize76 = getelementptr inbounds %struct.upc_req, ptr %call7.i133, i32 0, i32 4
  %55 = ptrtoint ptr %uc_outSize76 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 20, ptr %uc_outSize76, align 8
  %56 = ptrtoint ptr %vc_pending to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vc_pending, align 4
  %call.i.i135 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i133, ptr noundef %vc_pending, ptr noundef %57) #9
  br i1 %call.i.i135, label %if.end.i.i137, label %if.end64.list_add.exit_crit_edge

if.end64.list_add.exit_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i137:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i133, ptr %prev1.i.i, align 4
  %59 = ptrtoint ptr %call7.i133 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %call7.i133, align 8
  %prev3.i.i136 = getelementptr inbounds %struct.list_head, ptr %call7.i133, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i136 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %vc_pending, ptr %prev3.i.i136, align 4
  %61 = ptrtoint ptr %vc_pending to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %call7.i133, ptr %vc_pending, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i137, %if.end64.list_add.exit_crit_edge
  tail call void @__wake_up(ptr noundef %vc_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %exit

exit:                                             ; preds = %list_add.exit, %if.then63, %if.end56.exit_crit_edge, %do.end53, %if.end41.exit_crit_edge, %do.end38, %if.then23, %if.end.exit_crit_edge, %do.end
  %req.0 = phi ptr [ %call7.i, %if.then23 ], [ %call7.i, %do.end38 ], [ %call7.i, %list_add.exit ], [ %call7.i, %if.then63 ], [ %call7.i, %if.end56.exit_crit_edge ], [ %call7.i, %do.end53 ], [ %call7.i, %if.end41.exit_crit_edge ], [ null, %do.end ], [ null, %if.end.exit_crit_edge ]
  %error.0 = phi i32 [ %sub, %if.then23 ], [ -4, %do.end38 ], [ -4, %list_add.exit ], [ -12, %if.then63 ], [ -12, %if.end56.exit_crit_edge ], [ -4, %do.end53 ], [ -4, %if.end41.exit_crit_edge ], [ -6, %do.end ], [ -12, %if.end.exit_crit_edge ]
  tail call void @kfree(ptr noundef %req.0) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %list_add_tail.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %exit ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vc_mutex) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_getattr(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, ptr nocapture noundef writeonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 136, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %0 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %call.i.i.i, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i.i, ptr %pid.i, align 8
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i23 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i23 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  %16 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 136, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_getattr_in, ptr %call.i.i.i, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %VFid, ptr %fid, i32 16)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %call4 = call fastcc i32 @coda_upcall(ptr noundef %19, i32 noundef 136, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = call ptr @memcpy(ptr %attr, ptr %uid.i, i32 120)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call4, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_setattr(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, ptr nocapture noundef readonly %vattr) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 160, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %0 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %call.i.i.i, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i.i, ptr %pid.i, align 8
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i19 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i19 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 160, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_setattr_in, ptr %call.i.i.i, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %VFid, ptr %fid, i32 16)
  %attr = getelementptr inbounds %struct.coda_setattr_in, ptr %call.i.i.i, i32 0, i32 2
  %18 = call ptr @memcpy(ptr %attr, ptr %vattr, i32 120)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %call4 = call fastcc i32 @coda_upcall(ptr noundef %20, i32 noundef 160, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_lookup(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, ptr nocapture noundef readonly %name, i32 noundef %length, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %resfid) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %add1 = add i32 %length, 45
  %0 = tail call i32 @llvm.umax.i32(i32 %add1, i32 32)
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %1 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %call.i.i.i, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %pid.i, align 8
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %8, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i40 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i40 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  %17 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %0, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_lookup_in, ptr %call.i.i.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %VFid, ptr %fid, i32 16)
  %name4 = getelementptr inbounds %struct.coda_lookup_in, ptr %call.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 44, ptr %name4, align 4
  %flags = getelementptr inbounds %struct.coda_lookup_in, ptr %call.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %flags, align 8
  %add.ptr = getelementptr i8, ptr %call.i.i.i, i32 44
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %name, i32 %length)
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %length
  %22 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %add.ptr6, align 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %call8 = call fastcc i32 @coda_upcall(ptr noundef %24, i32 noundef %0, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = call ptr @memcpy(ptr %resfid, ptr %pgid.i, i32 16)
  %vtype = getelementptr inbounds %struct.coda_lookup_out, ptr %call.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %vtype to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vtype, align 4
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %type, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ %call8, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_close(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, i32 noundef %flags, [1 x i32] %uid.coerce) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 40, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %0 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %call.i.i.i, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i.i, ptr %pid.i, align 8
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i24 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i24 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 40, ptr %outsize, align 4
  %call4 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %uid.coerce) #9
  %17 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call4, ptr %uid.i, align 8
  %VFid = getelementptr inbounds %struct.coda_close_in, ptr %call.i.i.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %VFid, ptr %fid, i32 16)
  %flags6 = getelementptr inbounds %struct.coda_close_in, ptr %call.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %flags, ptr %flags6, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i, align 16
  %call8 = call fastcc i32 @coda_upcall(ptr noundef %21, i32 noundef 40, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call8, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_open(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, i32 noundef %flags, ptr nocapture noundef writeonly %fh) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 40, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %0 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %call.i.i.i, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i.i, ptr %pid.i, align 8
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i25 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i25 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  %16 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 40, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_open_by_fd_in, ptr %call.i.i.i, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %VFid, ptr %fid, i32 16)
  %flags3 = getelementptr inbounds %struct.coda_open_by_fd_in, ptr %call.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %flags, ptr %flags3, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %call5 = call fastcc i32 @coda_upcall(ptr noundef %20, i32 noundef 40, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uid.i, align 8
  %23 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %fh, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call5, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_mkdir(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %dirfid, ptr nocapture noundef readonly %name, i32 noundef %length, ptr nocapture noundef writeonly %newfid, ptr nocapture noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %add1 = add i32 %length, 169
  %0 = tail call i32 @llvm.umax.i32(i32 %add1, i32 152)
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %1 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %call.i.i.i, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %pid.i, align 8
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %8, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i42 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i42 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  %17 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %0, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_mkdir_in, ptr %call.i.i.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %VFid, ptr %dirfid, i32 16)
  %attr = getelementptr inbounds %struct.coda_mkdir_in, ptr %call.i.i.i, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %attr, ptr %attrs, i32 120)
  %name4 = getelementptr inbounds %struct.coda_mkdir_in, ptr %call.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 168, ptr %name4, align 8
  %add.ptr = getelementptr i8, ptr %call.i.i.i, i32 168
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %name, i32 %length)
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %length
  %22 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %add.ptr6, align 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %call8 = call fastcc i32 @coda_upcall(ptr noundef %24, i32 noundef %0, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %attr10 = getelementptr inbounds %struct.coda_mkdir_out, ptr %call.i.i.i, i32 0, i32 2
  %25 = call ptr @memcpy(ptr %attrs, ptr %attr10, i32 120)
  %26 = call ptr @memcpy(ptr %newfid, ptr %pgid.i, i32 16)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ %call8, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_rename(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %old_fid, ptr nocapture noundef readonly %new_fid, i32 noundef %old_length, i32 noundef %new_length, ptr nocapture noundef readonly %old_name, ptr nocapture noundef readonly %new_name) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %add1 = add i32 %old_length, 68
  %add2 = add i32 %add1, %new_length
  %0 = tail call i32 @llvm.umax.i32(i32 %add2, i32 12)
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %1 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 14, ptr %call.i.i.i, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %pid.i, align 8
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %8, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i53 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i53 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %0, ptr %outsize, align 4
  %sourceFid = getelementptr inbounds %struct.coda_rename_in, ptr %call.i.i.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %sourceFid, ptr %old_fid, i32 16)
  %destFid = getelementptr inbounds %struct.coda_rename_in, ptr %call.i.i.i, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %destFid, ptr %new_fid, i32 16)
  %srcname = getelementptr inbounds %struct.coda_rename_in, ptr %call.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %srcname to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 60, ptr %srcname, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i.i, i32 60
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %old_name, i32 %old_length)
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %old_length
  %22 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %add.ptr7, align 1
  %23 = add i32 %old_length, 64
  %add8 = and i32 %23, -4
  %destname = getelementptr inbounds %struct.coda_rename_in, ptr %call.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %destname to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add8, ptr %destname, align 8
  %add.ptr11 = getelementptr i8, ptr %call.i.i.i, i32 %add8
  %25 = call ptr @memcpy(ptr %add.ptr11, ptr %new_name, i32 %new_length)
  %add.ptr13 = getelementptr i8, ptr %add.ptr11, i32 %new_length
  %26 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %add.ptr13, align 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %call15 = call fastcc i32 @coda_upcall(ptr noundef %28, i32 noundef %0, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ %call15, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_create(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %dirfid, ptr nocapture noundef readonly %name, i32 noundef %length, i32 noundef %excl, i32 noundef %mode, ptr nocapture noundef writeonly %newfid, ptr nocapture noundef writeonly %attrs) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %add1 = add i32 %length, 177
  %0 = tail call i32 @llvm.umax.i32(i32 %add1, i32 152)
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %1 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 11, ptr %call.i.i.i, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %pid.i, align 8
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %8, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i46 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i46 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  %17 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %0, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_create_in, ptr %call.i.i.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %VFid, ptr %dirfid, i32 16)
  %conv = trunc i32 %mode to i16
  %va_mode = getelementptr inbounds %struct.coda_create_in, ptr %call.i.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %va_mode to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %va_mode, align 4
  %excl4 = getelementptr inbounds %struct.coda_create_in, ptr %call.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %excl4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %excl, ptr %excl4, align 8
  %mode5 = getelementptr inbounds %struct.coda_create_in, ptr %call.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %mode5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mode, ptr %mode5, align 4
  %name6 = getelementptr inbounds %struct.coda_create_in, ptr %call.i.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 176, ptr %name6, align 8
  %add.ptr = getelementptr i8, ptr %call.i.i.i, i32 176
  %23 = call ptr @memcpy(ptr %add.ptr, ptr %name, i32 %length)
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %length
  %24 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %add.ptr8, align 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %call10 = call fastcc i32 @coda_upcall(ptr noundef %26, i32 noundef %0, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %attr12 = getelementptr inbounds %struct.coda_create_out, ptr %call.i.i.i, i32 0, i32 2
  %27 = call ptr @memcpy(ptr %attrs, ptr %attr12, i32 120)
  %28 = call ptr @memcpy(ptr %newfid, ptr %pgid.i, i32 16)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ %call10, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_rmdir(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %dirfid, ptr nocapture noundef readonly %name, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %add1 = add i32 %length, 41
  %0 = tail call i32 @llvm.umax.i32(i32 %add1, i32 12)
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %1 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %call.i.i.i, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %pid.i, align 8
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %8, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i33 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i33 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %0, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_rmdir_in, ptr %call.i.i.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %VFid, ptr %dirfid, i32 16)
  %name4 = getelementptr inbounds %struct.coda_rmdir_in, ptr %call.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 40, ptr %name4, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i.i, i32 40
  %20 = call ptr @memcpy(ptr %add.ptr, ptr %name, i32 %length)
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %length
  %21 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %add.ptr6, align 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %call8 = call fastcc i32 @coda_upcall(ptr noundef %23, i32 noundef %0, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ %call8, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_remove(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %dirfid, ptr nocapture noundef readonly %name, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %add1 = add i32 %length, 41
  %0 = tail call i32 @llvm.umax.i32(i32 %add1, i32 12)
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %1 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %call.i.i.i, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %pid.i, align 8
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %8, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i33 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i33 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %0, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_remove_in, ptr %call.i.i.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %VFid, ptr %dirfid, i32 16)
  %name4 = getelementptr inbounds %struct.coda_remove_in, ptr %call.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 40, ptr %name4, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i.i, i32 40
  %20 = call ptr @memcpy(ptr %add.ptr, ptr %name, i32 %length)
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %length
  %21 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %add.ptr6, align 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %call8 = call fastcc i32 @coda_upcall(ptr noundef %23, i32 noundef %0, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ %call8, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_readlink(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, ptr nocapture noundef writeonly %buffer, ptr nocapture noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %add = add i32 %1, 20
  %2 = tail call i32 @llvm.umax.i32(i32 %add, i32 36)
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %2, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %3 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 19, ptr %call.i.i.i, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i.i, ptr %pid.i, align 8
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %10, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i40 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i40 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  %19 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %2, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_readlink_in, ptr %call.i.i.i, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %VFid, ptr %fid, i32 16)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i, align 16
  %call4 = call fastcc i32 @coda_upcall(ptr noundef %22, i32 noundef %2, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %pgid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pgid.i, align 4
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp6.not = icmp slt i32 %24, %26
  %sub = add i32 %26, -1
  %spec.select = select i1 %cmp6.not, i32 %24, i32 %sub
  %27 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select, ptr %length, align 4
  %28 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %uid.i, align 8
  %30 = ptrtoint ptr %29 to i32
  %add.ptr = getelementptr i8, ptr %call.i.i.i, i32 %30
  %31 = call ptr @memcpy(ptr %buffer, ptr %add.ptr, i32 %spec.select)
  %add.ptr9 = getelementptr i8, ptr %buffer, i32 %spec.select
  %32 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %add.ptr9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  %retval.0 = phi i32 [ %18, %if.then ], [ %call4, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_link(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, ptr nocapture noundef readonly %dirfid, ptr nocapture noundef readonly %name, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %add1 = add i32 %len, 57
  %0 = tail call i32 @llvm.umax.i32(i32 %add1, i32 12)
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %1 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 13, ptr %call.i.i.i, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %pid.i, align 8
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %8, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i33 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i33 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %0, ptr %outsize, align 4
  %sourceFid = getelementptr inbounds %struct.coda_link_in, ptr %call.i.i.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %sourceFid, ptr %fid, i32 16)
  %destFid = getelementptr inbounds %struct.coda_link_in, ptr %call.i.i.i, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %destFid, ptr %dirfid, i32 16)
  %tname = getelementptr inbounds %struct.coda_link_in, ptr %call.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %tname to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 56, ptr %tname, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i.i, i32 56
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %name, i32 %len)
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %len
  %22 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %add.ptr5, align 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %call7 = call fastcc i32 @coda_upcall(ptr noundef %24, i32 noundef %0, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ %call7, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_symlink(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, ptr nocapture noundef readonly %name, i32 noundef %len, ptr nocapture noundef readonly %symname, i32 noundef %symlen) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %add1 = add i32 %len, 176
  %add2 = add i32 %add1, %symlen
  %0 = tail call i32 @llvm.umax.i32(i32 %add2, i32 12)
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %1 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 18, ptr %call.i.i.i, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %pid.i, align 8
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %8, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i52 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i52 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %0, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_symlink_in, ptr %call.i.i.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %VFid, ptr %fid, i32 16)
  %srcname = getelementptr inbounds %struct.coda_symlink_in, ptr %call.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %srcname to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 168, ptr %srcname, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i.i, i32 168
  %20 = call ptr @memcpy(ptr %add.ptr, ptr %symname, i32 %symlen)
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %symlen
  %21 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %add.ptr7, align 1
  %22 = add i32 %symlen, 172
  %add8 = and i32 %22, -4
  %tname = getelementptr inbounds %struct.coda_symlink_in, ptr %call.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %tname to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add8, ptr %tname, align 8
  %add.ptr11 = getelementptr i8, ptr %call.i.i.i, i32 %add8
  %24 = call ptr @memcpy(ptr %add.ptr11, ptr %name, i32 %len)
  %add.ptr13 = getelementptr i8, ptr %add.ptr11, i32 %len
  %25 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %add.ptr13, align 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %call15 = call fastcc i32 @coda_upcall(ptr noundef %27, i32 noundef %0, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ %call15, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_fsync(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 36, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %0 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %call.i.i.i, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i.i, ptr %pid.i, align 8
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i18 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i18 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 36, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_fsync_in, ptr %call.i.i.i, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %VFid, ptr %fid, i32 16)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %call4 = call fastcc i32 @coda_upcall(ptr noundef %19, i32 noundef 36, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_access(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 40, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %0 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 9, ptr %call.i.i.i, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i.i, ptr %pid.i, align 8
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i19 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i19 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 40, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_access_in, ptr %call.i.i.i, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %VFid, ptr %fid, i32 16)
  %flags = getelementptr inbounds %struct.coda_access_in, ptr %call.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mask, ptr %flags, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %call4 = call fastcc i32 @coda_upcall(ptr noundef %20, i32 noundef 40, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_pioctl(ptr nocapture noundef readonly %sb, ptr noundef %fid, i32 noundef %cmd, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %call.i.i.i113 = tail call noalias ptr @kvmalloc_node(i32 noundef 8520, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i113, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %0 = ptrtoint ptr %call.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6, ptr %call.i.i.i113, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %call.i.i114 = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i113, i32 0, i32 2
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i.i114, ptr %pid.i, align 8
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i113, i32 0, i32 3
  %8 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i113, i32 0, i32 4
  %14 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i118 = phi ptr [ %call.i.i.i113, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i118 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  %16 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8520, ptr %outsize, align 4
  %vi = getelementptr inbounds %struct.PioctlData, ptr %data, i32 0, i32 2
  %in_size = getelementptr inbounds %struct.PioctlData, ptr %data, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %in_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %in_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %18)
  %cmp = icmp ugt i16 %18, 8192
  br i1 %cmp, label %if.end.exit_crit_edge, label %if.end5

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end5:                                          ; preds = %if.end
  %out_size = getelementptr inbounds %struct.PioctlData, ptr %data, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %out_size to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %out_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %20)
  %cmp8 = icmp ugt i16 %20, 8192
  br i1 %cmp8, label %if.end5.exit_crit_edge, label %if.end11

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end11:                                         ; preds = %if.end5
  %VFid = getelementptr inbounds %struct.coda_ioctl_in, ptr %call.i.i.i113, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %VFid, ptr %fid, i32 16)
  %cmd12 = getelementptr inbounds %struct.coda_ioctl_in, ptr %call.i.i.i113, i32 0, i32 2
  %22 = add i32 %cmd, -524288
  %23 = ptrtoint ptr %cmd12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cmd12, align 4
  %24 = ptrtoint ptr %in_size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %in_size, align 4
  %conv19 = zext i16 %25 to i32
  %len = getelementptr inbounds %struct.coda_ioctl_in, ptr %call.i.i.i113, i32 0, i32 3
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv19, ptr %len, align 8
  %data20 = getelementptr inbounds %struct.coda_ioctl_in, ptr %call.i.i.i113, i32 0, i32 5
  %27 = ptrtoint ptr %data20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 52 to ptr), ptr %data20, align 8
  %add.ptr = getelementptr i8, ptr %call.i.i.i113, i32 52
  %28 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8468, i16 %25)
  %cmp1.i.i = icmp ugt i16 %25, 8468
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !48

if.then3.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef 8468, i32 noundef %conv19) #9
  br label %exit

if.then.i.i.i:                                    ; preds = %if.end11
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %conv19, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %29, i32 %conv19, i32 -1226833920) #15, !srcloc !49
  %asmresult.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !47

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %conv19) #9
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !50
  %and.i.i.i.i = and i32 %33, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %29, i32 noundef %conv19) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #9, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv19, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv19, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end28, label %if.then11.i.i, !prof !47

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %conv19, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %34 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %exit

if.end28:                                         ; preds = %if.end.i.i
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i, align 16
  %37 = ptrtoint ptr %in_size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %in_size, align 4
  %conv32 = zext i16 %38 to i32
  %add = add nuw nsw i32 %conv32, 52
  %call33 = call fastcc i32 @coda_upcall(ptr noundef %36, i32 noundef %add, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i113)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = call ptr @coda_f2s(ptr noundef %fid) #9
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call33, ptr noundef %call39) #13
  br label %exit

if.end41:                                         ; preds = %if.end28
  %39 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %outsize, align 4
  %41 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %uid.i, align 8
  %43 = ptrtoint ptr %42 to i32
  %44 = ptrtoint ptr %pgid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pgid.i, align 4
  %add44 = add i32 %45, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add44)
  %cmp45 = icmp slt i32 %40, %add44
  br i1 %cmp45, label %if.end41.exit_crit_edge, label %if.end48

if.end41.exit_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end48:                                         ; preds = %if.end41
  %46 = ptrtoint ptr %out_size to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %out_size, align 2
  %conv52 = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv52)
  %cmp53 = icmp sgt i32 %45, %conv52
  br i1 %cmp53, label %if.end48.exit_crit_edge, label %if.end56

if.end48.exit_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end56:                                         ; preds = %if.end48
  %out = getelementptr inbounds %struct.PioctlData, ptr %data, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %out, align 4
  %add.ptr59 = getelementptr i8, ptr %call.i.i.i113, i32 %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp9.i.i = icmp slt i32 %45, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i105

land.rhs16.i.i:                                   ; preds = %if.end56
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.exit_crit_edge, label %if.then27.i.i, !prof !47

land.rhs16.i.i.exit_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %exit

if.then.i.i.i105:                                 ; preds = %if.end56
  call void @__check_object_size(ptr noundef %add.ptr59, i32 noundef %45, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #9
  %call.i.i106 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i106, label %if.then.i.i.i105.copy_to_user.exit_crit_edge, label %if.end.i.i110

if.then.i.i.i105.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i110:                                    ; preds = %if.then.i.i.i105
  %50 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %49, i32 %45, i32 -1226833920) #15, !srcloc !53
  %asmresult.i.i108 = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i108)
  %cmp.i6.i109 = icmp eq i32 %asmresult.i.i108, 0
  br i1 %cmp.i6.i109, label %if.then2.i.i, label %if.end.i.i110.copy_to_user.exit_crit_edge

if.end.i.i110.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i111 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr59, i32 noundef %45) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %49, ptr noundef %add.ptr59, i32 noundef %45) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i110.copy_to_user.exit_crit_edge, %if.then.i.i.i105.copy_to_user.exit_crit_edge
  %n.addr.0.i112 = phi i32 [ %45, %if.then.i.i.i105.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %45, %if.end.i.i110.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i112)
  %tobool62.not = icmp eq i32 %n.addr.0.i112, 0
  %spec.select = select i1 %tobool62.not, i32 0, i32 -14
  br label %exit

exit:                                             ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.exit_crit_edge, %if.end48.exit_crit_edge, %if.end41.exit_crit_edge, %do.end38, %if.then11.i.i, %if.then3.i.i, %if.end5.exit_crit_edge, %if.end.exit_crit_edge
  %error.0 = phi i32 [ %call33, %do.end38 ], [ -22, %if.end.exit_crit_edge ], [ -22, %if.end5.exit_crit_edge ], [ -22, %if.end41.exit_crit_edge ], [ -22, %if.end48.exit_crit_edge ], [ -22, %if.then11.i.i ], [ -22, %if.then3.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.exit_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i113) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %error.0, %exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coda_f2s(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %sfs) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 32, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %alloc_upcall.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

alloc_upcall.exit:                                ; preds = %entry
  %0 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 34, ptr %call.i.i.i, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i.i, ptr %pid.i, align 8
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then_crit_edge, label %if.end

alloc_upcall.exit.if.then_crit_edge:              ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %alloc_upcall.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i42 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i42 to i32
  br label %cleanup

if.end:                                           ; preds = %alloc_upcall.exit
  %16 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %outsize, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %17 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %call4 = call fastcc i32 @coda_upcall(ptr noundef %20, i32 noundef 32, ptr noundef nonnull %outsize, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %pgid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pgid.i, align 4
  %conv = sext i32 %22 to i64
  %f_blocks6 = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 2
  %23 = ptrtoint ptr %f_blocks6 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %f_blocks6, align 8
  %24 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %uid.i, align 4
  %conv8 = sext i32 %25 to i64
  %f_bfree9 = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 3
  %26 = ptrtoint ptr %f_bfree9 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv8, ptr %f_bfree9, align 8
  %f_bavail = getelementptr inbounds %struct.coda_statfs_out, ptr %call.i.i.i, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %f_bavail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_bavail, align 4
  %conv11 = sext i32 %28 to i64
  %f_bavail12 = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 4
  %29 = ptrtoint ptr %f_bavail12 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv11, ptr %f_bavail12, align 8
  %f_files = getelementptr inbounds %struct.coda_statfs_out, ptr %call.i.i.i, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %f_files to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_files, align 4
  %conv14 = sext i32 %31 to i64
  %f_files15 = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 5
  %32 = ptrtoint ptr %f_files15 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv14, ptr %f_files15, align 8
  %f_ffree = getelementptr inbounds %struct.coda_statfs_out, ptr %call.i.i.i, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %f_ffree to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f_ffree, align 4
  %conv17 = sext i32 %34 to i64
  %f_ffree18 = getelementptr inbounds %struct.kstatfs, ptr %sfs, i32 0, i32 6
  %35 = ptrtoint ptr %f_ffree18 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv17, ptr %f_ffree18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then5, %if.end.if.end19_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call4, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_access_intent(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, ptr nocapture noundef %access_intent_supported, i32 noundef %count, i64 noundef %ppos, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %outsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outsize) #9
  %0 = and i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %1 = icmp eq i32 %0, 4
  %2 = ptrtoint ptr %access_intent_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %access_intent_supported, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %or.cond = or i1 %1, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 48, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %alloc_upcall.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

alloc_upcall.exit:                                ; preds = %if.end
  %4 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 37, ptr %call.i.i.i, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @init_pid_ns) #9
  %pid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i.i, ptr %pid.i, align 8
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %call.i16.i = tail call i32 @__task_pid_nr_ns(ptr noundef %11, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %pgid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i16.i, ptr %pgid.i, align 4
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call10.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #9
  %uid.i = getelementptr inbounds %struct.coda_in_hdr, ptr %call.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call10.i, ptr %uid.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_upcall.exit.if.then4_crit_edge, label %if.end6

alloc_upcall.exit.if.then4_crit_edge:             ; preds = %alloc_upcall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %alloc_upcall.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i49 = phi ptr [ %call.i.i.i, %alloc_upcall.exit.if.then4_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.if.then4_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i49 to i32
  br label %cleanup

if.end6:                                          ; preds = %alloc_upcall.exit
  %20 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 48, ptr %outsize, align 4
  %VFid = getelementptr inbounds %struct.coda_access_intent_in, ptr %call.i.i.i, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %VFid, ptr %fid, i32 16)
  %count7 = getelementptr inbounds %struct.coda_access_intent_in, ptr %call.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %count7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %count, ptr %count7, align 4
  %conv = trunc i64 %ppos to i32
  %pos = getelementptr inbounds %struct.coda_access_intent_in, ptr %call.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %pos, align 8
  %type8 = getelementptr inbounds %struct.coda_access_intent_in, ptr %call.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %type, ptr %type8, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %cond = select i1 %1, ptr null, ptr %outsize
  %call12 = call fastcc i32 @coda_upcall(ptr noundef %26, i32 noundef 48, ptr noundef %cond, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cond45 = icmp eq i32 %call12, 0
  %or.cond46 = select i1 %1, i1 %cond45, i1 false
  br i1 %or.cond46, label %if.end6.cleanup_crit_edge, label %if.then15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end6
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call12)
  %cmp17 = icmp eq i32 %call12, -95
  br i1 %cmp17, label %if.then19, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %access_intent_supported to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %access_intent_supported, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then15.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then4 ], [ 0, %if.then19 ], [ %call12, %if.then15.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_downcall(ptr noundef %vcp, i32 noundef %opcode, ptr noundef %out, i32 noundef %nbytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %opcode, label %entry.sw.epilog_crit_edge [
    i32 26, label %sw.bb
    i32 28, label %sw.bb1
    i32 27, label %sw.bb5
    i32 30, label %sw.bb9
    i32 24, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %nbytes)
  %cmp = icmp ult i32 %nbytes, 16
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %nbytes)
  %cmp2 = icmp ult i32 %nbytes, 28
  br i1 %cmp2, label %sw.bb1.cleanup_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %nbytes)
  %cmp6 = icmp ult i32 %nbytes, 28
  br i1 %cmp6, label %sw.bb5.cleanup_crit_edge, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %nbytes)
  %cmp10 = icmp ult i32 %nbytes, 28
  br i1 %cmp10, label %sw.bb9.cleanup_crit_edge, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %nbytes)
  %cmp14 = icmp ult i32 %nbytes, 44
  br i1 %cmp14, label %sw.bb13.cleanup_crit_edge, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %vc_mutex = getelementptr inbounds %struct.venus_comm, ptr %vcp, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #9
  %vc_sb = getelementptr inbounds %struct.venus_comm, ptr %vcp, i32 0, i32 5
  %1 = ptrtoint ptr %vc_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vc_sb, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %sw.epilog.unlock_out.thread_crit_edge, label %lor.lhs.false

sw.epilog.unlock_out.thread_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_out.thread

lor.lhs.false:                                    ; preds = %sw.epilog
  %s_root = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_root, align 64
  %tobool17.not = icmp eq ptr %4, null
  br i1 %tobool17.not, label %lor.lhs.false.unlock_out.thread_crit_edge, label %if.end19

lor.lhs.false.unlock_out.thread_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_out.thread

if.end19:                                         ; preds = %lor.lhs.false
  %5 = zext i32 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %opcode, label %if.end19.unlock_out.thread_crit_edge [
    i32 25, label %sw.bb20
    i32 26, label %sw.bb26
    i32 28, label %sw.bb27
    i32 27, label %sw.bb28
    i32 30, label %sw.bb30
    i32 24, label %sw.bb32
  ]

if.end19.unlock_out.thread_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_out.thread

sw.bb20:                                          ; preds = %if.end19
  tail call void @coda_cache_clear_all(ptr noundef nonnull %2) #9
  tail call void @shrink_dcache_sb(ptr noundef nonnull %2) #9
  %6 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %9, null
  br i1 %cmp.i.not, label %sw.bb20.unlock_out.thread_crit_edge, label %if.then22

sw.bb20.unlock_out.thread_crit_edge:              ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_out.thread

if.then22:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @coda_flag_inode(ptr noundef nonnull %9, i32 noundef 2)
  br label %unlock_out.thread

sw.bb26:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @coda_cache_clear_all(ptr noundef nonnull %2) #9
  br label %unlock_out.thread

sw.bb27:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %CodaFid = getelementptr inbounds %struct.coda_zapdir_out, ptr %out, i32 0, i32 1
  br label %sw.epilog33

sw.bb28:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %CodaFid29 = getelementptr inbounds %struct.coda_zapfile_out, ptr %out, i32 0, i32 1
  br label %sw.epilog33

sw.bb30:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %CodaFid31 = getelementptr inbounds %struct.coda_purgefid_out, ptr %out, i32 0, i32 1
  br label %sw.epilog33

sw.bb32:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %OldFid = getelementptr inbounds %struct.coda_replace_out, ptr %out, i32 0, i32 2
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb27
  %fid.0 = phi ptr [ %OldFid, %sw.bb32 ], [ %CodaFid31, %sw.bb30 ], [ %CodaFid29, %sw.bb28 ], [ %CodaFid, %sw.bb27 ]
  %tobool34.not = icmp eq ptr %fid.0, null
  br i1 %tobool34.not, label %sw.epilog33.unlock_out.thread_crit_edge, label %unlock_out

sw.epilog33.unlock_out.thread_crit_edge:          ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_out.thread

unlock_out.thread:                                ; preds = %sw.epilog33.unlock_out.thread_crit_edge, %sw.bb26, %if.then22, %sw.bb20.unlock_out.thread_crit_edge, %if.end19.unlock_out.thread_crit_edge, %lor.lhs.false.unlock_out.thread_crit_edge, %sw.epilog.unlock_out.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %vc_mutex) #9
  br label %cleanup

unlock_out:                                       ; preds = %sw.epilog33
  %call36 = tail call ptr @coda_fid_to_inode(ptr noundef nonnull %fid.0, ptr noundef nonnull %2) #9
  tail call void @mutex_unlock(ptr noundef %vc_mutex) #9
  %tobool39.not = icmp eq ptr %call36, null
  br i1 %tobool39.not, label %unlock_out.cleanup_crit_edge, label %if.end41

unlock_out.cleanup_crit_edge:                     ; preds = %unlock_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %unlock_out
  %10 = zext i32 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %opcode, label %if.end41.sw.epilog46_crit_edge [
    i32 28, label %coda_flag_inode.exit
    i32 27, label %coda_flag_inode.exit85
    i32 30, label %coda_flag_inode.exit91
    i32 24, label %sw.bb45
  ]

if.end41.sw.epilog46_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog46

coda_flag_inode.exit:                             ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @coda_flag_inode_children(ptr noundef nonnull %call36, i32 noundef 8) #9
  %c_lock.i = getelementptr i8, ptr %call36, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %c_lock.i) #9
  %c_flags.i = getelementptr i8, ptr %call36, i32 -64
  %11 = ptrtoint ptr %c_flags.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %c_flags.i, align 8
  %conv1.i = or i16 %12, 1
  store i16 %conv1.i, ptr %c_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %c_lock.i) #9
  br label %sw.epilog46

coda_flag_inode.exit85:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %c_lock.i81 = getelementptr i8, ptr %call36, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %c_lock.i81) #9
  %c_flags.i82 = getelementptr i8, ptr %call36, i32 -64
  %13 = ptrtoint ptr %c_flags.i82 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %c_flags.i82, align 8
  %conv1.i83 = or i16 %14, 1
  store i16 %conv1.i83, ptr %c_flags.i82, align 8
  tail call void @_raw_spin_unlock(ptr noundef %c_lock.i81) #9
  br label %sw.epilog46

coda_flag_inode.exit91:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @coda_flag_inode_children(ptr noundef nonnull %call36, i32 noundef 8) #9
  %c_lock.i87 = getelementptr i8, ptr %call36, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %c_lock.i87) #9
  %c_flags.i88 = getelementptr i8, ptr %call36, i32 -64
  %15 = ptrtoint ptr %c_flags.i88 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %c_flags.i88, align 8
  %conv1.i89 = or i16 %16, 8
  store i16 %conv1.i89, ptr %c_flags.i88, align 8
  tail call void @_raw_spin_unlock(ptr noundef %c_lock.i87) #9
  tail call void @d_prune_aliases(ptr noundef nonnull %call36) #9
  br label %sw.epilog46

sw.bb45:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %NewFid = getelementptr inbounds %struct.coda_replace_out, ptr %out, i32 0, i32 1
  tail call void @coda_replace_fid(ptr noundef nonnull %call36, ptr noundef nonnull %fid.0, ptr noundef %NewFid) #9
  br label %sw.epilog46

sw.epilog46:                                      ; preds = %sw.bb45, %coda_flag_inode.exit91, %coda_flag_inode.exit85, %coda_flag_inode.exit, %if.end41.sw.epilog46_crit_edge
  tail call void @iput(ptr noundef nonnull %call36) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog46, %unlock_out.cleanup_crit_edge, %unlock_out.thread, %sw.bb13.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog46 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ 0, %unlock_out.cleanup_crit_edge ], [ 0, %unlock_out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_cache_clear_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @coda_flag_inode(ptr noundef %inode, i32 noundef %flag) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %c_lock = getelementptr i8, ptr %inode, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %c_lock) #9
  %c_flags = getelementptr i8, ptr %inode, i32 -64
  %0 = ptrtoint ptr %c_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %c_flags, align 8
  %2 = trunc i32 %flag to i16
  %conv1 = or i16 %1, %2
  store i16 %conv1, ptr %c_flags, align 8
  tail call void @_raw_spin_unlock(ptr noundef %c_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @coda_fid_to_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_flag_inode_children(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_prune_aliases(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_replace_fid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @coda_waitfor_upcall(ptr noundef %vcp, ptr noundef %req) #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_timeout to i32))
  %14 = load i32, ptr @coda_timeout, align 4
  %mul = mul i32 %14, 100
  %add = add i32 %mul, %13
  %15 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 112
  %19 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sighand.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %20) #9
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %blocked.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 113
  %23 = ptrtoint ptr %blocked.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %blocked.i, align 8
  %arrayidx.i.i = getelementptr %struct.task_struct, ptr %22, i32 0, i32 113, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %arrayidx.i.i, align 4
  store i32 -1, ptr %blocked.i, align 4
  %26 = load ptr, ptr %task.i, align 8
  %blocked8.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 113
  %27 = ptrtoint ptr %blocked8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blocked8.i, align 4
  %and.i19.i = and i32 %28, -257
  store i32 %and.i19.i, ptr %blocked8.i, align 4
  %29 = load ptr, ptr %task.i, align 8
  %blocked11.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 113
  %30 = ptrtoint ptr %blocked11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blocked11.i, align 4
  %and.i20.i = and i32 %31, -262145
  store i32 %and.i20.i, ptr %blocked11.i, align 4
  %32 = load ptr, ptr %task.i, align 8
  %blocked14.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 113
  %33 = ptrtoint ptr %blocked14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %blocked14.i, align 4
  %and.i21.i = and i32 %34, -3
  store i32 %and.i21.i, ptr %blocked14.i, align 4
  tail call void @recalc_sigpending() #9
  %35 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i, align 8
  %sighand17.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 112
  %37 = ptrtoint ptr %sighand17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sighand17.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %38) #9
  %uc_sleep = getelementptr inbounds %struct.upc_req, ptr %req, i32 0, i32 7
  call void @add_wait_queue(ptr noundef %uc_sleep, ptr noundef nonnull %wait) #9
  %uc_opcode = getelementptr inbounds %struct.upc_req, ptr %req, i32 0, i32 5
  %uc_flags = getelementptr inbounds %struct.upc_req, ptr %req, i32 0, i32 2
  %vc_mutex = getelementptr inbounds %struct.venus_comm, ptr %vcp, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %if.end215, %entry
  %blocked.0 = phi i32 [ 1, %entry ], [ %blocked.1, %if.end215 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_hard to i32))
  %39 = load i32, ptr @coda_hard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not = icmp eq i32 %39, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.__here135_crit_edge

for.cond.__here135_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here135

land.lhs.true:                                    ; preds = %for.cond
  %40 = ptrtoint ptr %uc_opcode to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %uc_opcode, align 2
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %41, label %land.lhs.true.__here_crit_edge [
    i16 5, label %land.lhs.true.lor.lhs.false_crit_edge
    i16 35, label %land.lhs.true.lor.lhs.false_crit_edge350
    i16 37, label %land.lhs.true.lor.lhs.false_crit_edge351
    i16 36, label %land.lhs.true.lor.lhs.false_crit_edge352
  ]

land.lhs.true.lor.lhs.false_crit_edge352:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true.lor.lhs.false_crit_edge351:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true.lor.lhs.false_crit_edge350:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true.__here_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge350, %land.lhs.true.lor.lhs.false_crit_edge351, %land.lhs.true.lor.lhs.false_crit_edge352
  %43 = ptrtoint ptr %uc_flags to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %uc_flags, align 4
  %45 = and i16 %44, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool19.not = icmp eq i16 %45, 0
  br i1 %tobool19.not, label %lor.lhs.false.__here135_crit_edge, label %lor.lhs.false.__here_crit_edge

lor.lhs.false.__here_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

lor.lhs.false.__here135_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here135

__here:                                           ; preds = %lor.lhs.false.__here_crit_edge, %land.lhs.true.__here_crit_edge
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 212
  %48 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 ptrtoint (ptr blockaddress(@coda_waitfor_upcall, %__here) to i32), ptr %task_state_change, align 4
  %49 = load ptr, ptr %task, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 1, ptr %49, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  br label %if.end165

__here135:                                        ; preds = %lor.lhs.false.__here135_crit_edge, %for.cond.__here135_crit_edge
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %task_state_change139 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 212
  %53 = ptrtoint ptr %task_state_change139 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 ptrtoint (ptr blockaddress(@coda_waitfor_upcall, %__here135) to i32), ptr %task_state_change139, align 4
  %54 = load ptr, ptr %task, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 2, ptr %54, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  br label %if.end165

if.end165:                                        ; preds = %__here135, %__here
  %56 = ptrtoint ptr %uc_flags to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %uc_flags, align 4
  %58 = and i16 %57, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool169.not = icmp eq i16 %58, 0
  br i1 %tobool169.not, label %if.end171, label %if.end165.for.end_crit_edge

if.end165.for.end_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end171:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocked.0)
  %tobool172.not = icmp eq i32 %blocked.0, 0
  br i1 %tobool172.not, label %if.end171.if.end204_crit_edge, label %land.lhs.true173

if.end171.if.end204_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

land.lhs.true173:                                 ; preds = %if.end171
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp174 = icmp slt i32 %sub, 0
  br i1 %cmp174, label %land.lhs.true176, label %land.lhs.true173.if.end204_crit_edge

land.lhs.true173.if.end204_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

land.lhs.true176:                                 ; preds = %land.lhs.true173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_hard to i32))
  %60 = load i32, ptr @coda_hard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool177.not = icmp eq i32 %60, 0
  br i1 %tobool177.not, label %land.lhs.true178, label %land.lhs.true176.if.end204_crit_edge

land.lhs.true176.if.end204_crit_edge:             ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

land.lhs.true178:                                 ; preds = %land.lhs.true176
  %61 = ptrtoint ptr %uc_opcode to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %uc_opcode, align 2
  %63 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %62, label %land.lhs.true178.if.then203_crit_edge [
    i16 5, label %land.lhs.true178.lor.lhs.false198_crit_edge
    i16 35, label %land.lhs.true178.lor.lhs.false198_crit_edge353
    i16 37, label %land.lhs.true178.lor.lhs.false198_crit_edge354
    i16 36, label %land.lhs.true178.lor.lhs.false198_crit_edge355
  ]

land.lhs.true178.lor.lhs.false198_crit_edge355:   ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false198

land.lhs.true178.lor.lhs.false198_crit_edge354:   ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false198

land.lhs.true178.lor.lhs.false198_crit_edge353:   ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false198

land.lhs.true178.lor.lhs.false198_crit_edge:      ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false198

land.lhs.true178.if.then203_crit_edge:            ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then203

lor.lhs.false198:                                 ; preds = %land.lhs.true178.lor.lhs.false198_crit_edge, %land.lhs.true178.lor.lhs.false198_crit_edge353, %land.lhs.true178.lor.lhs.false198_crit_edge354, %land.lhs.true178.lor.lhs.false198_crit_edge355
  %64 = and i16 %57, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool202.not = icmp eq i16 %64, 0
  br i1 %tobool202.not, label %lor.lhs.false198.if.end204_crit_edge, label %lor.lhs.false198.if.then203_crit_edge

lor.lhs.false198.if.then203_crit_edge:            ; preds = %lor.lhs.false198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then203

lor.lhs.false198.if.end204_crit_edge:             ; preds = %lor.lhs.false198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

if.then203:                                       ; preds = %lor.lhs.false198.if.then203_crit_edge, %land.lhs.true178.if.then203_crit_edge
  %65 = call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i324 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i324 to ptr
  %task.i325 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i325 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i325, align 8
  %sighand.i326 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 112
  %69 = ptrtoint ptr %sighand.i326 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sighand.i326, align 4
  call void @_raw_spin_lock_irq(ptr noundef %70) #9
  %71 = ptrtoint ptr %task.i325 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i325, align 8
  %blocked.i327 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 113
  %73 = ptrtoint ptr %blocked.i327 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %24, ptr %blocked.i327, align 8
  call void @recalc_sigpending() #9
  %74 = ptrtoint ptr %task.i325 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task.i325, align 8
  %sighand5.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 112
  %76 = ptrtoint ptr %sighand5.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sighand5.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %77) #9
  br label %if.end204

if.end204:                                        ; preds = %if.then203, %lor.lhs.false198.if.end204_crit_edge, %land.lhs.true176.if.end204_crit_edge, %land.lhs.true173.if.end204_crit_edge, %if.end171.if.end204_crit_edge
  %tobool211.not = phi i1 [ true, %if.then203 ], [ false, %lor.lhs.false198.if.end204_crit_edge ], [ false, %land.lhs.true176.if.end204_crit_edge ], [ false, %land.lhs.true173.if.end204_crit_edge ], [ true, %if.end171.if.end204_crit_edge ]
  %blocked.1 = phi i32 [ 0, %if.then203 ], [ 1, %lor.lhs.false198.if.end204_crit_edge ], [ 1, %land.lhs.true176.if.end204_crit_edge ], [ 1, %land.lhs.true173.if.end204_crit_edge ], [ 0, %if.end171.if.end204_crit_edge ]
  %78 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %stack.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  %84 = and i32 %83, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i = icmp eq i32 %84, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end204.if.then209_crit_edge, !prof !47

if.end204.if.then209_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then209

signal_pending.exit:                              ; preds = %if.end204
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %81, align 4
  %and1.i.i.i.i.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool208.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool208.not, label %if.end210, label %signal_pending.exit.if.then209_crit_edge

signal_pending.exit.if.then209_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then209

if.then209:                                       ; preds = %signal_pending.exit.if.then209_crit_edge, %if.end204.if.then209_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %req) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then209.list_del.exit_crit_edge

if.then209.list_del.exit_crit_edge:               ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i, align 4
  %89 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev1.i.i.i, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %90, ptr %88, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then209.list_del.exit_crit_edge
  %93 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 256 to ptr), ptr %req, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

if.end210:                                        ; preds = %signal_pending.exit
  call void @mutex_unlock(ptr noundef %vc_mutex) #9
  br i1 %tobool211.not, label %if.else214, label %if.then212

if.then212:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  %call213 = call i32 @schedule_timeout(i32 noundef 100) #9
  br label %if.end215

if.else214:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  call void @schedule() #9
  br label %if.end215

if.end215:                                        ; preds = %if.else214, %if.then212
  call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #9
  br label %for.cond

for.end:                                          ; preds = %list_del.exit, %if.end165.for.end_crit_edge
  %blocked.2 = phi i32 [ %blocked.1, %list_del.exit ], [ %blocked.0, %if.end165.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocked.2)
  %tobool217.not = icmp eq i32 %blocked.2, 0
  br i1 %tobool217.not, label %for.end.if.end219_crit_edge, label %if.then218

for.end.if.end219_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

if.then218:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %95 = call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i328 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i328 to ptr
  %task.i329 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task.i329 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task.i329, align 8
  %sighand.i330 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 112
  %99 = ptrtoint ptr %sighand.i330 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sighand.i330, align 4
  call void @_raw_spin_lock_irq(ptr noundef %100) #9
  %101 = ptrtoint ptr %task.i329 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task.i329, align 8
  %blocked.i331 = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 113
  %103 = ptrtoint ptr %blocked.i331 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %24, ptr %blocked.i331, align 8
  call void @recalc_sigpending() #9
  %104 = ptrtoint ptr %task.i329 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task.i329, align 8
  %sighand5.i332 = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 112
  %106 = ptrtoint ptr %sighand5.i332 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sighand5.i332, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %107) #9
  br label %if.end219

if.end219:                                        ; preds = %if.then218, %for.end.if.end219_crit_edge
  call void @remove_wait_queue(ptr noundef %uc_sleep, ptr noundef nonnull %wait) #9
  br label %__here272

__here272:                                        ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task, align 8
  %task_state_change276 = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 212
  %110 = ptrtoint ptr %task_state_change276 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 ptrtoint (ptr blockaddress(@coda_waitfor_upcall, %__here272) to i32), ptr %task_state_change276, align 4
  %111 = load ptr, ptr %task, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 0, ptr %111, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @recalc_sigpending() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/coda/upcall.c", i32 521, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @venus_pioctl._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @venus_pioctl._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../fs/coda/upcall.c", i32 56, i32 41}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/coda/upcall.c", i32 721, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @coda_upcall._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @coda_upcall._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @coda_upcall.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../fs/coda/upcall.c", i32 741, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/coda/upcall.c", i32 776, i32 3}
!25 = !{ptr @coda_upcall._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @coda_upcall._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/coda/upcall.c", i32 786, i32 3}
!29 = !{ptr @coda_upcall._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @coda_upcall._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../fs/coda/upcall.c", i32 665, i32 4}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/coda/upcall.c", i32 667, i32 4}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/coda/upcall.c", i32 696, i32 2}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 2150575050, i64 2150575075}
!50 = !{i64 3070605}
!51 = !{i64 3070802}
!52 = !{i64 2150556035}
!53 = !{i64 2150575731, i64 2150575756}
!54 = !{i8 0, i8 2}
!55 = !{i64 2154677048}
!56 = !{i64 2154681769}
!57 = !{i64 2154687206}
