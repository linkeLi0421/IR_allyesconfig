; ModuleID = '/llk/IR_all_yes/security/loadpin/loadpin.c_pt.bc'
source_filename = "../security/loadpin/loadpin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lsm_info = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.security_list_options = type { ptr }
%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ctl_path = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"loadpin\00", [24 x i8] zeroinitializer }, align 32
@__lsm_loadpin = internal global %struct.lsm_info { ptr @.str, i32 0, i32 0, ptr null, ptr @loadpin_init, ptr null }, section ".lsm_info.init", align 4
@__param_str_enforce = internal constant [16 x i8] c"loadpin.enforce\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@enforce = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_enforce = internal constant %struct.kernel_param { ptr @__param_str_enforce, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.69 { ptr @enforce } }, section "__param", align 4
@__UNIQUE_ID_enforcetype269 = internal constant [29 x i8] c"loadpin.parmtype=enforce:int\00", section ".modinfo", align 1
@__UNIQUE_ID_enforce270 = internal constant [53 x i8] c"loadpin.parm=enforce:Enforce module/firmware pinning\00", section ".modinfo", align 1
@__param_str_exclude = internal constant [16 x i8] c"loadpin.exclude\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_exclude = internal constant %struct.kparam_array { i32 7, i32 4, ptr null, ptr @param_ops_charp, ptr @exclude_read_files }, align 4
@__param_exclude = internal constant %struct.kernel_param { ptr @__param_str_exclude, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.69 { ptr @__param_arr_exclude } }, section "__param", align 4
@__UNIQUE_ID_excludetype271 = internal constant [40 x i8] c"loadpin.parmtype=exclude:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_exclude272 = internal constant [62 x i8] c"loadpin.parm=exclude:Exclude pinning specific read file types\00", section ".modinfo", align 1
@loadpin_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016LoadPin: ready to pin (currently %senforcing)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"loadpin_init\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"security/loadpin/loadpin.c\00", [37 x i8] zeroinitializer }, align 32
@loadpin_init._entry_ptr = internal global ptr @loadpin_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@loadpin_hooks = internal global { [3 x %struct.security_hook_list], [36 x i8] } { [3 x %struct.security_hook_list] [%struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 92), %union.security_list_options { ptr @loadpin_sb_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 428), %union.security_list_options { ptr @loadpin_read_file }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 420), %union.security_list_options { ptr @loadpin_load_data }, ptr null }], [36 x i8] zeroinitializer }, align 32
@exclude_read_files = internal global { [7 x ptr], [36 x i8] } zeroinitializer, align 32
@kernel_read_file_str = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.4], [32 x i8] zeroinitializer }, align 32
@parse_exclude._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016LoadPin: excluding: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse_exclude\00", [18 x i8] zeroinitializer }, align 32
@parse_exclude._entry_ptr = internal global ptr @parse_exclude._entry, section ".printk_index", align 4
@ignore_read_file_id = internal unnamed_addr global [7 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kernel-module\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kexec-image\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kexec-initramfs\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"security-policy\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"x509-certificate\00", [47 x i8] zeroinitializer }, align 32
@security_hook_heads = external dso_local global %struct.security_hook_heads, align 4
@pinned_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@loadpin_sb_free_security._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016LoadPin: umount pinned fs: refusing further loads\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"loadpin_sb_free_security\00", [39 x i8] zeroinitializer }, align 32
@loadpin_sb_free_security._entry_ptr = internal global ptr @loadpin_sb_free_security._entry, section ".printk_index", align 4
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pinning-excluded\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"old-api-pinning-ignored\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"old-api-denied\00", [17 x i8] zeroinitializer }, align 32
@pinned_root_spinlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinned\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pinning-ignored\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"denied\00", [25 x i8] zeroinitializer }, align 32
@report_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015LoadPin: %s %s obj=%s%s%s pid=%d cmdline=%s%s%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"report_load\00", [20 x i8] zeroinitializer }, align 32
@report_load._entry_ptr = internal global ptr @report_load._entry, section ".printk_index", align 4
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\22\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pinned_root_spinlock\00", [43 x i8] zeroinitializer }, align 32
@check_pinning_enforcement._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016LoadPin: %s (%u:%u): %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"check_pinning_enforcement\00", [38 x i8] zeroinitializer }, align 32
@check_pinning_enforcement._entry_ptr = internal global ptr @check_pinning_enforcement._entry, section ".printk_index", align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"writable\00", [23 x i8] zeroinitializer }, align 32
@check_pinning_enforcement._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.3, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016LoadPin: mnt_sb lacks block device, treating as: writable\0A\00", [35 x i8] zeroinitializer }, align 32
@check_pinning_enforcement._entry_ptr.33 = internal global ptr @check_pinning_enforcement._entry.31, section ".printk_index", align 4
@loadpin_sysctl_path = internal global { [3 x %struct.ctl_path], [20 x i8] } { [3 x %struct.ctl_path] [%struct.ctl_path { ptr @.str.43 }, %struct.ctl_path { ptr @.str }, %struct.ctl_path zeroinitializer], [20 x i8] zeroinitializer }, align 32
@loadpin_sysctl_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.44, ptr @enforce, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@check_pinning_enforcement._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.3, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015LoadPin: sysctl registration failed!\0A\00", [56 x i8] zeroinitializer }, align 32
@check_pinning_enforcement._entry_ptr.36 = internal global ptr @check_pinning_enforcement._entry.34, section ".printk_index", align 4
@check_pinning_enforcement._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.28, ptr @.str.3, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016LoadPin: enforcement can be disabled.\0A\00", [55 x i8] zeroinitializer }, align 32
@check_pinning_enforcement._entry_ptr.39 = internal global ptr @check_pinning_enforcement._entry.37, section ".printk_index", align 4
@check_pinning_enforcement._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.28, ptr @.str.3, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016LoadPin: load pinning engaged.\0A\00", [62 x i8] zeroinitializer }, align 32
@check_pinning_enforcement._entry_ptr.42 = internal global ptr @check_pinning_enforcement._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enforce\00", [24 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 247, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant [8 x i8] c"enforce\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 41, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 239, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"loadpin_hooks\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 195, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"exclude_read_files\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 42, i32 14 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"kernel_read_file_str\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 26, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 225, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant [36 x i8] c"../include/linux/kernel_read_file.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 27, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"pinned_root\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 44, i32 28 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 117, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 139, i32 29 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 146, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 150, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"pinned_root_spinlock\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 172, i32 29 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 179, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 183, i32 29 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 29, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 45, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 85, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 90, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c"loadpin_sysctl_path\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 49, i32 24 }
@___asan_gen_.180 = private unnamed_addr constant [21 x i8] c"loadpin_sysctl_table\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 55, i32 25 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 95, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 97, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 99, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 50, i32 16 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [30 x i8] c"../security/loadpin/loadpin.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 57, i32 21 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_enforce270, ptr @__UNIQUE_ID_enforcetype269, ptr @__UNIQUE_ID_exclude272, ptr @__UNIQUE_ID_excludetype271, ptr @__lsm_loadpin, ptr @__param_enforce, ptr @__param_exclude, ptr @check_pinning_enforcement._entry, ptr @check_pinning_enforcement._entry.31, ptr @check_pinning_enforcement._entry.34, ptr @check_pinning_enforcement._entry.37, ptr @check_pinning_enforcement._entry.40, ptr @check_pinning_enforcement._entry_ptr, ptr @check_pinning_enforcement._entry_ptr.33, ptr @check_pinning_enforcement._entry_ptr.36, ptr @check_pinning_enforcement._entry_ptr.39, ptr @check_pinning_enforcement._entry_ptr.42, ptr @loadpin_init._entry, ptr @loadpin_init._entry_ptr, ptr @loadpin_sb_free_security._entry, ptr @loadpin_sb_free_security._entry_ptr, ptr @parse_exclude._entry, ptr @parse_exclude._entry_ptr, ptr @report_load._entry, ptr @report_load._entry_ptr, ptr @.str, ptr @enforce, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @loadpin_hooks, ptr @exclude_read_files, ptr @kernel_read_file_str, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @pinned_root, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @pinned_root_spinlock, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @loadpin_sysctl_path, ptr @loadpin_sysctl_table, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enforce to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loadpin_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loadpin_hooks to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exclude_read_files to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_read_file_str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_exclude._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinned_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loadpin_sb_free_security._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinned_root_spinlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_pinning_enforcement._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_pinning_enforcement._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loadpin_sysctl_path to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loadpin_sysctl_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_pinning_enforcement._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_pinning_enforcement._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_pinning_enforcement._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @loadpin_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @enforce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %cond = select i1 %tobool.not, ptr @.str.5, ptr @.str.4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %cond) #10
  tail call fastcc void @parse_exclude() #11
  tail call void @security_add_hooks(ptr noundef nonnull @loadpin_hooks, i32 noundef 3, ptr noundef nonnull @.str) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parse_exclude() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %entry
  %i.036 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x ptr], ptr @exclude_read_files, i32 0, i32 %i.036
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.end25_crit_edge, label %if.end

for.body.for.end25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4 = icmp eq i8 %3, 0
  br i1 %cmp4, label %if.end.for.inc23_crit_edge, label %if.end.for.body11_crit_edge

if.end.for.body11_crit_edge:                      ; preds = %if.end
  br label %for.body11

if.end.for.inc23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %if.end.for.body11_crit_edge
  %j.034 = phi i32 [ %inc, %for.inc.for.body11_crit_edge ], [ 0, %if.end.for.body11_crit_edge ]
  %arrayidx12 = getelementptr [8 x ptr], ptr @kernel_read_file_str, i32 0, i32 %j.034
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx12, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %do.end18, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end18:                                         ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %5) #10
  %arrayidx21 = getelementptr [7 x i32], ptr @ignore_read_file_id, i32 0, i32 %j.034
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end18, %for.body11.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.034, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.for.inc23_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11

for.inc.for.inc23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23

for.inc23:                                        ; preds = %for.inc.for.inc23_crit_edge, %if.end.for.inc23_crit_edge
  %inc24 = add nuw nsw i32 %i.036, 1
  %exitcond37.not = icmp eq i32 %inc24, 7
  br i1 %exitcond37.not, label %for.inc23.for.end25_crit_edge, label %for.inc23.for.body_crit_edge

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc23.for.end25_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.end25:                                        ; preds = %for.inc23.for.end25_crit_edge, %for.body.for.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_add_hooks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loadpin_sb_free_security(ptr nocapture noundef readnone %mnt_sb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pinned_root, align 4
  %tobool.not.i = icmp ne ptr %0, null
  %cmp.i = icmp ule ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i.not = and i1 %tobool.not.i, %cmp.i
  %cmp = icmp eq ptr %0, %mnt_sb
  %or.cond = and i1 %cmp, %spec.select.i.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store ptr inttoptr (i32 -5 to ptr), ptr @pinned_root, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loadpin_read_file(ptr noundef %file, i32 noundef %id, i1 noundef zeroext %contents) #5 align 64 {
entry:
  %bdev.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %id)
  %cmp.i = icmp ugt i32 %id, 6
  br i1 %cmp.i, label %kernel_read_file_id_str.exit, label %land.lhs.true

kernel_read_file_id_str.exit:                     ; preds = %entry
  br i1 %contents, label %kernel_read_file_id_str.exit.if.end3_crit_edge, label %kernel_read_file_id_str.exit.if.then5_crit_edge

kernel_read_file_id_str.exit.if.then5_crit_edge:  ; preds = %kernel_read_file_id_str.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

kernel_read_file_id_str.exit.if.end3_crit_edge:   ; preds = %kernel_read_file_id_str.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

land.lhs.true:                                    ; preds = %entry
  %arrayidx.i = getelementptr [8 x ptr], ptr @kernel_read_file_str, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %spec.select40 = select i1 %contents, ptr %file, ptr null
  %arrayidx = getelementptr [7 x i32], ptr @ignore_read_file_id, i32 0, i32 %id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end3_crit_edge, label %if.then2

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @report_load(ptr noundef %1, ptr noundef %spec.select40, ptr noundef nonnull @.str.17)
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %kernel_read_file_id_str.exit.if.end3_crit_edge
  %spec.select45 = phi ptr [ %spec.select40, %land.lhs.true.if.end3_crit_edge ], [ %file, %kernel_read_file_id_str.exit.if.end3_crit_edge ]
  %retval.0.i42 = phi ptr [ %1, %land.lhs.true.if.end3_crit_edge ], [ @.str.8, %kernel_read_file_id_str.exit.if.end3_crit_edge ]
  %tobool4.not = icmp eq ptr %spec.select45, null
  br i1 %tobool4.not, label %if.end3.if.then5_crit_edge, label %if.end9

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then5:                                         ; preds = %if.end3.if.then5_crit_edge, %kernel_read_file_id_str.exit.if.then5_crit_edge
  %retval.0.i4250 = phi ptr [ %retval.0.i42, %if.end3.if.then5_crit_edge ], [ @.str.8, %kernel_read_file_id_str.exit.if.then5_crit_edge ]
  %4 = load i32, ptr @enforce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @report_load(ptr noundef %retval.0.i4250, ptr noundef null, ptr noundef nonnull @.str.18)
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @report_load(ptr noundef %retval.0.i4250, ptr noundef null, ptr noundef nonnull @.str.19)
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %f_path = getelementptr inbounds %struct.file, ptr %spec.select45, i32 0, i32 1
  %5 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_path, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mnt_sb, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @pinned_root_spinlock) #7
  %9 = load ptr, ptr @pinned_root, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  store ptr %8, ptr @pinned_root, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pinned_root_spinlock) #7
  %10 = load ptr, ptr @pinned_root, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.end13.i, label %if.then.i

if.then.i:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bdev.i) #7
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 4
  %13 = call ptr @memset(ptr %bdev.i, i32 255, i32 32)
  %14 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bd_read_only.i.i, align 8, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %do.end36.critedge.i

lor.rhs.i.i:                                      ; preds = %if.then.i
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 17
  %16 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_disk.i.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %part0.i.i.i, align 4
  %bd_read_only.i.i.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %bd_read_only.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bd_read_only.i.i.i, align 8, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i, label %do.end36.critedge45.i

lor.rhs.i.i.i:                                    ; preds = %lor.rhs.i.i
  %state.i.i.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 12
  %22 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i.i.i, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %phi.cmp.i = icmp eq i32 %24, 0
  %call4.i = call ptr @bdevname(ptr noundef nonnull %12, ptr noundef nonnull %bdev.i) #7
  %25 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_bdev.i, align 4
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bd_dev.i, align 4
  %shr.i = lshr i32 %28, 20
  %and.i = and i32 %28, 1048575
  %cond.i = select i1 %phi.cmp.i, ptr @.str.30, ptr @.str.29
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %bdev.i, i32 noundef %shr.i, i32 noundef %and.i, ptr noundef nonnull %cond.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bdev.i) #7
  br i1 %phi.cmp.i, label %lor.rhs.i.i.i.if.then17.i_crit_edge, label %lor.rhs.i.i.i.check_pinning_enforcement.exit_crit_edge

lor.rhs.i.i.i.check_pinning_enforcement.exit_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_pinning_enforcement.exit

lor.rhs.i.i.i.if.then17.i_crit_edge:              ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

do.end13.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  br label %if.then17.i

if.then17.i:                                      ; preds = %do.end13.i, %lor.rhs.i.i.i.if.then17.i_crit_edge
  %call18.i = call ptr @register_sysctl_paths(ptr noundef nonnull @loadpin_sysctl_path, ptr noundef nonnull @loadpin_sysctl_table) #7
  %tobool19.not.i = icmp eq ptr %call18.i, null
  %.str.35..str.38.i = select i1 %tobool19.not.i, ptr @.str.35, ptr @.str.38
  br label %check_pinning_enforcement.exit

do.end36.critedge.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.c.i = call ptr @bdevname(ptr noundef nonnull %12, ptr noundef nonnull %bdev.i) #7
  %29 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_bdev.i, align 4
  %bd_dev.c.i = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %bd_dev.c.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bd_dev.c.i, align 4
  %shr.c.i = lshr i32 %32, 20
  %and.c.i = and i32 %32, 1048575
  %call10.c.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %bdev.i, i32 noundef %shr.c.i, i32 noundef %and.c.i, ptr noundef nonnull @.str.29) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bdev.i) #7
  br label %check_pinning_enforcement.exit

do.end36.critedge45.i:                            ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.c46.i = call ptr @bdevname(ptr noundef nonnull %12, ptr noundef nonnull %bdev.i) #7
  %33 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_bdev.i, align 4
  %bd_dev.c47.i = getelementptr inbounds %struct.block_device, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %bd_dev.c47.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bd_dev.c47.i, align 4
  %shr.c48.i = lshr i32 %36, 20
  %and.c49.i = and i32 %36, 1048575
  %call10.c50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %bdev.i, i32 noundef %shr.c48.i, i32 noundef %and.c49.i, ptr noundef nonnull @.str.29) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bdev.i) #7
  br label %check_pinning_enforcement.exit

check_pinning_enforcement.exit:                   ; preds = %do.end36.critedge45.i, %do.end36.critedge.i, %if.then17.i, %lor.rhs.i.i.i.check_pinning_enforcement.exit_crit_edge
  %.str.35.sink.i = phi ptr [ %.str.35..str.38.i, %if.then17.i ], [ @.str.41, %do.end36.critedge45.i ], [ @.str.41, %do.end36.critedge.i ], [ @.str.41, %lor.rhs.i.i.i.check_pinning_enforcement.exit_crit_edge ]
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.35.sink.i) #10
  call fastcc void @report_load(ptr noundef %retval.0.i42, ptr noundef nonnull %spec.select45, ptr noundef nonnull @.str.20)
  br label %if.end12

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pinned_root_spinlock) #7
  br label %if.end12

if.end12:                                         ; preds = %if.else, %check_pinning_enforcement.exit
  %37 = load ptr, ptr @pinned_root, align 4
  %tobool.not.i37 = icmp ne ptr %37, null
  %cmp.i38 = icmp ule ptr %37, inttoptr (i32 -4096 to ptr)
  %spec.select.i.not = and i1 %tobool.not.i37, %cmp.i38
  %cmp14.not = icmp eq ptr %8, %37
  %or.cond = select i1 %spec.select.i.not, i1 %cmp14.not, i1 false
  br i1 %or.cond, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  %38 = load i32, ptr @enforce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool16.not = icmp eq i32 %38, 0
  br i1 %tobool16.not, label %if.then20, label %if.end21, !prof !118

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @report_load(ptr noundef %retval.0.i42, ptr noundef nonnull %spec.select45, ptr noundef nonnull @.str.21)
  br label %cleanup

if.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @report_load(ptr noundef %retval.0.i42, ptr noundef nonnull %spec.select45, ptr noundef nonnull @.str.22)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then20, %if.end12.cleanup_crit_edge, %if.end8, %if.then7, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then20 ], [ -1, %if.end21 ], [ -1, %if.end8 ], [ 0, %if.then7 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loadpin_load_data(i32 noundef %id, i1 noundef zeroext %contents) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %id)
  %cmp.i.i = icmp ugt i32 %id, 6
  br i1 %cmp.i.i, label %entry.if.then5.i_crit_edge, label %land.lhs.true.i

entry.if.then5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx.i.i = getelementptr [8 x ptr], ptr @kernel_read_file_str, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx.i = getelementptr [7 x i32], ptr @ignore_read_file_id, i32 0, i32 %id
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then5.i_crit_edge, label %if.then2.i

land.lhs.true.i.if.then5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @report_load(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.17) #7
  br label %loadpin_read_file.exit

if.then5.i:                                       ; preds = %land.lhs.true.i.if.then5.i_crit_edge, %entry.if.then5.i_crit_edge
  %retval.0.i4250.i = phi ptr [ %1, %land.lhs.true.i.if.then5.i_crit_edge ], [ @.str.8, %entry.if.then5.i_crit_edge ]
  %4 = load i32, ptr @enforce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not.i = icmp eq i32 %4, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @report_load(ptr noundef %retval.0.i4250.i, ptr noundef null, ptr noundef nonnull @.str.18) #7
  br label %loadpin_read_file.exit

if.end8.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @report_load(ptr noundef %retval.0.i4250.i, ptr noundef null, ptr noundef nonnull @.str.19) #7
  br label %loadpin_read_file.exit

loadpin_read_file.exit:                           ; preds = %if.end8.i, %if.then7.i, %if.then2.i
  %retval.0.i = phi i32 [ 0, %if.then2.i ], [ -1, %if.end8.i ], [ 0, %if.then7.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @report_load(ptr noundef %origin, ptr noundef %file, ptr noundef %operation) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kstrdup_quotable_file(ptr noundef %file, i32 noundef 3264) #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !107) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call2 = tail call ptr @kstrdup_quotable_cmdline(ptr noundef %3, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.land.end10_crit_edge, label %land.rhs5

entry.land.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end10

land.rhs5:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %5)
  %cmp.not = icmp eq i8 %5, 60
  %phi.sel = select i1 %cmp.not, ptr @.str.4, ptr @.str.25
  br label %land.end10

land.end10:                                       ; preds = %land.rhs5, %entry.land.end10_crit_edge
  %6 = phi ptr [ %phi.sel, %land.rhs5 ], [ @.str.4, %entry.land.end10_crit_edge ]
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid.i, align 8
  %tobool15.not = icmp eq ptr %call2, null
  %cond16 = select i1 %tobool15.not, ptr @.str.4, ptr @.str.25
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %origin, ptr noundef %operation, ptr noundef nonnull %6, ptr noundef %call, ptr noundef nonnull %6, i32 noundef %10, ptr noundef nonnull %cond16, ptr noundef %call2, ptr noundef nonnull %cond16) #10
  tail call void @kfree(ptr noundef %call2) #7
  tail call void @kfree(ptr noundef %call) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_quotable_file(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_quotable_cmdline(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_paths(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !70, !71, !73, !74, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !100, !102, !103, !105, !106}
!llvm.named.register.sp = !{!107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/loadpin/loadpin.c", i32 247, i32 10}
!2 = !{ptr @__lsm_loadpin, !3, !"__lsm_loadpin", i1 false, i1 false}
!3 = !{!"../security/loadpin/loadpin.c", i32 246, i32 1}
!4 = !{ptr @__param_enforce, !5, !"__param_enforce", i1 false, i1 false}
!5 = !{!"../security/loadpin/loadpin.c", i32 252, i32 1}
!6 = !{ptr @__UNIQUE_ID_enforcetype269, !5, !"__UNIQUE_ID_enforcetype269", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_enforce270, !8, !"__UNIQUE_ID_enforce270", i1 false, i1 false}
!8 = !{!"../security/loadpin/loadpin.c", i32 253, i32 1}
!9 = !{ptr @__param_exclude, !10, !"__param_exclude", i1 false, i1 false}
!10 = !{!"../security/loadpin/loadpin.c", i32 254, i32 1}
!11 = !{ptr @__UNIQUE_ID_excludetype271, !10, !"__UNIQUE_ID_excludetype271", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_exclude272, !13, !"__UNIQUE_ID_exclude272", i1 false, i1 false}
!13 = !{!"../security/loadpin/loadpin.c", i32 255, i32 1}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/loadpin/loadpin.c", i32 239, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @loadpin_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @loadpin_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/loadpin/loadpin.c", i32 225, i32 5}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @parse_exclude._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @parse_exclude._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @exclude_read_files, !28, !"exclude_read_files", i1 false, i1 false}
!28 = !{!"../security/loadpin/loadpin.c", i32 42, i32 14}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/kernel_read_file.h", i32 27, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @kernel_read_file_str, !38, !"kernel_read_file_str", i1 false, i1 false}
!38 = !{!"../include/linux/kernel_read_file.h", i32 26, i32 27}
!39 = !{ptr @ignore_read_file_id, !40, !"ignore_read_file_id", i1 false, i1 false}
!40 = !{!"../security/loadpin/loadpin.c", i32 43, i32 12}
!41 = !{ptr @loadpin_hooks, !42, !"loadpin_hooks", i1 false, i1 false}
!42 = !{!"../security/loadpin/loadpin.c", i32 195, i32 34}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../security/loadpin/loadpin.c", i32 117, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @loadpin_sb_free_security._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @loadpin_sb_free_security._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @pinned_root, !49, !"pinned_root", i1 false, i1 false}
!49 = !{!"../security/loadpin/loadpin.c", i32 44, i32 28}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/loadpin/loadpin.c", i32 139, i32 29}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/loadpin/loadpin.c", i32 146, i32 30}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/loadpin/loadpin.c", i32 150, i32 29}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/loadpin/loadpin.c", i32 172, i32 29}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/loadpin/loadpin.c", i32 179, i32 30}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/loadpin/loadpin.c", i32 183, i32 29}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/loadpin/loadpin.c", i32 29, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @report_load._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @report_load._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/loadpin/loadpin.c", i32 45, i32 8}
!70 = !{ptr @pinned_root_spinlock, !69, !"pinned_root_spinlock", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../security/loadpin/loadpin.c", i32 85, i32 3}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @check_pinning_enforcement._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @check_pinning_enforcement._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../security/loadpin/loadpin.c", i32 90, i32 3}
!80 = !{ptr @check_pinning_enforcement._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @check_pinning_enforcement._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../security/loadpin/loadpin.c", i32 95, i32 4}
!84 = !{ptr @check_pinning_enforcement._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @check_pinning_enforcement._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../security/loadpin/loadpin.c", i32 97, i32 4}
!88 = !{ptr @check_pinning_enforcement._entry.37, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @check_pinning_enforcement._entry_ptr.39, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../security/loadpin/loadpin.c", i32 99, i32 3}
!92 = !{ptr @check_pinning_enforcement._entry.40, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @check_pinning_enforcement._entry_ptr.42, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../security/loadpin/loadpin.c", i32 50, i32 16}
!96 = !{ptr @loadpin_sysctl_path, !97, !"loadpin_sysctl_path", i1 false, i1 false}
!97 = !{!"../security/loadpin/loadpin.c", i32 49, i32 24}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../security/loadpin/loadpin.c", i32 57, i32 21}
!100 = !{ptr @loadpin_sysctl_table, !101, !"loadpin_sysctl_table", i1 false, i1 false}
!101 = !{!"../security/loadpin/loadpin.c", i32 55, i32 25}
!102 = !{ptr @__param_str_enforce, !5, !"__param_str_enforce", i1 false, i1 false}
!103 = !{ptr @enforce, !104, !"enforce", i1 false, i1 false}
!104 = !{!"../security/loadpin/loadpin.c", i32 41, i32 12}
!105 = !{ptr @__param_str_exclude, !10, !"__param_str_exclude", i1 false, i1 false}
!106 = !{ptr @__param_arr_exclude, !10, !"__param_arr_exclude", i1 false, i1 false}
!107 = !{!"sp"}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i8 0, i8 2}
!118 = !{!"branch_weights", i32 1, i32 2000}
