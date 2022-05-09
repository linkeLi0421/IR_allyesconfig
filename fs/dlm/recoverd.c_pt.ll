; ModuleID = '/llk/IR_all_yes/fs/dlm/recoverd.c_pt.bc'
source_filename = "../fs/dlm/recoverd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.41, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.41 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.42 = type { ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.43, i32, i16, i8, i8 }
%union.anon.43 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dlm_recover = type { %struct.list_head, ptr, i32, i64 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dlm_recoverd\00", [19 x i8] zeroinitializer }, align 32
@dlm_recoverd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dlm: dlm_recoverd: no lockspace %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/dlm/recoverd.c\00", [46 x i8] zeroinitializer }, align 32
@dlm_recoverd._entry_ptr = internal global ptr @dlm_recoverd._entry, section ".printk_index", align 4
@dlm_config = external dso_local local_unnamed_addr global %struct.dlm_config_info, align 4
@ls_recover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016dlm: %s: dlm_recover %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ls_recover\00", [21 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr = internal global ptr @ls_recover._entry, section ".printk_index", align 4
@ls_recover._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017dlm: %s: dlm_recover %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.9 = internal global ptr @ls_recover._entry.7, section ".printk_index", align 4
@ls_recover._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dlm: %s: dlm_recover_members error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.12 = internal global ptr @ls_recover._entry.10, section ".printk_index", align 4
@ls_recover._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dlm: %s: dlm_recover_members error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.15 = internal global ptr @ls_recover._entry.13, section ".printk_index", align 4
@ls_recover._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016dlm: %s: dlm_recover_members_wait error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.18 = internal global ptr @ls_recover._entry.16, section ".printk_index", align 4
@ls_recover._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017dlm: %s: dlm_recover_members_wait error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.21 = internal global ptr @ls_recover._entry.19, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ls_recover._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016dlm: %s: dlm_recover_directory error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.24 = internal global ptr @ls_recover._entry.22, section ".printk_index", align 4
@ls_recover._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017dlm: %s: dlm_recover_directory error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.27 = internal global ptr @ls_recover._entry.25, section ".printk_index", align 4
@ls_recover._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.6, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016dlm: %s: dlm_recover_directory_wait error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.30 = internal global ptr @ls_recover._entry.28, section ".printk_index", align 4
@ls_recover._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.6, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017dlm: %s: dlm_recover_directory_wait error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.33 = internal global ptr @ls_recover._entry.31, section ".printk_index", align 4
@ls_recover._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.6, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016dlm: %s: dlm_recover_directory %u out %u messages\0A\00", [43 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.36 = internal global ptr @ls_recover._entry.34, section ".printk_index", align 4
@ls_recover._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.6, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017dlm: %s: dlm_recover_directory %u out %u messages\0A\00", [43 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.39 = internal global ptr @ls_recover._entry.37, section ".printk_index", align 4
@ls_recover._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.6, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dlm: %s: dlm_recover_masters error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.42 = internal global ptr @ls_recover._entry.40, section ".printk_index", align 4
@ls_recover._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.6, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dlm: %s: dlm_recover_masters error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.45 = internal global ptr @ls_recover._entry.43, section ".printk_index", align 4
@ls_recover._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.6, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016dlm: %s: dlm_recover_locks error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.48 = internal global ptr @ls_recover._entry.46, section ".printk_index", align 4
@ls_recover._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.6, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dlm: %s: dlm_recover_locks error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.51 = internal global ptr @ls_recover._entry.49, section ".printk_index", align 4
@ls_recover._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.6, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016dlm: %s: dlm_recover_locks_wait error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.54 = internal global ptr @ls_recover._entry.52, section ".printk_index", align 4
@ls_recover._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.6, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017dlm: %s: dlm_recover_locks_wait error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.57 = internal global ptr @ls_recover._entry.55, section ".printk_index", align 4
@ls_recover._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.6, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016dlm: %s: dlm_recover_locks %u in\0A\00", [60 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.60 = internal global ptr @ls_recover._entry.58, section ".printk_index", align 4
@ls_recover._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.6, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dlm: %s: dlm_recover_locks %u in\0A\00", [60 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.63 = internal global ptr @ls_recover._entry.61, section ".printk_index", align 4
@ls_recover._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.6, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.65 = internal global ptr @ls_recover._entry.64, section ".printk_index", align 4
@ls_recover._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.6, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.67 = internal global ptr @ls_recover._entry.66, section ".printk_index", align 4
@ls_recover._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.6, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016dlm: %s: dlm_recover_done_wait error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.70 = internal global ptr @ls_recover._entry.68, section ".printk_index", align 4
@ls_recover._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.6, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017dlm: %s: dlm_recover_done_wait error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.73 = internal global ptr @ls_recover._entry.71, section ".printk_index", align 4
@ls_recover._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.6, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016dlm: %s: enable_locking error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.76 = internal global ptr @ls_recover._entry.74, section ".printk_index", align 4
@ls_recover._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.6, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dlm: %s: enable_locking error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.79 = internal global ptr @ls_recover._entry.77, section ".printk_index", align 4
@ls_recover._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.6, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016dlm: %s: dlm_process_requestqueue error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.82 = internal global ptr @ls_recover._entry.80, section ".printk_index", align 4
@ls_recover._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.6, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017dlm: %s: dlm_process_requestqueue error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.85 = internal global ptr @ls_recover._entry.83, section ".printk_index", align 4
@ls_recover._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.6, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016dlm: %s: dlm_recover_waiters_post error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.88 = internal global ptr @ls_recover._entry.86, section ".printk_index", align 4
@ls_recover._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.6, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017dlm: %s: dlm_recover_waiters_post error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.91 = internal global ptr @ls_recover._entry.89, section ".printk_index", align 4
@ls_recover._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.6, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016dlm: %s: dlm_recover %llu generation %u done: %u ms\0A\00", [41 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.94 = internal global ptr @ls_recover._entry.92, section ".printk_index", align 4
@ls_recover._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.6, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017dlm: %s: dlm_recover %llu generation %u done: %u ms\0A\00", [41 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.97 = internal global ptr @ls_recover._entry.95, section ".printk_index", align 4
@ls_recover._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.6, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016dlm: %s: dlm_recover %llu error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.100 = internal global ptr @ls_recover._entry.98, section ".printk_index", align 4
@ls_recover._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.6, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dlm: %s: dlm_recover %llu error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ls_recover._entry_ptr.103 = internal global ptr @ls_recover._entry.101, section ".printk_index", align 4
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 330, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 281, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 56, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 77, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 91, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 104, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 112, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 116, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 146, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 156, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 164, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 168, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 188, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 207, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 219, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 225, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 231, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 237, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private constant [21 x i8] c"../fs/dlm/recoverd.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 247, i32 2 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @dlm_recoverd._entry, ptr @dlm_recoverd._entry_ptr, ptr @ls_recover._entry, ptr @ls_recover._entry.10, ptr @ls_recover._entry.101, ptr @ls_recover._entry.13, ptr @ls_recover._entry.16, ptr @ls_recover._entry.19, ptr @ls_recover._entry.22, ptr @ls_recover._entry.25, ptr @ls_recover._entry.28, ptr @ls_recover._entry.31, ptr @ls_recover._entry.34, ptr @ls_recover._entry.37, ptr @ls_recover._entry.40, ptr @ls_recover._entry.43, ptr @ls_recover._entry.46, ptr @ls_recover._entry.49, ptr @ls_recover._entry.52, ptr @ls_recover._entry.55, ptr @ls_recover._entry.58, ptr @ls_recover._entry.61, ptr @ls_recover._entry.64, ptr @ls_recover._entry.66, ptr @ls_recover._entry.68, ptr @ls_recover._entry.7, ptr @ls_recover._entry.71, ptr @ls_recover._entry.74, ptr @ls_recover._entry.77, ptr @ls_recover._entry.80, ptr @ls_recover._entry.83, ptr @ls_recover._entry.86, ptr @ls_recover._entry.89, ptr @ls_recover._entry.92, ptr @ls_recover._entry.95, ptr @ls_recover._entry.98, ptr @ls_recover._entry_ptr, ptr @ls_recover._entry_ptr.100, ptr @ls_recover._entry_ptr.103, ptr @ls_recover._entry_ptr.12, ptr @ls_recover._entry_ptr.15, ptr @ls_recover._entry_ptr.18, ptr @ls_recover._entry_ptr.21, ptr @ls_recover._entry_ptr.24, ptr @ls_recover._entry_ptr.27, ptr @ls_recover._entry_ptr.30, ptr @ls_recover._entry_ptr.33, ptr @ls_recover._entry_ptr.36, ptr @ls_recover._entry_ptr.39, ptr @ls_recover._entry_ptr.42, ptr @ls_recover._entry_ptr.45, ptr @ls_recover._entry_ptr.48, ptr @ls_recover._entry_ptr.51, ptr @ls_recover._entry_ptr.54, ptr @ls_recover._entry_ptr.57, ptr @ls_recover._entry_ptr.60, ptr @ls_recover._entry_ptr.63, ptr @ls_recover._entry_ptr.65, ptr @ls_recover._entry_ptr.67, ptr @ls_recover._entry_ptr.70, ptr @ls_recover._entry_ptr.73, ptr @ls_recover._entry_ptr.76, ptr @ls_recover._entry_ptr.79, ptr @ls_recover._entry_ptr.82, ptr @ls_recover._entry_ptr.85, ptr @ls_recover._entry_ptr.88, ptr @ls_recover._entry_ptr.9, ptr @ls_recover._entry_ptr.91, ptr @ls_recover._entry_ptr.94, ptr @ls_recover._entry_ptr.97, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recoverd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_recover._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_recoverd_start(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @dlm_recoverd, ptr noundef %ls, i32 noundef -1, ptr noundef nonnull @.str) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.else

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @wake_up_process(ptr noundef %call) #5
  %ls_recoverd_task = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 58
  %1 = ptrtoint ptr %ls_recoverd_task to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %ls_recoverd_task, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %error.0 = phi i32 [ %0, %if.then4 ], [ 0, %if.else ]
  ret i32 %error.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_recoverd(ptr noundef %arg) #0 align 64 {
entry:
  %neg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dlm_find_lockspace_local(ptr noundef %arg) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %arg) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ls_in_recovery = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 65
  tail call void @down_write(ptr noundef %ls_in_recovery) #5
  %ls_flags = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %ls_flags) #5
  %ls_recover_lock_wait = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 84
  tail call void @__wake_up(ptr noundef %ls_recover_lock_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  %ls_recover_lock.i = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 60
  %ls_recover_args.i = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 64
  %ls_recover_seq.i = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 63
  %ls_name8.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 91
  %ls_recoverd_active.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 59
  %ls_recover_dir_sent_res.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 73
  %ls_recover_dir_sent_msg.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 74
  %ls_recover_locks_in.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 75
  %ls_recv_active.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 66
  %ls_generation439.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call, i32 0, i32 3
  br label %__here

__here:                                           ; preds = %__here.backedge, %if.end
  %0 = call i32 @llvm.read_register.i32(metadata !131) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@dlm_recoverd, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !141
  %call69 = call zeroext i1 @kthread_should_stop() #5
  br i1 %call69, label %__here121, label %if.end151

__here121:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %task_state_change125 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change125 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@dlm_recoverd, %__here121) to i32), ptr %task_state_change125, align 4
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %10, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !142
  br label %while.end

if.end151:                                        ; preds = %__here
  %12 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ls_flags, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool154.not = icmp eq i32 %14, 0
  br i1 %tobool154.not, label %land.lhs.true, label %if.end151.__here213_crit_edge

if.end151.__here213_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here213

land.lhs.true:                                    ; preds = %if.end151
  %15 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %ls_flags, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool157.not = icmp eq i32 %17, 0
  br i1 %tobool157.not, label %if.then158, label %land.lhs.true.__here213_crit_edge

land.lhs.true.__here213_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here213

if.then158:                                       ; preds = %land.lhs.true
  %call159 = call zeroext i1 @kthread_should_stop() #5
  br i1 %call159, label %if.then158.while.end_crit_edge, label %if.end161

if.then158.while.end_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end161:                                        ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #7
  call void @schedule() #5
  br label %__here213

__here213:                                        ; preds = %if.end161, %land.lhs.true.__here213_crit_edge, %if.end151.__here213_crit_edge
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %task_state_change217 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %20 = ptrtoint ptr %task_state_change217 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 ptrtoint (ptr blockaddress(@dlm_recoverd, %__here213) to i32), ptr %task_state_change217, align 4
  %21 = load ptr, ptr %task, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %21, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !143
  %call244 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %ls_flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %__here213.if.end250_crit_edge, label %if.then246

__here213.if.end250_crit_edge:                    ; preds = %__here213
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end250

if.then246:                                       ; preds = %__here213
  call void @__sanitizer_cov_trace_pc() #7
  call void @down_write(ptr noundef %ls_in_recovery) #5
  call void @_set_bit(i32 noundef 2, ptr noundef %ls_flags) #5
  call void @__wake_up(ptr noundef %ls_recover_lock_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %if.end250

if.end250:                                        ; preds = %if.then246, %__here213.if.end250_crit_edge
  %call252 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %ls_flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %if.end250.__here.backedge_crit_edge, label %if.then254

if.end250.__here.backedge_crit_edge:              ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here.backedge

if.then254:                                       ; preds = %if.end250
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock.i) #5
  %23 = ptrtoint ptr %ls_recover_args.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ls_recover_args.i, align 8
  store ptr null, ptr %ls_recover_args.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end5.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then254
  %25 = ptrtoint ptr %ls_recover_seq.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ls_recover_seq.i, align 8
  %seq.i = getelementptr inbounds %struct.dlm_recover, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %seq.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp.i = icmp eq i64 %26, %28
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.then4.i_crit_edge

land.lhs.true.i.if.then4.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @_clear_bit(i32 noundef 0, ptr noundef %ls_flags) #5
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i, %land.lhs.true.i.if.then4.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %neg.i.i) #5
  %29 = ptrtoint ptr %neg.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %neg.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %30 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then4.i.do.end14.sink.split.i.i_crit_edge

if.then4.i.do.end14.sink.split.i.i_crit_edge:     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %31 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool2.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i.do.end14.i.i_crit_edge, label %if.else.i.i.do.end14.sink.split.i.i_crit_edge

if.else.i.i.do.end14.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.sink.split.i.i

if.else.i.i.do.end14.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14.i.i

do.end14.sink.split.i.i:                          ; preds = %if.else.i.i.do.end14.sink.split.i.i_crit_edge, %if.then4.i.do.end14.sink.split.i.i_crit_edge
  %.str.8.sink.i.i = phi ptr [ @.str.5, %if.then4.i.do.end14.sink.split.i.i_crit_edge ], [ @.str.8, %if.else.i.i.do.end14.sink.split.i.i_crit_edge ]
  %32 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %seq.i, align 8
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink.i.i, ptr noundef %ls_name8.i.i, i64 noundef %33) #8
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end14.sink.split.i.i, %if.else.i.i.do.end14.i.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %ls_recoverd_active.i.i, i32 noundef 0) #5
  call void @dlm_callback_suspend(ptr noundef %call) #5
  call void @dlm_clear_toss(ptr noundef %call) #5
  %call15.i.i = call i32 @dlm_create_root_list(ptr noundef %call) #5
  %call16.i.i = call i32 @dlm_recover_members(ptr noundef %call, ptr noundef nonnull %24, ptr noundef nonnull %neg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end43.i.i, label %do.body19.i.i

do.body19.i.i:                                    ; preds = %do.end14.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %34 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool20.not.i.i, label %if.else29.i.i, label %do.end24.i.i

do.end24.i.i:                                     ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %ls_name8.i.i, i32 noundef %call16.i.i) #8
  br label %fail.i.i

if.else29.i.i:                                    ; preds = %do.body19.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %35 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool30.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool30.not.i.i, label %if.else29.i.i.fail.i.i_crit_edge, label %do.end34.i.i

if.else29.i.i.fail.i.i_crit_edge:                 ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end34.i.i:                                     ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call38.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %ls_name8.i.i, i32 noundef %call16.i.i) #8
  br label %fail.i.i

if.end43.i.i:                                     ; preds = %do.end14.i.i
  call void @dlm_recover_dir_nodeid(ptr noundef %call) #5
  %36 = ptrtoint ptr %ls_recover_dir_sent_res.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %ls_recover_dir_sent_res.i.i, align 8
  %37 = ptrtoint ptr %ls_recover_dir_sent_msg.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %ls_recover_dir_sent_msg.i.i, align 4
  %38 = ptrtoint ptr %ls_recover_locks_in.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ls_recover_locks_in.i.i, align 8
  call void @dlm_set_recover_status(ptr noundef %call, i32 noundef 1) #5
  %call44.i.i = call i32 @dlm_recover_members_wait(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i)
  %tobool45.not.i.i = icmp eq i32 %call44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.end71.i.i, label %do.body47.i.i

do.body47.i.i:                                    ; preds = %if.end43.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %39 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool48.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool48.not.i.i, label %if.else57.i.i, label %do.end52.i.i

do.end52.i.i:                                     ; preds = %do.body47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call56.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %ls_name8.i.i, i32 noundef %call44.i.i) #8
  br label %fail.i.i

if.else57.i.i:                                    ; preds = %do.body47.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %40 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool58.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool58.not.i.i, label %if.else57.i.i.fail.i.i_crit_edge, label %do.end62.i.i

if.else57.i.i.fail.i.i_crit_edge:                 ; preds = %if.else57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end62.i.i:                                     ; preds = %if.else57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call66.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %ls_name8.i.i, i32 noundef %call44.i.i) #8
  br label %fail.i.i

if.end71.i.i:                                     ; preds = %if.end43.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %call72.i.i = call i32 @dlm_recover_directory(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i.i)
  %tobool73.not.i.i = icmp eq i32 %call72.i.i, 0
  br i1 %tobool73.not.i.i, label %if.end99.i.i, label %do.body75.i.i

do.body75.i.i:                                    ; preds = %if.end71.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %42 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool76.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool76.not.i.i, label %if.else85.i.i, label %do.end80.i.i

do.end80.i.i:                                     ; preds = %do.body75.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call84.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %ls_name8.i.i, i32 noundef %call72.i.i) #8
  br label %fail.i.i

if.else85.i.i:                                    ; preds = %do.body75.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %43 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool86.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool86.not.i.i, label %if.else85.i.i.fail.i.i_crit_edge, label %do.end90.i.i

if.else85.i.i.fail.i.i_crit_edge:                 ; preds = %if.else85.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end90.i.i:                                     ; preds = %if.else85.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call94.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %ls_name8.i.i, i32 noundef %call72.i.i) #8
  br label %fail.i.i

if.end99.i.i:                                     ; preds = %if.end71.i.i
  call void @dlm_set_recover_status(ptr noundef %call, i32 noundef 4) #5
  %call100.i.i = call i32 @dlm_recover_directory_wait(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i.i)
  %tobool101.not.i.i = icmp eq i32 %call100.i.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %44 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool129.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool101.not.i.i, label %do.body128.i.i, label %do.body103.i.i

do.body103.i.i:                                   ; preds = %if.end99.i.i
  br i1 %tobool129.not.i.i, label %if.else113.i.i, label %do.end108.i.i

do.end108.i.i:                                    ; preds = %do.body103.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call112.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %ls_name8.i.i, i32 noundef %call100.i.i) #8
  br label %fail.i.i

if.else113.i.i:                                   ; preds = %do.body103.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %45 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool114.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool114.not.i.i, label %if.else113.i.i.fail.i.i_crit_edge, label %do.end118.i.i

if.else113.i.i.fail.i.i_crit_edge:                ; preds = %if.else113.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end118.i.i:                                    ; preds = %if.else113.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call122.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %ls_name8.i.i, i32 noundef %call100.i.i) #8
  br label %fail.i.i

do.body128.i.i:                                   ; preds = %if.end99.i.i
  br i1 %tobool129.not.i.i, label %if.else140.i.i, label %do.body128.i.i.do.end155.sink.split.i.i_crit_edge

do.body128.i.i.do.end155.sink.split.i.i_crit_edge: ; preds = %do.body128.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end155.sink.split.i.i

if.else140.i.i:                                   ; preds = %do.body128.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %46 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool141.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool141.not.i.i, label %if.else140.i.i.do.end155.i.i_crit_edge, label %if.else140.i.i.do.end155.sink.split.i.i_crit_edge

if.else140.i.i.do.end155.sink.split.i.i_crit_edge: ; preds = %if.else140.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end155.sink.split.i.i

if.else140.i.i.do.end155.i.i_crit_edge:           ; preds = %if.else140.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end155.i.i

do.end155.sink.split.i.i:                         ; preds = %if.else140.i.i.do.end155.sink.split.i.i_crit_edge, %do.body128.i.i.do.end155.sink.split.i.i_crit_edge
  %.str.38.sink.i.i = phi ptr [ @.str.35, %do.body128.i.i.do.end155.sink.split.i.i_crit_edge ], [ @.str.38, %if.else140.i.i.do.end155.sink.split.i.i_crit_edge ]
  %47 = ptrtoint ptr %ls_recover_dir_sent_res.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ls_recover_dir_sent_res.i.i, align 8
  %49 = ptrtoint ptr %ls_recover_dir_sent_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ls_recover_dir_sent_msg.i.i, align 4
  %call151.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.38.sink.i.i, ptr noundef %ls_name8.i.i, i32 noundef %48, i32 noundef %50) #8
  br label %do.end155.i.i

do.end155.i.i:                                    ; preds = %do.end155.sink.split.i.i, %if.else140.i.i.do.end155.i.i_crit_edge
  call void @dlm_recover_waiters_pre(ptr noundef %call) #5
  %51 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %ls_flags, align 4
  %and1.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool157.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool157.not.i.i, label %if.end159.i.i, label %do.end155.i.i.fail.i.i_crit_edge

do.end155.i.i.fail.i.i_crit_edge:                 ; preds = %do.end155.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

if.end159.i.i:                                    ; preds = %do.end155.i.i
  %53 = ptrtoint ptr %neg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %neg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool160.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool160.not.i.i, label %lor.lhs.false.i.i, label %if.end159.i.i.if.then163.i.i_crit_edge

if.end159.i.i.if.then163.i.i_crit_edge:           ; preds = %if.end159.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then163.i.i

lor.lhs.false.i.i:                                ; preds = %if.end159.i.i
  %55 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %ls_flags, align 4
  %57 = and i32 %56, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool162.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool162.not.i.i, label %if.else274.i.i, label %lor.lhs.false.i.i.if.then163.i.i_crit_edge

lor.lhs.false.i.i.if.then163.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then163.i.i

if.then163.i.i:                                   ; preds = %lor.lhs.false.i.i.if.then163.i.i_crit_edge, %if.end159.i.i.if.then163.i.i_crit_edge
  call void @dlm_recover_purge(ptr noundef %call) #5
  %call164.i.i = call i32 @dlm_recover_masters(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i.i)
  %tobool165.not.i.i = icmp eq i32 %call164.i.i, 0
  br i1 %tobool165.not.i.i, label %if.end191.i.i, label %do.body167.i.i

do.body167.i.i:                                   ; preds = %if.then163.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %58 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool168.not.i.i = icmp eq i32 %58, 0
  br i1 %tobool168.not.i.i, label %if.else177.i.i, label %do.end172.i.i

do.end172.i.i:                                    ; preds = %do.body167.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call176.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ls_name8.i.i, i32 noundef %call164.i.i) #8
  br label %fail.i.i

if.else177.i.i:                                   ; preds = %do.body167.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %59 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool178.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool178.not.i.i, label %if.else177.i.i.fail.i.i_crit_edge, label %do.end182.i.i

if.else177.i.i.fail.i.i_crit_edge:                ; preds = %if.else177.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end182.i.i:                                    ; preds = %if.else177.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call186.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %ls_name8.i.i, i32 noundef %call164.i.i) #8
  br label %fail.i.i

if.end191.i.i:                                    ; preds = %if.then163.i.i
  %call192.i.i = call i32 @dlm_recover_locks(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192.i.i)
  %tobool193.not.i.i = icmp eq i32 %call192.i.i, 0
  br i1 %tobool193.not.i.i, label %if.end219.i.i, label %do.body195.i.i

do.body195.i.i:                                   ; preds = %if.end191.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %60 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool196.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool196.not.i.i, label %if.else205.i.i, label %do.end200.i.i

do.end200.i.i:                                    ; preds = %do.body195.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call204.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %ls_name8.i.i, i32 noundef %call192.i.i) #8
  br label %fail.i.i

if.else205.i.i:                                   ; preds = %do.body195.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %61 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool206.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool206.not.i.i, label %if.else205.i.i.fail.i.i_crit_edge, label %do.end210.i.i

if.else205.i.i.fail.i.i_crit_edge:                ; preds = %if.else205.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end210.i.i:                                    ; preds = %if.else205.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call214.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %ls_name8.i.i, i32 noundef %call192.i.i) #8
  br label %fail.i.i

if.end219.i.i:                                    ; preds = %if.end191.i.i
  call void @dlm_set_recover_status(ptr noundef %call, i32 noundef 16) #5
  %call220.i.i = call i32 @dlm_recover_locks_wait(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220.i.i)
  %tobool221.not.i.i = icmp eq i32 %call220.i.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %62 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool249.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool221.not.i.i, label %do.body248.i.i, label %do.body223.i.i

do.body223.i.i:                                   ; preds = %if.end219.i.i
  br i1 %tobool249.not.i.i, label %if.else233.i.i, label %do.end228.i.i

do.end228.i.i:                                    ; preds = %do.body223.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call232.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %ls_name8.i.i, i32 noundef %call220.i.i) #8
  br label %fail.i.i

if.else233.i.i:                                   ; preds = %do.body223.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %63 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool234.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool234.not.i.i, label %if.else233.i.i.fail.i.i_crit_edge, label %do.end238.i.i

if.else233.i.i.fail.i.i_crit_edge:                ; preds = %if.else233.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end238.i.i:                                    ; preds = %if.else233.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call242.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %ls_name8.i.i, i32 noundef %call220.i.i) #8
  br label %fail.i.i

do.body248.i.i:                                   ; preds = %if.end219.i.i
  br i1 %tobool249.not.i.i, label %if.else259.i.i, label %do.body248.i.i.do.end273.sink.split.i.i_crit_edge

do.body248.i.i.do.end273.sink.split.i.i_crit_edge: ; preds = %do.body248.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end273.sink.split.i.i

if.else259.i.i:                                   ; preds = %do.body248.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %64 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool260.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool260.not.i.i, label %if.else259.i.i.do.end273.i.i_crit_edge, label %if.else259.i.i.do.end273.sink.split.i.i_crit_edge

if.else259.i.i.do.end273.sink.split.i.i_crit_edge: ; preds = %if.else259.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end273.sink.split.i.i

if.else259.i.i.do.end273.i.i_crit_edge:           ; preds = %if.else259.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end273.i.i

do.end273.sink.split.i.i:                         ; preds = %if.else259.i.i.do.end273.sink.split.i.i_crit_edge, %do.body248.i.i.do.end273.sink.split.i.i_crit_edge
  %.str.62.sink.i.i = phi ptr [ @.str.59, %do.body248.i.i.do.end273.sink.split.i.i_crit_edge ], [ @.str.62, %if.else259.i.i.do.end273.sink.split.i.i_crit_edge ]
  %65 = ptrtoint ptr %ls_recover_locks_in.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ls_recover_locks_in.i.i, align 8
  %call269.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.62.sink.i.i, ptr noundef %ls_name8.i.i, i32 noundef %66) #8
  br label %do.end273.i.i

do.end273.i.i:                                    ; preds = %do.end273.sink.split.i.i, %if.else259.i.i.do.end273.i.i_crit_edge
  call void @dlm_recover_rsbs(ptr noundef %call) #5
  br label %if.end303.i.i

if.else274.i.i:                                   ; preds = %lor.lhs.false.i.i
  call void @dlm_set_recover_status(ptr noundef %call, i32 noundef 16) #5
  %call275.i.i = call i32 @dlm_recover_locks_wait(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275.i.i)
  %tobool276.not.i.i = icmp eq i32 %call275.i.i, 0
  br i1 %tobool276.not.i.i, label %if.else274.i.i.if.end303.i.i_crit_edge, label %do.body278.i.i

if.else274.i.i.if.end303.i.i_crit_edge:           ; preds = %if.else274.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end303.i.i

do.body278.i.i:                                   ; preds = %if.else274.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %67 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool279.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool279.not.i.i, label %if.else288.i.i, label %do.end283.i.i

do.end283.i.i:                                    ; preds = %do.body278.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call287.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %ls_name8.i.i, i32 noundef %call275.i.i) #8
  br label %fail.i.i

if.else288.i.i:                                   ; preds = %do.body278.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %68 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool289.not.i.i = icmp eq i32 %68, 0
  br i1 %tobool289.not.i.i, label %if.else288.i.i.fail.i.i_crit_edge, label %do.end293.i.i

if.else288.i.i.fail.i.i_crit_edge:                ; preds = %if.else288.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end293.i.i:                                    ; preds = %if.else288.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call297.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %ls_name8.i.i, i32 noundef %call275.i.i) #8
  br label %fail.i.i

if.end303.i.i:                                    ; preds = %if.else274.i.i.if.end303.i.i_crit_edge, %do.end273.i.i
  call void @dlm_release_root_list(ptr noundef %call) #5
  call void @dlm_purge_requestqueue(ptr noundef %call) #5
  call void @dlm_set_recover_status(ptr noundef %call, i32 noundef 64) #5
  %call304.i.i = call i32 @dlm_recover_done_wait(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i.i)
  %tobool305.not.i.i = icmp eq i32 %call304.i.i, 0
  br i1 %tobool305.not.i.i, label %if.end331.i.i, label %do.body307.i.i

do.body307.i.i:                                   ; preds = %if.end303.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %69 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool308.not.i.i = icmp eq i32 %69, 0
  br i1 %tobool308.not.i.i, label %if.else317.i.i, label %do.end312.i.i

do.end312.i.i:                                    ; preds = %do.body307.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call316.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %ls_name8.i.i, i32 noundef %call304.i.i) #8
  br label %fail.i.i

if.else317.i.i:                                   ; preds = %do.body307.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %70 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool318.not.i.i = icmp eq i32 %70, 0
  br i1 %tobool318.not.i.i, label %if.else317.i.i.fail.i.i_crit_edge, label %do.end322.i.i

if.else317.i.i.fail.i.i_crit_edge:                ; preds = %if.else317.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end322.i.i:                                    ; preds = %if.else317.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call326.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %ls_name8.i.i, i32 noundef %call304.i.i) #8
  br label %fail.i.i

if.end331.i.i:                                    ; preds = %if.end303.i.i
  call void @dlm_clear_members_gone(ptr noundef %call) #5
  call void @dlm_adjust_timeouts(ptr noundef %call) #5
  call void @dlm_callback_resume(ptr noundef %call) #5
  %71 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %seq.i, align 8
  call void @down_write(ptr noundef %ls_recv_active.i.i) #5
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock.i) #5
  %73 = ptrtoint ptr %ls_recover_seq.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %ls_recover_seq.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %74, i64 %72)
  %cmp.i.i = icmp eq i64 %74, %72
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end331.i.i.enable_locking.exit.i_crit_edge

if.end331.i.i.enable_locking.exit.i_crit_edge:    ; preds = %if.end331.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enable_locking.exit.i

if.then.i.i:                                      ; preds = %if.end331.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef 4, ptr noundef %ls_flags) #5
  call void @up_write(ptr noundef %ls_in_recovery) #5
  call void @_clear_bit(i32 noundef 2, ptr noundef %ls_flags) #5
  br label %enable_locking.exit.i

enable_locking.exit.i:                            ; preds = %if.then.i.i, %if.end331.i.i.enable_locking.exit.i_crit_edge
  %error.0.i18.i = phi i32 [ 0, %if.then.i.i ], [ -4, %if.end331.i.i.enable_locking.exit.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock.i) #5
  call void @up_write(ptr noundef %ls_recv_active.i.i) #5
  br i1 %cmp.i.i, label %if.end360.i.i, label %do.body336.i.i

do.body336.i.i:                                   ; preds = %enable_locking.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %75 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool337.not.i.i = icmp eq i32 %75, 0
  br i1 %tobool337.not.i.i, label %if.else346.i.i, label %do.end341.i.i

do.end341.i.i:                                    ; preds = %do.body336.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call345.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %ls_name8.i.i, i32 noundef %error.0.i18.i) #8
  br label %fail.i.i

if.else346.i.i:                                   ; preds = %do.body336.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %76 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool347.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool347.not.i.i, label %if.else346.i.i.fail.i.i_crit_edge, label %do.end351.i.i

if.else346.i.i.fail.i.i_crit_edge:                ; preds = %if.else346.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end351.i.i:                                    ; preds = %if.else346.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call355.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %ls_name8.i.i, i32 noundef %error.0.i18.i) #8
  br label %fail.i.i

if.end360.i.i:                                    ; preds = %enable_locking.exit.i
  %call361.i.i = call i32 @dlm_process_requestqueue(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361.i.i)
  %tobool362.not.i.i = icmp eq i32 %call361.i.i, 0
  br i1 %tobool362.not.i.i, label %if.end388.i.i, label %do.body364.i.i

do.body364.i.i:                                   ; preds = %if.end360.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %77 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool365.not.i.i = icmp eq i32 %77, 0
  br i1 %tobool365.not.i.i, label %if.else374.i.i, label %do.end369.i.i

do.end369.i.i:                                    ; preds = %do.body364.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call373.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %ls_name8.i.i, i32 noundef %call361.i.i) #8
  br label %fail.i.i

if.else374.i.i:                                   ; preds = %do.body364.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %78 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool375.not.i.i = icmp eq i32 %78, 0
  br i1 %tobool375.not.i.i, label %if.else374.i.i.fail.i.i_crit_edge, label %do.end379.i.i

if.else374.i.i.fail.i.i_crit_edge:                ; preds = %if.else374.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end379.i.i:                                    ; preds = %if.else374.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call383.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %ls_name8.i.i, i32 noundef %call361.i.i) #8
  br label %fail.i.i

if.end388.i.i:                                    ; preds = %if.end360.i.i
  %call389.i.i = call i32 @dlm_recover_waiters_post(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call389.i.i)
  %tobool390.not.i.i = icmp eq i32 %call389.i.i, 0
  br i1 %tobool390.not.i.i, label %if.end416.i.i, label %do.body392.i.i

do.body392.i.i:                                   ; preds = %if.end388.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %79 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool393.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool393.not.i.i, label %if.else402.i.i, label %do.end397.i.i

do.end397.i.i:                                    ; preds = %do.body392.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call401.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %ls_name8.i.i, i32 noundef %call389.i.i) #8
  br label %fail.i.i

if.else402.i.i:                                   ; preds = %do.body392.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %80 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool403.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool403.not.i.i, label %if.else402.i.i.fail.i.i_crit_edge, label %do.end407.i.i

if.else402.i.i.fail.i.i_crit_edge:                ; preds = %if.else402.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

do.end407.i.i:                                    ; preds = %if.else402.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call411.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %ls_name8.i.i, i32 noundef %call389.i.i) #8
  br label %fail.i.i

if.end416.i.i:                                    ; preds = %if.end388.i.i
  call void @dlm_recover_grant(ptr noundef %call) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %81 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool418.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool418.not.i.i, label %if.else429.i.i, label %if.end416.i.i.do.end446.sink.split.i.i_crit_edge

if.end416.i.i.do.end446.sink.split.i.i_crit_edge: ; preds = %if.end416.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end446.sink.split.i.i

if.else429.i.i:                                   ; preds = %if.end416.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %82 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool430.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool430.not.i.i, label %if.else429.i.i.do.end446.i.i_crit_edge, label %if.else429.i.i.do.end446.sink.split.i.i_crit_edge

if.else429.i.i.do.end446.sink.split.i.i_crit_edge: ; preds = %if.else429.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end446.sink.split.i.i

if.else429.i.i.do.end446.i.i_crit_edge:           ; preds = %if.else429.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end446.i.i

do.end446.sink.split.i.i:                         ; preds = %if.else429.i.i.do.end446.sink.split.i.i_crit_edge, %if.end416.i.i.do.end446.sink.split.i.i_crit_edge
  %.str.96.sink.i.i = phi ptr [ @.str.93, %if.end416.i.i.do.end446.sink.split.i.i_crit_edge ], [ @.str.96, %if.else429.i.i.do.end446.sink.split.i.i_crit_edge ]
  %83 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %seq.i, align 8
  %85 = ptrtoint ptr %ls_generation439.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ls_generation439.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %sub440.i.i = sub i32 %87, %41
  %call441.i.i = call i32 @jiffies_to_msecs(i32 noundef %sub440.i.i) #5
  %call442.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.96.sink.i.i, ptr noundef %ls_name8.i.i, i64 noundef %84, i32 noundef %86, i32 noundef %call441.i.i) #8
  br label %do.end446.i.i

do.end446.i.i:                                    ; preds = %do.end446.sink.split.i.i, %if.else429.i.i.do.end446.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %ls_recoverd_active.i.i) #5
  call void @dlm_lsop_recover_done(ptr noundef %call) #5
  br label %ls_recover.exit.i

fail.i.i:                                         ; preds = %do.end407.i.i, %if.else402.i.i.fail.i.i_crit_edge, %do.end397.i.i, %do.end379.i.i, %if.else374.i.i.fail.i.i_crit_edge, %do.end369.i.i, %do.end351.i.i, %if.else346.i.i.fail.i.i_crit_edge, %do.end341.i.i, %do.end322.i.i, %if.else317.i.i.fail.i.i_crit_edge, %do.end312.i.i, %do.end293.i.i, %if.else288.i.i.fail.i.i_crit_edge, %do.end283.i.i, %do.end238.i.i, %if.else233.i.i.fail.i.i_crit_edge, %do.end228.i.i, %do.end210.i.i, %if.else205.i.i.fail.i.i_crit_edge, %do.end200.i.i, %do.end182.i.i, %if.else177.i.i.fail.i.i_crit_edge, %do.end172.i.i, %do.end155.i.i.fail.i.i_crit_edge, %do.end118.i.i, %if.else113.i.i.fail.i.i_crit_edge, %do.end108.i.i, %do.end90.i.i, %if.else85.i.i.fail.i.i_crit_edge, %do.end80.i.i, %do.end62.i.i, %if.else57.i.i.fail.i.i_crit_edge, %do.end52.i.i, %do.end34.i.i, %if.else29.i.i.fail.i.i_crit_edge, %do.end24.i.i
  %error.0.i.i = phi i32 [ %call16.i.i, %do.end24.i.i ], [ %call16.i.i, %do.end34.i.i ], [ %call16.i.i, %if.else29.i.i.fail.i.i_crit_edge ], [ %call44.i.i, %do.end52.i.i ], [ %call44.i.i, %do.end62.i.i ], [ %call44.i.i, %if.else57.i.i.fail.i.i_crit_edge ], [ %call72.i.i, %do.end80.i.i ], [ %call72.i.i, %do.end90.i.i ], [ %call72.i.i, %if.else85.i.i.fail.i.i_crit_edge ], [ %call100.i.i, %do.end108.i.i ], [ %call100.i.i, %do.end118.i.i ], [ %call100.i.i, %if.else113.i.i.fail.i.i_crit_edge ], [ %call164.i.i, %do.end172.i.i ], [ %call164.i.i, %do.end182.i.i ], [ %call164.i.i, %if.else177.i.i.fail.i.i_crit_edge ], [ %call192.i.i, %do.end200.i.i ], [ %call192.i.i, %do.end210.i.i ], [ %call192.i.i, %if.else205.i.i.fail.i.i_crit_edge ], [ %call220.i.i, %do.end228.i.i ], [ %call220.i.i, %do.end238.i.i ], [ %call220.i.i, %if.else233.i.i.fail.i.i_crit_edge ], [ %call304.i.i, %do.end312.i.i ], [ %call304.i.i, %do.end322.i.i ], [ %call304.i.i, %if.else317.i.i.fail.i.i_crit_edge ], [ %error.0.i18.i, %do.end341.i.i ], [ %error.0.i18.i, %do.end351.i.i ], [ %error.0.i18.i, %if.else346.i.i.fail.i.i_crit_edge ], [ %call361.i.i, %do.end369.i.i ], [ %call361.i.i, %do.end379.i.i ], [ %call361.i.i, %if.else374.i.i.fail.i.i_crit_edge ], [ %call389.i.i, %do.end397.i.i ], [ %call389.i.i, %do.end407.i.i ], [ %call389.i.i, %if.else402.i.i.fail.i.i_crit_edge ], [ %call275.i.i, %do.end283.i.i ], [ %call275.i.i, %do.end293.i.i ], [ %call275.i.i, %if.else288.i.i.fail.i.i_crit_edge ], [ -4, %do.end155.i.i.fail.i.i_crit_edge ]
  call void @dlm_release_root_list(ptr noundef %call) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %88 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool449.not.i.i = icmp eq i32 %88, 0
  br i1 %tobool449.not.i.i, label %if.else459.i.i, label %fail.i.i.do.end473.sink.split.i.i_crit_edge

fail.i.i.do.end473.sink.split.i.i_crit_edge:      ; preds = %fail.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end473.sink.split.i.i

if.else459.i.i:                                   ; preds = %fail.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %89 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool460.not.i.i = icmp eq i32 %89, 0
  br i1 %tobool460.not.i.i, label %if.else459.i.i.do.end473.i.i_crit_edge, label %if.else459.i.i.do.end473.sink.split.i.i_crit_edge

if.else459.i.i.do.end473.sink.split.i.i_crit_edge: ; preds = %if.else459.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end473.sink.split.i.i

if.else459.i.i.do.end473.i.i_crit_edge:           ; preds = %if.else459.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end473.i.i

do.end473.sink.split.i.i:                         ; preds = %if.else459.i.i.do.end473.sink.split.i.i_crit_edge, %fail.i.i.do.end473.sink.split.i.i_crit_edge
  %.str.102.sink.i.i = phi ptr [ @.str.99, %fail.i.i.do.end473.sink.split.i.i_crit_edge ], [ @.str.102, %if.else459.i.i.do.end473.sink.split.i.i_crit_edge ]
  %90 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %seq.i, align 8
  %call469.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.102.sink.i.i, ptr noundef %ls_name8.i.i, i64 noundef %91, i32 noundef %error.0.i.i) #8
  br label %do.end473.i.i

do.end473.i.i:                                    ; preds = %do.end473.sink.split.i.i, %if.else459.i.i.do.end473.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %ls_recoverd_active.i.i) #5
  br label %ls_recover.exit.i

ls_recover.exit.i:                                ; preds = %do.end473.i.i, %do.end446.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %neg.i.i) #5
  %nodes.i = getelementptr inbounds %struct.dlm_recover, ptr %24, i32 0, i32 1
  %92 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %nodes.i, align 8
  call void @kfree(ptr noundef %93) #5
  call void @kfree(ptr noundef nonnull %24) #5
  br label %__here.backedge

if.end5.critedge.i:                               ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock.i) #5
  br label %__here.backedge

__here.backedge:                                  ; preds = %if.end5.critedge.i, %ls_recover.exit.i, %if.end250.__here.backedge_crit_edge
  br label %__here

while.end:                                        ; preds = %if.then158.while.end_crit_edge, %__here121
  %94 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %ls_flags, align 4
  %96 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool258.not = icmp eq i32 %96, 0
  br i1 %tobool258.not, label %while.end.if.end261_crit_edge, label %if.then259

while.end.if.end261_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end261

if.then259:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @up_write(ptr noundef %ls_in_recovery) #5
  br label %if.end261

if.end261:                                        ; preds = %if.then259, %while.end.if.end261_crit_edge
  call void @dlm_put_lockspace(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end261, %do.end
  %retval.0 = phi i32 [ 0, %if.end261 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_recoverd_stop(ptr nocapture noundef readonly %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recoverd_task = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 58
  %0 = ptrtoint ptr %ls_recoverd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_recoverd_task, align 8
  %call = tail call i32 @kthread_stop(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_recoverd_suspend(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_wait_general = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 83
  tail call void @__wake_up(ptr noundef %ls_wait_general, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  %ls_recoverd_active = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 59
  tail call void @mutex_lock_nested(ptr noundef %ls_recoverd_active, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_recoverd_resume(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recoverd_active = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 59
  tail call void @mutex_unlock(ptr noundef %ls_recoverd_active) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_find_lockspace_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put_lockspace(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_callback_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_clear_toss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_create_root_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_members(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_recover_dir_nodeid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_set_recover_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_members_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_directory(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_directory_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_recover_waiters_pre(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_recover_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_masters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_locks_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_recover_rsbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_release_root_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_purge_requestqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_done_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_clear_members_gone(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_adjust_timeouts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_callback_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_process_requestqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_waiters_post(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_recover_grant(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lsop_recover_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !51, !52, !53, !54, !55, !56, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !76, !77, !79, !80, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !103, !105, !106, !107, !108, !109, !110, !112, !113, !114, !115, !116, !117, !119, !120, !121, !122, !123, !124, !126, !127, !128, !129, !130}
!llvm.named.register.sp = !{!131}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/recoverd.c", i32 330, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/dlm/recoverd.c", i32 281, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dlm_recoverd._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @dlm_recoverd._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../fs/dlm/recoverd.c", i32 295, i32 3}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../fs/dlm/recoverd.c", i32 297, i32 4}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/dlm/recoverd.c", i32 306, i32 3}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/dlm/recoverd.c", i32 56, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ls_recover._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ls_recover._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ls_recover._entry.7, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @ls_recover._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/dlm/recoverd.c", i32 77, i32 3}
!23 = !{ptr @ls_recover._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ls_recover._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ls_recover._entry.13, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @ls_recover._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/dlm/recoverd.c", i32 91, i32 3}
!30 = !{ptr @ls_recover._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ls_recover._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ls_recover._entry.19, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @ls_recover._entry_ptr.21, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/dlm/recoverd.c", i32 104, i32 3}
!37 = !{ptr @ls_recover._entry.22, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ls_recover._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ls_recover._entry.25, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @ls_recover._entry_ptr.27, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/dlm/recoverd.c", i32 112, i32 3}
!44 = !{ptr @ls_recover._entry.28, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ls_recover._entry_ptr.30, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.32, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ls_recover._entry.31, !43, !"_entry", i1 false, i1 false}
!48 = !{ptr @ls_recover._entry_ptr.33, !43, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.35, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/dlm/recoverd.c", i32 116, i32 2}
!51 = !{ptr @ls_recover._entry.34, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ls_recover._entry_ptr.36, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.38, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ls_recover._entry.37, !50, !"_entry", i1 false, i1 false}
!55 = !{ptr @ls_recover._entry_ptr.39, !50, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.41, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/dlm/recoverd.c", i32 146, i32 4}
!58 = !{ptr @ls_recover._entry.40, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ls_recover._entry_ptr.42, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.44, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ls_recover._entry.43, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @ls_recover._entry_ptr.45, !57, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.47, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/dlm/recoverd.c", i32 156, i32 4}
!65 = !{ptr @ls_recover._entry.46, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ls_recover._entry_ptr.48, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.50, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ls_recover._entry.49, !64, !"_entry", i1 false, i1 false}
!69 = !{ptr @ls_recover._entry_ptr.51, !64, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.53, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/dlm/recoverd.c", i32 164, i32 4}
!72 = !{ptr @ls_recover._entry.52, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ls_recover._entry_ptr.54, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.56, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ls_recover._entry.55, !71, !"_entry", i1 false, i1 false}
!76 = !{ptr @ls_recover._entry_ptr.57, !71, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.59, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/dlm/recoverd.c", i32 168, i32 3}
!79 = !{ptr @ls_recover._entry.58, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ls_recover._entry_ptr.60, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.62, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ls_recover._entry.61, !78, !"_entry", i1 false, i1 false}
!83 = !{ptr @ls_recover._entry_ptr.63, !78, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @ls_recover._entry.64, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../fs/dlm/recoverd.c", i32 188, i32 4}
!86 = !{ptr @ls_recover._entry_ptr.65, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @ls_recover._entry.66, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @ls_recover._entry_ptr.67, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.69, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/dlm/recoverd.c", i32 207, i32 3}
!91 = !{ptr @ls_recover._entry.68, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ls_recover._entry_ptr.70, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.72, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ls_recover._entry.71, !90, !"_entry", i1 false, i1 false}
!95 = !{ptr @ls_recover._entry_ptr.73, !90, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.75, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/dlm/recoverd.c", i32 219, i32 3}
!98 = !{ptr @ls_recover._entry.74, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ls_recover._entry_ptr.76, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.78, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ls_recover._entry.77, !97, !"_entry", i1 false, i1 false}
!102 = !{ptr @ls_recover._entry_ptr.79, !97, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.81, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/dlm/recoverd.c", i32 225, i32 3}
!105 = !{ptr @ls_recover._entry.80, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ls_recover._entry_ptr.82, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.84, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ls_recover._entry.83, !104, !"_entry", i1 false, i1 false}
!109 = !{ptr @ls_recover._entry_ptr.85, !104, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.87, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/dlm/recoverd.c", i32 231, i32 3}
!112 = !{ptr @ls_recover._entry.86, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ls_recover._entry_ptr.88, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.90, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ls_recover._entry.89, !111, !"_entry", i1 false, i1 false}
!116 = !{ptr @ls_recover._entry_ptr.91, !111, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.93, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/dlm/recoverd.c", i32 237, i32 2}
!119 = !{ptr @ls_recover._entry.92, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @ls_recover._entry_ptr.94, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.96, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ls_recover._entry.95, !118, !"_entry", i1 false, i1 false}
!123 = !{ptr @ls_recover._entry_ptr.97, !118, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.99, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/dlm/recoverd.c", i32 247, i32 2}
!126 = !{ptr @ls_recover._entry.98, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ls_recover._entry_ptr.100, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.102, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ls_recover._entry.101, !125, !"_entry", i1 false, i1 false}
!130 = !{ptr @ls_recover._entry_ptr.103, !125, !"_entry_ptr", i1 false, i1 false}
!131 = !{!"sp"}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i64 2152953198}
!142 = !{i64 2152957920}
!143 = !{i64 2152962674}
