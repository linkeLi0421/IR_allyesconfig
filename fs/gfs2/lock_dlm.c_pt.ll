; ModuleID = '/llk/IR_all_yes/fs/gfs2/lock_dlm.c_pt.bc'
source_filename = "../fs/gfs2/lock_dlm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.match_token = type { i32, ptr }
%struct.lm_lockops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dlm_lockspace_ops = type { ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.rb_root = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.82, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.anon.82 = type { %struct.delayed_work, i64 }
%struct.rhash_head = type { ptr }
%struct.gfs2_jdesc = type { %struct.list_head, %struct.list_head, i32, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i64 }
%struct.dlm_slot = type { i32, i32 }
%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lock_dlm\00", [23 x i8] zeroinitializer }, align 32
@dlm_tokens = internal constant { [5 x %struct.match_token], [56 x i8] } { [5 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.134 }, %struct.match_token { i32 1, ptr @.str.135 }, %struct.match_token { i32 2, ptr @.str.136 }, %struct.match_token { i32 3, ptr @.str.137 }, %struct.match_token { i32 4, ptr null }], [56 x i8] zeroinitializer }, align 32
@gfs2_dlm_ops = dso_local constant { %struct.lm_lockops, [56 x i8] } { %struct.lm_lockops { ptr @.str, ptr @gdlm_mount, ptr @gdlm_first_done, ptr @gdlm_recovery_result, ptr @gdlm_unmount, ptr null, ptr @gdlm_put_lock, ptr @gdlm_lock, ptr @gdlm_cancel, ptr @dlm_tokens }, [56 x i8] zeroinitializer }, align 32
@gdlm_mount.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&sdp->sd_control_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@gdlm_mount.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&sdp->sd_control_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@gdlm_mount.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ls->ls_recover_spin\00", [43 x i8] zeroinitializer }, align 32
@gdlm_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016gfs2: fsid=%s: no fsname found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gdlm_mount\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/gfs2/lock_dlm.c\00", [45 x i8] zeroinitializer }, align 32
@gdlm_mount._entry_ptr = internal global ptr @gdlm_mount._entry, section ".printk_index", align 4
@gdlm_lockspace_ops = internal constant { %struct.dlm_lockspace_ops, [20 x i8] } { %struct.dlm_lockspace_ops { ptr @gdlm_recover_prep, ptr @gdlm_recover_slot, ptr @gdlm_recover_done }, [20 x i8] zeroinitializer }, align 32
@gdlm_mount._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013gfs2: fsid=%s: dlm_new_lockspace error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@gdlm_mount._entry_ptr.11 = internal global ptr @gdlm_mount._entry.9, section ".printk_index", align 4
@gdlm_mount._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.8, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016gfs2: fsid=%s: dlm lockspace ops not used\0A\00", [51 x i8] zeroinitializer }, align 32
@gdlm_mount._entry_ptr.14 = internal global ptr @gdlm_mount._entry.12, section ".printk_index", align 4
@gdlm_mount._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.8, i32 1318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013gfs2: fsid=%s: dlm lockspace ops disallow jid preset\0A\00", [40 x i8] zeroinitializer }, align 32
@gdlm_mount._entry_ptr.17 = internal global ptr @gdlm_mount._entry.15, section ".printk_index", align 4
@gdlm_mount._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013gfs2: fsid=%s: mount control error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@gdlm_mount._entry_ptr.20 = internal global ptr @gdlm_mount._entry.18, section ".printk_index", align 4
@gfs2_control_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.8, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013gfs2: fsid=%s: control lock EX error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gfs2_control_func\00", [46 x i8] zeroinitializer }, align 32
@gfs2_control_func._entry_ptr = internal global ptr @gfs2_control_func._entry, section ".printk_index", align 4
@gfs2_control_func._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.8, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gfs2: fsid=%s: recover generation %u block1 %u %u\0A\00", [43 x i8] zeroinitializer }, align 32
@gfs2_control_func._entry_ptr.25 = internal global ptr @gfs2_control_func._entry.23, section ".printk_index", align 4
@gfs2_control_func._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.8, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013gfs2: fsid=%s: control lock NL error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@gfs2_control_func._entry_ptr.28 = internal global ptr @gfs2_control_func._entry.26, section ".printk_index", align 4
@gfs2_control_func._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.8, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016gfs2: fsid=%s: recover generation %u jid %d\0A\00", [49 x i8] zeroinitializer }, align 32
@gfs2_control_func._entry_ptr.31 = internal global ptr @gfs2_control_func._entry.29, section ".printk_index", align 4
@gfs2_control_func._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.8, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016gfs2: fsid=%s: recover generation %u done\0A\00", [51 x i8] zeroinitializer }, align 32
@gfs2_control_func._entry_ptr.34 = internal global ptr @gfs2_control_func._entry.32, section ".printk_index", align 4
@gfs2_control_func._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str.8, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gfs2: fsid=%s: recover generation %u block2 %u %u\0A\00", [43 x i8] zeroinitializer }, align 32
@gfs2_control_func._entry_ptr.37 = internal global ptr @gfs2_control_func._entry.35, section ".printk_index", align 4
@remote_withdraw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.8, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013gfs2: fsid=%s: Journals checked: %d, ret = %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"remote_withdraw\00", [16 x i8] zeroinitializer }, align 32
@remote_withdraw._entry_ptr = internal global ptr @remote_withdraw._entry, section ".printk_index", align 4
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"control_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%8x%16x\00", [24 x i8] zeroinitializer }, align 32
@sync_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.8, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013gfs2: fsid=%s: %s lkid %x flags %x mode %d error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sync_lock\00", [22 x i8] zeroinitializer }, align 32
@sync_lock._entry_ptr = internal global ptr @sync_lock._entry, section ".printk_index", align 4
@sync_lock._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.8, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013gfs2: fsid=%s: %s lkid %x flags %x mode %d status %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sync_lock._entry_ptr.46 = internal global ptr @sync_lock._entry.44, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gdlm_recover_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.8, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013gfs2: fsid=%s: recover_prep ignored due to withdraw.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gdlm_recover_prep\00", [46 x i8] zeroinitializer }, align 32
@gdlm_recover_prep._entry_ptr = internal global ptr @gdlm_recover_prep._entry, section ".printk_index", align 4
@gdlm_recover_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.8, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013gfs2: fsid=%s: recover_slot jid %d ignored due to withdraw.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gdlm_recover_slot\00", [46 x i8] zeroinitializer }, align 32
@gdlm_recover_slot._entry_ptr = internal global ptr @gdlm_recover_slot._entry, section ".printk_index", align 4
@gdlm_recover_slot._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.8, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013gfs2: fsid=%s: recover_slot jid %d gen %u short size %d\0A\00", [37 x i8] zeroinitializer }, align 32
@gdlm_recover_slot._entry_ptr.53 = internal global ptr @gdlm_recover_slot._entry.51, section ".printk_index", align 4
@gdlm_recover_slot._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.8, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gfs2: fsid=%s: recover_slot jid %d gen %u prev %u\0A\00", [43 x i8] zeroinitializer }, align 32
@gdlm_recover_slot._entry_ptr.56 = internal global ptr @gdlm_recover_slot._entry.54, section ".printk_index", align 4
@gdlm_recover_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.8, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013gfs2: fsid=%s: recover_done ignored due to withdraw.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gdlm_recover_done\00", [46 x i8] zeroinitializer }, align 32
@gdlm_recover_done._entry_ptr = internal global ptr @gdlm_recover_done._entry, section ".printk_index", align 4
@gfs2_control_wq = external dso_local local_unnamed_addr global ptr, align 4
@control_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.8, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013gfs2: fsid=%s: control_mount control_lock NL error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"control_mount\00", [18 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr = internal global ptr @control_mount._entry, section ".printk_index", align 4
@control_mount._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.8, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013gfs2: fsid=%s: control_mount mounted_lock NL error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr.63 = internal global ptr @control_mount._entry.61, section ".printk_index", align 4
@control_mount._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.8, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013gfs2: fsid=%s: control_mount control_lock EX error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr.66 = internal global ptr @control_mount._entry.64, section ".printk_index", align 4
@control_mount._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.8, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013gfs2: fsid=%s: control_mount mounted_lock EX error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr.69 = internal global ptr @control_mount._entry.67, section ".printk_index", align 4
@control_mount._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.60, ptr @.str.8, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013gfs2: fsid=%s: control_mount mounted_lock PR error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr.72 = internal global ptr @control_mount._entry.70, section ".printk_index", align 4
@control_mount._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.60, ptr @.str.8, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gfs2: fsid=%s: control_mount control_lock disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr.75 = internal global ptr @control_mount._entry.73, section ".printk_index", align 4
@control_mount._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.60, ptr @.str.8, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016gfs2: fsid=%s: first mounter control generation %u\0A\00", [42 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr.78 = internal global ptr @control_mount._entry.76, section ".printk_index", align 4
@control_mount._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.60, ptr @.str.8, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016gfs2: fsid=%s: control_mount wait for journal recovery\0A\00", [38 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr.81 = internal global ptr @control_mount._entry.79, section ".printk_index", align 4
@control_mount._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.60, ptr @.str.8, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016gfs2: fsid=%s: Recovery is required. Waiting for a non-spectator to mount.\0A\00", [50 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr.84 = internal global ptr @control_mount._entry.82, section ".printk_index", align 4
@control_mount._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.60, ptr @.str.8, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016gfs2: fsid=%s: control_mount wait1 block %u start %u mount %u lvb %u flags %lx\0A\00", [46 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr.87 = internal global ptr @control_mount._entry.85, section ".printk_index", align 4
@control_mount._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.60, ptr @.str.8, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016gfs2: fsid=%s: control_mount wait2 block %u start %u mount %u lvb %u flags %lx\0A\00", [46 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr.90 = internal global ptr @control_mount._entry.88, section ".printk_index", align 4
@control_mount._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.60, ptr @.str.8, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016gfs2: fsid=%s: control_mount wait3 block %u start %u mount %u lvb %u flags %lx\0A\00", [46 x i8] zeroinitializer }, align 32
@control_mount._entry_ptr.93 = internal global ptr @control_mount._entry.91, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mounted_lock\00", [19 x i8] zeroinitializer }, align 32
@sync_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.8, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gfs2: fsid=%s: %s lkid %x error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sync_unlock\00", [20 x i8] zeroinitializer }, align 32
@sync_unlock._entry_ptr = internal global ptr @sync_unlock._entry, section ".printk_index", align 4
@sync_unlock._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.8, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gfs2: fsid=%s: %s lkid %x status %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sync_unlock._entry_ptr.100 = internal global ptr @sync_unlock._entry.98, section ".printk_index", align 4
@gdlm_first_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.8, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013gfs2: fsid=%s: mount first_done error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gdlm_first_done\00", [16 x i8] zeroinitializer }, align 32
@gdlm_first_done._entry_ptr = internal global ptr @gdlm_first_done._entry, section ".printk_index", align 4
@control_first_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.8, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013gfs2: fsid=%s: control_first_done start %u block %u flags %lx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"control_first_done\00", [45 x i8] zeroinitializer }, align 32
@control_first_done._entry_ptr = internal global ptr @control_first_done._entry, section ".printk_index", align 4
@control_first_done._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.8, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016gfs2: fsid=%s: control_first_done wait gen %u\0A\00", [47 x i8] zeroinitializer }, align 32
@control_first_done._entry_ptr.107 = internal global ptr @control_first_done._entry.105, section ".printk_index", align 4
@control_first_done._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.8, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013gfs2: fsid=%s: control_first_done mounted PR error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@control_first_done._entry_ptr.110 = internal global ptr @control_first_done._entry.108, section ".printk_index", align 4
@control_first_done._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.104, ptr @.str.8, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013gfs2: fsid=%s: control_first_done control NL error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@control_first_done._entry_ptr.113 = internal global ptr @control_first_done._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@gdlm_recovery_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.8, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013gfs2: fsid=%s: recovery_result jid %d ignored due to withdraw.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gdlm_recovery_result\00", [43 x i8] zeroinitializer }, align 32
@gdlm_recovery_result._entry_ptr = internal global ptr @gdlm_recovery_result._entry, section ".printk_index", align 4
@gdlm_recovery_result._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.8, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013gfs2: fsid=%s: recovery_result jid %d short size %d\0A\00", [41 x i8] zeroinitializer }, align 32
@gdlm_recovery_result._entry_ptr.119 = internal global ptr @gdlm_recovery_result._entry.117, section ".printk_index", align 4
@gdlm_recovery_result._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.8, i32 1231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gfs2: fsid=%s: recover jid %d result %s\0A\00", [53 x i8] zeroinitializer }, align 32
@gdlm_recovery_result._entry_ptr.122 = internal global ptr @gdlm_recovery_result._entry.120, section ".printk_index", align 4
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@gdlm_put_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.8, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013gfs2: fsid=%s: gdlm_unlock %x,%llx err=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gdlm_put_lock\00", [18 x i8] zeroinitializer }, align 32
@gdlm_put_lock._entry_ptr = internal global ptr @gdlm_put_lock._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@make_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.8, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gfs2: fsid=%s: unknown LM state %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"make_mode\00", [22 x i8] zeroinitializer }, align 32
@make_mode._entry_ptr = internal global ptr @make_mode._entry, section ".printk_index", align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__tracepoint_gfs2_glock_lock_time = external dso_local global %struct.tracepoint, align 4
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/gfs2/trace_gfs2.h\00", [43 x i8] zeroinitializer }, align 32
@trace_gfs2_glock_lock_time.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.130 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@gdlm_bast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.8, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gfs2: fsid=%s: unknown bast mode %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gdlm_bast\00", [22 x i8] zeroinitializer }, align 32
@gdlm_bast._entry_ptr = internal global ptr @gdlm_bast._entry, section ".printk_index", align 4
@.str.134 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"jid=%d\00", [25 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"id=%d\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"first=%d\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nodir=%d\00", [23 x i8] zeroinitializer }, align 32
@switch.table.gdlm_lock = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 5, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.141 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294901758, i64 4294901759, i64 4294967186, i64 4294967261, i64 4294967285]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1394, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"dlm_tokens\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1385, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant [13 x i8] c"gfs2_dlm_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1393, i32 25 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1263, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1264, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1284, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [19 x i8] c"gdlm_lockspace_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1245, i32 39 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1302, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1311, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1318, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1330, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 665, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 674, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 748, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 761, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 781, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 784, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 602, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 580, i32 27 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 534, i32 40 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 540, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 550, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1121, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1147, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1153, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1160, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1176, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 808, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 814, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 856, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 872, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 882, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 902, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 914, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 930, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 943, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 947, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 959, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 968, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 87, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 567, i32 27 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 511, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 519, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1358, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1003, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1019, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1037, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1041, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 73, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1207, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1224, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1230, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 318, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 204, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [24 x i8] c"../fs/gfs2/trace_gfs2.h\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 255, i32 1 }
@___asan_gen_.508 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 108, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 185, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1386, i32 13 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1387, i32 12 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1388, i32 15 }
@___asan_gen_.528 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.529 = private constant [22 x i8] c"../fs/gfs2/lock_dlm.c\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 1389, i32 15 }
@___asan_gen_.531 = private unnamed_addr constant [23 x i8] c"switch.table.gdlm_lock\00", align 1
@llvm.compiler.used = appending global [174 x ptr] [ptr @control_first_done._entry, ptr @control_first_done._entry.105, ptr @control_first_done._entry.108, ptr @control_first_done._entry.111, ptr @control_first_done._entry_ptr, ptr @control_first_done._entry_ptr.107, ptr @control_first_done._entry_ptr.110, ptr @control_first_done._entry_ptr.113, ptr @control_mount._entry, ptr @control_mount._entry.61, ptr @control_mount._entry.64, ptr @control_mount._entry.67, ptr @control_mount._entry.70, ptr @control_mount._entry.73, ptr @control_mount._entry.76, ptr @control_mount._entry.79, ptr @control_mount._entry.82, ptr @control_mount._entry.85, ptr @control_mount._entry.88, ptr @control_mount._entry.91, ptr @control_mount._entry_ptr, ptr @control_mount._entry_ptr.63, ptr @control_mount._entry_ptr.66, ptr @control_mount._entry_ptr.69, ptr @control_mount._entry_ptr.72, ptr @control_mount._entry_ptr.75, ptr @control_mount._entry_ptr.78, ptr @control_mount._entry_ptr.81, ptr @control_mount._entry_ptr.84, ptr @control_mount._entry_ptr.87, ptr @control_mount._entry_ptr.90, ptr @control_mount._entry_ptr.93, ptr @gdlm_bast._entry, ptr @gdlm_bast._entry_ptr, ptr @gdlm_first_done._entry, ptr @gdlm_first_done._entry_ptr, ptr @gdlm_mount._entry, ptr @gdlm_mount._entry.12, ptr @gdlm_mount._entry.15, ptr @gdlm_mount._entry.18, ptr @gdlm_mount._entry.9, ptr @gdlm_mount._entry_ptr, ptr @gdlm_mount._entry_ptr.11, ptr @gdlm_mount._entry_ptr.14, ptr @gdlm_mount._entry_ptr.17, ptr @gdlm_mount._entry_ptr.20, ptr @gdlm_put_lock._entry, ptr @gdlm_put_lock._entry_ptr, ptr @gdlm_recover_done._entry, ptr @gdlm_recover_done._entry_ptr, ptr @gdlm_recover_prep._entry, ptr @gdlm_recover_prep._entry_ptr, ptr @gdlm_recover_slot._entry, ptr @gdlm_recover_slot._entry.51, ptr @gdlm_recover_slot._entry.54, ptr @gdlm_recover_slot._entry_ptr, ptr @gdlm_recover_slot._entry_ptr.53, ptr @gdlm_recover_slot._entry_ptr.56, ptr @gdlm_recovery_result._entry, ptr @gdlm_recovery_result._entry.117, ptr @gdlm_recovery_result._entry.120, ptr @gdlm_recovery_result._entry_ptr, ptr @gdlm_recovery_result._entry_ptr.119, ptr @gdlm_recovery_result._entry_ptr.122, ptr @gfs2_control_func._entry, ptr @gfs2_control_func._entry.23, ptr @gfs2_control_func._entry.26, ptr @gfs2_control_func._entry.29, ptr @gfs2_control_func._entry.32, ptr @gfs2_control_func._entry.35, ptr @gfs2_control_func._entry_ptr, ptr @gfs2_control_func._entry_ptr.25, ptr @gfs2_control_func._entry_ptr.28, ptr @gfs2_control_func._entry_ptr.31, ptr @gfs2_control_func._entry_ptr.34, ptr @gfs2_control_func._entry_ptr.37, ptr @make_mode._entry, ptr @make_mode._entry_ptr, ptr @remote_withdraw._entry, ptr @remote_withdraw._entry_ptr, ptr @sync_lock._entry, ptr @sync_lock._entry.44, ptr @sync_lock._entry_ptr, ptr @sync_lock._entry_ptr.46, ptr @sync_unlock._entry, ptr @sync_unlock._entry.98, ptr @sync_unlock._entry_ptr, ptr @sync_unlock._entry_ptr.100, ptr @.str, ptr @dlm_tokens, ptr @gfs2_dlm_ops, ptr @gdlm_mount.__key, ptr @.str.1, ptr @gdlm_mount.__key.2, ptr @.str.3, ptr @gdlm_mount.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @gdlm_lockspace_ops, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @init_completion.__key, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @switch.table.gdlm_lock], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_dlm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_mount.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_mount.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_mount.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_lockspace_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_mount._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_mount._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_mount._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_mount._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_control_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_control_func._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_control_func._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_control_func._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_control_func._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_control_func._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote_withdraw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_lock._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_recover_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_recover_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_recover_slot._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_recover_slot._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_recover_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_mount._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_unlock._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_first_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_first_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_first_done._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_first_done._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_first_done._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_recovery_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_recovery_result._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_recovery_result._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_put_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdlm_bast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gdlm_lock to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdlm_mount(ptr noundef %sdp, ptr noundef %table) #0 align 64 {
entry:
  %cluster = alloca [64 x i8], align 1
  %ops_result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_lockstruct = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cluster) #11
  %0 = call ptr @memset(ptr %cluster, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ops_result) #11
  %1 = ptrtoint ptr %ops_result to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ops_result, align 4, !annotation !247
  %sd_control_work = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 33
  tail call void @__init_work(ptr noundef %sd_control_work, i32 noundef 0) #11
  %2 = ptrtoint ptr %sd_control_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %sd_control_work, align 8
  %lockdep_map = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 33, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @gdlm_mount.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry8 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 33, i32 0, i32 1
  %3 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 33, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 33, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gfs2_control_func, ptr %func, align 4
  %timer = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 33, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @gdlm_mount.__key.2) #11
  %ls_recover_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %ls_recover_spin, ptr noundef nonnull @.str.5, ptr noundef nonnull @gdlm_mount.__key.4, i16 noundef signext 3) #11
  %ls_recover_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 12
  %ls_recover_mount = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 13
  %ls_recover_start = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 14
  %ls_recover_block = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 15
  %ls_recover_size = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 16
  %ls_recover_submit = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 17
  %ls_recover_result = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 18
  %ls_lvb_bits = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 10
  %6 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ls_lvb_bits, align 4
  %7 = call ptr @memset(ptr %ls_recover_flags, i32 0, i32 28)
  %call20 = tail call fastcc i32 @set_recover_size(ptr noundef %sdp, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call21 = tail call ptr @strchr(ptr noundef %table, i32 noundef 58)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %sd_fsname) #14
  br label %fail_free

if.end28:                                         ; preds = %if.end
  %call31 = tail call i32 @strlen(ptr noundef %table) #15
  %call32 = tail call i32 @strlen(ptr noundef nonnull %call21) #15
  %sub = sub i32 %call31, %call32
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub)
  %8 = icmp ugt i32 %sub, 63
  %9 = sub i32 64, %sub
  %10 = select i1 %8, i32 0, i32 %9
  %11 = getelementptr i8, ptr %cluster, i32 %sub
  %12 = call ptr @memset(ptr %11, i32 0, i32 %10)
  %13 = call ptr @memcpy(ptr %cluster, ptr %table, i32 %sub)
  %incdec.ptr = getelementptr i8, ptr %call21, i32 1
  %ls_dlm = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 3
  %call34 = call i32 @dlm_new_lockspace(ptr noundef %incdec.ptr, ptr noundef nonnull %cluster, i32 noundef 12, i32 noundef 32, ptr noundef nonnull @gdlm_lockspace_ops, ptr noundef %sdp, ptr noundef nonnull %ops_result, ptr noundef %ls_dlm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end44, label %do.end39

do.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname41 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %sd_fsname41, i32 noundef %call34) #14
  br label %fail_free

if.end44:                                         ; preds = %if.end28
  %14 = ptrtoint ptr %ops_result to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ops_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %do.end48, label %if.end54

do.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname50 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %sd_fsname50) #14
  %16 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ls_lvb_bits, align 4
  call void @kfree(ptr noundef %17) #11
  %18 = ptrtoint ptr %ls_recover_submit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ls_recover_submit, align 4
  call void @kfree(ptr noundef %19) #11
  %20 = ptrtoint ptr %ls_recover_result to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ls_recover_result, align 4
  call void @kfree(ptr noundef %21) #11
  %22 = ptrtoint ptr %ls_recover_submit to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ls_recover_submit, align 4
  %23 = ptrtoint ptr %ls_recover_result to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %ls_recover_result, align 4
  %24 = ptrtoint ptr %ls_recover_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ls_recover_size, align 4
  %25 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ls_lvb_bits, align 4
  call void @_set_bit(i32 noundef 1, ptr noundef %ls_recover_flags) #11
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %26 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %sd_flags, align 4
  %28 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool56.not = icmp eq i32 %28, 0
  br i1 %tobool56.not, label %do.end60, label %if.end65

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname62 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %sd_fsname62) #14
  br label %fail_release

if.end65:                                         ; preds = %if.end54
  %ls_mounted_lksb.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 6
  %ls_control_lksb.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 7
  %ls_control_lvb.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 8
  %sb_lvbptr.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 7, i32 3
  %29 = call ptr @memset(ptr %ls_mounted_lksb.i, i32 0, i32 64)
  %30 = ptrtoint ptr %sb_lvbptr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ls_control_lvb.i, ptr %sb_lvbptr.i, align 4
  %ls_sync_wait.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 9
  %31 = ptrtoint ptr %ls_sync_wait.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ls_sync_wait.i, align 4
  %wait.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 9, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @init_completion.__key) #11
  call void @_set_bit(i32 noundef 0, ptr noundef %ls_recover_flags) #11
  %call.i.i = call fastcc i32 @sync_lock(ptr noundef %sdp, i32 noundef 0, i32 noundef 8, i32 noundef 4, ptr noundef %ls_control_lksb.i, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %sd_fsname.i, i32 noundef %call.i.i) #14
  br label %do.end71

if.end.i:                                         ; preds = %if.end65
  %call.i267.i = call fastcc i32 @sync_lock(ptr noundef %sdp, i32 noundef 0, i32 noundef 0, i32 noundef 5, ptr noundef %ls_mounted_lksb.i, ptr noundef nonnull @.str.95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267.i)
  %tobool6.not.i = icmp eq i32 %call.i267.i, 0
  br i1 %tobool6.not.i, label %restart.preheader.i, label %do.end10.i

restart.preheader.i:                              ; preds = %if.end.i
  %ar_spectator.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %sd_fsname109.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  br label %restart.i

do.end10.i:                                       ; preds = %if.end.i
  %sd_fsname12.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %sd_fsname12.i, i32 noundef %call.i267.i) #14
  %32 = ptrtoint ptr %ls_dlm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ls_dlm, align 4
  %sb_lkid.i.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 7, i32 1
  %34 = ptrtoint ptr %sb_lkid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sb_lkid.i.i.i, align 4
  %call.i.i.i = call i32 @dlm_unlock(ptr noundef %33, i32 noundef %35, i32 noundef 0, ptr noundef %ls_control_lksb.i, ptr noundef %sd_lockstruct) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %sb_lkid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sb_lkid.i.i.i, align 4
  %call2.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %sd_fsname12.i, ptr noundef nonnull @.str.40, i32 noundef %37, i32 noundef %call.i.i.i) #14
  br label %do.end71

if.end.i.i.i:                                     ; preds = %do.end10.i
  call void @wait_for_completion(ptr noundef %ls_sync_wait.i) #11
  %38 = ptrtoint ptr %ls_control_lksb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ls_control_lksb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65538, i32 %39)
  %cmp.not.i.i.i = icmp eq i32 %39, -65538
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i.do.end71_crit_edge, label %do.end6.i.i.i

if.end.i.i.i.do.end71_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71

do.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %sb_lkid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sb_lkid.i.i.i, align 4
  %call12.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %sd_fsname12.i, ptr noundef nonnull @.str.40, i32 noundef %41, i32 noundef %39) #14
  br label %do.end71

restart.i:                                        ; preds = %restart.i.backedge, %restart.preheader.i
  %retries.0.i = phi i32 [ 0, %restart.preheader.i ], [ %inc.i, %restart.i.backedge ]
  %mounted_mode.0.i = phi i32 [ 0, %restart.preheader.i ], [ %mounted_mode.0.i.be, %restart.i.backedge ]
  %inc.i = add i32 %retries.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0.i)
  %tobool17.not.i = icmp eq i32 %retries.0.i, 0
  br i1 %tobool17.not.i, label %restart.i.if.end22.i_crit_edge, label %land.lhs.true.i

restart.i.if.end22.i_crit_edge:                   ; preds = %restart.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %restart.i
  %42 = call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %stack.i.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %50 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %land.lhs.true.i.fail.i_crit_edge, !prof !248

land.lhs.true.i.fail.i_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.i

signal_pending.exit.i:                            ; preds = %land.lhs.true.i
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %47, align 4
  %and1.i.i.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool20.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool20.not.i, label %signal_pending.exit.i.if.end22.i_crit_edge, label %signal_pending.exit.i.fail.i_crit_edge

signal_pending.exit.i.fail.i_crit_edge:           ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.i

signal_pending.exit.i.if.end22.i_crit_edge:       ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.end22.i:                                       ; preds = %signal_pending.exit.i.if.end22.i_crit_edge, %restart.i.if.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mounted_mode.0.i)
  %cmp.not.i = icmp eq i32 %mounted_mode.0.i, 0
  br i1 %cmp.not.i, label %if.end22.i.if.end28.i_crit_edge, label %if.then23.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then23.i:                                      ; preds = %if.end22.i
  %call.i270.i = call fastcc i32 @sync_lock(ptr noundef %sdp, i32 noundef 0, i32 noundef 4, i32 noundef 5, ptr noundef %ls_mounted_lksb.i, ptr noundef nonnull @.str.95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270.i)
  %tobool25.not.i = icmp eq i32 %call.i270.i, 0
  br i1 %tobool25.not.i, label %if.then23.i.if.end28.i_crit_edge, label %if.then23.i.fail.i_crit_edge

if.then23.i.fail.i_crit_edge:                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.i

if.then23.i.if.end28.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then23.i.if.end28.i_crit_edge, %if.end22.i.if.end28.i_crit_edge
  %call29.i = call i32 @msleep_interruptible(i32 noundef 500) #11
  %call.i272.i = call fastcc i32 @sync_lock(ptr noundef %sdp, i32 noundef 5, i32 noundef 13, i32 noundef 4, ptr noundef %ls_control_lksb.i, ptr noundef nonnull @.str.40) #11
  %53 = zext i32 %call.i272.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i272.i, label %do.end37.i [
    i32 -11, label %if.end28.i.restart.i.backedge_crit_edge
    i32 0, label %if.end43.i
  ]

if.end28.i.restart.i.backedge_crit_edge:          ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %restart.i.backedge

do.end37.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %sd_fsname109.i, i32 noundef %call.i272.i) #14
  br label %fail.i

if.end43.i:                                       ; preds = %if.end28.i
  %54 = ptrtoint ptr %ar_spectator.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load.i = load i32, ptr %ar_spectator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool44.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool44.not.i, label %if.end46.i, label %if.end43.i.locks_done.i_crit_edge

if.end43.i.locks_done.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %locks_done.i

if.end46.i:                                       ; preds = %if.end43.i
  %call.i274.i = call fastcc i32 @sync_lock(ptr noundef %sdp, i32 noundef 5, i32 noundef 5, i32 noundef 5, ptr noundef %ls_mounted_lksb.i, ptr noundef nonnull @.str.95) #11
  %55 = zext i32 %call.i274.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call.i274.i, label %do.end55.i [
    i32 0, label %if.end46.i.locks_done.i_crit_edge
    i32 -11, label %if.end61.i
  ]

if.end46.i.locks_done.i_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %locks_done.i

do.end55.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %sd_fsname109.i, i32 noundef %call.i274.i) #14
  br label %fail.i

if.end61.i:                                       ; preds = %if.end46.i
  %call.i276.i = call fastcc i32 @sync_lock(ptr noundef %sdp, i32 noundef 3, i32 noundef 5, i32 noundef 5, ptr noundef %ls_mounted_lksb.i, ptr noundef nonnull @.str.95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276.i)
  %tobool63.not.i = icmp eq i32 %call.i276.i, 0
  br i1 %tobool63.not.i, label %if.end61.i.locks_done.i_crit_edge, label %do.end68.i

if.end61.i.locks_done.i_crit_edge:                ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %locks_done.i

do.end68.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %sd_fsname109.i, i32 noundef %call.i276.i) #14
  br label %fail.i

locks_done.i:                                     ; preds = %if.end61.i.locks_done.i_crit_edge, %if.end46.i.locks_done.i_crit_edge, %if.end43.i.locks_done.i_crit_edge
  %cmp83.i = phi i1 [ false, %if.end43.i.locks_done.i_crit_edge ], [ true, %if.end46.i.locks_done.i_crit_edge ], [ false, %if.end61.i.locks_done.i_crit_edge ]
  %mounted_mode.2.i = phi i32 [ 0, %if.end43.i.locks_done.i_crit_edge ], [ 5, %if.end46.i.locks_done.i_crit_edge ], [ 3, %if.end61.i.locks_done.i_crit_edge ]
  %56 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ls_lvb_bits, align 4
  %58 = call ptr @memcpy(ptr %57, ptr %ls_control_lvb.i, i32 32)
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %gen.0.copyload.i.i = load i32, ptr %57, align 1
  %60 = call i32 @llvm.bswap.i32(i32 %gen.0.copyload.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gen.0.copyload.i.i)
  %cmp73.i = icmp eq i32 %gen.0.copyload.i.i, -1
  br i1 %cmp73.i, label %do.end77.i, label %if.end82.i

do.end77.i:                                       ; preds = %locks_done.i
  call void @__sanitizer_cov_trace_pc() #13
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %sd_fsname109.i) #14
  br label %fail.i

if.end82.i:                                       ; preds = %locks_done.i
  br i1 %cmp83.i, label %if.then84.i, label %if.end96.i

if.then84.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_lock(ptr noundef %ls_recover_spin) #11
  call void @_clear_bit(i32 noundef 0, ptr noundef %ls_recover_flags) #11
  call void @_set_bit(i32 noundef 4, ptr noundef %ls_recover_flags) #11
  call void @_set_bit(i32 noundef 2, ptr noundef %ls_recover_flags) #11
  call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %sd_fsname109.i, i32 noundef %60) #14
  br label %if.end76

if.end96.i:                                       ; preds = %if.end82.i
  %call.i278.i = call fastcc i32 @sync_lock(ptr noundef %sdp, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef %ls_control_lksb.i, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i278.i)
  %tobool98.not.i = icmp eq i32 %call.i278.i, 0
  br i1 %tobool98.not.i, label %if.end100.i, label %if.end96.i.fail.i_crit_edge

if.end96.i.fail.i_crit_edge:                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.i

if.end100.i:                                      ; preds = %if.end96.i
  %61 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ls_lvb_bits, align 4
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 8
  %call.i279.i = call ptr @memchr_inv(ptr noundef %add.ptr.i.i, i32 noundef 0, i32 noundef 24) #11
  %tobool.not.i280.not.i = icmp eq ptr %call.i279.i, null
  br i1 %tobool.not.i280.not.i, label %if.end112.i, label %do.end107.i

do.end107.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  %call111.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %sd_fsname109.i) #14
  br label %restart.i.backedge

if.end112.i:                                      ; preds = %if.end100.i
  call void @_raw_spin_lock(ptr noundef %ls_recover_spin) #11
  %63 = ptrtoint ptr %ls_recover_block to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ls_recover_block, align 4
  %65 = ptrtoint ptr %ls_recover_start to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ls_recover_start, align 4
  %67 = ptrtoint ptr %ls_recover_mount to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ls_recover_mount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %68)
  %cmp114.i = icmp ult i32 %60, %68
  br i1 %cmp114.i, label %if.then115.i, label %if.end141.i

if.then115.i:                                     ; preds = %if.end112.i
  %69 = ptrtoint ptr %ar_spectator.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load118.i = load i32, ptr %ar_spectator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load118.i)
  %tobool120.not.i = icmp sgt i32 %bf.load118.i, -1
  br i1 %tobool120.not.i, label %do.end133.i, label %do.end124.i

do.end124.i:                                      ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #13
  %call128.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %sd_fsname109.i) #14
  %call129.i = call i32 @msleep_interruptible(i32 noundef 1000) #11
  br label %if.end139.i

do.end133.i:                                      ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ls_recover_flags, align 4
  %call138.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %sd_fsname109.i, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %60, i32 noundef %71) #14
  br label %if.end139.i

if.end139.i:                                      ; preds = %do.end133.i, %do.end124.i
  call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %restart.i.backedge

if.end141.i:                                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %66)
  %cmp142.not.i = icmp eq i32 %60, %66
  br i1 %cmp142.not.i, label %if.end153.i, label %do.end146.i

do.end146.i:                                      ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ls_recover_flags, align 4
  %call151.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %sd_fsname109.i, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %60, i32 noundef %73) #14
  call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %restart.i.backedge

if.end153.i:                                      ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %60)
  %cmp154.i = icmp eq i32 %64, %60
  br i1 %cmp154.i, label %do.end158.i, label %if.end165.i

do.end158.i:                                      ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ls_recover_flags, align 4
  %call163.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %sd_fsname109.i, i32 noundef %60, i32 noundef %60, i32 noundef %68, i32 noundef %60, i32 noundef %75) #14
  call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %restart.i.backedge

restart.i.backedge:                               ; preds = %do.end158.i, %do.end146.i, %if.end139.i, %do.end107.i, %if.end28.i.restart.i.backedge_crit_edge
  %mounted_mode.0.i.be = phi i32 [ %mounted_mode.2.i, %do.end158.i ], [ %mounted_mode.2.i, %do.end146.i ], [ %mounted_mode.2.i, %if.end139.i ], [ %mounted_mode.2.i, %do.end107.i ], [ 0, %if.end28.i.restart.i.backedge_crit_edge ]
  br label %restart.i

if.end165.i:                                      ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_clear_bit(i32 noundef 0, ptr noundef %ls_recover_flags) #11
  call void @_set_bit(i32 noundef 4, ptr noundef %ls_recover_flags) #11
  %76 = ptrtoint ptr %ls_recover_submit to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ls_recover_submit, align 4
  %78 = ptrtoint ptr %ls_recover_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ls_recover_size, align 4
  %mul.i = shl i32 %79, 2
  %80 = call ptr @memset(ptr %77, i32 0, i32 %mul.i)
  %81 = ptrtoint ptr %ls_recover_result to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ls_recover_result, align 4
  %83 = load i32, ptr %ls_recover_size, align 4
  %mul169.i = shl i32 %83, 2
  %84 = call ptr @memset(ptr %82, i32 0, i32 %mul169.i)
  call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %if.end76

fail.i:                                           ; preds = %if.end96.i.fail.i_crit_edge, %do.end77.i, %do.end68.i, %do.end55.i, %do.end37.i, %if.then23.i.fail.i_crit_edge, %signal_pending.exit.i.fail.i_crit_edge, %land.lhs.true.i.fail.i_crit_edge
  %error.0.i = phi i32 [ %call.i272.i, %do.end37.i ], [ -22, %do.end77.i ], [ %call.i274.i, %do.end55.i ], [ %call.i276.i, %do.end68.i ], [ %call.i270.i, %if.then23.i.fail.i_crit_edge ], [ %call.i278.i, %if.end96.i.fail.i_crit_edge ], [ -4, %signal_pending.exit.i.fail.i_crit_edge ], [ -4, %land.lhs.true.i.fail.i_crit_edge ]
  %85 = ptrtoint ptr %ls_dlm to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ls_dlm, align 4
  %sb_lkid.i.i284.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 6, i32 1
  %87 = ptrtoint ptr %sb_lkid.i.i284.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sb_lkid.i.i284.i, align 4
  %call.i.i285.i = call i32 @dlm_unlock(ptr noundef %86, i32 noundef %88, i32 noundef 0, ptr noundef %ls_mounted_lksb.i, ptr noundef %sd_lockstruct) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i285.i)
  %tobool.not.i.i286.i = icmp eq i32 %call.i.i285.i, 0
  br i1 %tobool.not.i.i286.i, label %if.end.i.i292.i, label %do.end.i.i289.i

do.end.i.i289.i:                                  ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %sb_lkid.i.i284.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sb_lkid.i.i284.i, align 4
  %call2.i.i288.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %sd_fsname109.i, ptr noundef nonnull @.str.95, i32 noundef %90, i32 noundef %call.i.i285.i) #14
  br label %mounted_unlock.exit.i

if.end.i.i292.i:                                  ; preds = %fail.i
  call void @wait_for_completion(ptr noundef %ls_sync_wait.i) #11
  %91 = ptrtoint ptr %ls_mounted_lksb.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ls_mounted_lksb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65538, i32 %92)
  %cmp.not.i.i291.i = icmp eq i32 %92, -65538
  br i1 %cmp.not.i.i291.i, label %if.end.i.i292.i.mounted_unlock.exit.i_crit_edge, label %do.end6.i.i295.i

if.end.i.i292.i.mounted_unlock.exit.i_crit_edge:  ; preds = %if.end.i.i292.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mounted_unlock.exit.i

do.end6.i.i295.i:                                 ; preds = %if.end.i.i292.i
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %sb_lkid.i.i284.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sb_lkid.i.i284.i, align 4
  %call12.i.i294.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %sd_fsname109.i, ptr noundef nonnull @.str.95, i32 noundef %94, i32 noundef %92) #14
  br label %mounted_unlock.exit.i

mounted_unlock.exit.i:                            ; preds = %do.end6.i.i295.i, %if.end.i.i292.i.mounted_unlock.exit.i_crit_edge, %do.end.i.i289.i
  %95 = ptrtoint ptr %ls_dlm to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ls_dlm, align 4
  %sb_lkid.i.i299.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 7, i32 1
  %97 = ptrtoint ptr %sb_lkid.i.i299.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sb_lkid.i.i299.i, align 4
  %call.i.i300.i = call i32 @dlm_unlock(ptr noundef %96, i32 noundef %98, i32 noundef 0, ptr noundef %ls_control_lksb.i, ptr noundef %sd_lockstruct) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i300.i)
  %tobool.not.i.i301.i = icmp eq i32 %call.i.i300.i, 0
  br i1 %tobool.not.i.i301.i, label %if.end.i.i307.i, label %do.end.i.i304.i

do.end.i.i304.i:                                  ; preds = %mounted_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %sb_lkid.i.i299.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sb_lkid.i.i299.i, align 4
  %call2.i.i303.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %sd_fsname109.i, ptr noundef nonnull @.str.40, i32 noundef %100, i32 noundef %call.i.i300.i) #14
  br label %control_mount.exit

if.end.i.i307.i:                                  ; preds = %mounted_unlock.exit.i
  call void @wait_for_completion(ptr noundef %ls_sync_wait.i) #11
  %101 = ptrtoint ptr %ls_control_lksb.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ls_control_lksb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65538, i32 %102)
  %cmp.not.i.i306.i = icmp eq i32 %102, -65538
  br i1 %cmp.not.i.i306.i, label %if.end.i.i307.i.control_mount.exit_crit_edge, label %do.end6.i.i310.i

if.end.i.i307.i.control_mount.exit_crit_edge:     ; preds = %if.end.i.i307.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %control_mount.exit

do.end6.i.i310.i:                                 ; preds = %if.end.i.i307.i
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %sb_lkid.i.i299.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sb_lkid.i.i299.i, align 4
  %call12.i.i309.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %sd_fsname109.i, ptr noundef nonnull @.str.40, i32 noundef %104, i32 noundef %102) #14
  br label %control_mount.exit

control_mount.exit:                               ; preds = %do.end6.i.i310.i, %if.end.i.i307.i.control_mount.exit_crit_edge, %do.end.i.i304.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool67.not = icmp eq i32 %error.0.i, 0
  br i1 %tobool67.not, label %control_mount.exit.if.end76_crit_edge, label %control_mount.exit.do.end71_crit_edge

control_mount.exit.do.end71_crit_edge:            ; preds = %control_mount.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71

control_mount.exit.if.end76_crit_edge:            ; preds = %control_mount.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

do.end71:                                         ; preds = %control_mount.exit.do.end71_crit_edge, %do.end6.i.i.i, %if.end.i.i.i.do.end71_crit_edge, %do.end.i.i.i, %do.end.i
  %retval.0.i150 = phi i32 [ %error.0.i, %control_mount.exit.do.end71_crit_edge ], [ %call.i267.i, %do.end6.i.i.i ], [ %call.i267.i, %if.end.i.i.i.do.end71_crit_edge ], [ %call.i267.i, %do.end.i.i.i ], [ %call.i.i, %do.end.i ]
  %sd_fsname73 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %sd_fsname73, i32 noundef %retval.0.i150) #14
  br label %fail_release

if.end76:                                         ; preds = %control_mount.exit.if.end76_crit_edge, %if.end165.i, %if.then84.i
  %105 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %ls_recover_flags, align 4
  %107 = lshr i32 %106, 2
  %.lobit = and i32 %107, 1
  %ls_first = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 1
  %108 = ptrtoint ptr %ls_first to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %.lobit, ptr %ls_first, align 4
  call void @_clear_bit(i32 noundef 6, ptr noundef %sd_flags) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !249
  call void @wake_up_bit(ptr noundef %sd_flags, i32 noundef 6) #11
  br label %cleanup

fail_release:                                     ; preds = %do.end71, %do.end60
  %error.0 = phi i32 [ %retval.0.i150, %do.end71 ], [ -22, %do.end60 ]
  %109 = ptrtoint ptr %ls_dlm to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ls_dlm, align 4
  %call90 = call i32 @dlm_release_lockspace(ptr noundef %110, i32 noundef 2) #11
  br label %fail_free

fail_free:                                        ; preds = %fail_release, %do.end39, %do.end26
  %error.1 = phi i32 [ %call34, %do.end39 ], [ %error.0, %fail_release ], [ -22, %do.end26 ]
  %111 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ls_lvb_bits, align 4
  call void @kfree(ptr noundef %112) #11
  %113 = ptrtoint ptr %ls_recover_submit to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ls_recover_submit, align 4
  call void @kfree(ptr noundef %114) #11
  %115 = ptrtoint ptr %ls_recover_result to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ls_recover_result, align 4
  call void @kfree(ptr noundef %116) #11
  %117 = ptrtoint ptr %ls_recover_submit to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %ls_recover_submit, align 4
  %118 = ptrtoint ptr %ls_recover_result to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %ls_recover_result, align 4
  %119 = ptrtoint ptr %ls_recover_size to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %ls_recover_size, align 4
  %120 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %ls_lvb_bits, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail_free, %if.end76, %do.end48, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end48 ], [ 0, %if.end76 ], [ %call20, %entry.cleanup_crit_edge ], [ %error.1, %fail_free ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ops_result) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cluster) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdlm_first_done(ptr noundef %sdp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recover_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 12
  %0 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ls_recover_flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ls_recover_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_spin.i) #11
  %ls_recover_start.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 14
  %3 = ptrtoint ptr %ls_recover_start.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ls_recover_start.i, align 4
  %ls_recover_block.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 15
  %5 = ptrtoint ptr %ls_recover_block.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ls_recover_block.i, align 4
  %7 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ls_recover_flags, align 4
  %and1.i100.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i100.i)
  %tobool.not101.i = icmp eq i32 %and1.i100.i, 0
  br i1 %tobool.not101.i, label %lor.lhs.false.lr.ph.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false.lr.ph.i:                            ; preds = %if.end
  %sd_fsname18.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %9 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %ls_recover_flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i17 = icmp eq i32 %11, 0
  br i1 %tobool3.not.i17, label %lor.lhs.false.lr.ph.i.do.end.i_crit_edge, label %lor.lhs.false4.i.preheader

lor.lhs.false.lr.ph.i.do.end.i_crit_edge:         ; preds = %lor.lhs.false.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false4.i.preheader:                       ; preds = %lor.lhs.false.lr.ph.i
  %12 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ls_recover_flags, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i29 = icmp eq i32 %14, 0
  br i1 %tobool7.not.i29, label %lor.lhs.false4.i.preheader.do.end.i_crit_edge, label %lor.lhs.false4.i.preheader.if.end.i_crit_edge

lor.lhs.false4.i.preheader.if.end.i_crit_edge:    ; preds = %lor.lhs.false4.i.preheader
  br label %if.end.i

lor.lhs.false4.i.preheader.do.end.i_crit_edge:    ; preds = %lor.lhs.false4.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %wait_on_bit.exit.i
  %15 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %ls_recover_flags, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %18 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %ls_recover_flags, align 4
  %20 = and i32 %19, 4
  %tobool7.not.i = icmp eq i32 %20, 0
  br i1 %tobool7.not.i, label %lor.lhs.false4.i.do.end.i_crit_edge, label %lor.lhs.false4.i.if.end.i_crit_edge

lor.lhs.false4.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false4.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %wait_on_bit.exit.i.do.end.i_crit_edge, %lor.lhs.false4.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %lor.lhs.false4.i.preheader.do.end.i_crit_edge, %lor.lhs.false.lr.ph.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %.lcssa97.i = phi i32 [ %4, %if.end.do.end.i_crit_edge ], [ %4, %lor.lhs.false.lr.ph.i.do.end.i_crit_edge ], [ %4, %lor.lhs.false4.i.preheader.do.end.i_crit_edge ], [ %37, %lor.lhs.false.i.do.end.i_crit_edge ], [ %37, %lor.lhs.false4.i.do.end.i_crit_edge ], [ %37, %wait_on_bit.exit.i.do.end.i_crit_edge ]
  %.lcssa95.i = phi i32 [ %6, %if.end.do.end.i_crit_edge ], [ %6, %lor.lhs.false.lr.ph.i.do.end.i_crit_edge ], [ %6, %lor.lhs.false4.i.preheader.do.end.i_crit_edge ], [ %39, %lor.lhs.false.i.do.end.i_crit_edge ], [ %39, %lor.lhs.false4.i.do.end.i_crit_edge ], [ %39, %wait_on_bit.exit.i.do.end.i_crit_edge ]
  %.lcssa.i = phi i32 [ %8, %if.end.do.end.i_crit_edge ], [ %8, %lor.lhs.false.lr.ph.i.do.end.i_crit_edge ], [ %8, %lor.lhs.false4.i.preheader.do.end.i_crit_edge ], [ %41, %lor.lhs.false.i.do.end.i_crit_edge ], [ %41, %lor.lhs.false4.i.do.end.i_crit_edge ], [ %41, %wait_on_bit.exit.i.do.end.i_crit_edge ]
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %sd_fsname.i, i32 noundef %.lcssa97.i, i32 noundef %.lcssa95.i, i32 noundef %.lcssa.i) #14
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin.i) #11
  %ls_control_lksb.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 7
  %sd_lockstruct.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23
  %ls_dlm.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 3
  %21 = ptrtoint ptr %ls_dlm.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ls_dlm.i.i, align 4
  %sb_lkid.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 7, i32 1
  %23 = ptrtoint ptr %sb_lkid.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sb_lkid.i.i, align 4
  %call.i.i10 = tail call i32 @dlm_unlock(ptr noundef %22, i32 noundef %24, i32 noundef 0, ptr noundef %ls_control_lksb.i, ptr noundef %sd_lockstruct.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %tobool.not.i.i11 = icmp eq i32 %call.i.i10, 0
  br i1 %tobool.not.i.i11, label %if.end.i.i12, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %sb_lkid.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sb_lkid.i.i, align 4
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %sd_fsname.i, ptr noundef nonnull @.str.40, i32 noundef %26, i32 noundef %call.i.i10) #14
  br label %do.end

if.end.i.i12:                                     ; preds = %do.end.i
  %ls_sync_wait.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 9
  tail call void @wait_for_completion(ptr noundef %ls_sync_wait.i.i) #11
  %27 = ptrtoint ptr %ls_control_lksb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ls_control_lksb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65538, i32 %28)
  %cmp.not.i.i = icmp eq i32 %28, -65538
  br i1 %cmp.not.i.i, label %if.end.i.i12.do.end_crit_edge, label %do.end6.i.i

if.end.i.i12.do.end_crit_edge:                    ; preds = %if.end.i.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end6.i.i:                                      ; preds = %if.end.i.i12
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %sb_lkid.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sb_lkid.i.i, align 4
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %sd_fsname.i, ptr noundef nonnull @.str.40, i32 noundef %30, i32 noundef %28) #14
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false4.i.if.end.i_crit_edge, %lor.lhs.false4.i.preheader.if.end.i_crit_edge
  %31 = phi i32 [ %39, %lor.lhs.false4.i.if.end.i_crit_edge ], [ %6, %lor.lhs.false4.i.preheader.if.end.i_crit_edge ]
  %32 = phi i32 [ %37, %lor.lhs.false4.i.if.end.i_crit_edge ], [ %4, %lor.lhs.false4.i.preheader.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %31)
  %cmp.i = icmp eq i32 %32, %31
  br i1 %cmp.i, label %if.then12.i, label %if.end23.i

if.then12.i:                                      ; preds = %if.end.i
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin.i) #11
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %sd_fsname18.i, i32 noundef %32) #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.114, i32 noundef 73) #11
  %33 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %ls_recover_flags, align 4
  %35 = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %if.then12.i.wait_on_bit.exit.i_crit_edge, label %if.end.i.i

if.then12.i.wait_on_bit.exit.i_crit_edge:         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_on_bit.exit.i

if.end.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %ls_recover_flags, i32 noundef 6, ptr noundef nonnull @bit_wait, i32 noundef 2) #11
  br label %wait_on_bit.exit.i

wait_on_bit.exit.i:                               ; preds = %if.end.i.i, %if.then12.i.wait_on_bit.exit.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_spin.i) #11
  %36 = ptrtoint ptr %ls_recover_start.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ls_recover_start.i, align 4
  %38 = ptrtoint ptr %ls_recover_block.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ls_recover_block.i, align 4
  %40 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %ls_recover_flags, align 4
  %and1.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %wait_on_bit.exit.i.do.end.i_crit_edge

wait_on_bit.exit.i.do.end.i_crit_edge:            ; preds = %wait_on_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end23.i:                                       ; preds = %if.end.i
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %ls_recover_flags) #11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %ls_recover_flags) #11
  %ls_recover_submit.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 17
  %42 = ptrtoint ptr %ls_recover_submit.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ls_recover_submit.i, align 4
  %ls_recover_size.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 16
  %44 = ptrtoint ptr %ls_recover_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ls_recover_size.i, align 4
  %mul.i = shl i32 %45, 2
  %46 = call ptr @memset(ptr %43, i32 0, i32 %mul.i)
  %ls_recover_result.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 18
  %47 = ptrtoint ptr %ls_recover_result.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ls_recover_result.i, align 4
  %49 = load i32, ptr %ls_recover_size.i, align 4
  %mul27.i = shl i32 %49, 2
  %50 = call ptr @memset(ptr %48, i32 0, i32 %mul27.i)
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin.i) #11
  %ls_lvb_bits.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 10
  %51 = ptrtoint ptr %ls_lvb_bits.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ls_lvb_bits.i, align 4
  %53 = call ptr @memset(ptr %52, i32 0, i32 32)
  %54 = load ptr, ptr %ls_lvb_bits.i, align 4
  %ls_control_lvb.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 8
  %55 = call ptr @memcpy(ptr %ls_control_lvb.i.i, ptr %54, i32 32)
  %56 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  %57 = ptrtoint ptr %ls_control_lvb.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ls_control_lvb.i.i, align 4
  %ls_mounted_lksb.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 6
  %call.i.i = tail call fastcc i32 @sync_lock(ptr noundef %sdp, i32 noundef 3, i32 noundef 4, i32 noundef 5, ptr noundef %ls_mounted_lksb.i.i, ptr noundef nonnull @.str.95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool31.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool31.not.i, label %if.end23.i.if.end40.i_crit_edge, label %do.end35.i

if.end23.i.if.end40.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

do.end35.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %sd_fsname18.i, i32 noundef %call.i.i) #14
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end35.i, %if.end23.i.if.end40.i_crit_edge
  %ls_control_lksb.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 7
  %call.i92.i = tail call fastcc i32 @sync_lock(ptr noundef %sdp, i32 noundef 0, i32 noundef 12, i32 noundef 4, ptr noundef %ls_control_lksb.i.i, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool42.not.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool42.not.i, label %if.end40.i.cleanup_crit_edge, label %do.end46.i

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end46.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %sd_fsname18.i, i32 noundef %call.i92.i) #14
  br label %do.end

do.end:                                           ; preds = %do.end46.i, %do.end6.i.i, %if.end.i.i12.do.end_crit_edge, %do.end.i.i
  %retval.0.i.ph = phi i32 [ -1, %do.end6.i.i ], [ -1, %if.end.i.i12.do.end_crit_edge ], [ -1, %do.end.i.i ], [ %call.i92.i, %do.end46.i ]
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %sd_fsname, i32 noundef %retval.0.i.ph) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end40.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdlm_recovery_result(ptr noundef %sdp, i32 noundef %jid, i32 noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_lockstruct = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %0 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_flags.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

gfs2_withdrawn.exit:                              ; preds = %entry
  %3 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sd_flags.i, align 4
  %5 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.i.not = icmp eq i32 %5, 0
  br i1 %tobool3.i.not, label %if.end, label %gfs2_withdrawn.exit.do.end_crit_edge

gfs2_withdrawn.exit.do.end_crit_edge:             ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %gfs2_withdrawn.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %sd_fsname, i32 noundef %jid) #14
  br label %cleanup

if.end:                                           ; preds = %gfs2_withdrawn.exit
  %ls_recover_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 12
  %6 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ls_recover_flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sd_lockstruct, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %jid)
  %cmp = icmp eq i32 %10, %jid
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %ls_recover_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_spin) #11
  %11 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %ls_recover_flags, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %ls_recover_size = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 16
  %14 = ptrtoint ptr %ls_recover_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ls_recover_size, align 4
  %add = add i32 %jid, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp13 = icmp ult i32 %15, %add
  %sd_fsname19 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  br i1 %cmp13, label %do.end17, label %do.end27

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %sd_fsname19, i32 noundef %jid, i32 noundef %15) #14
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %cleanup

do.end27:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 308, i32 %result)
  %cmp31 = icmp eq i32 %result, 308
  %cond = select i1 %cmp31, ptr @.str.123, ptr @.str.124
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %sd_fsname19, i32 noundef %jid, ptr noundef nonnull %cond) #14
  %ls_recover_result = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 18
  %16 = ptrtoint ptr %ls_recover_result to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ls_recover_result, align 4
  %arrayidx = getelementptr i32, ptr %17, i32 %jid
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %result, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %ls_recover_flags, align 4
  %21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool35.not = icmp eq i32 %21, 0
  br i1 %tobool35.not, label %if.then36, label %do.end27.if.end40_crit_edge

do.end27.if.end40_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then36:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_control_wq to i32))
  %22 = load ptr, ptr @gfs2_control_wq, align 4
  %sd_control_work = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 33
  %cond38 = select i1 %cmp31, i32 100, i32 0
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %sd_control_work, i32 noundef %cond38) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %do.end27.if.end40_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end17, %if.then10, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdlm_unmount(ptr noundef %sdp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recover_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 12
  %0 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ls_recover_flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.release_crit_edge

entry.release_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %release

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ls_recover_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_spin) #11
  tail call void @_set_bit(i32 noundef 5, ptr noundef %ls_recover_flags) #11
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  %sd_control_work = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 33
  %call3 = tail call zeroext i1 @flush_delayed_work(ptr noundef %sd_control_work) #11
  br label %release

release:                                          ; preds = %if.end, %entry.release_crit_edge
  %ls_dlm = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 3
  %3 = ptrtoint ptr %ls_dlm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ls_dlm, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %release.if.end9_crit_edge, label %if.then5

release.if.end9_crit_edge:                        ; preds = %release
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %release
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @dlm_release_lockspace(ptr noundef nonnull %4, i32 noundef 2) #11
  %5 = ptrtoint ptr %ls_dlm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ls_dlm, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %release.if.end9_crit_edge
  %ls_lvb_bits.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 10
  %6 = ptrtoint ptr %ls_lvb_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ls_lvb_bits.i, align 4
  tail call void @kfree(ptr noundef %7) #11
  %ls_recover_submit.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 17
  %8 = ptrtoint ptr %ls_recover_submit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ls_recover_submit.i, align 4
  tail call void @kfree(ptr noundef %9) #11
  %ls_recover_result.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 18
  %10 = ptrtoint ptr %ls_recover_result.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ls_recover_result.i, align 4
  tail call void @kfree(ptr noundef %11) #11
  %12 = ptrtoint ptr %ls_recover_submit.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ls_recover_submit.i, align 4
  %13 = ptrtoint ptr %ls_recover_result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ls_recover_result.i, align 4
  %ls_recover_size.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 16
  %14 = ptrtoint ptr %ls_recover_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ls_recover_size.i, align 4
  %15 = ptrtoint ptr %ls_lvb_bits.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ls_lvb_bits.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdlm_put_lock(ptr noundef %gl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gl_name = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  %sb_lkid = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %sb_lkid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_lkid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gfs2_glock_free(ptr noundef %gl) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %gl) #11
  %arrayidx.i = getelementptr %struct.gfs2_glock, ptr %gl, i32 0, i32 9, i32 0, i32 6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %arrayidx.i, align 8
  %6 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ln_sbd, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %11, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !250
  %sd_lkstats.i = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %sd_lkstats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_lkstats.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i, align 4
  %arrayidx.i39 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i39, align 4
  %add.i = add i32 %20, %14
  %21 = inttoptr i32 %add.i to ptr
  %ln_type.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %ln_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ln_type.i, align 4
  %arrayidx7.i = getelementptr [10 x %struct.gfs2_lkstats], ptr %21, i32 0, i32 %23, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx7.i, align 8
  %inc.i40 = add i64 %25, 1
  store i64 %inc.i40, ptr %arrayidx7.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !251
  %26 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i1.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  %30 = ptrtoint ptr %ln_type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ln_type.i, align 4
  %32 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i.i42 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i42 to ptr
  %preempt_count.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i43, align 4
  %add.i.i44 = add i32 %35, 1
  store volatile i32 %add.i.i44, ptr %preempt_count.i.i.i43, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !252
  %gl_dstamp.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 8
  %36 = ptrtoint ptr %gl_dstamp.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %gl_dstamp.i, align 8
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %38 = ptrtoint ptr %gl_dstamp.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %call.i.i, ptr %gl_dstamp.i, align 8
  %sub.i = sub i64 %call.i.i, %37
  %39 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ln_sbd, align 8
  %sd_lkstats.i46 = getelementptr inbounds %struct.gfs2_sbd, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %sd_lkstats.i46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd_lkstats.i46, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i47 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i47 to ptr
  %cpu.i48 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i48, align 4
  %arrayidx.i49 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i49, align 4
  %add.i50 = add i32 %49, %43
  %50 = inttoptr i32 %add.i50 to ptr
  %arrayidx.i.i = getelementptr %struct.gfs2_glock, ptr %gl, i32 0, i32 9, i32 0, i32 4
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx.i.i, align 8
  %sub.i22.i = sub i64 %sub.i, %52
  %shr.i.i = ashr i64 %sub.i22.i, 3
  %add.i23.i = add i64 %shr.i.i, %52
  store i64 %add.i23.i, ptr %arrayidx.i.i, align 8
  %53 = tail call i64 @llvm.abs.i64(i64 %sub.i22.i, i1 false) #11
  %arrayidx5.i.i = getelementptr %struct.gfs2_glock, ptr %gl, i32 0, i32 9, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx5.i.i, align 8
  %sub6.i.i = sub i64 %53, %55
  %shr7.i.i = ashr i64 %sub6.i.i, 2
  %add10.i.i = add i64 %shr7.i.i, %55
  store i64 %add10.i.i, ptr %arrayidx5.i.i, align 8
  %arrayidx10.i = getelementptr [10 x %struct.gfs2_lkstats], ptr %50, i32 0, i32 %31
  %arrayidx.i24.i = getelementptr [8 x i64], ptr %arrayidx10.i, i32 0, i32 4
  %56 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx.i24.i, align 8
  %sub.i25.i = sub i64 %sub.i, %57
  %shr.i26.i = ashr i64 %sub.i25.i, 3
  %add.i27.i = add i64 %shr.i26.i, %57
  store i64 %add.i27.i, ptr %arrayidx.i24.i, align 8
  %58 = tail call i64 @llvm.abs.i64(i64 %sub.i25.i, i1 false) #11
  %arrayidx5.i28.i = getelementptr [8 x i64], ptr %arrayidx10.i, i32 0, i32 5
  %59 = ptrtoint ptr %arrayidx5.i28.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx5.i28.i, align 8
  %sub6.i29.i = sub i64 %58, %60
  %shr7.i30.i = ashr i64 %sub6.i29.i, 2
  %add10.i31.i = add i64 %shr7.i30.i, %60
  store i64 %add10.i31.i, ptr %arrayidx5.i28.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !253
  %61 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i20.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i20.i to ptr
  %preempt_count.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i21.i, align 4
  %sub.i.i51 = add i32 %64, -1
  store volatile i32 %sub.i.i51, ptr %preempt_count.i.i21.i, align 4
  %ls_recover_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 23, i32 12
  %65 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %ls_recover_flags, align 4
  %67 = and i32 %66, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not = icmp eq i32 %67, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gfs2_glock_free(ptr noundef %gl) #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 4
  %68 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %sd_flags, align 4
  %70 = and i32 %69, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool4.not = icmp eq i32 %70, 0
  br i1 %tobool4.not, label %if.end2.if.end8_crit_edge, label %land.lhs.true

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end2
  %sb_lvbptr = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 10, i32 3
  %71 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sb_lvbptr, align 4
  %tobool6.not = icmp eq ptr %72, null
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gfs2_glock_free(ptr noundef %gl) #11
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end2.if.end8_crit_edge
  %ls_dlm = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 23, i32 3
  %73 = ptrtoint ptr %ls_dlm to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ls_dlm, align 4
  %75 = ptrtoint ptr %sb_lkid to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sb_lkid, align 4
  %call11 = tail call i32 @dlm_unlock(ptr noundef %74, i32 noundef %76, i32 noundef 8, ptr noundef null, ptr noundef %gl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %do.end

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 110
  %77 = ptrtoint ptr %ln_type.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ln_type.i, align 4
  %79 = ptrtoint ptr %gl_name to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %gl_name, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %sd_fsname, i32 noundef %78, i64 noundef %80, i32 noundef %call11) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge, %if.then7, %if.then1, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdlm_lock(ptr noundef %gl, i32 noundef %req_state, i32 noundef %flags) #0 align 64 {
entry:
  %strname = alloca [25 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %strname) #11
  %2 = call ptr @memset(ptr %strname, i32 0, i32 25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %req_state)
  %3 = icmp ult i32 %req_state, 4
  br i1 %3, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 110
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %sd_fsname.i, i32 noundef %req_state) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lock_dlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 205, 0\0A.popsection", ""() #11, !srcloc !254
  unreachable

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.gdlm_lock, i32 0, i32 %req_state
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %sb_lvbptr.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 10, i32 3
  %5 = ptrtoint ptr %sb_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sb_lvbptr.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 8
  %and.i = and i32 %flags, 1
  %and5.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %lkf.2.v.i = select i1 %tobool6.not.i, i32 %and.i, i32 2049
  %lkf.2.i = or i32 %spec.select.i, %lkf.2.v.i
  %and11.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or15.i = or i32 %lkf.2.i, 12288
  %lkf.3.i = select i1 %tobool12.not.i, i32 %lkf.2.i, i32 %or15.i
  %and17.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %switch.lookup.if.end31.i_crit_edge, label %if.then19.i

switch.lookup.if.end31.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then19.i:                                      ; preds = %switch.lookup
  %7 = zext i32 %switch.load to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %switch.load, label %do.body.i [
    i32 3, label %if.then20.i
    i32 2, label %if.then23.i
  ]

if.then20.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  %or21.i = or i32 %lkf.3.i, 65536
  br label %if.end31.i

if.then23.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  %or24.i = or i32 %lkf.3.i, 32768
  br label %if.end31.i

do.body.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lock_dlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 236, 0\0A.popsection", ""() #11, !srcloc !255
  unreachable

if.end31.i:                                       ; preds = %if.then23.i, %if.then20.i, %switch.lookup.if.end31.i_crit_edge
  %lkf.4.i = phi i32 [ %or21.i, %if.then20.i ], [ %or24.i, %if.then23.i ], [ %lkf.3.i, %switch.lookup.if.end31.i_crit_edge ]
  %sb_lkid.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %sb_lkid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_lkid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp33.not.i = icmp eq i32 %9, 0
  br i1 %cmp33.not.i, label %if.end31.i.make_flags.exit_crit_edge, label %if.then34.i

if.end31.i.make_flags.exit_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %make_flags.exit

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %gl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %gl, align 4
  %12 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool36.not.i = icmp eq i32 %12, 0
  %spec.select57.v.i = select i1 %tobool36.not.i, i32 4, i32 20
  %spec.select57.i = or i32 %spec.select57.v.i, %lkf.4.i
  br label %make_flags.exit

make_flags.exit:                                  ; preds = %if.then34.i, %if.end31.i.make_flags.exit_crit_edge
  %lkf.5.i = phi i32 [ %lkf.4.i, %if.end31.i.make_flags.exit_crit_edge ], [ %spec.select57.i, %if.then34.i ]
  %arrayidx.i = getelementptr %struct.gfs2_glock, ptr %gl, i32 0, i32 9, i32 0, i32 6
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.i, align 8
  %inc.i = add i64 %14, 1
  store i64 %inc.i, ptr %arrayidx.i, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %18, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !250
  %sd_lkstats.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %sd_lkstats.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_lkstats.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i25 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i25, align 4
  %add.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i to ptr
  %ln_type.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %ln_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ln_type.i, align 4
  %arrayidx7.i = getelementptr [10 x %struct.gfs2_lkstats], ptr %28, i32 0, i32 %30, i32 0, i32 6
  %31 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx7.i, align 8
  %inc.i26 = add i64 %32, 1
  store i64 %inc.i26, ptr %arrayidx7.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !251
  %33 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i1.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  %37 = ptrtoint ptr %sb_lkid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_lkid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not = icmp eq i32 %38, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %make_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %ln_type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ln_type.i, align 4
  %41 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i.i28 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i28 to ptr
  %preempt_count.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i29, align 4
  %add.i.i30 = add i32 %44, 1
  store volatile i32 %add.i.i30, ptr %preempt_count.i.i.i29, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !252
  %gl_dstamp.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 8
  %45 = ptrtoint ptr %gl_dstamp.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %gl_dstamp.i, align 8
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %47 = ptrtoint ptr %gl_dstamp.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %call.i.i, ptr %gl_dstamp.i, align 8
  %sub.i = sub i64 %call.i.i, %46
  %48 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ln_sbd, align 8
  %sd_lkstats.i32 = getelementptr inbounds %struct.gfs2_sbd, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %sd_lkstats.i32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sd_lkstats.i32, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i33 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i33 to ptr
  %cpu.i34 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu.i34 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i34, align 4
  %arrayidx.i35 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i35, align 4
  %add.i36 = add i32 %58, %52
  %59 = inttoptr i32 %add.i36 to ptr
  %arrayidx.i.i = getelementptr %struct.gfs2_glock, ptr %gl, i32 0, i32 9, i32 0, i32 4
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx.i.i, align 8
  %sub.i22.i = sub i64 %sub.i, %61
  %shr.i.i = ashr i64 %sub.i22.i, 3
  %add.i23.i = add i64 %shr.i.i, %61
  store i64 %add.i23.i, ptr %arrayidx.i.i, align 8
  %62 = tail call i64 @llvm.abs.i64(i64 %sub.i22.i, i1 false) #11
  %arrayidx5.i.i = getelementptr %struct.gfs2_glock, ptr %gl, i32 0, i32 9, i32 0, i32 5
  %63 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx5.i.i, align 8
  %sub6.i.i = sub i64 %62, %64
  %shr7.i.i = ashr i64 %sub6.i.i, 2
  %add10.i.i = add i64 %shr7.i.i, %64
  store i64 %add10.i.i, ptr %arrayidx5.i.i, align 8
  %arrayidx10.i = getelementptr [10 x %struct.gfs2_lkstats], ptr %59, i32 0, i32 %40
  %arrayidx.i24.i = getelementptr [8 x i64], ptr %arrayidx10.i, i32 0, i32 4
  %65 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx.i24.i, align 8
  %sub.i25.i = sub i64 %sub.i, %66
  %shr.i26.i = ashr i64 %sub.i25.i, 3
  %add.i27.i = add i64 %shr.i26.i, %66
  store i64 %add.i27.i, ptr %arrayidx.i24.i, align 8
  %67 = tail call i64 @llvm.abs.i64(i64 %sub.i25.i, i1 false) #11
  %arrayidx5.i28.i = getelementptr [8 x i64], ptr %arrayidx10.i, i32 0, i32 5
  %68 = ptrtoint ptr %arrayidx5.i28.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx5.i28.i, align 8
  %sub6.i29.i = sub i64 %67, %69
  %shr7.i30.i = ashr i64 %sub6.i29.i, 2
  %add10.i31.i = add i64 %shr7.i30.i, %69
  store i64 %add10.i31.i, ptr %arrayidx5.i28.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !253
  %70 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i20.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i20.i to ptr
  %preempt_count.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i21.i, align 4
  %sub.i.i37 = add i32 %73, -1
  store volatile i32 %sub.i.i37, ptr %preempt_count.i.i21.i, align 4
  br label %if.end

if.else:                                          ; preds = %make_flags.exit
  %gl_name = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1
  %74 = call ptr @memset(ptr %strname, i32 32, i32 23)
  %arrayidx = getelementptr inbounds [25 x i8], ptr %strname, i32 0, i32 24
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx, align 1
  %add.ptr = getelementptr inbounds i8, ptr %strname, i32 7
  %76 = ptrtoint ptr %ln_type.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ln_type.i, align 4
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 48, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not4.i = icmp eq i32 %77, 0
  br i1 %tobool.not4.i, label %if.else.gfs2_reverse_hex.exit_crit_edge, label %while.body.i.preheader

if.else.gfs2_reverse_hex.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_reverse_hex.exit

while.body.i.preheader:                           ; preds = %if.else
  %conv = zext i32 %77 to i64
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %value.addr.06.i = phi i64 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %conv, %while.body.i.preheader ]
  %c.addr.05.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr, %while.body.i.preheader ]
  %79 = trunc i64 %value.addr.06.i to i32
  %idxprom.i = and i32 %79, 15
  %arrayidx.i38 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %idxprom.i
  %80 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i38, align 1
  %incdec.ptr.i = getelementptr i8, ptr %c.addr.05.i, i32 -1
  %82 = ptrtoint ptr %c.addr.05.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %c.addr.05.i, align 1
  %shr.i = lshr i64 %value.addr.06.i, 4
  %tobool.not.i39 = icmp ult i64 %value.addr.06.i, 16
  br i1 %tobool.not.i39, label %while.body.i.gfs2_reverse_hex.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.gfs2_reverse_hex.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_reverse_hex.exit

gfs2_reverse_hex.exit:                            ; preds = %while.body.i.gfs2_reverse_hex.exit_crit_edge, %if.else.gfs2_reverse_hex.exit_crit_edge
  %add.ptr7 = getelementptr inbounds i8, ptr %strname, i32 23
  %83 = ptrtoint ptr %gl_name to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %gl_name, align 8
  %85 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 48, ptr %add.ptr7, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %tobool.not4.i40 = icmp eq i64 %84, 0
  br i1 %tobool.not4.i40, label %gfs2_reverse_hex.exit.gfs2_reverse_hex.exit49_crit_edge, label %gfs2_reverse_hex.exit.while.body.i48_crit_edge

gfs2_reverse_hex.exit.while.body.i48_crit_edge:   ; preds = %gfs2_reverse_hex.exit
  br label %while.body.i48

gfs2_reverse_hex.exit.gfs2_reverse_hex.exit49_crit_edge: ; preds = %gfs2_reverse_hex.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_reverse_hex.exit49

while.body.i48:                                   ; preds = %while.body.i48.while.body.i48_crit_edge, %gfs2_reverse_hex.exit.while.body.i48_crit_edge
  %value.addr.06.i41 = phi i64 [ %shr.i46, %while.body.i48.while.body.i48_crit_edge ], [ %84, %gfs2_reverse_hex.exit.while.body.i48_crit_edge ]
  %c.addr.05.i42 = phi ptr [ %incdec.ptr.i45, %while.body.i48.while.body.i48_crit_edge ], [ %add.ptr7, %gfs2_reverse_hex.exit.while.body.i48_crit_edge ]
  %86 = trunc i64 %value.addr.06.i41 to i32
  %idxprom.i43 = and i32 %86, 15
  %arrayidx.i44 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %idxprom.i43
  %87 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i44, align 1
  %incdec.ptr.i45 = getelementptr i8, ptr %c.addr.05.i42, i32 -1
  %89 = ptrtoint ptr %c.addr.05.i42 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %c.addr.05.i42, align 1
  %shr.i46 = lshr i64 %value.addr.06.i41, 4
  %tobool.not.i47 = icmp ult i64 %value.addr.06.i41, 16
  br i1 %tobool.not.i47, label %while.body.i48.gfs2_reverse_hex.exit49_crit_edge, label %while.body.i48.while.body.i48_crit_edge

while.body.i48.while.body.i48_crit_edge:          ; preds = %while.body.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i48

while.body.i48.gfs2_reverse_hex.exit49_crit_edge: ; preds = %while.body.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_reverse_hex.exit49

gfs2_reverse_hex.exit49:                          ; preds = %while.body.i48.gfs2_reverse_hex.exit49_crit_edge, %gfs2_reverse_hex.exit.gfs2_reverse_hex.exit49_crit_edge
  %call.i50 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %gl_dstamp = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 8
  %90 = ptrtoint ptr %gl_dstamp to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %call.i50, ptr %gl_dstamp, align 8
  br label %if.end

if.end:                                           ; preds = %gfs2_reverse_hex.exit49, %if.then
  %gl_lksb = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 10
  %ls_dlm = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 23, i32 3
  %91 = ptrtoint ptr %ls_dlm to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ls_dlm, align 4
  %call12 = call i32 @dlm_lock(ptr noundef %92, i32 noundef %switch.load, ptr noundef %gl_lksb, i32 noundef %lkf.5.i, ptr noundef nonnull %strname, i32 noundef 24, i32 noundef 0, ptr noundef nonnull @gdlm_ast, ptr noundef %gl, ptr noundef nonnull @gdlm_bast) #11
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %strname) #11
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdlm_cancel(ptr noundef %gl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  %ls_dlm = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 23, i32 3
  %2 = ptrtoint ptr %ls_dlm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ls_dlm, align 4
  %sb_lkid = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %sb_lkid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_lkid, align 4
  %call = tail call i32 @dlm_unlock(ptr noundef %3, i32 noundef %5, i32 noundef 2, ptr noundef null, ptr noundef %gl) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_control_func(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1360
  %sd_flags = getelementptr i8, ptr %work, i32 -1160
  %0 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_flags, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sd_jindex_list.i = getelementptr i8, ptr %work, i32 296
  %3 = ptrtoint ptr %sd_jindex_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %jd.020.i = load ptr, ptr %sd_jindex_list.i, align 8
  %cmp.not21.i = icmp eq ptr %jd.020.i, %sd_jindex_list.i
  br i1 %cmp.not21.i, label %if.then.remote_withdraw.exit_crit_edge, label %for.body.lr.ph.i

if.then.remote_withdraw.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %remote_withdraw.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %sd_lockstruct.i = getelementptr i8, ptr %work, i32 -524
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %jd.023.i = phi ptr [ %jd.020.i, %for.body.lr.ph.i ], [ %jd.0.i, %for.inc.i.for.body.i_crit_edge ]
  %count.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %count.1.i, %for.inc.i.for.body.i_crit_edge ]
  %jd_jid.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd.023.i, i32 0, i32 7
  %4 = ptrtoint ptr %jd_jid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jd_jid.i, align 4
  %6 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sd_lockstruct.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2.i = icmp eq i32 %5, %7
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @gfs2_recover_journal(ptr noundef %jd.023.i, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.remote_withdraw.exit_crit_edge

if.end.i.remote_withdraw.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %remote_withdraw.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add i32 %count.022.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i, %for.body.i.for.inc.i_crit_edge
  %count.1.i = phi i32 [ %count.022.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end4.i ]
  %8 = ptrtoint ptr %jd.023.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %jd.0.i = load ptr, ptr %jd.023.i, align 8
  %cmp.not.i = icmp eq ptr %jd.0.i, %sd_jindex_list.i
  br i1 %cmp.not.i, label %for.inc.i.remote_withdraw.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.remote_withdraw.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %remote_withdraw.exit

remote_withdraw.exit:                             ; preds = %for.inc.i.remote_withdraw.exit_crit_edge, %if.end.i.remote_withdraw.exit_crit_edge, %if.then.remote_withdraw.exit_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %if.then.remote_withdraw.exit_crit_edge ], [ %count.022.i, %if.end.i.remote_withdraw.exit_crit_edge ], [ %count.1.i, %for.inc.i.remote_withdraw.exit_crit_edge ]
  %ret.2.i = phi i32 [ 0, %if.then.remote_withdraw.exit_crit_edge ], [ %call.i, %if.end.i.remote_withdraw.exit_crit_edge ], [ 0, %for.inc.i.remote_withdraw.exit_crit_edge ]
  %sd_fsname.i = getelementptr i8, ptr %work, i32 2016
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %sd_fsname.i, i32 noundef %count.0.lcssa.i, i32 noundef %ret.2.i) #14
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %sd_flags) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ls_recover_spin = getelementptr i8, ptr %work, i32 -376
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_spin) #11
  %ls_recover_flags = getelementptr i8, ptr %work, i32 -332
  %9 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %ls_recover_flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ls_recover_flags, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  br i1 %tobool6.not, label %if.end9, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %ls_recover_block = getelementptr i8, ptr %work, i32 -320
  %15 = ptrtoint ptr %ls_recover_block to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ls_recover_block, align 4
  %ls_recover_start = getelementptr i8, ptr %work, i32 -324
  %17 = ptrtoint ptr %ls_recover_start to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ls_recover_start, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp = icmp eq i32 %16, %18
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %ls_control_lksb.i = getelementptr i8, ptr %work, i32 -484
  %call.i276 = tail call fastcc i32 @sync_lock(ptr noundef %add.ptr, i32 noundef 5, i32 noundef 12, i32 noundef 4, ptr noundef %ls_control_lksb.i, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool14.not = icmp eq i32 %call.i276, 0
  br i1 %tobool14.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname = getelementptr i8, ptr %work, i32 2016
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %sd_fsname, i32 noundef %call.i276) #14
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %ls_lvb_bits = getelementptr i8, ptr %work, i32 -380
  %19 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ls_lvb_bits, align 4
  %ls_control_lvb.i = getelementptr i8, ptr %work, i32 -468
  %21 = call ptr @memcpy(ptr %20, ptr %ls_control_lvb.i, i32 32)
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %gen.0.copyload.i = load i32, ptr %20, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %gen.0.copyload.i) #11
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_spin) #11
  %24 = ptrtoint ptr %ls_recover_block to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ls_recover_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %25)
  %cmp21.not = icmp eq i32 %16, %25
  br i1 %cmp21.not, label %lor.lhs.false22, label %if.end18.do.end28_crit_edge

if.end18.do.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

lor.lhs.false22:                                  ; preds = %if.end18
  %26 = ptrtoint ptr %ls_recover_start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ls_recover_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %27)
  %cmp24.not = icmp eq i32 %18, %27
  br i1 %cmp24.not, label %if.end36, label %lor.lhs.false22.do.end28_crit_edge

lor.lhs.false22.do.end28_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

do.end28:                                         ; preds = %lor.lhs.false22.do.end28_crit_edge, %if.end18.do.end28_crit_edge
  %sd_fsname30 = getelementptr i8, ptr %work, i32 2016
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %sd_fsname30, i32 noundef %18, i32 noundef %16, i32 noundef %25) #14
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  %call.i278 = tail call fastcc i32 @sync_lock(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef %ls_control_lksb.i, ptr noundef nonnull @.str.40) #11
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false22
  %ls_recover_size = getelementptr i8, ptr %work, i32 -316
  %28 = ptrtoint ptr %ls_recover_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ls_recover_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %18)
  %cmp37.not = icmp ule i32 %23, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp39300 = icmp sgt i32 %29, 0
  %or.cond314 = select i1 %cmp37.not, i1 %cmp39300, i1 false
  br i1 %or.cond314, label %for.body.lr.ph, label %if.end36.if.end53_crit_edge

if.end36.if.end53_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

for.body.lr.ph:                                   ; preds = %if.end36
  %ls_recover_result = getelementptr i8, ptr %work, i32 -308
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0302 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %write_lvb.0301 = phi i32 [ 0, %for.body.lr.ph ], [ %write_lvb.1, %for.inc.for.body_crit_edge ]
  %30 = ptrtoint ptr %ls_recover_result to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ls_recover_result, align 4
  %arrayidx = getelementptr i32, ptr %31, i32 %i.0302
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 309, i32 %33)
  %cmp40.not = icmp eq i32 %33, 309
  br i1 %cmp40.not, label %if.end42, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end42:                                         ; preds = %for.body
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx, align 4
  %35 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ls_lvb_bits, align 4
  %add.ptr46 = getelementptr i8, ptr %36, i32 8
  %div3.i.i = lshr i32 %i.0302, 5
  %arrayidx.i.i = getelementptr i32, ptr %add.ptr46, i32 %div3.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i.i, align 4
  %xor.i = and i32 %i.0302, 31
  %and.i.i = xor i32 %xor.i, 24
  %39 = shl nuw i32 1, %and.i.i
  %40 = and i32 %38, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool48.not = icmp eq i32 %40, 0
  br i1 %tobool48.not, label %if.end42.for.inc_crit_edge, label %if.end50

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i.i = xor i32 %39, -1
  %and.i.i280 = and i32 %38, %neg.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i.i280, ptr %arrayidx.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end50, %if.end42.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %write_lvb.1 = phi i32 [ %write_lvb.0301, %for.body.for.inc_crit_edge ], [ 1, %if.end50 ], [ %write_lvb.0301, %if.end42.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0302, 1
  %exitcond.not = icmp eq i32 %inc, %29
  br i1 %exitcond.not, label %for.inc.if.end53_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end53_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end53:                                         ; preds = %for.inc.if.end53_crit_edge, %if.end36.if.end53_crit_edge
  %write_lvb.2 = phi i32 [ 0, %if.end36.if.end53_crit_edge ], [ %write_lvb.1, %for.inc.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %18)
  %cmp54 = icmp eq i32 %23, %18
  br i1 %cmp54, label %for.cond56.preheader, label %if.else

for.cond56.preheader:                             ; preds = %if.end53
  br i1 %cmp39300, label %for.body58.lr.ph, label %for.cond56.preheader.if.end97_crit_edge

for.cond56.preheader.if.end97_crit_edge:          ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

for.body58.lr.ph:                                 ; preds = %for.cond56.preheader
  %ls_recover_submit = getelementptr i8, ptr %work, i32 -312
  br label %for.body58

for.body58:                                       ; preds = %for.inc70.for.body58_crit_edge, %for.body58.lr.ph
  %i.1308 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc71, %for.inc70.for.body58_crit_edge ]
  %42 = ptrtoint ptr %ls_recover_submit to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ls_recover_submit, align 4
  %arrayidx59 = getelementptr i32, ptr %43, i32 %i.1308
  %44 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool60.not = icmp ne i32 %45, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %18)
  %cmp65 = icmp ult i32 %45, %18
  %or.cond299 = select i1 %tobool60.not, i1 %cmp65, i1 false
  br i1 %or.cond299, label %if.then66, label %for.body58.for.inc70_crit_edge

for.body58.for.inc70_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc70

if.then66:                                        ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx59, align 4
  br label %for.inc70

for.inc70:                                        ; preds = %if.then66, %for.body58.for.inc70_crit_edge
  %inc71 = add nuw nsw i32 %i.1308, 1
  %exitcond316.not = icmp eq i32 %inc71, %29
  br i1 %exitcond316.not, label %for.inc70.if.end97_crit_edge, label %for.inc70.for.body58_crit_edge

for.inc70.for.body58_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body58

for.inc70.if.end97_crit_edge:                     ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %18)
  %cmp73 = icmp ult i32 %23, %18
  br i1 %cmp73, label %for.cond75.preheader, label %if.else.if.end97_crit_edge

if.else.if.end97_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

for.cond75.preheader:                             ; preds = %if.else
  br i1 %cmp39300, label %for.body77.lr.ph, label %for.cond75.preheader.if.end97.thread_crit_edge

for.cond75.preheader.if.end97.thread_crit_edge:   ; preds = %for.cond75.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97.thread

for.body77.lr.ph:                                 ; preds = %for.cond75.preheader
  %ls_recover_submit78 = getelementptr i8, ptr %work, i32 -312
  br label %for.body77

if.end97.thread:                                  ; preds = %for.inc92.if.end97.thread_crit_edge, %for.cond75.preheader.if.end97.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %if.then100

for.body77:                                       ; preds = %for.inc92.for.body77_crit_edge, %for.body77.lr.ph
  %i.2305 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc93, %for.inc92.for.body77_crit_edge ]
  %47 = ptrtoint ptr %ls_recover_submit78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ls_recover_submit78, align 4
  %arrayidx79 = getelementptr i32, ptr %48, i32 %i.2305
  %49 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool80.not = icmp ne i32 %50, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %18)
  %cmp85 = icmp ult i32 %50, %18
  %or.cond = select i1 %tobool80.not, i1 %cmp85, i1 false
  br i1 %or.cond, label %if.then86, label %for.body77.for.inc92_crit_edge

for.body77.for.inc92_crit_edge:                   ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc92

if.then86:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx79, align 4
  %52 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ls_lvb_bits, align 4
  %add.ptr90 = getelementptr i8, ptr %53, i32 8
  %xor.i281 = and i32 %i.2305, 31
  %rem.i.i282 = xor i32 %xor.i281, 24
  %shl.i.i283 = shl nuw i32 1, %rem.i.i282
  %div2.i.i284 = lshr i32 %i.2305, 5
  %add.ptr.i.i285 = getelementptr i32, ptr %add.ptr90, i32 %div2.i.i284
  %54 = ptrtoint ptr %add.ptr.i.i285 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i285, align 4
  %or.i.i = or i32 %55, %shl.i.i283
  store i32 %or.i.i, ptr %add.ptr.i.i285, align 4
  br label %for.inc92

for.inc92:                                        ; preds = %if.then86, %for.body77.for.inc92_crit_edge
  %inc93 = add nuw nsw i32 %i.2305, 1
  %exitcond315.not = icmp eq i32 %inc93, %29
  br i1 %exitcond315.not, label %for.inc92.if.end97.thread_crit_edge, label %for.inc92.for.body77_crit_edge

for.inc92.for.body77_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body77

for.inc92.if.end97.thread_crit_edge:              ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97.thread

if.end97:                                         ; preds = %if.else.if.end97_crit_edge, %for.inc70.if.end97_crit_edge, %for.cond56.preheader.if.end97_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_lvb.2)
  %tobool99.not = icmp eq i32 %write_lvb.2, 0
  br i1 %tobool99.not, label %if.end97.if.end103_crit_edge, label %if.end97.if.then100_crit_edge

if.end97.if.then100_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then100

if.end97.if.end103_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then100:                                       ; preds = %if.end97.if.then100_crit_edge, %if.end97.thread
  %56 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ls_lvb_bits, align 4
  %58 = call ptr @memcpy(ptr %ls_control_lvb.i, ptr %57, i32 32)
  %59 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %60 = ptrtoint ptr %ls_control_lvb.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %ls_control_lvb.i, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end97.if.end103_crit_edge
  %flags.0 = phi i32 [ 12, %if.then100 ], [ 4, %if.end97.if.end103_crit_edge ]
  %call.i288 = tail call fastcc i32 @sync_lock(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %flags.0, i32 noundef 4, ptr noundef %ls_control_lksb.i, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %tobool105.not = icmp eq i32 %call.i288, 0
  br i1 %tobool105.not, label %for.cond115.preheader, label %do.end109

for.cond115.preheader:                            ; preds = %if.end103
  br i1 %cmp39300, label %for.body117.lr.ph, label %for.cond115.preheader.if.end138_crit_edge

for.cond115.preheader.if.end138_crit_edge:        ; preds = %for.cond115.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138

for.body117.lr.ph:                                ; preds = %for.cond115.preheader
  %sd_fsname127 = getelementptr i8, ptr %work, i32 2016
  br label %for.body117

do.end109:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname111 = getelementptr i8, ptr %work, i32 2016
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %sd_fsname111, i32 noundef %call.i288) #14
  br label %cleanup

for.body117:                                      ; preds = %for.inc133.for.body117_crit_edge, %for.body117.lr.ph
  %recover_set.0312 = phi i32 [ 0, %for.body117.lr.ph ], [ %recover_set.1, %for.inc133.for.body117_crit_edge ]
  %i.3310 = phi i32 [ 0, %for.body117.lr.ph ], [ %inc134, %for.inc133.for.body117_crit_edge ]
  %61 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ls_lvb_bits, align 4
  %add.ptr119 = getelementptr i8, ptr %62, i32 8
  %div3.i.i289 = lshr i32 %i.3310, 5
  %arrayidx.i.i290 = getelementptr i32, ptr %add.ptr119, i32 %div3.i.i289
  %63 = ptrtoint ptr %arrayidx.i.i290 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %arrayidx.i.i290, align 4
  %xor.i291 = and i32 %i.3310, 31
  %and.i.i292 = xor i32 %xor.i291, 24
  %65 = shl nuw i32 1, %and.i.i292
  %66 = and i32 %64, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool121.not = icmp eq i32 %66, 0
  br i1 %tobool121.not, label %for.body117.for.inc133_crit_edge, label %do.end125

for.body117.for.inc133_crit_edge:                 ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc133

do.end125:                                        ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #13
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %sd_fsname127, i32 noundef %18, i32 noundef %i.3310) #14
  %call130 = tail call i32 @gfs2_recover_set(ptr noundef %add.ptr, i32 noundef %i.3310) #11
  %inc131 = add i32 %recover_set.0312, 1
  br label %for.inc133

for.inc133:                                       ; preds = %do.end125, %for.body117.for.inc133_crit_edge
  %recover_set.1 = phi i32 [ %inc131, %do.end125 ], [ %recover_set.0312, %for.body117.for.inc133_crit_edge ]
  %inc134 = add nuw nsw i32 %i.3310, 1
  %exitcond317.not = icmp eq i32 %inc134, %29
  br i1 %exitcond317.not, label %for.end135, label %for.inc133.for.body117_crit_edge

for.inc133.for.body117_crit_edge:                 ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body117

for.end135:                                       ; preds = %for.inc133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recover_set.1)
  %tobool136.not = icmp eq i32 %recover_set.1, 0
  br i1 %tobool136.not, label %for.end135.if.end138_crit_edge, label %for.end135.cleanup_crit_edge

for.end135.cleanup_crit_edge:                     ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end135.if.end138_crit_edge:                   ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138

if.end138:                                        ; preds = %for.end135.if.end138_crit_edge, %for.cond115.preheader.if.end138_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_spin) #11
  %67 = ptrtoint ptr %ls_recover_block to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ls_recover_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %16)
  %cmp141 = icmp eq i32 %68, %16
  br i1 %cmp141, label %land.lhs.true, label %if.end138.do.end157_crit_edge

if.end138.do.end157_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end157

land.lhs.true:                                    ; preds = %if.end138
  %69 = ptrtoint ptr %ls_recover_start to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ls_recover_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %18)
  %cmp143 = icmp eq i32 %70, %18
  br i1 %cmp143, label %if.then144, label %land.lhs.true.do.end157_crit_edge

land.lhs.true.do.end157_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end157

if.then144:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %ls_recover_flags) #11
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  %sd_fsname151 = getelementptr i8, ptr %work, i32 2016
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %sd_fsname151, i32 noundef %18) #14
  tail call void @gfs2_glock_thaw(ptr noundef %add.ptr) #11
  br label %cleanup

do.end157:                                        ; preds = %land.lhs.true.do.end157_crit_edge, %if.end138.do.end157_crit_edge
  %sd_fsname159 = getelementptr i8, ptr %work, i32 2016
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %sd_fsname159, i32 noundef %18, i32 noundef %16, i32 noundef %68) #14
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end157, %if.then144, %for.end135.cleanup_crit_edge, %do.end109, %do.end28, %do.end, %if.end9.cleanup_crit_edge, %if.then7, %remote_withdraw.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_recover_size(ptr noundef %sdp, ptr nocapture noundef readonly %slots, i32 noundef %num_slots) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_lvb_bits = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 10
  %0 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_lvb_bits, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 32) #16
  %3 = ptrtoint ptr %ls_lvb_bits to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %ls_lvb_bits, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_slots)
  %cmp110 = icmp sgt i32 %num_slots, 0
  br i1 %cmp110, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %max_jid.0112 = phi i32 [ %6, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %i.0111 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %slot = getelementptr %struct.dlm_slot, ptr %slots, i32 %i.0111, i32 1
  %4 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot, align 4
  %sub = add i32 %5, -1
  %6 = tail call i32 @llvm.smax.i32(i32 %max_jid.0112, i32 %sub)
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, %num_slots
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo = add i32 %6, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end5.for.end_crit_edge
  %max_jid.0.lcssa = phi i32 [ 1, %if.end5.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %ls_recover_size = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 16
  %7 = ptrtoint ptr %ls_recover_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ls_recover_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.end
  %new_size.0 = phi i32 [ %8, %for.end ], [ %add13, %while.cond.while.cond_crit_edge ]
  %cmp12 = icmp ult i32 %new_size.0, %max_jid.0.lcssa
  %add13 = add i32 %new_size.0, 16
  br i1 %cmp12, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %new_size.0, i32 %8)
  %cmp14 = icmp eq i32 %new_size.0, %8
  br i1 %cmp14, label %while.end.cleanup_crit_edge, label %if.end16

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %while.end
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %new_size.0, i32 4) #11
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end16.if.then21_crit_edge, label %if.end7.i.i97, !prof !256

if.end16.if.then21_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.end7.i.i97:                                    ; preds = %if.end16
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3392) #17
  %call8.i.i96 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3392) #17
  %tobool19.not = icmp eq ptr %call8.i.i, null
  %tobool20.not = icmp eq ptr %call8.i.i96, null
  %or.cond = select i1 %tobool19.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %if.end7.i.i97.if.then21_crit_edge, label %if.end22

if.end7.i.i97.if.then21_crit_edge:                ; preds = %if.end7.i.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.then21:                                        ; preds = %if.end7.i.i97.if.then21_crit_edge, %if.end16.if.then21_crit_edge
  %retval.0.i.i98109 = phi ptr [ %call8.i.i96, %if.end7.i.i97.if.then21_crit_edge ], [ null, %if.end16.if.then21_crit_edge ]
  %retval.0.i.i102108 = phi ptr [ %call8.i.i, %if.end7.i.i97.if.then21_crit_edge ], [ null, %if.end16.if.then21_crit_edge ]
  tail call void @kfree(ptr noundef %retval.0.i.i102108) #11
  tail call void @kfree(ptr noundef %retval.0.i.i98109) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end7.i.i97
  call void @__sanitizer_cov_trace_pc() #13
  %ls_recover_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_spin) #11
  %ls_recover_submit = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 17
  %12 = ptrtoint ptr %ls_recover_submit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ls_recover_submit, align 4
  %mul = shl i32 %8, 2
  %14 = call ptr @memcpy(ptr %call8.i.i, ptr %13, i32 %mul)
  %ls_recover_result = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 18
  %15 = ptrtoint ptr %ls_recover_result to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ls_recover_result, align 4
  %17 = call ptr @memcpy(ptr %call8.i.i96, ptr %16, i32 %mul)
  tail call void @kfree(ptr noundef %13) #11
  %18 = ptrtoint ptr %ls_recover_result to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ls_recover_result, align 4
  tail call void @kfree(ptr noundef %19) #11
  %20 = ptrtoint ptr %ls_recover_submit to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i, ptr %ls_recover_submit, align 4
  %21 = ptrtoint ptr %ls_recover_result to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i96, ptr %ls_recover_result, align 4
  %22 = ptrtoint ptr %ls_recover_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %new_size.0, ptr %ls_recover_size, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %while.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -12, %if.then21 ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_new_lockspace(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_release_lockspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_recover_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_thaw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_recover_journal(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sync_lock(ptr noundef %sdp, i32 noundef %mode, i32 noundef %flags, i32 noundef %num, ptr noundef %lksb, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %strname = alloca [25 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_lockstruct = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %strname) #11
  %0 = call ptr @memset(ptr %strname, i32 0, i32 25)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %strname, i32 noundef 25, ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef %num)
  %ls_dlm = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 3
  %1 = ptrtoint ptr %ls_dlm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ls_dlm, align 4
  %call3 = call i32 @dlm_lock(ptr noundef %2, i32 noundef %mode, ptr noundef %lksb, i32 noundef %flags, ptr noundef nonnull %strname, i32 noundef 24, i32 noundef 0, ptr noundef nonnull @sync_wait_cb, ptr noundef %sd_lockstruct, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %sb_lkid = getelementptr inbounds %struct.dlm_lksb, ptr %lksb, i32 0, i32 1
  %3 = ptrtoint ptr %sb_lkid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_lkid, align 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %sd_fsname, ptr noundef %name, i32 noundef %4, i32 noundef %flags, i32 noundef %mode, i32 noundef %call3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ls_sync_wait = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 9
  call void @wait_for_completion(ptr noundef %ls_sync_wait) #11
  %5 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lksb, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %6, label %do.end10 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -11, label %if.end.cleanup_crit_edge37
  ]

if.end.cleanup_crit_edge37:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname12 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %sb_lkid14 = getelementptr inbounds %struct.dlm_lksb, ptr %lksb, i32 0, i32 1
  %8 = ptrtoint ptr %sb_lkid14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_lkid14, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %sd_fsname12, ptr noundef %name, i32 noundef %9, i32 noundef %flags, i32 noundef %mode, i32 noundef %6) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge37, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %6, %if.end.cleanup_crit_edge ], [ %6, %if.end.cleanup_crit_edge37 ], [ %6, %do.end10 ]
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %strname) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sync_wait_cb(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_sync_wait = getelementptr inbounds %struct.lm_lockstruct, ptr %arg, i32 0, i32 9
  tail call void @complete(ptr noundef %ls_sync_wait) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdlm_recover_prep(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_flags.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

gfs2_withdrawn.exit:                              ; preds = %entry
  %3 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sd_flags.i, align 4
  %5 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.i.not = icmp eq i32 %5, 0
  br i1 %tobool3.i.not, label %if.end, label %gfs2_withdrawn.exit.do.end_crit_edge

gfs2_withdrawn.exit.do.end_crit_edge:             ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %gfs2_withdrawn.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 110
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %sd_fsname) #14
  br label %cleanup

if.end:                                           ; preds = %gfs2_withdrawn.exit
  %ls_recover_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_spin) #11
  %ls_recover_start = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 14
  %6 = ptrtoint ptr %ls_recover_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ls_recover_start, align 4
  %ls_recover_block = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 15
  %8 = ptrtoint ptr %ls_recover_block to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ls_recover_block, align 4
  %ls_recover_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 12
  tail call void @_set_bit(i32 noundef 6, ptr noundef %ls_recover_flags) #11
  %9 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %ls_recover_flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ls_recover_flags, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  br i1 %tobool6.not, label %if.end9, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %ls_recover_flags) #11
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdlm_recover_slot(ptr noundef %arg, ptr nocapture noundef readonly %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slot1 = getelementptr inbounds %struct.dlm_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %slot1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot1, align 4
  %sub = add i32 %1, -1
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 4
  %2 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sd_flags.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

gfs2_withdrawn.exit:                              ; preds = %entry
  %5 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sd_flags.i, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.i.not = icmp eq i32 %7, 0
  br i1 %tobool3.i.not, label %if.end, label %gfs2_withdrawn.exit.do.end_crit_edge

gfs2_withdrawn.exit.do.end_crit_edge:             ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %gfs2_withdrawn.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 110
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %sd_fsname, i32 noundef %sub) #14
  br label %cleanup

if.end:                                           ; preds = %gfs2_withdrawn.exit
  %ls_recover_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_spin) #11
  %ls_recover_size = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 16
  %8 = ptrtoint ptr %ls_recover_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ls_recover_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp = icmp ult i32 %9, %1
  br i1 %cmp, label %do.end6, label %if.end13

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname8 = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 110
  %ls_recover_block = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 15
  %10 = ptrtoint ptr %ls_recover_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ls_recover_block, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %sd_fsname8, i32 noundef %sub, i32 noundef %11, i32 noundef %9) #14
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %ls_recover_submit = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 17
  %12 = ptrtoint ptr %ls_recover_submit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ls_recover_submit, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %sub
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end13.if.end25_crit_edge, label %do.end17

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname19 = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 110
  %ls_recover_block21 = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 15
  %16 = ptrtoint ptr %ls_recover_block21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ls_recover_block21, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname19, i32 noundef %sub, i32 noundef %17, i32 noundef %15) #14
  br label %if.end25

if.end25:                                         ; preds = %do.end17, %if.end13.if.end25_crit_edge
  %ls_recover_block26 = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 15
  %18 = ptrtoint ptr %ls_recover_block26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ls_recover_block26, align 4
  %20 = ptrtoint ptr %ls_recover_submit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ls_recover_submit, align 4
  %arrayidx28 = getelementptr i32, ptr %21, i32 %sub
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %arrayidx28, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end6, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdlm_recover_done(ptr noundef %arg, ptr nocapture noundef readonly %slots, i32 noundef %num_slots, i32 noundef %our_slot, i32 noundef %generation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_lockstruct = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_flags.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

gfs2_withdrawn.exit:                              ; preds = %entry
  %3 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sd_flags.i, align 4
  %5 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.i.not = icmp eq i32 %5, 0
  br i1 %tobool3.i.not, label %if.end, label %gfs2_withdrawn.exit.do.end_crit_edge

gfs2_withdrawn.exit.do.end_crit_edge:             ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %gfs2_withdrawn.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 110
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %sd_fsname) #14
  br label %cleanup

if.end:                                           ; preds = %gfs2_withdrawn.exit
  %call2 = tail call fastcc i32 @set_recover_size(ptr noundef %arg, ptr noundef %slots, i32 noundef %num_slots)
  %ls_recover_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_spin) #11
  %ls_recover_start = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 14
  %6 = ptrtoint ptr %ls_recover_start to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %generation, ptr %ls_recover_start, align 4
  %ls_recover_mount = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 13
  %7 = ptrtoint ptr %ls_recover_mount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ls_recover_mount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %ls_recover_mount to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %generation, ptr %ls_recover_mount, align 4
  %sub = add i32 %our_slot, -1
  %10 = ptrtoint ptr %sd_lockstruct to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %sd_lockstruct, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %ls_recover_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 23, i32 12
  %11 = ptrtoint ptr %ls_recover_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %ls_recover_flags, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_control_wq to i32))
  %14 = load ptr, ptr @gfs2_control_wq, align 4
  %sd_control_work = getelementptr inbounds %struct.gfs2_sbd, ptr %arg, i32 0, i32 33
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %sd_control_work, i32 noundef 0) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %ls_recover_flags) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !257
  tail call void @wake_up_bit(ptr noundef %ls_recover_flags, i32 noundef 6) #11
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_spin) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_unlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdlm_ast(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gl_state = getelementptr inbounds %struct.gfs2_glock, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %gl_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %gl_state, align 8
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.cast = zext i16 %bf.lshr to i32
  %ln_type.i = getelementptr inbounds %struct.gfs2_glock, ptr %arg, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %ln_type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ln_type.i, align 4
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arg, align 4
  %5 = lshr i32 %4, 14
  %6 = and i32 %5, 2
  %7 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %10, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !258
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %gl_dstamp.i = getelementptr inbounds %struct.gfs2_glock, ptr %arg, i32 0, i32 8
  %11 = ptrtoint ptr %gl_dstamp.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %gl_dstamp.i, align 8
  %sub.i = sub i64 %call.i.i, %12
  %ln_sbd.i = getelementptr inbounds %struct.gfs2_glock, ptr %arg, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ln_sbd.i, align 8
  %sd_lkstats.i = getelementptr inbounds %struct.gfs2_sbd, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sd_lkstats.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_lkstats.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %23, %17
  %24 = inttoptr i32 %add.i to ptr
  %gl_stats.i = getelementptr inbounds %struct.gfs2_glock, ptr %arg, i32 0, i32 9
  %arrayidx.i.i = getelementptr [8 x i64], ptr %gl_stats.i, i32 0, i32 %6
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i.i, align 8
  %sub.i23.i = sub i64 %sub.i, %26
  %shr.i24.i = ashr i64 %sub.i23.i, 3
  %add.i25.i = add i64 %shr.i24.i, %26
  store i64 %add.i25.i, ptr %arrayidx.i.i, align 8
  %27 = tail call i64 @llvm.abs.i64(i64 %sub.i23.i, i1 false) #11
  %inc.i.i = or i32 %6, 1
  %arrayidx5.i.i = getelementptr [8 x i64], ptr %gl_stats.i, i32 0, i32 %inc.i.i
  %28 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx5.i.i, align 8
  %sub6.i.i = sub i64 %27, %29
  %shr7.i.i = ashr i64 %sub6.i.i, 2
  %add10.i.i = add i64 %shr7.i.i, %29
  store i64 %add10.i.i, ptr %arrayidx5.i.i, align 8
  %arrayidx9.i = getelementptr [10 x %struct.gfs2_lkstats], ptr %24, i32 0, i32 %2
  %arrayidx.i26.i = getelementptr [8 x i64], ptr %arrayidx9.i, i32 0, i32 %6
  %30 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx.i26.i, align 8
  %sub.i27.i = sub i64 %sub.i, %31
  %shr.i28.i = ashr i64 %sub.i27.i, 3
  %add.i29.i = add i64 %shr.i28.i, %31
  store i64 %add.i29.i, ptr %arrayidx.i26.i, align 8
  %32 = tail call i64 @llvm.abs.i64(i64 %sub.i27.i, i1 false) #11
  %arrayidx5.i31.i = getelementptr [8 x i64], ptr %arrayidx9.i, i32 0, i32 %inc.i.i
  %33 = ptrtoint ptr %arrayidx5.i31.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx5.i31.i, align 8
  %sub6.i32.i = sub i64 %32, %34
  %shr7.i33.i = ashr i64 %sub6.i32.i, 2
  %add10.i34.i = add i64 %shr7.i33.i, %34
  store i64 %add10.i34.i, ptr %arrayidx5.i31.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !259
  %35 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i21.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i21.i to ptr
  %preempt_count.i.i22.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i22.i, align 4
  %sub.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i22.i, align 4
  tail call fastcc void @trace_gfs2_glock_lock_time(ptr noundef %arg, i64 noundef %sub.i) #11
  %gl_lksb = getelementptr inbounds %struct.gfs2_glock, ptr %arg, i32 0, i32 10
  %sb_flags = getelementptr inbounds %struct.gfs2_glock, ptr %arg, i32 0, i32 10, i32 2
  %39 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sb_flags, align 8
  %conv = zext i8 %40 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !248

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lock_dlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #11, !srcloc !260
  unreachable

do.end8:                                          ; preds = %entry
  %and12 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end8.if.end19_crit_edge, label %land.lhs.true

do.end8.if.end19_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %do.end8
  %sb_lvbptr = getelementptr inbounds %struct.gfs2_glock, ptr %arg, i32 0, i32 10, i32 3
  %41 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sb_lvbptr, align 4
  %tobool15.not = icmp eq ptr %42, null
  br i1 %tobool15.not, label %land.lhs.true.if.end19_crit_edge, label %if.then16

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %43 = call ptr @memset(ptr %42, i32 0, i32 32)
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true.if.end19_crit_edge, %do.end8.if.end19_crit_edge
  %44 = ptrtoint ptr %gl_lksb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gl_lksb, align 8
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %45, label %do.body30 [
    i32 -65538, label %sw.bb
    i32 -65537, label %sw.bb26
    i32 -11, label %if.end19.out_crit_edge
    i32 -35, label %if.end19.out_crit_edge99
    i32 -110, label %sw.bb28
    i32 0, label %sw.epilog
  ]

if.end19.out_crit_edge99:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb:                                            ; preds = %if.end19
  %gl_ops = getelementptr inbounds %struct.gfs2_glock, ptr %arg, i32 0, i32 7
  %47 = ptrtoint ptr %gl_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gl_ops, align 4
  %go_free = getelementptr inbounds %struct.gfs2_glock_operations, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %go_free to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %go_free, align 4
  %tobool21.not = icmp eq ptr %50, null
  br i1 %tobool21.not, label %sw.bb.if.end25_crit_edge, label %if.then22

sw.bb.if.end25_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %50(ptr noundef %arg) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %sw.bb.if.end25_crit_edge
  tail call void @gfs2_glock_free(ptr noundef %arg) #11
  br label %cleanup

sw.bb26:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %bf.cast, 8
  br label %out

sw.bb28:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %or29 = or i32 %bf.cast, 4
  br label %out

do.body30:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lock_dlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #11, !srcloc !261
  unreachable

sw.epilog:                                        ; preds = %if.end19
  %51 = ptrtoint ptr %gl_state to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load36 = load i16, ptr %gl_state, align 8
  %bf.lshr37 = lshr i16 %bf.load36, 8
  %bf.clear = and i16 %bf.lshr37, 3
  %bf.cast38 = zext i16 %bf.clear to i32
  %52 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sb_flags, align 8
  %54 = and i8 %53, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool43.not = icmp eq i8 %54, 0
  br i1 %tobool43.not, label %sw.epilog.if.end69_crit_edge, label %if.then44

sw.epilog.if.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then44:                                        ; preds = %sw.epilog
  %trunc = trunc i16 %bf.lshr37 to i2
  %55 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.142)
  switch i2 %trunc, label %do.body61 [
    i2 -1, label %if.then44.if.end69_crit_edge
    i2 -2, label %if.then59
  ]

if.then44.if.end69_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then59:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

do.body61:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lock_dlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 158, 0\0A.popsection", ""() #11, !srcloc !262
  unreachable

if.end69:                                         ; preds = %if.then59, %if.then44.if.end69_crit_edge, %sw.epilog.if.end69_crit_edge
  %ret.0 = phi i32 [ 3, %if.then59 ], [ %bf.cast38, %sw.epilog.if.end69_crit_edge ], [ 2, %if.then44.if.end69_crit_edge ]
  tail call void @_set_bit(i32 noundef 10, ptr noundef %arg) #11
  tail call void @gfs2_glock_complete(ptr noundef %arg, i32 noundef %ret.0) #11
  br label %cleanup

out:                                              ; preds = %sw.bb28, %sw.bb26, %if.end19.out_crit_edge, %if.end19.out_crit_edge99
  %ret.1 = phi i32 [ %or29, %sw.bb28 ], [ %bf.cast, %if.end19.out_crit_edge ], [ %bf.cast, %if.end19.out_crit_edge99 ], [ %or, %sw.bb26 ]
  %56 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arg, align 4
  %58 = and i32 %57, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool71.not = icmp eq i32 %58, 0
  br i1 %tobool71.not, label %if.then72, label %out.if.end74_crit_edge

out.if.end74_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then72:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %sb_lkid = getelementptr inbounds %struct.gfs2_glock, ptr %arg, i32 0, i32 10, i32 1
  %59 = ptrtoint ptr %sb_lkid to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %sb_lkid, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %out.if.end74_crit_edge
  tail call void @gfs2_glock_complete(ptr noundef %arg, i32 noundef %ret.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end69, %if.end25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gdlm_bast(ptr noundef %arg, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %mode, label %do.end [
    i32 5, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %arg, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ln_sbd, align 8
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %2, i32 0, i32 110
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %sd_fsname, i32 noundef %mode) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lock_dlm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #11, !srcloc !263
  unreachable

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %mode, %sw.bb2 ], [ %mode, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  tail call void @gfs2_glock_cb(ptr noundef %arg, i32 noundef %.sink) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_complete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_glock_lock_time(ptr noundef %gl, i64 noundef %tdiff) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_glock_lock_time, i32 0, i32 1), ptr blockaddress(@trace_gfs2_glock_lock_time, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !264

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !237) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !248

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.131, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !265
  %call42 = tail call i32 @__traceiter_gfs2_glock_lock_time(ptr noundef null, ptr noundef %gl, i64 noundef %tdiff) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !266
  %13 = tail call i32 @llvm.read_register.i32(metadata !237) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !237) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !248

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.131, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !237) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !267
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_glock_lock_time, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_glock_lock_time, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gfs2_glock_lock_time.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gfs2_glock_lock_time.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.129, i32 noundef 308, ptr noundef nonnull @.str.130) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !268
  %31 = tail call i32 @llvm.read_register.i32(metadata !237) #11
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gfs2_glock_lock_time(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_cb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !224, !225, !226, !227, !229, !231, !233, !235}
!llvm.named.register.sp = !{!237}
!llvm.module.flags = !{!238, !239, !240, !241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/lock_dlm.c", i32 1394, i32 19}
!2 = !{ptr @gfs2_dlm_ops, !3, !"gfs2_dlm_ops", i1 false, i1 false}
!3 = !{!"../fs/gfs2/lock_dlm.c", i32 1393, i32 25}
!4 = !{ptr @gdlm_mount.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../fs/gfs2/lock_dlm.c", i32 1263, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @gdlm_mount.__key.2, !5, !"__key", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @gdlm_mount.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../fs/gfs2/lock_dlm.c", i32 1264, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/gfs2/lock_dlm.c", i32 1284, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @gdlm_mount._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @gdlm_mount._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/gfs2/lock_dlm.c", i32 1302, i32 3}
!20 = !{ptr @gdlm_mount._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @gdlm_mount._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/gfs2/lock_dlm.c", i32 1311, i32 3}
!24 = !{ptr @gdlm_mount._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @gdlm_mount._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/gfs2/lock_dlm.c", i32 1318, i32 3}
!28 = !{ptr @gdlm_mount._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @gdlm_mount._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/gfs2/lock_dlm.c", i32 1330, i32 3}
!32 = !{ptr @gdlm_mount._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @gdlm_mount._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/gfs2/lock_dlm.c", i32 665, i32 3}
!36 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @gfs2_control_func._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @gfs2_control_func._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/gfs2/lock_dlm.c", i32 674, i32 3}
!41 = !{ptr @gfs2_control_func._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gfs2_control_func._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/gfs2/lock_dlm.c", i32 748, i32 3}
!45 = !{ptr @gfs2_control_func._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @gfs2_control_func._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/gfs2/lock_dlm.c", i32 761, i32 4}
!49 = !{ptr @gfs2_control_func._entry.29, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @gfs2_control_func._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/gfs2/lock_dlm.c", i32 781, i32 3}
!53 = !{ptr @gfs2_control_func._entry.32, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @gfs2_control_func._entry_ptr.34, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/gfs2/lock_dlm.c", i32 784, i32 3}
!57 = !{ptr @gfs2_control_func._entry.35, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @gfs2_control_func._entry_ptr.37, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.38, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/gfs2/lock_dlm.c", i32 602, i32 2}
!61 = !{ptr @.str.39, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @remote_withdraw._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @remote_withdraw._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/gfs2/lock_dlm.c", i32 580, i32 27}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/gfs2/lock_dlm.c", i32 534, i32 40}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/gfs2/lock_dlm.c", i32 540, i32 3}
!70 = !{ptr @.str.43, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sync_lock._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @sync_lock._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/gfs2/lock_dlm.c", i32 550, i32 3}
!75 = !{ptr @sync_lock._entry.44, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sync_lock._entry_ptr.46, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @gdlm_lockspace_ops, !78, !"gdlm_lockspace_ops", i1 false, i1 false}
!78 = !{!"../fs/gfs2/lock_dlm.c", i32 1245, i32 39}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/gfs2/lock_dlm.c", i32 1121, i32 3}
!81 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @gdlm_recover_prep._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @gdlm_recover_prep._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/gfs2/lock_dlm.c", i32 1147, i32 3}
!86 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @gdlm_recover_slot._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @gdlm_recover_slot._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/gfs2/lock_dlm.c", i32 1153, i32 3}
!91 = !{ptr @gdlm_recover_slot._entry.51, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @gdlm_recover_slot._entry_ptr.53, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/gfs2/lock_dlm.c", i32 1160, i32 3}
!95 = !{ptr @gdlm_recover_slot._entry.54, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @gdlm_recover_slot._entry_ptr.56, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/gfs2/lock_dlm.c", i32 1176, i32 3}
!99 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @gdlm_recover_done._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @gdlm_recover_done._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/gfs2/lock_dlm.c", i32 808, i32 3}
!104 = !{ptr @.str.60, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @control_mount._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @control_mount._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/gfs2/lock_dlm.c", i32 814, i32 3}
!109 = !{ptr @control_mount._entry.61, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @control_mount._entry_ptr.63, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/gfs2/lock_dlm.c", i32 856, i32 3}
!113 = !{ptr @control_mount._entry.64, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @control_mount._entry_ptr.66, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/gfs2/lock_dlm.c", i32 872, i32 3}
!117 = !{ptr @control_mount._entry.67, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @control_mount._entry_ptr.69, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.71, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/gfs2/lock_dlm.c", i32 882, i32 3}
!121 = !{ptr @control_mount._entry.70, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @control_mount._entry_ptr.72, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.74, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/gfs2/lock_dlm.c", i32 902, i32 3}
!125 = !{ptr @control_mount._entry.73, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @control_mount._entry_ptr.75, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.77, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/gfs2/lock_dlm.c", i32 914, i32 3}
!129 = !{ptr @control_mount._entry.76, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @control_mount._entry_ptr.78, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.80, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/gfs2/lock_dlm.c", i32 930, i32 3}
!133 = !{ptr @control_mount._entry.79, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @control_mount._entry_ptr.81, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.83, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/gfs2/lock_dlm.c", i32 943, i32 4}
!137 = !{ptr @control_mount._entry.82, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @control_mount._entry_ptr.84, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.86, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/gfs2/lock_dlm.c", i32 947, i32 4}
!141 = !{ptr @control_mount._entry.85, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @control_mount._entry_ptr.87, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.89, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/gfs2/lock_dlm.c", i32 959, i32 3}
!145 = !{ptr @control_mount._entry.88, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @control_mount._entry_ptr.90, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.92, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/gfs2/lock_dlm.c", i32 968, i32 3}
!149 = !{ptr @control_mount._entry.91, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @control_mount._entry_ptr.93, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @init_completion.__key, !152, !"__key", i1 false, i1 false}
!152 = !{!"../include/linux/completion.h", i32 87, i32 2}
!153 = !{ptr @.str.94, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.95, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/gfs2/lock_dlm.c", i32 567, i32 27}
!156 = !{ptr @.str.96, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/gfs2/lock_dlm.c", i32 511, i32 3}
!158 = !{ptr @.str.97, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @sync_unlock._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @sync_unlock._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.99, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/gfs2/lock_dlm.c", i32 519, i32 3}
!163 = !{ptr @sync_unlock._entry.98, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @sync_unlock._entry_ptr.100, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.101, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/gfs2/lock_dlm.c", i32 1358, i32 3}
!167 = !{ptr @.str.102, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @gdlm_first_done._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @gdlm_first_done._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.103, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/gfs2/lock_dlm.c", i32 1003, i32 3}
!172 = !{ptr @.str.104, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @control_first_done._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @control_first_done._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.106, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/gfs2/lock_dlm.c", i32 1019, i32 3}
!177 = !{ptr @control_first_done._entry.105, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @control_first_done._entry_ptr.107, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.109, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/gfs2/lock_dlm.c", i32 1037, i32 3}
!181 = !{ptr @control_first_done._entry.108, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @control_first_done._entry_ptr.110, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.112, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/gfs2/lock_dlm.c", i32 1041, i32 3}
!185 = !{ptr @control_first_done._entry.111, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @control_first_done._entry_ptr.113, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.114, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!189 = !{ptr @.str.115, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/gfs2/lock_dlm.c", i32 1207, i32 3}
!191 = !{ptr @.str.116, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @gdlm_recovery_result._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @gdlm_recovery_result._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.118, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/gfs2/lock_dlm.c", i32 1224, i32 3}
!196 = !{ptr @gdlm_recovery_result._entry.117, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @gdlm_recovery_result._entry_ptr.119, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.121, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/gfs2/lock_dlm.c", i32 1230, i32 2}
!200 = !{ptr @gdlm_recovery_result._entry.120, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @gdlm_recovery_result._entry_ptr.122, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.123, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.124, !199, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.125, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/gfs2/lock_dlm.c", i32 318, i32 3}
!206 = !{ptr @.str.126, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @gdlm_put_lock._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @gdlm_put_lock._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.127, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/gfs2/lock_dlm.c", i32 204, i32 2}
!211 = !{ptr @.str.128, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @make_mode._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @make_mode._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = distinct !{null, !215, !"__already_done", i1 false, i1 false}
!215 = !{!"../fs/gfs2/trace_gfs2.h", i32 255, i32 1}
!216 = !{ptr @.str.129, !215, !"<string literal>", i1 false, i1 false}
!217 = distinct !{null, !215, !"__warned", i1 false, i1 false}
!218 = !{ptr @.str.130, !215, !"<string literal>", i1 false, i1 false}
!219 = distinct !{null, !220, !"__already_done", i1 false, i1 false}
!220 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!221 = !{ptr @.str.131, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.132, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/gfs2/lock_dlm.c", i32 185, i32 3}
!224 = !{ptr @.str.133, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @gdlm_bast._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @gdlm_bast._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.134, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/gfs2/lock_dlm.c", i32 1386, i32 13}
!229 = !{ptr @.str.135, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/gfs2/lock_dlm.c", i32 1387, i32 12}
!231 = !{ptr @.str.136, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/gfs2/lock_dlm.c", i32 1388, i32 15}
!233 = !{ptr @.str.137, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/gfs2/lock_dlm.c", i32 1389, i32 15}
!235 = !{ptr @dlm_tokens, !236, !"dlm_tokens", i1 false, i1 false}
!236 = !{!"../fs/gfs2/lock_dlm.c", i32 1385, i32 28}
!237 = !{!"sp"}
!238 = !{i32 1, !"wchar_size", i32 2}
!239 = !{i32 1, !"min_enum_size", i32 4}
!240 = !{i32 8, !"branch-target-enforcement", i32 0}
!241 = !{i32 8, !"sign-return-address", i32 0}
!242 = !{i32 8, !"sign-return-address-all", i32 0}
!243 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!244 = !{i32 7, !"uwtable", i32 1}
!245 = !{i32 7, !"frame-pointer", i32 2}
!246 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!247 = !{!"auto-init"}
!248 = !{!"branch_weights", i32 2000, i32 1}
!249 = !{i64 2155599701}
!250 = !{i64 2154105639}
!251 = !{i64 2154106655}
!252 = !{i64 2155486643}
!253 = !{i64 2155487861}
!254 = !{i64 2155498114, i64 2155498597, i64 2155498151, i64 2155498207, i64 2155498241, i64 2155498265, i64 2155498306, i64 2155498327, i64 2155498355, i64 2155498389}
!255 = !{i64 2155499709, i64 2155500192, i64 2155499746, i64 2155499802, i64 2155499836, i64 2155499860, i64 2155499901, i64 2155499922, i64 2155499950, i64 2155499984}
!256 = !{!"branch_weights", i32 1, i32 2000}
!257 = !{i64 2155581836}
!258 = !{i64 2155485053}
!259 = !{i64 2155486281}
!260 = !{i64 2155488232, i64 2155488715, i64 2155488269, i64 2155488325, i64 2155488359, i64 2155488383, i64 2155488424, i64 2155488445, i64 2155488473, i64 2155488507}
!261 = !{i64 2155489763, i64 2155490246, i64 2155489800, i64 2155489856, i64 2155489890, i64 2155489914, i64 2155489955, i64 2155489976, i64 2155490004, i64 2155490038}
!262 = !{i64 2155491251, i64 2155491734, i64 2155491288, i64 2155491344, i64 2155491378, i64 2155491402, i64 2155491443, i64 2155491464, i64 2155491492, i64 2155491526}
!263 = !{i64 2155494771, i64 2155495254, i64 2155494808, i64 2155494864, i64 2155494898, i64 2155494922, i64 2155494963, i64 2155494984, i64 2155495012, i64 2155495046}
!264 = !{i64 2148516376, i64 2148516381, i64 2148516394, i64 2148516438, i64 2148516472, i64 2148516493}
!265 = !{i64 2155307483}
!266 = !{i64 2155307704}
!267 = !{i64 2149512783}
!268 = !{i64 2149513819}
