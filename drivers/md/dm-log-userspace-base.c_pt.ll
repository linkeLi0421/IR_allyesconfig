; ModuleID = '/llk/IR_all_yes/drivers/md/dm-log-userspace-base.c_pt.bc'
source_filename = "../drivers/md/dm-log-userspace-base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dm_dirty_log_type = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.log_c = type { ptr, ptr, ptr, i32, i32, i64, i64, [129 x i8], %struct.spinlock, %struct.list_head, %struct.list_head, i64, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.mempool_s }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.dm_dirty_log = type { ptr, ptr, ptr }
%struct.dm_dirty_log_flush_entry = type { i32, i64, %struct.list_head }
%struct.anon.75 = type { i64, i64 }
%struct.anon.76 = type { i64, i64 }
%struct.anon.77 = type { i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@_userspace_type = internal global { %struct.dm_dirty_log_type, [48 x i8] } { %struct.dm_dirty_log_type { ptr @.str.3, ptr null, %struct.list_head zeroinitializer, ptr @userspace_ctr, ptr @userspace_dtr, ptr @userspace_presuspend, ptr @userspace_postsuspend, ptr @userspace_resume, ptr @userspace_get_region_size, ptr @userspace_is_clean, ptr @userspace_in_sync, ptr @userspace_flush, ptr @userspace_mark_region, ptr @userspace_clear_region, ptr @userspace_get_resync_work, ptr @userspace_set_region_sync, ptr @userspace_get_sync_count, ptr @userspace_status, ptr @userspace_is_remote_recovering }, [48 x i8] zeroinitializer }, align 32
@_flush_entry_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@userspace_dirty_log_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016device-mapper: dm-log-userspace: version 1.3.0 unloaded\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"userspace_dirty_log_exit\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/md/dm-log-userspace-base.c\00", [61 x i8] zeroinitializer }, align 32
@userspace_dirty_log_exit._entry_ptr = internal global ptr @userspace_dirty_log_exit._entry, section ".printk_index", align 4
@__initcall__kmod_dm_log_userspace__268_932_userspace_dirty_log_init6 = internal global ptr @userspace_dirty_log_init, section ".initcall6.init", align 4
@__exitcall_userspace_dirty_log_exit = internal global ptr @userspace_dirty_log_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description269 = internal constant [68 x i8] c"dm_log_userspace.description=device-mapper userspace dirty log link\00", section ".modinfo", align 1
@__UNIQUE_ID_author270 = internal constant [63 x i8] c"dm_log_userspace.author=Jonathan Brassow <dm-devel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file271 = internal constant [50 x i8] c"dm_log_userspace.file=drivers/md/dm-log-userspace\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [29 x i8] c"dm_log_userspace.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"userspace\00", [22 x i8] zeroinitializer }, align 32
@userspace_ctr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014device-mapper: dm-log-userspace: Too few arguments to userspace dirty log\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"userspace_ctr\00", [18 x i8] zeroinitializer }, align 32
@userspace_ctr._entry_ptr = internal global ptr @userspace_ctr._entry, section ".printk_index", align 4
@userspace_ctr._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014device-mapper: dm-log-userspace: Unable to allocate userspace log context.\0A\00", [50 x i8] zeroinitializer }, align 32
@userspace_ctr._entry_ptr.8 = internal global ptr @userspace_ctr._entry.6, section ".printk_index", align 4
@userspace_ctr._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014device-mapper: dm-log-userspace: UUID argument too long.\0A\00", [36 x i8] zeroinitializer }, align 32
@userspace_ctr._entry_ptr.11 = internal global ptr @userspace_ctr._entry.9, section ".printk_index", align 4
@userspace_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&lc->flush_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"integrated_flush\00", [47 x i8] zeroinitializer }, align 32
@userspace_ctr._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013device-mapper: dm-log-userspace: Failed to allocate memory for device information\0A\00", [43 x i8] zeroinitializer }, align 32
@userspace_ctr._entry_ptr.16 = internal global ptr @userspace_ctr._entry.14, section ".printk_index", align 4
@userspace_ctr._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013device-mapper: dm-log-userspace: Failed to create flush_entry_pool\0A\00", [58 x i8] zeroinitializer }, align 32
@userspace_ctr._entry_ptr.19 = internal global ptr @userspace_ctr._entry.17, section ".printk_index", align 4
@userspace_ctr._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013device-mapper: dm-log-userspace: Userspace log server not found\0A\00", [61 x i8] zeroinitializer }, align 32
@userspace_ctr._entry_ptr.22 = internal global ptr @userspace_ctr._entry.20, section ".printk_index", align 4
@userspace_ctr._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013device-mapper: dm-log-userspace: Userspace log server failed to create log\0A\00", [50 x i8] zeroinitializer }, align 32
@userspace_ctr._entry_ptr.25 = internal global ptr @userspace_ctr._entry.23, section ".printk_index", align 4
@userspace_ctr._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013device-mapper: dm-log-userspace: Failed to get region size of dirty log\0A\00", [53 x i8] zeroinitializer }, align 32
@userspace_ctr._entry_ptr.28 = internal global ptr @userspace_ctr._entry.26, section ".printk_index", align 4
@userspace_ctr._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013device-mapper: dm-log-userspace: DM_ULOG_CTR device return string not properly terminated\0A\00", [35 x i8] zeroinitializer }, align 32
@userspace_ctr._entry_ptr.31 = internal global ptr @userspace_ctr._entry.29, section ".printk_index", align 4
@userspace_ctr._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.5, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013device-mapper: dm-log-userspace: Failed to register %s with device-mapper\0A\00", [51 x i8] zeroinitializer }, align 32
@userspace_ctr._entry_ptr.34 = internal global ptr @userspace_ctr._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dmlogd\00", [25 x i8] zeroinitializer }, align 32
@userspace_ctr._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.5, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013device-mapper: dm-log-userspace: couldn't start dmlogd\0A\00", [38 x i8] zeroinitializer }, align 32
@userspace_ctr._entry_ptr.38 = internal global ptr @userspace_ctr._entry.36, section ".printk_index", align 4
@userspace_ctr.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&lc->flush_log_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@userspace_ctr.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&lc->flush_log_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@build_constructor_string._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014device-mapper: dm-log-userspace: Unable to allocate memory for constructor string\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"build_constructor_string\00", [39 x i8] zeroinitializer }, align 32
@build_constructor_string._entry_ptr = internal global ptr @build_constructor_string._entry, section ".printk_index", align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llu\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@userspace_do_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013device-mapper: dm-log-userspace:  Userspace log server not found.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"userspace_do_request\00", [43 x i8] zeroinitializer }, align 32
@userspace_do_request._entry_ptr = internal global ptr @userspace_do_request._entry, section ".printk_index", align 4
@userspace_do_request._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014device-mapper: dm-log-userspace: Attempting to contact userspace log server...\0A\00", [46 x i8] zeroinitializer }, align 32
@userspace_do_request._entry_ptr.51 = internal global ptr @userspace_do_request._entry.49, section ".printk_index", align 4
@userspace_do_request._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\016device-mapper: dm-log-userspace: Reconnected to userspace log server... DM_ULOG_CTR complete\0A\00", [32 x i8] zeroinitializer }, align 32
@userspace_do_request._entry_ptr.54 = internal global ptr @userspace_do_request._entry.52, section ".printk_index", align 4
@userspace_do_request._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013device-mapper: dm-log-userspace: Error trying to resume userspace log: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@userspace_do_request._entry_ptr.57 = internal global ptr @userspace_do_request._entry.55, section ".printk_index", align 4
@userspace_clear_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013device-mapper: dm-log-userspace: Failed to allocate memory to clear region.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"userspace_clear_region\00", [41 x i8] zeroinitializer }, align 32
@userspace_clear_region._entry_ptr = internal global ptr @userspace_clear_region._entry, section ".printk_index", align 4
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s 1 COM_FAILURE\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %u %s \00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"integrated_flush \00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@userspace_is_remote_recovering.limit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dm_dirty_log_flush_entry\00", [39 x i8] zeroinitializer }, align 32
@userspace_dirty_log_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014device-mapper: dm-log-userspace: Unable to create flush_entry_cache: No memory.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"userspace_dirty_log_init\00", [39 x i8] zeroinitializer }, align 32
@userspace_dirty_log_init._entry_ptr = internal global ptr @userspace_dirty_log_init._entry, section ".printk_index", align 4
@userspace_dirty_log_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014device-mapper: dm-log-userspace: Unable to initialize userspace log communications\0A\00", [42 x i8] zeroinitializer }, align 32
@userspace_dirty_log_init._entry_ptr.69 = internal global ptr @userspace_dirty_log_init._entry.67, section ".printk_index", align 4
@userspace_dirty_log_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014device-mapper: dm-log-userspace: Couldn't register userspace dirty log type\0A\00", [49 x i8] zeroinitializer }, align 32
@userspace_dirty_log_init._entry_ptr.72 = internal global ptr @userspace_dirty_log_init._entry.70, section ".printk_index", align 4
@userspace_dirty_log_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.2, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016device-mapper: dm-log-userspace: version 1.3.0 loaded\0A\00", [39 x i8] zeroinitializer }, align 32
@userspace_dirty_log_init._entry_ptr.75 = internal global ptr @userspace_dirty_log_init._entry.73, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"_userspace_type\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 872, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"_flush_entry_cache\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 82, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 928, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 873, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 203, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 209, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 219, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 229, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 233, i32 27 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 247, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 255, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 268, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 270, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 280, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 289, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 296, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 301, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 303, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 308, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 144, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 148, i32 26 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 150, i32 39 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 102, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 106, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 114, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 120, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 691, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 809, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 818, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 820, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 821, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 841, i32 23 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 897, i32 23 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 899, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 905, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 912, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [38 x i8] c"../drivers/md/dm-log-userspace-base.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 918, i32 2 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__exitcall_userspace_dirty_log_exit, ptr @__initcall__kmod_dm_log_userspace__268_932_userspace_dirty_log_init6, ptr @build_constructor_string._entry, ptr @build_constructor_string._entry_ptr, ptr @userspace_clear_region._entry, ptr @userspace_clear_region._entry_ptr, ptr @userspace_ctr._entry, ptr @userspace_ctr._entry.14, ptr @userspace_ctr._entry.17, ptr @userspace_ctr._entry.20, ptr @userspace_ctr._entry.23, ptr @userspace_ctr._entry.26, ptr @userspace_ctr._entry.29, ptr @userspace_ctr._entry.32, ptr @userspace_ctr._entry.36, ptr @userspace_ctr._entry.6, ptr @userspace_ctr._entry.9, ptr @userspace_ctr._entry_ptr, ptr @userspace_ctr._entry_ptr.11, ptr @userspace_ctr._entry_ptr.16, ptr @userspace_ctr._entry_ptr.19, ptr @userspace_ctr._entry_ptr.22, ptr @userspace_ctr._entry_ptr.25, ptr @userspace_ctr._entry_ptr.28, ptr @userspace_ctr._entry_ptr.31, ptr @userspace_ctr._entry_ptr.34, ptr @userspace_ctr._entry_ptr.38, ptr @userspace_ctr._entry_ptr.8, ptr @userspace_dirty_log_exit, ptr @userspace_dirty_log_exit._entry, ptr @userspace_dirty_log_exit._entry_ptr, ptr @userspace_dirty_log_init._entry, ptr @userspace_dirty_log_init._entry.67, ptr @userspace_dirty_log_init._entry.70, ptr @userspace_dirty_log_init._entry.73, ptr @userspace_dirty_log_init._entry_ptr, ptr @userspace_dirty_log_init._entry_ptr.69, ptr @userspace_dirty_log_init._entry_ptr.72, ptr @userspace_dirty_log_init._entry_ptr.75, ptr @userspace_do_request._entry, ptr @userspace_do_request._entry.49, ptr @userspace_do_request._entry.52, ptr @userspace_do_request._entry.55, ptr @userspace_do_request._entry_ptr, ptr @userspace_do_request._entry_ptr.51, ptr @userspace_do_request._entry_ptr.54, ptr @userspace_do_request._entry_ptr.57, ptr @_userspace_type, ptr @_flush_entry_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @userspace_ctr.__key, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @userspace_ctr.__key.39, ptr @.str.40, ptr @userspace_ctr.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @userspace_is_remote_recovering.limit, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_userspace_type to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_flush_entry_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_dirty_log_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_ctr.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_constructor_string._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_do_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_do_request._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_do_request._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_do_request._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_clear_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_is_remote_recovering.limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_dirty_log_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_dirty_log_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_dirty_log_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userspace_dirty_log_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @userspace_dirty_log_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @dm_dirty_log_type_unregister(ptr noundef nonnull @_userspace_type) #13
  tail call void @dm_ulog_tfr_exit() #13
  %0 = load ptr, ptr @_flush_entry_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_dirty_log_type_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_ulog_tfr_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_dirty_log_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.64, i32 noundef 24, i32 noundef 8, i32 noundef 0, ptr noundef null) #13
  store ptr %call, ptr @_flush_entry_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @dm_ulog_tfr_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #16
  %0 = load ptr, ptr @_flush_entry_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @dm_dirty_log_type_register(ptr noundef nonnull @_userspace_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end22, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #16
  tail call void @dm_ulog_tfr_exit() #13
  %1 = load ptr, ptr @_flush_entry_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #13
  br label %cleanup

do.end22:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ %call2, %do.end7 ], [ %call11, %do.end16 ], [ 0, %do.end22 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_ctr(ptr nocapture noundef writeonly %log, ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv) #3 align 64 {
entry:
  %rdata = alloca i64, align 8
  %rdata_size = alloca i32, align 4
  %devices_rdata_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rdata) #13
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %rdata, align 8, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata_size) #13
  %1 = ptrtoint ptr %rdata_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %rdata_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devices_rdata_size) #13
  %2 = ptrtoint ptr %devices_rdata_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %devices_rdata_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %argc)
  %cmp = icmp ult i32 %argc, 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 472) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  %conv = zext i32 %4 to i64
  %luid = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %luid to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %luid, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ti, ptr %call7.i.i, align 8
  %7 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %argv, align 4
  %call10 = tail call i32 @strlen(ptr noundef %8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call10)
  %cmp11 = icmp ugt i32 %call10, 128
  br i1 %cmp11, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %usr_argc = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %usr_argc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %argc, ptr %usr_argc, align 4
  %uuid = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 7
  %call21 = tail call ptr @strncpy(ptr noundef %uuid, ptr noundef %8, i32 noundef 129)
  %dec = add i32 %argc, -1
  %incdec.ptr = getelementptr ptr, ptr %argv, i32 1
  %flush_lock = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %flush_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @userspace_ctr.__key, i16 noundef signext 3) #13
  %mark_list = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %mark_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %mark_list, ptr %mark_list, align 8
  %prev.i = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mark_list, ptr %prev.i, align 4
  %clear_list = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %clear_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %clear_list, ptr %clear_list, align 8
  %prev.i497 = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i497 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %clear_list, ptr %prev.i497, align 4
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %incdec.ptr, align 4
  %call27 = tail call i32 @strcasecmp(ptr noundef %15, ptr noundef nonnull @.str.13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end19.if.end32_crit_edge

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %integrated_flush = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 15
  %16 = ptrtoint ptr %integrated_flush to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %integrated_flush, align 4
  %dec30 = add i32 %argc, -2
  %incdec.ptr31 = getelementptr ptr, ptr %argv, i32 2
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end19.if.end32_crit_edge
  %argv.addr.0 = phi ptr [ %incdec.ptr, %if.end19.if.end32_crit_edge ], [ %incdec.ptr31, %if.then29 ]
  %argc.addr.0 = phi i32 [ %dec, %if.end19.if.end32_crit_edge ], [ %dec30, %if.then29 ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end32
  %str_size.038.i = phi i32 [ %add1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end32 ]
  %i.037.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end32 ]
  %arrayidx.i = getelementptr ptr, ptr %argv.addr.0, i32 %i.037.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %18) #19
  %add.i = add i32 %str_size.038.i, 1
  %add1.i = add i32 %add.i, %call.i
  %inc.i = add nuw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %argc.addr.0
  br i1 %exitcond.not.i, label %if.end8.i.i.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end8.i.i.i:                                    ; preds = %for.body.i
  %add2.i = add i32 %add1.i, 20
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i, i32 noundef 3520) #20
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %build_constructor_string.exit.thread, label %if.end.i

build_constructor_string.exit.thread:             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #16
  br label %if.then36

if.end.i:                                         ; preds = %if.end8.i.i.i
  %len.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %len.i, align 8
  %call5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @.str.45, i64 noundef %20) #13
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %if.end.i
  %str_size.141.i = phi i32 [ %add11.i, %for.body8.i.for.body8.i_crit_edge ], [ %call5.i, %if.end.i ]
  %i.140.i = phi i32 [ %inc13.i, %for.body8.i.for.body8.i_crit_edge ], [ 0, %if.end.i ]
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 %str_size.141.i
  %arrayidx9.i = getelementptr ptr, ptr %argv.addr.0, i32 %i.140.i
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx9.i, align 4
  %call10.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.46, ptr noundef %22) #13
  %add11.i = add i32 %call10.i, %str_size.141.i
  %inc13.i = add nuw i32 %i.140.i, 1
  %exitcond43.not.i = icmp eq i32 %inc13.i, %argc.addr.0
  br i1 %exitcond43.not.i, label %build_constructor_string.exit, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8.i

build_constructor_string.exit:                    ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i)
  %cmp34 = icmp slt i32 %add11.i, 0
  br i1 %cmp34, label %build_constructor_string.exit.if.then36_crit_edge, label %if.end8.i.i

build_constructor_string.exit.if.then36_crit_edge: ; preds = %build_constructor_string.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36

if.then36:                                        ; preds = %build_constructor_string.exit.if.then36_crit_edge, %build_constructor_string.exit.thread
  %retval.0.i514 = phi i32 [ -12, %build_constructor_string.exit.thread ], [ %add11.i, %build_constructor_string.exit.if.then36_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %build_constructor_string.exit
  %23 = ptrtoint ptr %devices_rdata_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devices_rdata_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #20
  %tobool39.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool39.not, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #16
  br label %out.thread

if.end46:                                         ; preds = %if.end8.i.i
  %flush_entry_pool = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 16
  %25 = load ptr, ptr @_flush_entry_cache, align 4
  %call.i502 = tail call i32 @mempool_init(ptr noundef %flush_entry_pool, i32 noundef 16, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i502)
  %tobool48.not = icmp eq i32 %call.i502, 0
  br i1 %tobool48.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #16
  br label %out.thread

if.end55:                                         ; preds = %if.end46
  %26 = ptrtoint ptr %luid to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %luid, align 8
  %call59 = call i32 @dm_consult_userspace(ptr noundef %uuid, i64 noundef %27, i32 noundef 1, ptr noundef nonnull %call9.i.i.i, i32 noundef %add11.i, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %devices_rdata_size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end77

if.then62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call59)
  %cmp63 = icmp eq i32 %call59, -3
  br i1 %cmp63, label %do.end68, label %do.end73

do.end68:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #16
  br label %out.thread

do.end73:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  br label %out.thread

if.end77:                                         ; preds = %if.end55
  %28 = ptrtoint ptr %rdata_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %rdata_size, align 4
  %29 = ptrtoint ptr %luid to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %luid, align 8
  %call81 = call i32 @dm_consult_userspace(ptr noundef %uuid, i64 noundef %30, i32 noundef 6, ptr noundef null, i32 noundef 0, ptr noundef nonnull %rdata, ptr noundef nonnull %rdata_size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end89, label %do.end86

do.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #16
  br label %out.thread

if.end89:                                         ; preds = %if.end77
  %31 = ptrtoint ptr %rdata to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rdata, align 8
  %conv90 = trunc i64 %32 to i32
  %region_size = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %region_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv90, ptr %region_size, align 8
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %len.i, align 8
  %conv92 = and i64 %32, 4294967295
  %add = add nsw i64 %conv92, -1
  %sub = add i64 %add, %35
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp268 = icmp ult i64 %sub, 4294967296
  br i1 %cmp268, label %if.then272, label %if.else278, !prof !153

if.then272:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  %conv273 = trunc i64 %sub to i32
  %div276 = udiv i32 %conv273, %conv90
  %conv277 = zext i32 %div276 to i64
  br label %if.end282

if.else278:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  %36 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv90, i64 %sub) #21, !srcloc !154
  %asmresult1.i = extractvalue { i64, i64 } %36, 1
  br label %if.end282

if.end282:                                        ; preds = %if.else278, %if.then272
  %_r.0 = phi i64 [ %conv277, %if.then272 ], [ %asmresult1.i, %if.else278 ]
  %region_count = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %region_count to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %_r.0, ptr %region_count, align 8
  %38 = ptrtoint ptr %devices_rdata_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devices_rdata_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool285.not = icmp eq i32 %39, 0
  br i1 %tobool285.not, label %if.end282.if.end309_crit_edge, label %if.then286

if.end282.if.end309_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end309

if.then286:                                       ; preds = %if.end282
  %sub287 = add i32 %39, -1
  %arrayidx288 = getelementptr i8, ptr %call9.i.i, i32 %sub287
  %40 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx288, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp290.not = icmp eq i8 %41, 0
  br i1 %cmp290.not, label %if.end298, label %do.end295

do.end295:                                        ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #15
  %call297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #16
  br label %out.thread

if.end298:                                        ; preds = %if.then286
  %42 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ti, align 8
  %call299 = call i32 @dm_table_get_mode(ptr noundef %43) #13
  %log_dev = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 1
  %call300 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef nonnull %call9.i.i, i32 noundef %call299, ptr noundef %log_dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %if.end298.if.end309_crit_edge, label %do.end305

if.end298.if.end309_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end309

do.end305:                                        ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #15
  %call307 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %call9.i.i) #16
  br label %if.end309

if.end309:                                        ; preds = %do.end305, %if.end298.if.end309_crit_edge, %if.end282.if.end309_crit_edge
  %r.0 = phi i32 [ %call300, %do.end305 ], [ 0, %if.end298.if.end309_crit_edge ], [ 0, %if.end282.if.end309_crit_edge ]
  %integrated_flush310 = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 15
  %44 = ptrtoint ptr %integrated_flush310 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %integrated_flush310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool311.not = icmp eq i32 %45, 0
  br i1 %tobool311.not, label %if.end309.out_crit_edge, label %if.then312

if.end309.out_crit_edge:                          ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then312:                                       ; preds = %if.end309
  %call313 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.35, i32 noundef 8, i32 noundef 0) #13
  %dmlog_wq = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 12
  %46 = ptrtoint ptr %dmlog_wq to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call313, ptr %dmlog_wq, align 8
  %tobool315.not = icmp eq ptr %call313, null
  br i1 %tobool315.not, label %do.end319, label %do.body324

do.end319:                                        ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #15
  %call321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #16
  br label %out.thread

do.body324:                                       ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #15
  %flush_log_work = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 13
  call void @__init_work(ptr noundef %flush_log_work, i32 noundef 0) #13
  %47 = ptrtoint ptr %flush_log_work to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -64, ptr %flush_log_work, align 4
  %lockdep_map = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.40, ptr noundef nonnull @userspace_ctr.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry331 = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 1
  %48 = ptrtoint ptr %entry331 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %entry331, ptr %entry331, align 8
  %prev.i504 = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i504 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %entry331, ptr %prev.i504, align 4
  %func = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 2
  %50 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @do_flush, ptr %func, align 8
  %timer = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 13, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.42, ptr noundef nonnull @userspace_ctr.__key.41) #13
  %sched_flush = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sched_flush, i32 noundef 4) #13
  %51 = ptrtoint ptr %sched_flush to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 0, ptr %sched_flush, align 8
  br label %out

out.thread:                                       ; preds = %do.end319, %do.end295, %do.end86, %do.end73, %do.end68, %do.end52, %do.end43
  %retval.1.i.i517.ph = phi ptr [ null, %do.end43 ], [ %call9.i.i, %do.end319 ], [ %call9.i.i, %do.end295 ], [ %call9.i.i, %do.end86 ], [ %call9.i.i, %do.end73 ], [ %call9.i.i, %do.end68 ], [ %call9.i.i, %do.end52 ]
  %r.1.ph = phi i32 [ -12, %do.end43 ], [ -12, %do.end319 ], [ -22, %do.end295 ], [ %call81, %do.end86 ], [ %call59, %do.end73 ], [ -3, %do.end68 ], [ %call.i502, %do.end52 ]
  call void @kfree(ptr noundef %retval.1.i.i517.ph) #13
  br label %if.then344

out:                                              ; preds = %do.body324, %if.end309.out_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool343.not = icmp eq i32 %r.0, 0
  br i1 %tobool343.not, label %if.else346, label %out.if.then344_crit_edge

out.if.then344_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then344

if.then344:                                       ; preds = %out.if.then344_crit_edge, %out.thread
  %r.1540 = phi i32 [ %r.1.ph, %out.thread ], [ %r.0, %out.if.then344_crit_edge ]
  %flush_entry_pool345 = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 16
  call void @mempool_exit(ptr noundef %flush_entry_pool345) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  br label %cleanup

if.else346:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %usr_argv_str = getelementptr inbounds %struct.log_c, ptr %call7.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %usr_argv_str to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call9.i.i.i, ptr %usr_argv_str, align 8
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %53 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %context, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else346, %if.then344, %if.then36, %do.end16, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ %retval.0.i514, %if.then36 ], [ -12, %do.end5 ], [ 0, %if.else346 ], [ %r.1540, %if.then344 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devices_rdata_size) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata_size) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rdata) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @userspace_dtr(ptr nocapture noundef readonly %log) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %integrated_flush = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %integrated_flush to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %integrated_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %entry
  %sched_flush = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sched_flush, i32 noundef 4) #13
  %4 = ptrtoint ptr %sched_flush to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sched_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %flush_log_work = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 13
  %call3 = tail call zeroext i1 @flush_delayed_work(ptr noundef %flush_log_work) #13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %dmlog_wq = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %dmlog_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmlog_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %7) #13
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %uuid = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 7
  %luid = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %luid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %luid, align 8
  %call5 = tail call i32 @dm_consult_userspace(ptr noundef %uuid, i64 noundef %9, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %log_dev = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %log_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log_dev, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void @dm_put_device(ptr noundef %13, ptr noundef nonnull %11) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %flush_entry_pool = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 16
  tail call void @mempool_exit(ptr noundef %flush_entry_pool) #13
  %usr_argv_str = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %usr_argv_str to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usr_argv_str, align 8
  tail call void @kfree(ptr noundef %15) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_presuspend(ptr nocapture noundef readonly %log) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %uuid = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 7
  %luid = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %luid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %luid, align 8
  %call = tail call i32 @dm_consult_userspace(ptr noundef %uuid, i64 noundef %3, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_postsuspend(ptr nocapture noundef readonly %log) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %integrated_flush = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %integrated_flush to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %integrated_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sched_flush = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sched_flush, i32 noundef 4) #13
  %4 = ptrtoint ptr %sched_flush to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sched_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %flush_log_work = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 13
  %call2 = tail call zeroext i1 @flush_delayed_work(ptr noundef %flush_log_work) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %uuid = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 7
  %luid = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %luid to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %luid, align 8
  %call3 = tail call i32 @dm_consult_userspace(ptr noundef %uuid, i64 noundef %7, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_resume(ptr nocapture noundef readonly %log) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %in_sync_hint = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %in_sync_hint to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %in_sync_hint, align 8
  %uuid = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 7
  %luid = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %luid to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %luid, align 8
  %call = tail call i32 @dm_consult_userspace(ptr noundef %uuid, i64 noundef %4, i32 noundef 5, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @userspace_get_region_size(ptr nocapture noundef readonly %log) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %region_size = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %region_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %region_size, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_is_clean(ptr nocapture noundef readonly %log, i64 noundef %region) #3 align 64 {
entry:
  %region64 = alloca i64, align 8
  %is_clean = alloca i64, align 8
  %rdata_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region64) #13
  %0 = ptrtoint ptr %region64 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %region, ptr %region64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_clean) #13
  %1 = ptrtoint ptr %is_clean to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %is_clean, align 8, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata_size) #13
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %4 = ptrtoint ptr %rdata_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %rdata_size, align 4
  %uuid = getelementptr inbounds %struct.log_c, ptr %3, i32 0, i32 7
  %call = call fastcc i32 @userspace_do_request(ptr noundef %3, ptr noundef %uuid, i32 noundef 7, ptr noundef nonnull %region64, i32 noundef 8, ptr noundef nonnull %is_clean, ptr noundef nonnull %rdata_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %is_clean to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %is_clean, align 8
  %conv = trunc i64 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata_size) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_clean) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region64) #13
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_in_sync(ptr nocapture noundef readonly %log, i64 noundef %region, i32 noundef %can_block) #3 align 64 {
entry:
  %region64 = alloca i64, align 8
  %in_sync = alloca i64, align 8
  %rdata_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region64) #13
  %0 = ptrtoint ptr %region64 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %region, ptr %region64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_sync) #13
  %1 = ptrtoint ptr %in_sync to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %in_sync, align 8, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata_size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %can_block)
  %tobool.not = icmp eq i32 %can_block, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %4 = ptrtoint ptr %rdata_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %rdata_size, align 4
  %uuid = getelementptr inbounds %struct.log_c, ptr %3, i32 0, i32 7
  %call = call fastcc i32 @userspace_do_request(ptr noundef %3, ptr noundef %uuid, i32 noundef 8, ptr noundef nonnull %region64, i32 noundef 8, ptr noundef nonnull %in_sync, ptr noundef nonnull %rdata_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cond.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %in_sync to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %in_sync, align 8
  %conv = trunc i64 %6 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %conv, %cond.false ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata_size) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_sync) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region64) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_flush(ptr nocapture noundef readonly %log) #3 align 64 {
entry:
  %mark_list = alloca %struct.list_head, align 4
  %clear_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mark_list) #13
  %2 = getelementptr inbounds %struct.list_head, ptr %mark_list, i32 0, i32 1
  %3 = ptrtoint ptr %mark_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mark_list, ptr %mark_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mark_list, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clear_list) #13
  %5 = getelementptr inbounds %struct.list_head, ptr %clear_list, i32 0, i32 1
  %6 = ptrtoint ptr %clear_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %clear_list, ptr %clear_list, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %clear_list, ptr %5, align 4
  %flush_entry_pool3 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 16
  %flush_lock = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %flush_lock) #13
  %mark_list8 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %mark_list8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %mark_list8, align 4
  %cmp.i.not.i = icmp eq ptr %9, %mark_list8
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %mark_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mark_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mark_list, ptr %prev3.i.i, align 4
  store ptr %9, ptr %mark_list, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %11, ptr %13, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev6.i.i, align 4
  %17 = ptrtoint ptr %mark_list8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %mark_list8, ptr %mark_list8, align 4
  store ptr %mark_list8, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %clear_list9 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %clear_list9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %clear_list9, align 4
  %cmp.i.not.i129 = icmp eq ptr %19, %clear_list9
  br i1 %cmp.i.not.i129, label %list_splice_init.exit.list_splice_init.exit134_crit_edge, label %if.then.i133

list_splice_init.exit.list_splice_init.exit134_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_splice_init.exit134

if.then.i133:                                     ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %clear_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clear_list, align 4
  %prev2.i.i130 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev2.i.i130 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev2.i.i130, align 4
  %prev3.i.i131 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i131 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %clear_list, ptr %prev3.i.i131, align 4
  store ptr %19, ptr %clear_list, align 4
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %21, ptr %23, align 4
  %prev6.i.i132 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev6.i.i132 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev6.i.i132, align 4
  %27 = ptrtoint ptr %clear_list9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %clear_list9, ptr %clear_list9, align 4
  store ptr %clear_list9, ptr %prev2.i.i130, align 4
  br label %list_splice_init.exit134

list_splice_init.exit134:                         ; preds = %if.then.i133, %list_splice_init.exit.list_splice_init.exit134_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %flush_lock, i32 noundef %call5) #13
  %28 = ptrtoint ptr %mark_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %mark_list, align 4
  %cmp.i = icmp ne ptr %29, %mark_list
  %30 = ptrtoint ptr %clear_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %clear_list, align 4
  %cmp.i135 = icmp ne ptr %31, %clear_list
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp.i135
  br i1 %or.cond, label %if.end, label %list_splice_init.exit134.cleanup_crit_edge

list_splice_init.exit134.cleanup_crit_edge:       ; preds = %list_splice_init.exit134
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %list_splice_init.exit134
  %call14 = call fastcc i32 @flush_by_group(ptr noundef %1, ptr noundef nonnull %clear_list, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end17:                                         ; preds = %if.end
  %integrated_flush = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 15
  %32 = ptrtoint ptr %integrated_flush to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %integrated_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool18.not = icmp eq i32 %33, 0
  br i1 %tobool18.not, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end17
  %call20 = call fastcc i32 @flush_by_group(ptr noundef %1, ptr noundef nonnull %mark_list, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then19.out_crit_edge

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end23:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %uuid = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 7
  %call24 = call fastcc i32 @userspace_do_request(ptr noundef %1, ptr noundef %uuid, i32 noundef 9, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %out

if.end25:                                         ; preds = %if.end17
  %call26 = call fastcc i32 @flush_by_group(ptr noundef %1, ptr noundef nonnull %mark_list, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end29:                                         ; preds = %if.end25
  br i1 %cmp.i, label %if.end29.if.else_crit_edge, label %land.lhs.true31

if.end29.if.else_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true31:                                  ; preds = %if.end29
  %sched_flush = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sched_flush, i32 noundef 4) #13
  %34 = ptrtoint ptr %sched_flush to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %sched_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool33.not = icmp eq i32 %35, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true31.if.else_crit_edge

land.lhs.true31.if.else_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then34:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  %dmlog_wq = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 12
  %36 = ptrtoint ptr %dmlog_wq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dmlog_wq, align 8
  %flush_log_work = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 13
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %flush_log_work, i32 noundef 300) #13
  %call.i.i127 = call zeroext i1 @__kasan_check_write(ptr noundef %sched_flush, i32 noundef 4) #13
  %38 = ptrtoint ptr %sched_flush to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 1, ptr %sched_flush, align 4
  br label %out

if.else:                                          ; preds = %land.lhs.true31.if.else_crit_edge, %if.end29.if.else_crit_edge
  %flush_log_work37 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 13
  %call38 = call zeroext i1 @cancel_delayed_work(ptr noundef %flush_log_work37) #13
  %sched_flush39 = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 14
  %call.i.i128 = call zeroext i1 @__kasan_check_write(ptr noundef %sched_flush39, i32 noundef 4) #13
  %39 = ptrtoint ptr %sched_flush39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %sched_flush39, align 4
  br label %out

out:                                              ; preds = %if.else, %if.then34, %if.end25.out_crit_edge, %if.end23, %if.then19.out_crit_edge, %if.end.out_crit_edge
  %r.0 = phi i32 [ %call14, %if.end.out_crit_edge ], [ %call26, %if.end25.out_crit_edge ], [ 0, %if.else ], [ 0, %if.then34 ], [ %call20, %if.then19.out_crit_edge ], [ %call24, %if.end23 ]
  %40 = ptrtoint ptr %mark_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mark_list, align 4
  %cmp48.not144 = icmp eq ptr %41, %mark_list
  br i1 %cmp48.not144, label %out.for.end_crit_edge, label %out.for.body_crit_edge

out.for.body_crit_edge:                           ; preds = %out
  br label %for.body

out.for.end_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %out.for.body_crit_edge
  %.pn.in145 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %41, %out.for.body_crit_edge ]
  %fe.0 = getelementptr i8, ptr %.pn.in145, i32 -16
  %42 = ptrtoint ptr %.pn.in145 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load ptr, ptr %.pn.in145, align 8
  %call.i.i137 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in145) #13
  br i1 %call.i.i137, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in145, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %.pn.in145 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %.pn.in145, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %49 = ptrtoint ptr %.pn.in145 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in145, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in145, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @mempool_free(ptr noundef %fe.0, ptr noundef %flush_entry_pool3) #13
  %cmp48.not = icmp eq ptr %.pn, %mark_list
  br i1 %cmp48.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %out.for.end_crit_edge
  %51 = ptrtoint ptr %clear_list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clear_list, align 4
  %cmp67.not147 = icmp eq ptr %52, %clear_list
  br i1 %cmp67.not147, label %for.end.for.end78_crit_edge, label %for.end.for.body70_crit_edge

for.end.for.body70_crit_edge:                     ; preds = %for.end
  br label %for.body70

for.end.for.end78_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78

for.body70:                                       ; preds = %list_del.exit143.for.body70_crit_edge, %for.end.for.body70_crit_edge
  %.pn124.in148 = phi ptr [ %.pn124, %list_del.exit143.for.body70_crit_edge ], [ %52, %for.end.for.body70_crit_edge ]
  %fe.1 = getelementptr i8, ptr %.pn124.in148, i32 -16
  %53 = ptrtoint ptr %.pn124.in148 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn124 = load ptr, ptr %.pn124.in148, align 8
  %call.i.i138 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn124.in148) #13
  br i1 %call.i.i138, label %if.end.i.i141, label %for.body70.list_del.exit143_crit_edge

for.body70.list_del.exit143_crit_edge:            ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit143

if.end.i.i141:                                    ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i139 = getelementptr inbounds %struct.list_head, ptr %.pn124.in148, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i139 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i139, align 4
  %56 = ptrtoint ptr %.pn124.in148 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %.pn124.in148, align 4
  %prev1.i.i.i140 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i140 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i140, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del.exit143

list_del.exit143:                                 ; preds = %if.end.i.i141, %for.body70.list_del.exit143_crit_edge
  %60 = ptrtoint ptr %.pn124.in148 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn124.in148, align 4
  %prev.i142 = getelementptr inbounds %struct.list_head, ptr %.pn124.in148, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i142 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i142, align 4
  call void @mempool_free(ptr noundef %fe.1, ptr noundef %flush_entry_pool3) #13
  %cmp67.not = icmp eq ptr %.pn124, %clear_list
  br i1 %cmp67.not, label %list_del.exit143.for.end78_crit_edge, label %list_del.exit143.for.body70_crit_edge

list_del.exit143.for.body70_crit_edge:            ; preds = %list_del.exit143
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body70

list_del.exit143.for.end78_crit_edge:             ; preds = %list_del.exit143
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78

for.end78:                                        ; preds = %list_del.exit143.for.end78_crit_edge, %for.end.for.end78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool79.not = icmp eq i32 %r.0, 0
  br i1 %tobool79.not, label %for.end78.cleanup_crit_edge, label %if.then80

for.end78.cleanup_crit_edge:                      ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then80:                                        ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  call void @dm_table_event(ptr noundef %65) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %for.end78.cleanup_crit_edge, %list_splice_init.exit134.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_splice_init.exit134.cleanup_crit_edge ], [ %r.0, %if.then80 ], [ 0, %for.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clear_list) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mark_list) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @userspace_mark_region(ptr nocapture noundef readonly %log, i64 noundef %region) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %flush_entry_pool = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 16
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %flush_entry_pool, i32 noundef 3072) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body4, label %do.body11, !prof !155

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-log-userspace-base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 656, 0\0A.popsection", ""() #13, !srcloc !156
  unreachable

do.body11:                                        ; preds = %entry
  %flush_lock = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flush_lock) #13
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %call, align 8
  %region18 = getelementptr inbounds %struct.dm_dirty_log_flush_entry, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %region18 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %region, ptr %region18, align 8
  %list = getelementptr inbounds %struct.dm_dirty_log_flush_entry, ptr %call, i32 0, i32 2
  %mark_list = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %mark_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mark_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %mark_list, ptr noundef %5) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.body11.list_add.exit_crit_edge

do.body11.list_add.exit_crit_edge:                ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dm_dirty_log_flush_entry, ptr %call, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mark_list, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %mark_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %mark_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body11.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flush_lock, i32 noundef %call13) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @userspace_clear_region(ptr nocapture noundef readonly %log, i64 noundef %region) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %flush_entry_pool = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 16
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %flush_entry_pool, i32 noundef 2592) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #16
  br label %cleanup

do.body3:                                         ; preds = %entry
  %flush_lock = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flush_lock) #13
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 11, ptr %call, align 8
  %region11 = getelementptr inbounds %struct.dm_dirty_log_flush_entry, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %region11 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %region, ptr %region11, align 8
  %list = getelementptr inbounds %struct.dm_dirty_log_flush_entry, ptr %call, i32 0, i32 2
  %clear_list = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %clear_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clear_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %clear_list, ptr noundef %5) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.body3.list_add.exit_crit_edge

do.body3.list_add.exit_crit_edge:                 ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dm_dirty_log_flush_entry, ptr %call, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %clear_list, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %clear_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %clear_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body3.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flush_lock, i32 noundef %call6) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_get_resync_work(ptr nocapture noundef readonly %log, ptr nocapture noundef writeonly %region) #3 align 64 {
entry:
  %rdata_size = alloca i32, align 4
  %pkg = alloca %struct.anon.75, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata_size) #13
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pkg) #13
  %in_sync_hint = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 11
  %2 = call ptr @memset(ptr %pkg, i32 255, i32 16)
  %3 = ptrtoint ptr %in_sync_hint to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %in_sync_hint, align 8
  %region_count = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %region_count to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %region_count, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp.not = icmp ult i64 %4, %6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.anon.75, ptr %pkg, i32 0, i32 1
  %8 = ptrtoint ptr %rdata_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %rdata_size, align 4
  %uuid = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 7
  %call = call fastcc i32 @userspace_do_request(ptr noundef %1, ptr noundef %uuid, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef nonnull %pkg, ptr noundef nonnull %rdata_size)
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %7, align 8
  %11 = ptrtoint ptr %region to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %region, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %pkg to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pkg, align 8
  %conv = trunc i64 %13 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %conv, %cond.false ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pkg) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata_size) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @userspace_set_region_sync(ptr nocapture noundef readonly %log, i64 noundef %region, i32 noundef %in_sync) #3 align 64 {
entry:
  %pkg = alloca %struct.anon.76, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pkg) #13
  %2 = getelementptr inbounds %struct.anon.76, ptr %pkg, i32 0, i32 1
  %3 = ptrtoint ptr %pkg to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %region, ptr %pkg, align 8
  %conv = sext i32 %in_sync to i64
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %2, align 8
  %uuid = getelementptr inbounds %struct.log_c, ptr %1, i32 0, i32 7
  %call = call fastcc i32 @userspace_do_request(ptr noundef %1, ptr noundef %uuid, i32 noundef 13, ptr noundef nonnull %pkg, i32 noundef 16, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pkg) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @userspace_get_sync_count(ptr nocapture noundef readonly %log) #3 align 64 {
entry:
  %rdata_size = alloca i32, align 4
  %sync_count = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata_size) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sync_count) #13
  %0 = ptrtoint ptr %sync_count to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sync_count, align 8, !annotation !152
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context, align 4
  %3 = ptrtoint ptr %rdata_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %rdata_size, align 4
  %uuid = getelementptr inbounds %struct.log_c, ptr %2, i32 0, i32 7
  %call = call fastcc i32 @userspace_do_request(ptr noundef %2, ptr noundef %uuid, i32 noundef 14, ptr noundef null, i32 noundef 0, ptr noundef nonnull %sync_count, ptr noundef nonnull %rdata_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %sync_count to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sync_count, align 8
  %region_count = getelementptr inbounds %struct.log_c, ptr %2, i32 0, i32 5
  %6 = ptrtoint ptr %region_count to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %region_count, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.not = icmp ult i64 %5, %7
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %in_sync_hint = getelementptr inbounds %struct.log_c, ptr %2, i32 0, i32 11
  %8 = ptrtoint ptr %in_sync_hint to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %in_sync_hint, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %entry.cleanup_crit_edge ], [ %5, %if.then1 ], [ %5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sync_count) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata_size) #13
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_status(ptr nocapture noundef readonly %log, i32 noundef %status_type, ptr noundef %result, i32 noundef %maxlen) #3 align 64 {
entry:
  %sz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz) #13
  %0 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %maxlen, ptr %sz, align 4
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context, align 4
  %3 = zext i32 %status_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status_type, label %entry.cond.false53_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb50
  ]

entry.cond.false53_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false53

sw.bb:                                            ; preds = %entry
  %uuid = getelementptr inbounds %struct.log_c, ptr %2, i32 0, i32 7
  %call = call fastcc i32 @userspace_do_request(ptr noundef %2, ptr noundef %uuid, i32 noundef 15, ptr noundef null, i32 noundef 0, ptr noundef %result, ptr noundef nonnull %sz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.cond.false53_crit_edge, label %if.then

sw.bb.cond.false53_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false53

if.then:                                          ; preds = %sw.bb
  %4 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %if.then.cond.end54_crit_edge, label %cond.false

if.then.cond.end54_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end54

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %log, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.60, ptr noundef %8) #13
  br label %cond.end54

sw.bb2:                                           ; preds = %entry
  %9 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sz, align 4
  %usr_argv_str = getelementptr inbounds %struct.log_c, ptr %2, i32 0, i32 2
  %10 = ptrtoint ptr %usr_argv_str to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usr_argv_str, align 8
  %call3 = tail call ptr @strchr(ptr noundef %11, i32 noundef 32)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body9, label %do.end15, !prof !155

do.body9:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-log-userspace-base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 815, 0\0A.popsection", ""() #13, !srcloc !157
  unreachable

do.end15:                                         ; preds = %sw.bb2
  %incdec.ptr = getelementptr i8, ptr %call3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp16 = icmp eq i32 %maxlen, 0
  br i1 %cmp16, label %do.end15.cond.end26_crit_edge, label %cond.false18

do.end15.cond.end26_crit_edge:                    ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end26

cond.false18:                                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %usr_argc = getelementptr inbounds %struct.log_c, ptr %2, i32 0, i32 3
  %16 = ptrtoint ptr %usr_argc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usr_argc, align 4
  %uuid23 = getelementptr inbounds %struct.log_c, ptr %2, i32 0, i32 7
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.61, ptr noundef %15, i32 noundef %17, ptr noundef %uuid23) #13
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false18, %do.end15.cond.end26_crit_edge
  %cond27 = phi i32 [ %call25, %cond.false18 ], [ 0, %do.end15.cond.end26_crit_edge ]
  %18 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sz, align 4
  %add28 = add i32 %19, %cond27
  store i32 %add28, ptr %sz, align 4
  %integrated_flush = getelementptr inbounds %struct.log_c, ptr %2, i32 0, i32 15
  %20 = ptrtoint ptr %integrated_flush to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %integrated_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool29.not = icmp eq i32 %21, 0
  br i1 %tobool29.not, label %cond.end26.if.end40_crit_edge, label %if.then30

cond.end26.if.end40_crit_edge:                    ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then30:                                        ; preds = %cond.end26
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %maxlen)
  %cmp31.not = icmp ult i32 %add28, %maxlen
  br i1 %cmp31.not, label %cond.false33, label %if.then30.cond.end37_crit_edge

if.then30.cond.end37_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end37

cond.false33:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr34 = getelementptr i8, ptr %result, i32 %add28
  %sub35 = sub i32 %maxlen, %add28
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.62) #13
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false33, %if.then30.cond.end37_crit_edge
  %cond38 = phi i32 [ %call36, %cond.false33 ], [ 0, %if.then30.cond.end37_crit_edge ]
  %22 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sz, align 4
  %add39 = add i32 %23, %cond38
  store i32 %add39, ptr %sz, align 4
  br label %if.end40

if.end40:                                         ; preds = %cond.end37, %cond.end26.if.end40_crit_edge
  %24 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %maxlen)
  %cmp41.not = icmp ult i32 %25, %maxlen
  br i1 %cmp41.not, label %cond.false43, label %if.end40.cond.end47_crit_edge

if.end40.cond.end47_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end47

cond.false43:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr44 = getelementptr i8, ptr %result, i32 %25
  %sub45 = sub i32 %maxlen, %25
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.63, ptr noundef %incdec.ptr) #13
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false43, %if.end40.cond.end47_crit_edge
  %cond48 = phi i32 [ %call46, %cond.false43 ], [ 0, %if.end40.cond.end47_crit_edge ]
  %26 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sz, align 4
  %add49 = add i32 %27, %cond48
  store i32 %add49, ptr %sz, align 4
  br label %cond.false53

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %result, align 1
  br label %cond.false53

cond.false53:                                     ; preds = %sw.bb50, %cond.end47, %sw.bb.cond.false53_crit_edge, %entry.cond.false53_crit_edge
  %29 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sz, align 4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.false, %if.then.cond.end54_crit_edge
  %cond55 = phi i32 [ %30, %cond.false53 ], [ 0, %if.then.cond.end54_crit_edge ], [ 0, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz) #13
  ret i32 %cond55
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userspace_is_remote_recovering(ptr nocapture noundef readonly %log, i64 noundef %region) #3 align 64 {
entry:
  %region64 = alloca i64, align 8
  %pkg = alloca %struct.anon.77, align 8
  %rdata_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region64) #13
  %0 = ptrtoint ptr %region64 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %region, ptr %region64, align 8
  %context = getelementptr inbounds %struct.dm_dirty_log, ptr %log, i32 0, i32 2
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pkg) #13
  %3 = getelementptr inbounds %struct.anon.77, ptr %pkg, i32 0, i32 1
  %4 = call ptr @memset(ptr %pkg, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata_size) #13
  %5 = ptrtoint ptr %rdata_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %rdata_size, align 4
  %in_sync_hint = getelementptr inbounds %struct.log_c, ptr %2, i32 0, i32 11
  %6 = ptrtoint ptr %in_sync_hint to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %in_sync_hint, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %region)
  %cmp = icmp ugt i64 %7, %region
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = load i32, ptr @userspace_is_remote_recovering.limit, align 4
  %sub = sub i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1 = icmp slt i32 %sub, 0
  br i1 %cmp1, label %if.else.cleanup_crit_edge, label %if.end3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, 25
  store i32 %add, ptr @userspace_is_remote_recovering.limit, align 4
  %uuid = getelementptr inbounds %struct.log_c, ptr %2, i32 0, i32 7
  %call = call fastcc i32 @userspace_do_request(ptr noundef %2, ptr noundef %uuid, i32 noundef 17, ptr noundef nonnull %region64, i32 noundef 8, ptr noundef nonnull %pkg, ptr noundef nonnull %rdata_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %3, align 8
  %13 = ptrtoint ptr %in_sync_hint to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %in_sync_hint, align 8
  %14 = ptrtoint ptr %pkg to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pkg, align 8
  %conv = trunc i64 %15 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end3.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata_size) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pkg) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region64) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_consult_userspace(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_flush(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -244
  %sched_flush = getelementptr i8, ptr %work, i32 100
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sched_flush, i32 noundef 4) #13
  %0 = ptrtoint ptr %sched_flush to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %sched_flush, align 4
  %uuid = getelementptr i8, ptr %work, i32 -204
  %call = tail call fastcc i32 @userspace_do_request(ptr noundef %add.ptr, ptr noundef %uuid, i32 noundef 9, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  tail call void @dm_table_event(ptr noundef %4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @userspace_do_request(ptr nocapture noundef readonly %lc, ptr noundef %uuid, i32 noundef %request_type, ptr noundef %data, i32 noundef %data_size, ptr noundef %rdata, ptr noundef %rdata_size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %luid = getelementptr inbounds %struct.log_c, ptr %lc, i32 0, i32 6
  %usr_argv_str = getelementptr inbounds %struct.log_c, ptr %lc, i32 0, i32 2
  br label %retry

retry:                                            ; preds = %do.end83.retry_crit_edge, %entry
  %0 = ptrtoint ptr %luid to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %luid, align 8
  %call = tail call i32 @dm_consult_userspace(ptr noundef %uuid, i64 noundef %1, i32 noundef %request_type, ptr noundef %data, i32 noundef %data_size, ptr noundef %rdata, ptr noundef %rdata_size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call)
  %cmp.not = icmp eq i32 %call, -3
  br i1 %cmp.not, label %do.end, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %retry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #16
  br label %__here

__here:                                           ; preds = %__here.__here_crit_edge, %do.end
  %2 = tail call i32 @llvm.read_register.i32(metadata !142) #13
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 212
  %6 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 ptrtoint (ptr blockaddress(@userspace_do_request, %__here) to i32), ptr %task_state_change, align 4
  %7 = load ptr, ptr %task, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %7, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !158
  %call68 = tail call i32 @schedule_timeout(i32 noundef 200) #13
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #16
  %9 = ptrtoint ptr %luid to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %luid, align 8
  %11 = ptrtoint ptr %usr_argv_str to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usr_argv_str, align 8
  %call76 = tail call i32 @strlen(ptr noundef %12) #18
  %add = add i32 %call76, 1
  %call77 = tail call i32 @dm_consult_userspace(ptr noundef %uuid, i64 noundef %10, i32 noundef 1, ptr noundef %12, i32 noundef %add, ptr noundef null, ptr noundef null) #13
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.end83, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

do.end83:                                         ; preds = %__here
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #16
  %13 = ptrtoint ptr %luid to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %luid, align 8
  %call87 = tail call i32 @dm_consult_userspace(ptr noundef %uuid, i64 noundef %14, i32 noundef 5, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.end83.retry_crit_edge, label %do.end93

do.end83.retry_crit_edge:                         ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry

do.end93:                                         ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #15
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call87) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end93, %retry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %do.end93 ], [ %call, %retry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flush_by_group(ptr noundef %lc, ptr noundef %flush_list, i32 noundef %flush_with_payload) unnamed_addr #3 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  %group = alloca [32 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list, ptr %tmp_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %group) #13
  %3 = call ptr @memset(ptr %group, i32 255, i32 256)
  %4 = ptrtoint ptr %flush_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %flush_list, align 4
  %cmp.i.not71 = icmp eq ptr %5, %flush_list
  br i1 %cmp.i.not71, label %entry.while.end_crit_edge, label %for.cond.preheader.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.cond.preheader.lr.ph:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush_with_payload)
  %tobool16.not = icmp eq i32 %flush_with_payload, 0
  %uuid = getelementptr inbounds %struct.log_c, ptr %lc, i32 0, i32 7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end32.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %6 = phi ptr [ %5, %for.cond.preheader.lr.ph ], [ %39, %if.end32.for.cond.preheader_crit_edge ]
  %type.072 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %type.2, %if.end32.for.cond.preheader_crit_edge ]
  %cmp.not63 = icmp eq ptr %6, %flush_list
  br i1 %cmp.not63, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_move.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %count.066 = phi i32 [ %inc, %list_move.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %.pn.in64 = phi ptr [ %.pn67, %list_move.exit.for.body_crit_edge ], [ %6, %for.cond.preheader.for.body_crit_edge ]
  %7 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn67 = load ptr, ptr %.pn.in64, align 8
  %region = getelementptr i8, ptr %.pn.in64, i32 -8
  %8 = ptrtoint ptr %region to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %region, align 8
  %arrayidx = getelementptr [32 x i64], ptr %group, i32 0, i32 %count.066
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %count.066, 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in64) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in64, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in64, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %17 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tmp_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in64, ptr noundef nonnull %tmp_list, ptr noundef %18) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.pn.in64, ptr %prev1.i.i2.i, align 4
  %20 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %.pn.in64, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in64, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tmp_list, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %.pn.in64, ptr %tmp_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %count.066)
  %cmp10 = icmp ugt i32 %count.066, 30
  %cmp.not = icmp eq ptr %.pn67, %flush_list
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp.not
  br i1 %or.cond, label %for.end.loopexit, label %list_move.exit.for.body_crit_edge

list_move.exit.for.body_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #15
  %fe.0.le = getelementptr i8, ptr %.pn.in64, i32 -16
  %23 = ptrtoint ptr %fe.0.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fe.0.le, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %type.2 = phi i32 [ %type.072, %for.cond.preheader.for.end_crit_edge ], [ %24, %for.end.loopexit ]
  %count.1 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.end.loopexit ]
  %mul26 = shl i32 %count.1, 3
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %for.end
  %call19 = call fastcc i32 @userspace_do_request(ptr noundef %lc, ptr noundef %uuid, i32 noundef 9, ptr noundef nonnull %group, i32 noundef %mul26, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then17.if.end32_crit_edge, label %if.then17.while.end_crit_edge

if.then17.while.end_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then17.if.end32_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.else:                                          ; preds = %for.end
  %call27 = call fastcc i32 @userspace_do_request(ptr noundef %lc, ptr noundef %uuid, i32 noundef %type.2, ptr noundef nonnull %group, i32 noundef %mul26, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.else.if.end32_crit_edge, label %if.then29

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then29:                                        ; preds = %if.else
  %25 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %tmp_list, align 4
  %cmp.i.not.i = icmp eq ptr %26, %tmp_list
  br i1 %cmp.i.not.i, label %if.then29.for.cond.i.preheader_crit_edge, label %if.then.i

if.then29.for.cond.i.preheader_crit_edge:         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %flush_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %flush_list, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %flush_list, ptr %prev3.i.i, align 4
  store ptr %26, ptr %flush_list, align 4
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %30, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev6.i.i, align 4
  %34 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %tmp_list, ptr %tmp_list, align 4
  store ptr %tmp_list, ptr %0, align 4
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %if.then29.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %flush_list, %for.cond.i.preheader ]
  %35 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %flush_list
  br i1 %cmp.not.i, label %for.cond.i.while.end_crit_edge, label %for.body.i

for.cond.i.while.end_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.body.i:                                       ; preds = %for.cond.i
  %fe.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %36 = ptrtoint ptr %fe.0.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fe.0.i, align 8
  %region.i = getelementptr i8, ptr %.pn.i, i32 -8
  %call.i = call fastcc i32 @userspace_do_request(ptr noundef %lc, ptr noundef %uuid, i32 noundef %37, ptr noundef %region.i, i32 noundef 8, ptr noundef null, ptr noundef null) #13
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.while.end_crit_edge

for.body.i.while.end_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.end32:                                         ; preds = %if.else.if.end32_crit_edge, %if.then17.if.end32_crit_edge
  %38 = ptrtoint ptr %flush_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %flush_list, align 4
  %cmp.i.not = icmp eq ptr %39, %flush_list
  br i1 %cmp.i.not, label %if.end32.while.end_crit_edge, label %if.end32.for.cond.preheader_crit_edge

if.end32.for.cond.preheader_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %for.body.i.while.end_crit_edge, %for.cond.i.while.end_crit_edge, %if.then17.while.end_crit_edge, %entry.while.end_crit_edge
  %r.2 = phi i32 [ 0, %entry.while.end_crit_edge ], [ 0, %for.cond.i.while.end_crit_edge ], [ %call.i, %for.body.i.while.end_crit_edge ], [ 0, %if.end32.while.end_crit_edge ], [ %call19, %if.then17.while.end_crit_edge ]
  %40 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %tmp_list, align 4
  %cmp.i.not.i54 = icmp eq ptr %41, %tmp_list
  br i1 %cmp.i.not.i54, label %while.end.list_splice_init.exit59_crit_edge, label %if.then.i58

while.end.list_splice_init.exit59_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_splice_init.exit59

if.then.i58:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %flush_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %flush_list, align 4
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %0, align 4
  %prev3.i.i56 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i56 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %flush_list, ptr %prev3.i.i56, align 4
  store ptr %41, ptr %flush_list, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %43, ptr %45, align 4
  %prev6.i.i57 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %prev6.i.i57 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev6.i.i57, align 4
  %49 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %tmp_list, ptr %tmp_list, align 4
  br label %list_splice_init.exit59

list_splice_init.exit59:                          ; preds = %if.then.i58, %while.end.list_splice_init.exit59_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %group) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #13
  ret i32 %r.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_ulog_tfr_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_dirty_log_type_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !89, !91, !92, !93, !94, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141}
!llvm.named.register.sp = !{!142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-log-userspace-base.c", i32 928, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @userspace_dirty_log_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @userspace_dirty_log_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_dm_log_userspace__268_932_userspace_dirty_log_init6, !7, !"__initcall__kmod_dm_log_userspace__268_932_userspace_dirty_log_init6", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-log-userspace-base.c", i32 932, i32 1}
!8 = !{ptr @__exitcall_userspace_dirty_log_exit, !9, !"__exitcall_userspace_dirty_log_exit", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-log-userspace-base.c", i32 933, i32 1}
!10 = !{ptr @__UNIQUE_ID_description269, !11, !"__UNIQUE_ID_description269", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-log-userspace-base.c", i32 935, i32 1}
!12 = !{ptr @__UNIQUE_ID_author270, !13, !"__UNIQUE_ID_author270", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-log-userspace-base.c", i32 936, i32 1}
!14 = !{ptr @__UNIQUE_ID_file271, !15, !"__UNIQUE_ID_file271", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-log-userspace-base.c", i32 937, i32 1}
!16 = !{ptr @__UNIQUE_ID_license272, !15, !"__UNIQUE_ID_license272", i1 false, i1 false}
!17 = !{ptr @_flush_entry_cache, !18, !"_flush_entry_cache", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-log-userspace-base.c", i32 82, i32 27}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-log-userspace-base.c", i32 873, i32 10}
!21 = !{ptr @_userspace_type, !22, !"_userspace_type", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-log-userspace-base.c", i32 872, i32 33}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-log-userspace-base.c", i32 203, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @userspace_ctr._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @userspace_ctr._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-log-userspace-base.c", i32 209, i32 3}
!30 = !{ptr @userspace_ctr._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @userspace_ctr._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-log-userspace-base.c", i32 219, i32 3}
!34 = !{ptr @userspace_ctr._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @userspace_ctr._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @userspace_ctr.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-log-userspace-base.c", i32 229, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-log-userspace-base.c", i32 233, i32 27}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-log-userspace-base.c", i32 247, i32 3}
!43 = !{ptr @userspace_ctr._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @userspace_ctr._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-log-userspace-base.c", i32 255, i32 3}
!47 = !{ptr @userspace_ctr._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @userspace_ctr._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/dm-log-userspace-base.c", i32 268, i32 4}
!51 = !{ptr @userspace_ctr._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @userspace_ctr._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-log-userspace-base.c", i32 270, i32 4}
!55 = !{ptr @userspace_ctr._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @userspace_ctr._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-log-userspace-base.c", i32 280, i32 3}
!59 = !{ptr @userspace_ctr._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @userspace_ctr._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-log-userspace-base.c", i32 289, i32 4}
!63 = !{ptr @userspace_ctr._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @userspace_ctr._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/dm-log-userspace-base.c", i32 296, i32 4}
!67 = !{ptr @userspace_ctr._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @userspace_ctr._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/dm-log-userspace-base.c", i32 301, i32 34}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/md/dm-log-userspace-base.c", i32 303, i32 4}
!73 = !{ptr @userspace_ctr._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @userspace_ctr._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @userspace_ctr.__key.39, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-log-userspace-base.c", i32 308, i32 3}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @userspace_ctr.__key.41, !76, !"__key", i1 false, i1 false}
!79 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/md/dm-log-userspace-base.c", i32 144, i32 3}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @build_constructor_string._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @build_constructor_string._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/dm-log-userspace-base.c", i32 148, i32 26}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/dm-log-userspace-base.c", i32 150, i32 39}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/md/dm-log-userspace-base.c", i32 102, i32 2}
!91 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @userspace_do_request._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @userspace_do_request._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../drivers/md/dm-log-userspace-base.c", i32 104, i32 3}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/md/dm-log-userspace-base.c", i32 106, i32 3}
!98 = !{ptr @userspace_do_request._entry.49, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @userspace_do_request._entry_ptr.51, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/md/dm-log-userspace-base.c", i32 114, i32 2}
!102 = !{ptr @userspace_do_request._entry.52, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @userspace_do_request._entry_ptr.54, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/md/dm-log-userspace-base.c", i32 120, i32 2}
!106 = !{ptr @userspace_do_request._entry.55, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @userspace_do_request._entry_ptr.57, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/md/dm-log-userspace-base.c", i32 691, i32 3}
!110 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @userspace_clear_region._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @userspace_clear_region._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/md/dm-log-userspace-base.c", i32 809, i32 4}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/md/dm-log-userspace-base.c", i32 818, i32 3}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/md/dm-log-userspace-base.c", i32 820, i32 4}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/md/dm-log-userspace-base.c", i32 821, i32 3}
!121 = !{ptr @userspace_is_remote_recovering.limit, !122, !"limit", i1 false, i1 false}
!122 = !{!"../drivers/md/dm-log-userspace-base.c", i32 841, i32 23}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/md/dm-log-userspace-base.c", i32 897, i32 23}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/md/dm-log-userspace-base.c", i32 899, i32 3}
!127 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @userspace_dirty_log_init._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @userspace_dirty_log_init._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/md/dm-log-userspace-base.c", i32 905, i32 3}
!132 = !{ptr @userspace_dirty_log_init._entry.67, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @userspace_dirty_log_init._entry_ptr.69, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/md/dm-log-userspace-base.c", i32 912, i32 3}
!136 = !{ptr @userspace_dirty_log_init._entry.70, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @userspace_dirty_log_init._entry_ptr.72, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/md/dm-log-userspace-base.c", i32 918, i32 2}
!140 = !{ptr @userspace_dirty_log_init._entry.73, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @userspace_dirty_log_init._entry_ptr.75, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{!"sp"}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{i64 2148414785, i64 2148415065, i64 2148415399, i64 2148415733}
!155 = !{!"branch_weights", i32 1, i32 2000}
!156 = !{i64 2154391741, i64 2154392240, i64 2154391778, i64 2154391834, i64 2154391868, i64 2154391892, i64 2154391933, i64 2154391954, i64 2154391982, i64 2154392016}
!157 = !{i64 2154396709, i64 2154397208, i64 2154396746, i64 2154396802, i64 2154396836, i64 2154396860, i64 2154396901, i64 2154396922, i64 2154396950, i64 2154396984}
!158 = !{i64 2154326384}
