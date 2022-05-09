; ModuleID = '/llk/IR_all_yes/drivers/block/null_blk/main.c_pt.bc'
source_filename = "../drivers/block/null_blk/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nullb = type { ptr, %struct.list_head, i32, ptr, ptr, ptr, %struct.blk_mq_tag_set, i32, %struct.atomic_t, %struct.hrtimer, i32, %struct.spinlock, ptr, i32, [32 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nullb_device = type { ptr, %struct.config_item, %struct.xarray, %struct.xarray, i32, i32, %struct.badblocks, i32, i32, i32, i32, i32, ptr, i64, i8, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.nullb_page = type { ptr, [1 x i32] }
%struct.nullb_cmd = type { ptr, ptr, i32, i8, ptr, %struct.hrtimer, i8 }
%struct.nullb_queue = type { ptr, %struct.wait_queue_head, i32, ptr, i32, %struct.list_head, %struct.spinlock, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.blk_mq_hw_ctx = type { %struct.anon.82, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.82 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.io_comp_batch = type { ptr, i8, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__param_str_virt_boundary = internal constant [23 x i8] c"null_blk.virt_boundary\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@g_virt_boundary = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_virt_boundary = internal constant %struct.kernel_param { ptr @__param_str_virt_boundary, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_virt_boundary } }, section "__param", align 4
@__UNIQUE_ID_virt_boundarytype278 = internal constant [37 x i8] c"null_blk.parmtype=virt_boundary:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_virt_boundary279 = internal constant [86 x i8] c"null_blk.parm=virt_boundary:Require a virtual boundary for the device. Default: False\00", section ".modinfo", align 1
@__param_str_no_sched = internal constant [18 x i8] c"null_blk.no_sched\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@g_no_sched = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_no_sched = internal constant %struct.kernel_param { ptr @__param_str_no_sched, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_no_sched } }, section "__param", align 4
@__UNIQUE_ID_no_schedtype280 = internal constant [31 x i8] c"null_blk.parmtype=no_sched:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_sched281 = internal constant [39 x i8] c"null_blk.parm=no_sched:No io scheduler\00", section ".modinfo", align 1
@__param_str_submit_queues = internal constant [23 x i8] c"null_blk.submit_queues\00", align 1
@g_submit_queues = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_submit_queues = internal constant %struct.kernel_param { ptr @__param_str_submit_queues, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_submit_queues } }, section "__param", align 4
@__UNIQUE_ID_submit_queuestype282 = internal constant [36 x i8] c"null_blk.parmtype=submit_queues:int\00", section ".modinfo", align 1
@__UNIQUE_ID_submit_queues283 = internal constant [56 x i8] c"null_blk.parm=submit_queues:Number of submission queues\00", section ".modinfo", align 1
@__param_str_poll_queues = internal constant [21 x i8] c"null_blk.poll_queues\00", align 1
@g_poll_queues = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_poll_queues = internal constant %struct.kernel_param { ptr @__param_str_poll_queues, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_poll_queues } }, section "__param", align 4
@__UNIQUE_ID_poll_queuestype284 = internal constant [34 x i8] c"null_blk.parmtype=poll_queues:int\00", section ".modinfo", align 1
@__UNIQUE_ID_poll_queues285 = internal constant [61 x i8] c"null_blk.parm=poll_queues:Number of IOPOLL submission queues\00", section ".modinfo", align 1
@__param_str_home_node = internal constant [19 x i8] c"null_blk.home_node\00", align 1
@g_home_node = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_home_node = internal constant %struct.kernel_param { ptr @__param_str_home_node, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_home_node } }, section "__param", align 4
@__UNIQUE_ID_home_nodetype286 = internal constant [32 x i8] c"null_blk.parmtype=home_node:int\00", section ".modinfo", align 1
@__UNIQUE_ID_home_node287 = internal constant [49 x i8] c"null_blk.parm=home_node:Home node for the device\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [17 x i8] c"null_blk.timeout\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_timeout = internal constant %struct.kparam_string { i32 80, ptr @g_timeout_str }, align 4
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype288 = internal constant [33 x i8] c"null_blk.parmtype=timeout:string\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout289 = internal constant [88 x i8] c"null_blk.parm=timeout:Fault injection. timeout=<interval>,<probability>,<space>,<times>\00", section ".modinfo", align 1
@__param_str_requeue = internal constant [17 x i8] c"null_blk.requeue\00", align 1
@__param_string_requeue = internal constant %struct.kparam_string { i32 80, ptr @g_requeue_str }, align 4
@__param_requeue = internal constant %struct.kernel_param { ptr @__param_str_requeue, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_requeue } }, section "__param", align 4
@__UNIQUE_ID_requeuetype290 = internal constant [33 x i8] c"null_blk.parmtype=requeue:string\00", section ".modinfo", align 1
@__UNIQUE_ID_requeue291 = internal constant [88 x i8] c"null_blk.parm=requeue:Fault injection. requeue=<interval>,<probability>,<space>,<times>\00", section ".modinfo", align 1
@__param_str_init_hctx = internal constant [19 x i8] c"null_blk.init_hctx\00", align 1
@__param_string_init_hctx = internal constant %struct.kparam_string { i32 80, ptr @g_init_hctx_str }, align 4
@__param_init_hctx = internal constant %struct.kernel_param { ptr @__param_str_init_hctx, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_init_hctx } }, section "__param", align 4
@__UNIQUE_ID_init_hctxtype292 = internal constant [35 x i8] c"null_blk.parmtype=init_hctx:string\00", section ".modinfo", align 1
@__UNIQUE_ID_init_hctx293 = internal constant [110 x i8] c"null_blk.parm=init_hctx:Fault injection to fail hctx init. init_hctx=<interval>,<probability>,<space>,<times>\00", section ".modinfo", align 1
@__param_str_queue_mode = internal constant [20 x i8] c"null_blk.queue_mode\00", align 1
@null_queue_mode_param_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @null_set_queue_mode, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@g_queue_mode = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_queue_mode = internal constant %struct.kernel_param { ptr @__param_str_queue_mode, ptr null, ptr @null_queue_mode_param_ops, i16 292, i8 6, i8 0, %union.anon.76 { ptr @g_queue_mode } }, section "__param", align 4
@__UNIQUE_ID_queue_mode294 = internal constant [74 x i8] c"null_blk.parm=queue_mode:Block interface to use (0=bio,1=rq,2=multiqueue)\00", section ".modinfo", align 1
@__param_str_gb = internal constant [12 x i8] c"null_blk.gb\00", align 1
@g_gb = internal global { i32, [28 x i8] } { i32 250, [28 x i8] zeroinitializer }, align 32
@__param_gb = internal constant %struct.kernel_param { ptr @__param_str_gb, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_gb } }, section "__param", align 4
@__UNIQUE_ID_gbtype295 = internal constant [25 x i8] c"null_blk.parmtype=gb:int\00", section ".modinfo", align 1
@__UNIQUE_ID_gb296 = internal constant [28 x i8] c"null_blk.parm=gb:Size in GB\00", section ".modinfo", align 1
@__param_str_bs = internal constant [12 x i8] c"null_blk.bs\00", align 1
@g_bs = internal global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_bs = internal constant %struct.kernel_param { ptr @__param_str_bs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_bs } }, section "__param", align 4
@__UNIQUE_ID_bstype297 = internal constant [25 x i8] c"null_blk.parmtype=bs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bs298 = internal constant [39 x i8] c"null_blk.parm=bs:Block size (in bytes)\00", section ".modinfo", align 1
@__param_str_max_sectors = internal constant [21 x i8] c"null_blk.max_sectors\00", align 1
@g_max_sectors = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_sectors = internal constant %struct.kernel_param { ptr @__param_str_max_sectors, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_max_sectors } }, section "__param", align 4
@__UNIQUE_ID_max_sectorstype299 = internal constant [34 x i8] c"null_blk.parmtype=max_sectors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_sectors300 = internal constant [70 x i8] c"null_blk.parm=max_sectors:Maximum size of a command (in 512B sectors)\00", section ".modinfo", align 1
@__param_str_nr_devices = internal constant [20 x i8] c"null_blk.nr_devices\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@nr_devices = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_nr_devices = internal constant %struct.kernel_param { ptr @__param_str_nr_devices, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @nr_devices } }, section "__param", align 4
@__UNIQUE_ID_nr_devicestype301 = internal constant [34 x i8] c"null_blk.parmtype=nr_devices:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_nr_devices302 = internal constant [55 x i8] c"null_blk.parm=nr_devices:Number of devices to register\00", section ".modinfo", align 1
@__param_str_blocking = internal constant [18 x i8] c"null_blk.blocking\00", align 1
@g_blocking = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_blocking = internal constant %struct.kernel_param { ptr @__param_str_blocking, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_blocking } }, section "__param", align 4
@__UNIQUE_ID_blockingtype303 = internal constant [32 x i8] c"null_blk.parmtype=blocking:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_blocking304 = internal constant [67 x i8] c"null_blk.parm=blocking:Register as a blocking blk-mq driver device\00", section ".modinfo", align 1
@__param_str_shared_tags = internal constant [21 x i8] c"null_blk.shared_tags\00", align 1
@shared_tags = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_shared_tags = internal constant %struct.kernel_param { ptr @__param_str_shared_tags, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @shared_tags } }, section "__param", align 4
@__UNIQUE_ID_shared_tagstype305 = internal constant [35 x i8] c"null_blk.parmtype=shared_tags:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_shared_tags306 = internal constant [67 x i8] c"null_blk.parm=shared_tags:Share tag set between devices for blk-mq\00", section ".modinfo", align 1
@__param_str_shared_tag_bitmap = internal constant [27 x i8] c"null_blk.shared_tag_bitmap\00", align 1
@g_shared_tag_bitmap = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_shared_tag_bitmap = internal constant %struct.kernel_param { ptr @__param_str_shared_tag_bitmap, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_shared_tag_bitmap } }, section "__param", align 4
@__UNIQUE_ID_shared_tag_bitmaptype307 = internal constant [41 x i8] c"null_blk.parmtype=shared_tag_bitmap:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_shared_tag_bitmap308 = internal constant [91 x i8] c"null_blk.parm=shared_tag_bitmap:Use shared tag bitmap for all submission queues for blk-mq\00", section ".modinfo", align 1
@__param_str_irqmode = internal constant [17 x i8] c"null_blk.irqmode\00", align 1
@null_irqmode_param_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @null_set_irqmode, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@g_irqmode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_irqmode = internal constant %struct.kernel_param { ptr @__param_str_irqmode, ptr null, ptr @null_irqmode_param_ops, i16 292, i8 6, i8 0, %union.anon.76 { ptr @g_irqmode } }, section "__param", align 4
@__UNIQUE_ID_irqmode309 = internal constant [73 x i8] c"null_blk.parm=irqmode:IRQ completion handler. 0-none, 1-softirq, 2-timer\00", section ".modinfo", align 1
@__param_str_completion_nsec = internal constant [25 x i8] c"null_blk.completion_nsec\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@g_completion_nsec = internal global { i32, [28 x i8] } { i32 10000, [28 x i8] zeroinitializer }, align 32
@__param_completion_nsec = internal constant %struct.kernel_param { ptr @__param_str_completion_nsec, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_completion_nsec } }, section "__param", align 4
@__UNIQUE_ID_completion_nsectype310 = internal constant [40 x i8] c"null_blk.parmtype=completion_nsec:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_completion_nsec311 = internal constant [94 x i8] c"null_blk.parm=completion_nsec:Time in ns to complete a request in hardware. Default: 10,000ns\00", section ".modinfo", align 1
@__param_str_hw_queue_depth = internal constant [24 x i8] c"null_blk.hw_queue_depth\00", align 1
@g_hw_queue_depth = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_hw_queue_depth = internal constant %struct.kernel_param { ptr @__param_str_hw_queue_depth, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_hw_queue_depth } }, section "__param", align 4
@__UNIQUE_ID_hw_queue_depthtype312 = internal constant [37 x i8] c"null_blk.parmtype=hw_queue_depth:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hw_queue_depth313 = internal constant [78 x i8] c"null_blk.parm=hw_queue_depth:Queue depth for each hardware queue. Default: 64\00", section ".modinfo", align 1
@__param_str_use_per_node_hctx = internal constant [27 x i8] c"null_blk.use_per_node_hctx\00", align 1
@g_use_per_node_hctx = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_per_node_hctx = internal constant %struct.kernel_param { ptr @__param_str_use_per_node_hctx, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_use_per_node_hctx } }, section "__param", align 4
@__UNIQUE_ID_use_per_node_hctxtype314 = internal constant [41 x i8] c"null_blk.parmtype=use_per_node_hctx:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_per_node_hctx315 = internal constant [100 x i8] c"null_blk.parm=use_per_node_hctx:Use per-node allocation for hardware context queues. Default: false\00", section ".modinfo", align 1
@__param_str_zoned = internal constant [15 x i8] c"null_blk.zoned\00", align 1
@g_zoned = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_zoned = internal constant %struct.kernel_param { ptr @__param_str_zoned, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_zoned } }, section "__param", align 4
@__UNIQUE_ID_zonedtype316 = internal constant [29 x i8] c"null_blk.parmtype=zoned:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_zoned317 = internal constant [85 x i8] c"null_blk.parm=zoned:Make device as a host-managed zoned block device. Default: false\00", section ".modinfo", align 1
@__param_str_zone_size = internal constant [19 x i8] c"null_blk.zone_size\00", align 1
@g_zone_size = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_zone_size = internal constant %struct.kernel_param { ptr @__param_str_zone_size, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_zone_size } }, section "__param", align 4
@__UNIQUE_ID_zone_sizetype318 = internal constant [34 x i8] c"null_blk.parmtype=zone_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_zone_size319 = internal constant [103 x i8] c"null_blk.parm=zone_size:Zone size in MB when block device is zoned. Must be power-of-two: Default: 256\00", section ".modinfo", align 1
@__param_str_zone_capacity = internal constant [23 x i8] c"null_blk.zone_capacity\00", align 1
@g_zone_capacity = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_zone_capacity = internal constant %struct.kernel_param { ptr @__param_str_zone_capacity, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_zone_capacity } }, section "__param", align 4
@__UNIQUE_ID_zone_capacitytype320 = internal constant [38 x i8] c"null_blk.parmtype=zone_capacity:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_zone_capacity321 = internal constant [135 x i8] c"null_blk.parm=zone_capacity:Zone capacity in MB when block device is zoned. Can be less than or equal to zone size. Default: Zone size\00", section ".modinfo", align 1
@__param_str_zone_nr_conv = internal constant [22 x i8] c"null_blk.zone_nr_conv\00", align 1
@g_zone_nr_conv = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_zone_nr_conv = internal constant %struct.kernel_param { ptr @__param_str_zone_nr_conv, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_zone_nr_conv } }, section "__param", align 4
@__UNIQUE_ID_zone_nr_convtype322 = internal constant [36 x i8] c"null_blk.parmtype=zone_nr_conv:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_zone_nr_conv323 = internal constant [95 x i8] c"null_blk.parm=zone_nr_conv:Number of conventional zones when block device is zoned. Default: 0\00", section ".modinfo", align 1
@__param_str_zone_max_open = internal constant [23 x i8] c"null_blk.zone_max_open\00", align 1
@g_zone_max_open = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_zone_max_open = internal constant %struct.kernel_param { ptr @__param_str_zone_max_open, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_zone_max_open } }, section "__param", align 4
@__UNIQUE_ID_zone_max_opentype324 = internal constant [37 x i8] c"null_blk.parmtype=zone_max_open:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_zone_max_open325 = internal constant [107 x i8] c"null_blk.parm=zone_max_open:Maximum number of open zones when block device is zoned. Default: 0 (no limit)\00", section ".modinfo", align 1
@__param_str_zone_max_active = internal constant [25 x i8] c"null_blk.zone_max_active\00", align 1
@g_zone_max_active = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_zone_max_active = internal constant %struct.kernel_param { ptr @__param_str_zone_max_active, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @g_zone_max_active } }, section "__param", align 4
@__UNIQUE_ID_zone_max_activetype326 = internal constant [39 x i8] c"null_blk.parmtype=zone_max_active:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_zone_max_active327 = internal constant [111 x i8] c"null_blk.parm=zone_max_active:Maximum number of active zones when block device is zoned. Default: 0 (no limit)\00", section ".modinfo", align 1
@nullb_subsys = internal global { %struct.configfs_subsystem, [52 x i8] } { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"nullb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @nullb_group_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@null_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nullb\00", [26 x i8] zeroinitializer }, align 32
@lock = internal global { %struct.mutex, [36 x i8] } zeroinitializer, align 32
@nullb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nullb_list, ptr @nullb_list }, [24 x i8] zeroinitializer }, align 32
@tag_set = internal global { %struct.blk_mq_tag_set, [40 x i8] } zeroinitializer, align 32
@__initcall__kmod_null_blk__363_2212_null_init6 = internal global ptr @null_init, section ".initcall6.init", align 4
@__exitcall_null_exit = internal global ptr @null_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author364 = internal constant [45 x i8] c"null_blk.author=Jens Axboe <axboe@kernel.dk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file365 = internal constant [46 x i8] c"null_blk.file=drivers/block/null_blk/null_blk\00", section ".modinfo", align 1
@__UNIQUE_ID_license366 = internal constant [21 x i8] c"null_blk.license=GPL\00", section ".modinfo", align 1
@g_timeout_str = internal global { [80 x i8], [48 x i8] } zeroinitializer, align 32
@g_requeue_str = internal global { [80 x i8], [48 x i8] } zeroinitializer, align 32
@g_init_hctx_str = internal global { [80 x i8], [48 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/null_blk/main.c\00", [34 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@nullb_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @nullb_group_ops, ptr @nullb_group_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nullb_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @nullb_group_make_item, ptr null, ptr null, ptr null, ptr @nullb_group_drop_item }, [44 x i8] zeroinitializer }, align 32
@nullb_group_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @memb_group_attr_features, ptr null], [24 x i8] zeroinitializer }, align 32
@nullb_device_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @nullb_device_ops, ptr null, ptr @nullb_device_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@nullb_device_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @nullb_device_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@nullb_device_attrs = internal global { [27 x ptr], [52 x i8] } { [27 x ptr] [ptr @nullb_device_attr_size, ptr @nullb_device_attr_completion_nsec, ptr @nullb_device_attr_submit_queues, ptr @nullb_device_attr_poll_queues, ptr @nullb_device_attr_home_node, ptr @nullb_device_attr_queue_mode, ptr @nullb_device_attr_blocksize, ptr @nullb_device_attr_max_sectors, ptr @nullb_device_attr_irqmode, ptr @nullb_device_attr_hw_queue_depth, ptr @nullb_device_attr_index, ptr @nullb_device_attr_blocking, ptr @nullb_device_attr_use_per_node_hctx, ptr @nullb_device_attr_power, ptr @nullb_device_attr_memory_backed, ptr @nullb_device_attr_discard, ptr @nullb_device_attr_mbps, ptr @nullb_device_attr_cache_size, ptr @nullb_device_attr_badblocks, ptr @nullb_device_attr_zoned, ptr @nullb_device_attr_zone_size, ptr @nullb_device_attr_zone_capacity, ptr @nullb_device_attr_zone_nr_conv, ptr @nullb_device_attr_zone_max_open, ptr @nullb_device_attr_zone_max_active, ptr @nullb_device_attr_virt_boundary, ptr null], [52 x i8] zeroinitializer }, align 32
@nullb_device_attr_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr null, i16 420, ptr @nullb_device_size_show, ptr @nullb_device_size_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_completion_nsec = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 420, ptr @nullb_device_completion_nsec_show, ptr @nullb_device_completion_nsec_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_submit_queues = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 420, ptr @nullb_device_submit_queues_show, ptr @nullb_device_submit_queues_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_poll_queues = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.12, ptr null, i16 420, ptr @nullb_device_poll_queues_show, ptr @nullb_device_poll_queues_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_home_node = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.13, ptr null, i16 420, ptr @nullb_device_home_node_show, ptr @nullb_device_home_node_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_queue_mode = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.14, ptr null, i16 420, ptr @nullb_device_queue_mode_show, ptr @nullb_device_queue_mode_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_blocksize = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 420, ptr @nullb_device_blocksize_show, ptr @nullb_device_blocksize_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_max_sectors = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.16, ptr null, i16 420, ptr @nullb_device_max_sectors_show, ptr @nullb_device_max_sectors_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_irqmode = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.17, ptr null, i16 420, ptr @nullb_device_irqmode_show, ptr @nullb_device_irqmode_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_hw_queue_depth = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.18, ptr null, i16 420, ptr @nullb_device_hw_queue_depth_show, ptr @nullb_device_hw_queue_depth_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_index = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.19, ptr null, i16 420, ptr @nullb_device_index_show, ptr @nullb_device_index_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_blocking = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.20, ptr null, i16 420, ptr @nullb_device_blocking_show, ptr @nullb_device_blocking_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_use_per_node_hctx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.21, ptr null, i16 420, ptr @nullb_device_use_per_node_hctx_show, ptr @nullb_device_use_per_node_hctx_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_power = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 420, ptr @nullb_device_power_show, ptr @nullb_device_power_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_memory_backed = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.43, ptr null, i16 420, ptr @nullb_device_memory_backed_show, ptr @nullb_device_memory_backed_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_discard = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.44, ptr null, i16 420, ptr @nullb_device_discard_show, ptr @nullb_device_discard_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_mbps = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.45, ptr null, i16 420, ptr @nullb_device_mbps_show, ptr @nullb_device_mbps_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_cache_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.46, ptr null, i16 420, ptr @nullb_device_cache_size_show, ptr @nullb_device_cache_size_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_badblocks = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.47, ptr null, i16 420, ptr @nullb_device_badblocks_show, ptr @nullb_device_badblocks_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_zoned = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.48, ptr null, i16 420, ptr @nullb_device_zoned_show, ptr @nullb_device_zoned_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_zone_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.49, ptr null, i16 420, ptr @nullb_device_zone_size_show, ptr @nullb_device_zone_size_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_zone_capacity = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.50, ptr null, i16 420, ptr @nullb_device_zone_capacity_show, ptr @nullb_device_zone_capacity_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_zone_nr_conv = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.51, ptr null, i16 420, ptr @nullb_device_zone_nr_conv_show, ptr @nullb_device_zone_nr_conv_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_zone_max_open = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.52, ptr null, i16 420, ptr @nullb_device_zone_max_open_show, ptr @nullb_device_zone_max_open_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_zone_max_active = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.53, ptr null, i16 420, ptr @nullb_device_zone_max_active_show, ptr @nullb_device_zone_max_active_store }, [44 x i8] zeroinitializer }, align 32
@nullb_device_attr_virt_boundary = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.54, ptr null, i16 420, ptr @nullb_device_virt_boundary_show, ptr @nullb_device_virt_boundary_store }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"completion_nsec\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"submit_queues\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"poll_queues\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"home_node\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"queue_mode\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"blocksize\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_sectors\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irqmode\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hw_queue_depth\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"blocking\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"use_per_node_hctx\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@null_add_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&nullb->lock\00", [19 x i8] zeroinitializer }, align 32
@null_add_dev.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@null_add_dev.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nullb_indexes = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nullb%d\00", [24 x i8] zeroinitializer }, align 32
@null_validate_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.1, i32 1941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013null_blk: zone_size must be power-of-two\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"null_validate_conf\00", [45 x i8] zeroinitializer }, align 32
@null_validate_conf._entry_ptr = internal global ptr @null_validate_conf._entry, section ".printk_index", align 4
@null_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @null_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @null_timeout_rq, ptr @null_poll, ptr @null_complete_rq, ptr @null_init_hctx, ptr @null_exit_hctx, ptr null, ptr null, ptr null, ptr null, ptr @null_map_queues, ptr null }, [56 x i8] zeroinitializer }, align 32
@null_timeout_attr = internal global { %struct.fault_attr, [40 x i8] } { %struct.fault_attr { i32 0, i32 1, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 2, i8 0, i32 32, i32 0, i32 -1, i32 0, i32 0, i32 0, %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0 }, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ratelimit_state.lock\00", [43 x i8] zeroinitializer }, align 32
@null_requeue_attr = internal global { %struct.fault_attr, [40 x i8] } { %struct.fault_attr { i32 0, i32 1, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 2, i8 0, i32 32, i32 0, i32 -1, i32 0, i32 0, i32 0, %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0 }, ptr null }, [40 x i8] zeroinitializer }, align 32
@null_timeout_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.1, i32 1591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016null_blk: rq %p timed out\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"null_timeout_rq\00", [16 x i8] zeroinitializer }, align 32
@null_timeout_rq._entry_ptr = internal global ptr @null_timeout_rq._entry, section ".printk_index", align 4
@null_init_hctx_attr = internal global { %struct.fault_attr, [40 x i8] } { %struct.fault_attr { i32 0, i32 1, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 2, i8 0, i32 32, i32 0, i32 -1, i32 0, i32 0, i32 0, %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0 }, ptr null }, [40 x i8] zeroinitializer }, align 32
@null_init_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&nq->wait\00", [22 x i8] zeroinitializer }, align 32
@null_init_queue.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&nq->poll_lock\00", [17 x i8] zeroinitializer }, align 32
@null_map_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.1, i32 1531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014null_blk: tag set has unexpected nr_hw_queues: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"null_map_queues\00", [16 x i8] zeroinitializer }, align 32
@null_map_queues._entry_ptr = internal global ptr @null_map_queues._entry, section ".printk_index", align 4
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nullb_indexes.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@null_config_discard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.1, i32 1763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016null_blk: discard option is ignored without memory backing\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"null_config_discard\00", [44 x i8] zeroinitializer }, align 32
@null_config_discard._entry_ptr = internal global ptr @null_config_discard._entry, section ".printk_index", align 4
@null_config_discard._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.1, i32 1769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016null_blk: discard option is ignored in zoned mode\0A\00", [43 x i8] zeroinitializer }, align 32
@null_config_discard._entry_ptr.42 = internal global ptr @null_config_discard._entry.40, section ".printk_index", align 4
@null_rq_ops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @null_report_zones, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@null_bio_ops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr @null_submit_bio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @null_report_zones, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory_backed\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mbps\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache_size\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"badblocks\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"zoned\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zone_size\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zone_capacity\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zone_nr_conv\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zone_max_open\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zone_max_active\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"virt_boundary\00", [18 x i8] zeroinitializer }, align 32
@memb_group_attr_features = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.55, ptr null, i16 292, ptr @memb_group_features_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"memory_backed,discard,bandwidth,cache,badblocks,zoned,zone_size,zone_capacity,zone_nr_conv,zone_max_open,zone_max_active,blocksize,max_sectors,virt_boundary\0A\00", [34 x i8] zeroinitializer }, align 32
@null_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.1, i32 2105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014null_blk: invalid block size\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"null_init\00", [22 x i8] zeroinitializer }, align 32
@null_init._entry_ptr = internal global ptr @null_init._entry, section ".printk_index", align 4
@null_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.1, i32 2106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014null_blk: defaults block size to %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@null_init._entry_ptr.61 = internal global ptr @null_init._entry.59, section ".printk_index", align 4
@null_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.1, i32 2111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014null_blk: invalid max sectors\0A\00", [63 x i8] zeroinitializer }, align 32
@null_init._entry_ptr.64 = internal global ptr @null_init._entry.62, section ".printk_index", align 4
@null_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.1, i32 2112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014null_blk: defaults max sectors to %u\0A\00", [56 x i8] zeroinitializer }, align 32
@null_init._entry_ptr.67 = internal global ptr @null_init._entry.65, section ".printk_index", align 4
@null_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.1, i32 2117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013null_blk: invalid home_node value\0A\00", [59 x i8] zeroinitializer }, align 32
@null_init._entry_ptr.70 = internal global ptr @null_init._entry.68, section ".printk_index", align 4
@null_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.58, ptr @.str.1, i32 2122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013null_blk: legacy IO path no longer available\0A\00", [48 x i8] zeroinitializer }, align 32
@null_init._entry_ptr.73 = internal global ptr @null_init._entry.71, section ".printk_index", align 4
@null_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.58, ptr @.str.1, i32 2128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014null_blk: submit_queues param is set to %u.\0A\00", [49 x i8] zeroinitializer }, align 32
@null_init._entry_ptr.76 = internal global ptr @null_init._entry.74, section ".printk_index", align 4
@null_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&nullb_subsys.su_mutex\00", [41 x i8] zeroinitializer }, align 32
@null_init.__key.78 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"&lock\00", [26 x i8] zeroinitializer }, align 32
@null_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.58, ptr @.str.1, i32 2170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016null_blk: module loaded\0A\00", [37 x i8] zeroinitializer }, align 32
@null_init._entry_ptr.82 = internal global ptr @null_init._entry.80, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"g_virt_boundary\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 83, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"g_no_sched\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 87, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"g_submit_queues\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 91, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"g_poll_queues\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 95, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"g_home_node\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 99, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [26 x i8] c"null_queue_mode_param_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 143, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"g_queue_mode\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 121, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant [5 x i8] c"g_gb\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 151, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [5 x i8] c"g_bs\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 155, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"g_max_sectors\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 159, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"nr_devices\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 163, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant [11 x i8] c"g_blocking\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 167, i32 13 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"shared_tags\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 171, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"g_shared_tag_bitmap\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 175, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant [23 x i8] c"null_irqmode_param_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 187, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant [10 x i8] c"g_irqmode\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 179, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"g_completion_nsec\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 195, i32 22 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"g_hw_queue_depth\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 199, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"g_use_per_node_hctx\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 203, i32 13 }
@___asan_gen_.147 = private unnamed_addr constant [8 x i8] c"g_zoned\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 207, i32 13 }
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"g_zone_size\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 211, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"g_zone_capacity\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 215, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant [15 x i8] c"g_zone_nr_conv\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 219, i32 21 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"g_zone_max_open\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 223, i32 21 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"g_zone_max_active\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 227, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"nullb_subsys\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 610, i32 34 }
@___asan_gen_.168 = private unnamed_addr constant [11 x i8] c"null_major\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 67, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2195, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 66, i32 21 }
@___asan_gen_.177 = private unnamed_addr constant [11 x i8] c"nullb_list\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 65, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant [8 x i8] c"tag_set\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 69, i32 30 }
@___asan_gen_.183 = private unnamed_addr constant [14 x i8] c"g_timeout_str\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 108, i32 13 }
@___asan_gen_.186 = private unnamed_addr constant [14 x i8] c"g_requeue_str\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 112, i32 13 }
@___asan_gen_.189 = private unnamed_addr constant [16 x i8] c"g_init_hctx_str\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 116, i32 13 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 834, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 36, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"nullb_group_type\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 604, i32 38 }
@___asan_gen_.207 = private unnamed_addr constant [16 x i8] c"nullb_group_ops\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 599, i32 41 }
@___asan_gen_.210 = private unnamed_addr constant [18 x i8] c"nullb_group_attrs\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 594, i32 35 }
@___asan_gen_.213 = private unnamed_addr constant [18 x i8] c"nullb_device_type\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 551, i32 38 }
@___asan_gen_.220 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 378, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"nullb_device_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 547, i32 40 }
@___asan_gen_.225 = private unnamed_addr constant [19 x i8] c"nullb_device_attrs\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 509, i32 35 }
@___asan_gen_.228 = private unnamed_addr constant [23 x i8] c"nullb_device_attr_size\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [34 x i8] c"nullb_device_attr_completion_nsec\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [32 x i8] c"nullb_device_attr_submit_queues\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [30 x i8] c"nullb_device_attr_poll_queues\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [28 x i8] c"nullb_device_attr_home_node\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [29 x i8] c"nullb_device_attr_queue_mode\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [28 x i8] c"nullb_device_attr_blocksize\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [30 x i8] c"nullb_device_attr_max_sectors\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [26 x i8] c"nullb_device_attr_irqmode\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [33 x i8] c"nullb_device_attr_hw_queue_depth\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [24 x i8] c"nullb_device_attr_index\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [27 x i8] c"nullb_device_attr_blocking\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [36 x i8] c"nullb_device_attr_use_per_node_hctx\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [24 x i8] c"nullb_device_attr_power\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [32 x i8] c"nullb_device_attr_memory_backed\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [26 x i8] c"nullb_device_attr_discard\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [23 x i8] c"nullb_device_attr_mbps\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [29 x i8] c"nullb_device_attr_cache_size\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [28 x i8] c"nullb_device_attr_badblocks\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [24 x i8] c"nullb_device_attr_zoned\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [28 x i8] c"nullb_device_attr_zone_size\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [32 x i8] c"nullb_device_attr_zone_capacity\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [31 x i8] c"nullb_device_attr_zone_nr_conv\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [32 x i8] c"nullb_device_attr_zone_max_open\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [34 x i8] c"nullb_device_attr_zone_max_active\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [32 x i8] c"nullb_device_attr_virt_boundary\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 390, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 250, i32 35 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 391, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 392, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 244, i32 35 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 393, i32 1 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 394, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 395, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 396, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 397, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 398, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 399, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 400, i32 1 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 401, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 402, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 454, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1992, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2014, i32 17 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2022, i32 17 }
@___asan_gen_.366 = private unnamed_addr constant [14 x i8] c"nullb_indexes\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2070, i32 28 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1941, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [12 x i8] c"null_mq_ops\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1714, i32 32 }
@___asan_gen_.384 = private unnamed_addr constant [18 x i8] c"null_timeout_attr\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 20, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant [18 x i8] c"null_requeue_attr\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 21, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1591, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c"null_init_hctx_attr\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 22, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1688, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1692, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1530, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 68, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1763, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1769, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant [12 x i8] c"null_rq_ops\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1785, i32 45 }
@___asan_gen_.447 = private unnamed_addr constant [13 x i8] c"null_bio_ops\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 1779, i32 45 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 403, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 404, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 405, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 406, i32 1 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 507, i32 1 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 407, i32 1 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 408, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 409, i32 1 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 410, i32 1 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 411, i32 1 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 412, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 413, i32 1 }
@___asan_gen_.486 = private unnamed_addr constant [25 x i8] c"memb_group_attr_features\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 592, i32 1 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 589, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2105, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2106, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2111, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2112, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2117, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2122, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2127, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2143, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2149, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.556 = private constant [33 x i8] c"../drivers/block/null_blk/main.c\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.556, i32 2170, i32 2 }
@llvm.compiler.used = appending global [251 x ptr] [ptr @__UNIQUE_ID_author364, ptr @__UNIQUE_ID_blocking304, ptr @__UNIQUE_ID_blockingtype303, ptr @__UNIQUE_ID_bs298, ptr @__UNIQUE_ID_bstype297, ptr @__UNIQUE_ID_completion_nsec311, ptr @__UNIQUE_ID_completion_nsectype310, ptr @__UNIQUE_ID_file365, ptr @__UNIQUE_ID_gb296, ptr @__UNIQUE_ID_gbtype295, ptr @__UNIQUE_ID_home_node287, ptr @__UNIQUE_ID_home_nodetype286, ptr @__UNIQUE_ID_hw_queue_depth313, ptr @__UNIQUE_ID_hw_queue_depthtype312, ptr @__UNIQUE_ID_init_hctx293, ptr @__UNIQUE_ID_init_hctxtype292, ptr @__UNIQUE_ID_irqmode309, ptr @__UNIQUE_ID_license366, ptr @__UNIQUE_ID_max_sectors300, ptr @__UNIQUE_ID_max_sectorstype299, ptr @__UNIQUE_ID_no_sched281, ptr @__UNIQUE_ID_no_schedtype280, ptr @__UNIQUE_ID_nr_devices302, ptr @__UNIQUE_ID_nr_devicestype301, ptr @__UNIQUE_ID_poll_queues285, ptr @__UNIQUE_ID_poll_queuestype284, ptr @__UNIQUE_ID_queue_mode294, ptr @__UNIQUE_ID_requeue291, ptr @__UNIQUE_ID_requeuetype290, ptr @__UNIQUE_ID_shared_tag_bitmap308, ptr @__UNIQUE_ID_shared_tag_bitmaptype307, ptr @__UNIQUE_ID_shared_tags306, ptr @__UNIQUE_ID_shared_tagstype305, ptr @__UNIQUE_ID_submit_queues283, ptr @__UNIQUE_ID_submit_queuestype282, ptr @__UNIQUE_ID_timeout289, ptr @__UNIQUE_ID_timeouttype288, ptr @__UNIQUE_ID_use_per_node_hctx315, ptr @__UNIQUE_ID_use_per_node_hctxtype314, ptr @__UNIQUE_ID_virt_boundary279, ptr @__UNIQUE_ID_virt_boundarytype278, ptr @__UNIQUE_ID_zone_capacity321, ptr @__UNIQUE_ID_zone_capacitytype320, ptr @__UNIQUE_ID_zone_max_active327, ptr @__UNIQUE_ID_zone_max_activetype326, ptr @__UNIQUE_ID_zone_max_open325, ptr @__UNIQUE_ID_zone_max_opentype324, ptr @__UNIQUE_ID_zone_nr_conv323, ptr @__UNIQUE_ID_zone_nr_convtype322, ptr @__UNIQUE_ID_zone_size319, ptr @__UNIQUE_ID_zone_sizetype318, ptr @__UNIQUE_ID_zoned317, ptr @__UNIQUE_ID_zonedtype316, ptr @__exitcall_null_exit, ptr @__initcall__kmod_null_blk__363_2212_null_init6, ptr @__param_blocking, ptr @__param_bs, ptr @__param_completion_nsec, ptr @__param_gb, ptr @__param_home_node, ptr @__param_hw_queue_depth, ptr @__param_init_hctx, ptr @__param_irqmode, ptr @__param_max_sectors, ptr @__param_no_sched, ptr @__param_nr_devices, ptr @__param_poll_queues, ptr @__param_queue_mode, ptr @__param_requeue, ptr @__param_shared_tag_bitmap, ptr @__param_shared_tags, ptr @__param_submit_queues, ptr @__param_timeout, ptr @__param_use_per_node_hctx, ptr @__param_virt_boundary, ptr @__param_zone_capacity, ptr @__param_zone_max_active, ptr @__param_zone_max_open, ptr @__param_zone_nr_conv, ptr @__param_zone_size, ptr @__param_zoned, ptr @null_config_discard._entry, ptr @null_config_discard._entry.40, ptr @null_config_discard._entry_ptr, ptr @null_config_discard._entry_ptr.42, ptr @null_exit, ptr @null_init._entry, ptr @null_init._entry.59, ptr @null_init._entry.62, ptr @null_init._entry.65, ptr @null_init._entry.68, ptr @null_init._entry.71, ptr @null_init._entry.74, ptr @null_init._entry.80, ptr @null_init._entry_ptr, ptr @null_init._entry_ptr.61, ptr @null_init._entry_ptr.64, ptr @null_init._entry_ptr.67, ptr @null_init._entry_ptr.70, ptr @null_init._entry_ptr.73, ptr @null_init._entry_ptr.76, ptr @null_init._entry_ptr.82, ptr @null_map_queues._entry, ptr @null_map_queues._entry_ptr, ptr @null_timeout_rq._entry, ptr @null_timeout_rq._entry_ptr, ptr @null_validate_conf._entry, ptr @null_validate_conf._entry_ptr, ptr @g_virt_boundary, ptr @g_no_sched, ptr @g_submit_queues, ptr @g_poll_queues, ptr @g_home_node, ptr @null_queue_mode_param_ops, ptr @g_queue_mode, ptr @g_gb, ptr @g_bs, ptr @g_max_sectors, ptr @nr_devices, ptr @g_blocking, ptr @shared_tags, ptr @g_shared_tag_bitmap, ptr @null_irqmode_param_ops, ptr @g_irqmode, ptr @g_completion_nsec, ptr @g_hw_queue_depth, ptr @g_use_per_node_hctx, ptr @g_zoned, ptr @g_zone_size, ptr @g_zone_capacity, ptr @g_zone_nr_conv, ptr @g_zone_max_open, ptr @g_zone_max_active, ptr @nullb_subsys, ptr @null_major, ptr @.str, ptr @lock, ptr @nullb_list, ptr @tag_set, ptr @g_timeout_str, ptr @g_requeue_str, ptr @g_init_hctx_str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nullb_group_type, ptr @nullb_group_ops, ptr @nullb_group_attrs, ptr @nullb_device_type, ptr @xa_init_flags.__key, ptr @.str.6, ptr @nullb_device_ops, ptr @nullb_device_attrs, ptr @nullb_device_attr_size, ptr @nullb_device_attr_completion_nsec, ptr @nullb_device_attr_submit_queues, ptr @nullb_device_attr_poll_queues, ptr @nullb_device_attr_home_node, ptr @nullb_device_attr_queue_mode, ptr @nullb_device_attr_blocksize, ptr @nullb_device_attr_max_sectors, ptr @nullb_device_attr_irqmode, ptr @nullb_device_attr_hw_queue_depth, ptr @nullb_device_attr_index, ptr @nullb_device_attr_blocking, ptr @nullb_device_attr_use_per_node_hctx, ptr @nullb_device_attr_power, ptr @nullb_device_attr_memory_backed, ptr @nullb_device_attr_discard, ptr @nullb_device_attr_mbps, ptr @nullb_device_attr_cache_size, ptr @nullb_device_attr_badblocks, ptr @nullb_device_attr_zoned, ptr @nullb_device_attr_zone_size, ptr @nullb_device_attr_zone_capacity, ptr @nullb_device_attr_zone_nr_conv, ptr @nullb_device_attr_zone_max_open, ptr @nullb_device_attr_zone_max_active, ptr @nullb_device_attr_virt_boundary, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @null_add_dev.__key, ptr @.str.23, ptr @null_add_dev.__key.24, ptr @null_add_dev.__key.25, ptr @nullb_indexes, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @null_mq_ops, ptr @null_timeout_attr, ptr @.str.29, ptr @null_requeue_attr, ptr @.str.30, ptr @.str.31, ptr @null_init_hctx_attr, ptr @null_init_queue.__key, ptr @.str.32, ptr @null_init_queue.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @null_rq_ops, ptr @null_bio_ops, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @memb_group_attr_features, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @null_init.__key, ptr @.str.77, ptr @null_init.__key.78, ptr @.str.79, ptr @.str.81], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_virt_boundary to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_no_sched to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_submit_queues to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_poll_queues to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_home_node to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_queue_mode_param_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_queue_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_gb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_bs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_max_sectors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_blocking to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shared_tags to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_shared_tag_bitmap to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_irqmode_param_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_irqmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_completion_nsec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_hw_queue_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_use_per_node_hctx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_zoned to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_zone_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_zone_capacity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_zone_nr_conv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_zone_max_open to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_zone_max_active to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tag_set to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_timeout_str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_requeue_str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_init_hctx_str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_group_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attrs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_completion_nsec to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_submit_queues to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_poll_queues to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_home_node to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_queue_mode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_blocksize to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_max_sectors to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_irqmode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_hw_queue_depth to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_index to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_blocking to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_use_per_node_hctx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_power to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_memory_backed to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_discard to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_mbps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_cache_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_badblocks to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_zoned to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_zone_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_zone_capacity to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_zone_nr_conv to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_zone_max_open to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_zone_max_active to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_device_attr_virt_boundary to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_add_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_add_dev.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_add_dev.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nullb_indexes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_validate_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_timeout_attr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_requeue_attr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_timeout_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_hctx_attr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_queue.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_map_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_config_discard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_config_discard._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_rq_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_bio_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memb_group_attr_features to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init.__key.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @null_handle_discard(ptr nocapture noundef readonly %dev, i64 noundef %sector, i64 noundef %nr_sectors) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %nr_sectors.tr = trunc i64 %nr_sectors to i32
  %conv = shl i32 %nr_sectors.tr, 9
  %lock = getelementptr inbounds %struct.nullb, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp.not19 = icmp eq i32 %conv, 0
  br i1 %cmp.not19, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %blocksize = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 30
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %sector.addr.021 = phi i64 [ %sector, %while.body.lr.ph ], [ %add, %if.end.while.body_crit_edge ]
  %n.020 = phi i32 [ %conv, %while.body.lr.ph ], [ %sub, %if.end.while.body_crit_edge ]
  %2 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocksize, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %n.020, i32 %3)
  tail call fastcc void @null_free_sector(ptr noundef %1, i64 noundef %sector.addr.021, i1 noundef zeroext false)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %flags.i = getelementptr inbounds %struct.nullb_device, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @null_free_sector(ptr noundef %1, i64 noundef %sector.addr.021, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %shr = lshr i32 %4, 9
  %conv5 = zext i32 %shr to i64
  %add = add i64 %sector.addr.021, %conv5
  %sub = sub i32 %n.020, %4
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  ret i8 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @null_free_sector(ptr nocapture noundef readonly %nullb, i64 noundef %sector, i1 noundef zeroext %is_cache) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nullb, align 8
  %cache = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 3
  %data = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 2
  %cond = select i1 %is_cache, ptr %cache, ptr %data
  %shr = lshr i64 %sector, 3
  %conv2 = trunc i64 %shr to i32
  %call = tail call ptr @radix_tree_lookup(ptr noundef %cond, i32 noundef %conv2) #17
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then:                                          ; preds = %entry
  %2 = trunc i64 %sector to i32
  %conv = and i32 %2, 7
  %bitmap = getelementptr inbounds %struct.nullb_page, ptr %call, i32 0, i32 1
  %shl.i = shl nuw nsw i32 1, %conv
  %neg.i = xor i32 %shl.i, -1
  %3 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bitmap, align 4
  %and.i = and i32 %4, %neg.i
  store i32 %and.i, ptr %bitmap, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %bitmap, i32 noundef 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 8
  br i1 %cmp.i, label %if.then5, label %if.then.if.end34_crit_edge

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then5:                                         ; preds = %if.then
  %call7 = tail call ptr @radix_tree_delete_item(ptr noundef %cond, i32 noundef %conv2, ptr noundef nonnull %call) #17
  %cmp.not = icmp eq ptr %call7, %call
  br i1 %cmp.not, label %if.then5.if.end_crit_edge, label %do.end, !prof !448

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 834, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then5.if.end_crit_edge
  %bitmap.i47 = getelementptr inbounds %struct.nullb_page, ptr %call7, i32 0, i32 1
  %5 = ptrtoint ptr %bitmap.i47 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bitmap.i47, align 4
  %or.i.i = or i32 %6, 256
  store i32 %or.i.i, ptr %bitmap.i47, align 4
  %7 = load volatile i32, ptr %bitmap.i47, align 4
  %8 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.null_free_page.exit_crit_edge

if.end.null_free_page.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_free_page.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7, align 4
  tail call void @__free_pages(ptr noundef %10, i32 noundef 0) #17
  tail call void @kfree(ptr noundef %call7) #17
  br label %null_free_page.exit

null_free_page.exit:                              ; preds = %if.end.i, %if.end.null_free_page.exit_crit_edge
  br i1 %is_cache, label %if.then30, label %null_free_page.exit.if.end34_crit_edge

null_free_page.exit.if.end34_crit_edge:           ; preds = %null_free_page.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then30:                                        ; preds = %null_free_page.exit
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nullb, align 8
  %curr_cache = getelementptr inbounds %struct.nullb_device, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %curr_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curr_cache, align 4
  %sub = add i32 %14, -4096
  store i32 %sub, ptr %curr_cache, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %null_free_page.exit.if.end34_crit_edge, %if.then.if.end34_crit_edge, %entry.if.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @null_process_cmd(ptr nocapture noundef readonly %cmd, i32 noundef %op, i64 noundef %sector, i32 noundef %nr_sectors) local_unnamed_addr #0 align 64 {
entry:
  %first_bad.i = alloca i64, align 8
  %bad_sectors.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nq = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %nq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nq, align 8
  %dev1 = getelementptr inbounds %struct.nullb_queue, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %shift = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not = icmp eq i32 %5, -1
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then:                                          ; preds = %entry
  %badblocks.i = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %first_bad.i) #17
  %6 = ptrtoint ptr %first_bad.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %first_bad.i, align 8, !annotation !449
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_sectors.i) #17
  %7 = ptrtoint ptr %bad_sectors.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %bad_sectors.i, align 4, !annotation !449
  %call.i = call i32 @badblocks_check(ptr noundef %badblocks.i, i64 noundef %sector, i32 noundef %nr_sectors, ptr noundef nonnull %first_bad.i, ptr noundef nonnull %bad_sectors.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_sectors.i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %first_bad.i) #17
  br i1 %tobool.not.i, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %memory_backed = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 39
  %8 = ptrtoint ptr %memory_backed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %memory_backed, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.then7

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then7:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %nq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nq, align 8
  %dev1.i = getelementptr inbounds %struct.nullb_queue, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %op)
  %cmp.i = icmp eq i32 %op, 3
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %conv.i.i = shl i32 %nr_sectors, 9
  %lock.i.i = getelementptr inbounds %struct.nullb, ptr %15, i32 0, i32 11
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp.not19.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %cmp.not19.i.i, label %if.then.i.null_handle_discard.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.then.i.null_handle_discard.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_handle_discard.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then.i
  %blocksize.i.i = getelementptr inbounds %struct.nullb_device, ptr %13, i32 0, i32 30
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %sector.addr.021.i.i = phi i64 [ %sector, %while.body.lr.ph.i.i ], [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %n.020.i.i = phi i32 [ %conv.i.i, %while.body.lr.ph.i.i ], [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %16 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blocksize.i.i, align 8
  %18 = call i32 @llvm.umin.i32(i32 %n.020.i.i, i32 %17) #17
  call fastcc void @null_free_sector(ptr noundef %15, i64 noundef %sector.addr.021.i.i, i1 noundef zeroext false) #17
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %15, align 8
  %flags.i.i.i = getelementptr inbounds %struct.nullb_device, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i.i.i, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @null_free_sector(ptr noundef %15, i64 noundef %sector.addr.021.i.i, i1 noundef zeroext true) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %shr.i.i = lshr i32 %18, 9
  %conv5.i.i = zext i32 %shr.i.i to i64
  %add.i.i = add i64 %sector.addr.021.i.i, %conv5.i.i
  %sub.i.i = sub i32 %n.020.i.i, %18
  %cmp.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.null_handle_discard.exit.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

if.end.i.i.null_handle_discard.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_handle_discard.exit.i

null_handle_discard.exit.i:                       ; preds = %if.end.i.i.null_handle_discard.exit.i_crit_edge, %if.then.i.null_handle_discard.exit.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #17
  br label %cleanup

if.end.i:                                         ; preds = %if.then7
  %queue_mode.i = getelementptr inbounds %struct.nullb_device, ptr %13, i32 0, i32 29
  %24 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %queue_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2.i = icmp eq i32 %25, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  %bio1.i.i = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 1
  %26 = ptrtoint ptr %bio1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bio1.i.i, align 4
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %13, align 8
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8
  %30 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bi_iter.i.i, align 8
  %lock.i12.i = getelementptr inbounds %struct.nullb, ptr %29, i32 0, i32 11
  call void @_raw_spin_lock_irq(ptr noundef %lock.i12.i) #17
  %iter.sroa.6.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %iter.sroa.6.0.copyload.i.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i.i)
  %tobool.not84.i.i = icmp eq i32 %iter.sroa.6.0.copyload.i.i, 0
  br i1 %tobool.not84.i.i, label %if.then3.i.if.end6.i_crit_edge, label %land.rhs.lr.ph.i.i

if.then3.i.if.end6.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

land.rhs.lr.ph.i.i:                               ; preds = %if.then3.i
  %iter.sroa.16.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8, i32 3
  %33 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %iter.sroa.16.0.copyload.i.i = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx.i.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 8, i32 2
  %34 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %iter.sroa.10.0.copyload.i.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i.i, align 4
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 20
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %sector.088.i.i = phi i64 [ %31, %land.rhs.lr.ph.i.i ], [ %add45.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.6.087.i.i = phi i32 [ %iter.sroa.6.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %sub.i.i.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.10.086.i.i = phi i32 [ %iter.sroa.10.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %iter.sroa.10.2.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.16.085.i.i = phi i32 [ %iter.sroa.16.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %iter.sroa.16.1.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %35 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bi_io_vec.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.bio_vec, ptr %36, i32 %iter.sroa.10.086.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %36, i32 %iter.sroa.10.086.i.i, i32 2
  %39 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bv_offset.i.i, align 4
  %add.i13.i = add i32 %40, %iter.sroa.16.085.i.i
  %div75.i.i = lshr i32 %add.i13.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %38, i32 %div75.i.i
  %bv_len12.i.i = getelementptr %struct.bio_vec, ptr %36, i32 %iter.sroa.10.086.i.i, i32 1
  %41 = ptrtoint ptr %bv_len12.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bv_len12.i.i, align 4
  %sub.i14.i = sub i32 %42, %iter.sroa.16.085.i.i
  %43 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.087.i.i, i32 %sub.i14.i) #17
  %rem.i.i = and i32 %add.i13.i, 4095
  %sub20.i.i = sub nuw nsw i32 4096, %rem.i.i
  %44 = call i32 @llvm.umin.i32(i32 %43, i32 %sub20.i.i) #17
  %45 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i.i.i, 0
  %47 = and i32 %46, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool40.i.i = icmp ne i32 %47, 0
  %call41.i.i = call fastcc i32 @null_transfer(ptr noundef %29, ptr noundef %add.ptr.i.i, i32 noundef %44, i32 noundef %rem.i.i, i1 noundef zeroext %tobool.i.i.i, i64 noundef %sector.088.i.i, i1 noundef zeroext %tobool40.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %tobool42.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.end.i16.i, label %land.rhs.i.i.if.end6.i_crit_edge

land.rhs.i.i.if.end6.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.end.i16.i:                                     ; preds = %land.rhs.i.i
  %shr.i15.i = lshr i32 %44, 9
  %conv44.i.i = zext i32 %shr.i15.i to i64
  %add45.i.i = add i64 %sector.088.i.i, %conv44.i.i
  %48 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i.i.i = and i32 %49, 255
  %50 = add nsw i32 %and.i.i.i.i, -3
  %switch.and.i.i.i.i = and i32 %50, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i.i)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %switch.and.i.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i.i, label %if.end.i16.i.bio_advance_iter_single.exit.i.i_crit_edge, label %if.else.i.i.i

if.end.i16.i.bio_advance_iter_single.exit.i.i_crit_edge: ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bio_advance_iter_single.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #19
  %51 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bi_io_vec.i.i, align 8
  %add.i.i.i.i = add i32 %44, %iter.sroa.16.085.i.i
  %bv_len.i.i.i.i = getelementptr %struct.bio_vec, ptr %52, i32 %iter.sroa.10.086.i.i, i32 1
  %53 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bv_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %54)
  %cmp.i.i.i.i = icmp eq i32 %add.i.i.i.i, %54
  %spec.select.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %inc.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %spec.select83.i.i = add i32 %iter.sroa.10.086.i.i, %inc.i.i.i.i
  br label %bio_advance_iter_single.exit.i.i

bio_advance_iter_single.exit.i.i:                 ; preds = %if.else.i.i.i, %if.end.i16.i.bio_advance_iter_single.exit.i.i_crit_edge
  %iter.sroa.16.1.i.i = phi i32 [ %iter.sroa.16.085.i.i, %if.end.i16.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i.i ]
  %iter.sroa.10.2.i.i = phi i32 [ %iter.sroa.10.086.i.i, %if.end.i16.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select83.i.i, %if.else.i.i.i ]
  %sub.i.i.i.i = sub i32 %iter.sroa.6.087.i.i, %44
  %tobool.not.i17.i = icmp eq i32 %sub.i.i.i.i, 0
  br i1 %tobool.not.i17.i, label %bio_advance_iter_single.exit.i.i.if.end6.i_crit_edge, label %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge

bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i.i

bio_advance_iter_single.exit.i.i.if.end6.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  %55 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cmd, align 8
  %57 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %13, align 8
  %__sector.i.i.i = getelementptr inbounds %struct.request, ptr %56, i32 0, i32 9
  %59 = ptrtoint ptr %__sector.i.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %__sector.i.i.i, align 8
  %lock.i20.i = getelementptr inbounds %struct.nullb, ptr %58, i32 0, i32 11
  call void @_raw_spin_lock_irq(ptr noundef %lock.i20.i) #17
  %bio.i.i = getelementptr inbounds %struct.request, ptr %56, i32 0, i32 10
  %61 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bio.i.i, align 8
  %tobool.not.i21.i = icmp eq ptr %62, null
  br i1 %tobool.not.i21.i, label %if.else.i.if.end6.i_crit_edge, label %for.body.lr.ph.i.i

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %56, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc75.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %sector.0127.i.i = phi i64 [ %60, %for.body.lr.ph.i.i ], [ %sector.1.lcssa.i.i, %for.inc75.i.i.for.body.i.i_crit_edge ]
  %storemerge125.i.i = phi ptr [ %62, %for.body.lr.ph.i.i ], [ %87, %for.inc75.i.i.for.body.i.i_crit_edge ]
  %iter.sroa.6.0.bi_iter.sroa_idx.i22.i = getelementptr inbounds %struct.bio, ptr %storemerge125.i.i, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i22.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %iter.sroa.6.0.copyload.i23.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i22.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i23.i)
  %tobool11.not119.i.i = icmp eq i32 %iter.sroa.6.0.copyload.i23.i, 0
  br i1 %tobool11.not119.i.i, label %for.body.i.i.for.inc75.i.i_crit_edge, label %land.rhs.lr.ph.i29.i

for.body.i.i.for.inc75.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc75.i.i

land.rhs.lr.ph.i29.i:                             ; preds = %for.body.i.i
  %iter.sroa.16.0.bi_iter.sroa_idx.i24.i = getelementptr inbounds %struct.bio, ptr %storemerge125.i.i, i32 0, i32 8, i32 3
  %64 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx.i24.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %iter.sroa.16.0.copyload.i25.i = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx.i24.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i26.i = getelementptr inbounds %struct.bio, ptr %storemerge125.i.i, i32 0, i32 8, i32 2
  %65 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i26.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %iter.sroa.10.0.copyload.i27.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i26.i, align 4
  %bi_io_vec.i28.i = getelementptr inbounds %struct.bio, ptr %storemerge125.i.i, i32 0, i32 20
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %storemerge125.i.i, i32 0, i32 2
  br label %land.rhs.i38.i

land.rhs.i38.i:                                   ; preds = %bio_advance_iter_single.exit.i53.i.land.rhs.i38.i_crit_edge, %land.rhs.lr.ph.i29.i
  %sector.1123.i.i = phi i64 [ %sector.0127.i.i, %land.rhs.lr.ph.i29.i ], [ %add71.i.i, %bio_advance_iter_single.exit.i53.i.land.rhs.i38.i_crit_edge ]
  %iter.sroa.6.0122.i.i = phi i32 [ %iter.sroa.6.0.copyload.i23.i, %land.rhs.lr.ph.i29.i ], [ %sub.i.i.i52.i, %bio_advance_iter_single.exit.i53.i.land.rhs.i38.i_crit_edge ]
  %iter.sroa.10.0121.i.i = phi i32 [ %iter.sroa.10.0.copyload.i27.i, %land.rhs.lr.ph.i29.i ], [ %iter.sroa.10.2.i51.i, %bio_advance_iter_single.exit.i53.i.land.rhs.i38.i_crit_edge ]
  %iter.sroa.16.0120.i.i = phi i32 [ %iter.sroa.16.0.copyload.i25.i, %land.rhs.lr.ph.i29.i ], [ %iter.sroa.16.1.i50.i, %bio_advance_iter_single.exit.i53.i.land.rhs.i38.i_crit_edge ]
  %66 = ptrtoint ptr %bi_io_vec.i28.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bi_io_vec.i28.i, align 8
  %arrayidx.i30.i = getelementptr %struct.bio_vec, ptr %67, i32 %iter.sroa.10.0121.i.i
  %68 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i30.i, align 4
  %bv_offset.i31.i = getelementptr %struct.bio_vec, ptr %67, i32 %iter.sroa.10.0121.i.i, i32 2
  %70 = ptrtoint ptr %bv_offset.i31.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bv_offset.i31.i, align 4
  %add.i32.i = add i32 %71, %iter.sroa.16.0120.i.i
  %div105.i.i = lshr i32 %add.i32.i, 12
  %add.ptr.i33.i = getelementptr %struct.page, ptr %69, i32 %div105.i.i
  %bv_len28.i.i = getelementptr %struct.bio_vec, ptr %67, i32 %iter.sroa.10.0121.i.i, i32 1
  %72 = ptrtoint ptr %bv_len28.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bv_len28.i.i, align 4
  %sub.i34.i = sub i32 %73, %iter.sroa.16.0120.i.i
  %74 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.0122.i.i, i32 %sub.i34.i) #17
  %rem.i35.i = and i32 %add.i32.i, 4095
  %sub40.i.i = sub nuw nsw i32 4096, %rem.i35.i
  %75 = call i32 @llvm.umin.i32(i32 %74, i32 %sub40.i.i) #17
  %76 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cmd_flags.i.i, align 4
  %and.i.i36.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36.i)
  %tobool.i.i37.i = icmp ne i32 %and.i.i36.i, 0
  %78 = and i32 %77, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool65.i.i = icmp ne i32 %78, 0
  %call66.i.i = call fastcc i32 @null_transfer(ptr noundef %58, ptr noundef %add.ptr.i33.i, i32 noundef %75, i32 noundef %rem.i35.i, i1 noundef zeroext %tobool.i.i37.i, i64 noundef %sector.1123.i.i, i1 noundef zeroext %tobool65.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i)
  %tobool67.not.i.i = icmp eq i32 %call66.i.i, 0
  br i1 %tobool67.not.i.i, label %if.end.i43.i, label %land.rhs.i38.i.if.end6.i_crit_edge

land.rhs.i38.i.if.end6.i_crit_edge:               ; preds = %land.rhs.i38.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.end.i43.i:                                     ; preds = %land.rhs.i38.i
  %shr.i39.i = lshr i32 %75, 9
  %conv70.i.i = zext i32 %shr.i39.i to i64
  %add71.i.i = add i64 %sector.1123.i.i, %conv70.i.i
  %79 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %and.i.i.i40.i = and i32 %80, 255
  %81 = add nsw i32 %and.i.i.i40.i, -3
  %switch.and.i.i.i41.i = and i32 %81, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i41.i)
  %switch.selectcmp.i.i.i42.i = icmp eq i32 %switch.and.i.i.i41.i, 0
  br i1 %switch.selectcmp.i.i.i42.i, label %if.end.i43.i.bio_advance_iter_single.exit.i53.i_crit_edge, label %if.else.i.i49.i

if.end.i43.i.bio_advance_iter_single.exit.i53.i_crit_edge: ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bio_advance_iter_single.exit.i53.i

if.else.i.i49.i:                                  ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #19
  %82 = ptrtoint ptr %bi_io_vec.i28.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bi_io_vec.i28.i, align 8
  %add.i.i.i44.i = add i32 %75, %iter.sroa.16.0120.i.i
  %bv_len.i.i.i45.i = getelementptr %struct.bio_vec, ptr %83, i32 %iter.sroa.10.0121.i.i, i32 1
  %84 = ptrtoint ptr %bv_len.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bv_len.i.i.i45.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i44.i, i32 %85)
  %cmp.i.i.i46.i = icmp eq i32 %add.i.i.i44.i, %85
  %spec.select.i47.i = select i1 %cmp.i.i.i46.i, i32 0, i32 %add.i.i.i44.i
  %inc.i.i.i48.i = zext i1 %cmp.i.i.i46.i to i32
  %spec.select117.i.i = add i32 %iter.sroa.10.0121.i.i, %inc.i.i.i48.i
  br label %bio_advance_iter_single.exit.i53.i

bio_advance_iter_single.exit.i53.i:               ; preds = %if.else.i.i49.i, %if.end.i43.i.bio_advance_iter_single.exit.i53.i_crit_edge
  %iter.sroa.16.1.i50.i = phi i32 [ %iter.sroa.16.0120.i.i, %if.end.i43.i.bio_advance_iter_single.exit.i53.i_crit_edge ], [ %spec.select.i47.i, %if.else.i.i49.i ]
  %iter.sroa.10.2.i51.i = phi i32 [ %iter.sroa.10.0121.i.i, %if.end.i43.i.bio_advance_iter_single.exit.i53.i_crit_edge ], [ %spec.select117.i.i, %if.else.i.i49.i ]
  %sub.i.i.i52.i = sub i32 %iter.sroa.6.0122.i.i, %75
  %tobool11.not.i.i = icmp eq i32 %sub.i.i.i52.i, 0
  br i1 %tobool11.not.i.i, label %bio_advance_iter_single.exit.i53.i.for.inc75.i.i_crit_edge, label %bio_advance_iter_single.exit.i53.i.land.rhs.i38.i_crit_edge

bio_advance_iter_single.exit.i53.i.land.rhs.i38.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i38.i

bio_advance_iter_single.exit.i53.i.for.inc75.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc75.i.i

for.inc75.i.i:                                    ; preds = %bio_advance_iter_single.exit.i53.i.for.inc75.i.i_crit_edge, %for.body.i.i.for.inc75.i.i_crit_edge
  %sector.1.lcssa.i.i = phi i64 [ %sector.0127.i.i, %for.body.i.i.for.inc75.i.i_crit_edge ], [ %add71.i.i, %bio_advance_iter_single.exit.i53.i.for.inc75.i.i_crit_edge ]
  %86 = ptrtoint ptr %storemerge125.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %storemerge125.i.i, align 8
  %tobool6.not.i.i = icmp eq ptr %87, null
  br i1 %tobool6.not.i.i, label %for.inc75.i.i.if.end6.i_crit_edge, label %for.inc75.i.i.for.body.i.i_crit_edge

for.inc75.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc75.i.i.if.end6.i_crit_edge:                ; preds = %for.inc75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6.i

if.end6.i:                                        ; preds = %for.inc75.i.i.if.end6.i_crit_edge, %land.rhs.i38.i.if.end6.i_crit_edge, %if.else.i.if.end6.i_crit_edge, %bio_advance_iter_single.exit.i.i.if.end6.i_crit_edge, %land.rhs.i.i.if.end6.i_crit_edge, %if.then3.i.if.end6.i_crit_edge
  %lock.i20.sink.i = phi ptr [ %lock.i12.i, %if.then3.i.if.end6.i_crit_edge ], [ %lock.i20.i, %if.else.i.if.end6.i_crit_edge ], [ %lock.i12.i, %land.rhs.i.i.if.end6.i_crit_edge ], [ %lock.i12.i, %bio_advance_iter_single.exit.i.i.if.end6.i_crit_edge ], [ %lock.i20.i, %land.rhs.i38.i.if.end6.i_crit_edge ], [ %lock.i20.i, %for.inc75.i.i.if.end6.i_crit_edge ]
  %err.0.i = phi i32 [ 0, %if.then3.i.if.end6.i_crit_edge ], [ 0, %if.else.i.if.end6.i_crit_edge ], [ 0, %bio_advance_iter_single.exit.i.i.if.end6.i_crit_edge ], [ %call41.i.i, %land.rhs.i.i.if.end6.i_crit_edge ], [ %call66.i.i, %land.rhs.i38.i.if.end6.i_crit_edge ], [ 0, %for.inc75.i.i.if.end6.i_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i20.sink.i) #17
  %call7.i = call zeroext i8 @errno_to_blk_status(i32 noundef %err.0.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %null_handle_discard.exit.i, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i8 [ 10, %if.then.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %null_handle_discard.exit.i ], [ %call7.i, %if.end6.i ]
  ret i8 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @null_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @nullb_subsys) #17
  %0 = load i32, ptr @null_major, align 4
  tail call void @unregister_blkdev(i32 noundef %0, ptr noundef nonnull @.str) #17
  tail call void @mutex_lock_nested(ptr noundef nonnull @lock, i32 noundef 0) #17
  %1 = load volatile ptr, ptr @nullb_list, align 4
  %cmp.i.not4 = icmp eq ptr %1, @nullb_list
  br i1 %cmp.i.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %5, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @null_del_dev(ptr noundef %add.ptr)
  tail call fastcc void @null_free_dev(ptr noundef %4)
  %5 = load volatile ptr, ptr @nullb_list, align 4
  %cmp.i.not = icmp eq ptr %5, @nullb_list
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #17
  %6 = load i32, ptr @g_queue_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %land.lhs.true, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %while.end
  %7 = load i8, ptr @shared_tags, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @blk_mq_free_tag_set(ptr noundef nonnull @tag_set) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @null_del_dev(ptr noundef %nullb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nullb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nullb, align 8
  %index = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  tail call void @ida_free(ptr noundef nonnull @nullb_indexes, i32 noundef %3) #17
  %list = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 1
  %call.i.i35 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #17
  br i1 %call.i.i35, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i3.i, align 4
  %disk = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 4
  %12 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disk, align 4
  tail call void @del_gendisk(ptr noundef %13) #17
  %14 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nullb, align 8
  %flags = getelementptr inbounds %struct.nullb_device, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not = icmp eq i32 %18, 0
  br i1 %tobool3.not, label %list_del_init.exit.if.end6_crit_edge, label %if.then4

list_del_init.exit.if.end6_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then4:                                         ; preds = %list_del_init.exit
  %bw_timer = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 9
  %call5 = tail call i32 @hrtimer_cancel(ptr noundef %bw_timer) #17
  %cur_bytes = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_bytes, i32 noundef 4) #17
  %19 = ptrtoint ptr %cur_bytes to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 2147483647, ptr %cur_bytes, align 4
  %20 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nullb, align 8
  %queue_mode.i = getelementptr inbounds %struct.nullb_device, ptr %21, i32 0, i32 29
  %22 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %queue_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp eq i32 %23, 2
  br i1 %cmp.i, label %if.then.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %q1.i = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 3
  %24 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %q1.i, align 8
  tail call void @blk_mq_start_stopped_hw_queues(ptr noundef %25, i1 noundef zeroext true) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then4.if.end6_crit_edge, %list_del_init.exit.if.end6_crit_edge
  %26 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %disk, align 4
  tail call void @blk_cleanup_disk(ptr noundef %27) #17
  %queue_mode = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 29
  %28 = ptrtoint ptr %queue_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %queue_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp = icmp eq i32 %29, 2
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %tag_set = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 5
  %30 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tag_set, align 8
  %__tag_set = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 6
  %cmp8 = icmp eq ptr %31, %__tag_set
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @blk_mq_free_tag_set(ptr noundef %31) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %nr_queues.i = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 13
  %32 = ptrtoint ptr %nr_queues.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp6.not.i = icmp eq i32 %33, 0
  br i1 %cmp6.not.i, label %if.end11.cleanup_queues.exit_crit_edge, label %for.body.lr.ph.i

if.end11.cleanup_queues.exit_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.end11
  %queues.i = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queues.i, align 8
  %arrayidx.i = getelementptr %struct.nullb_queue, ptr %35, i32 %i.07.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %37) #17
  %cmds.i.i = getelementptr %struct.nullb_queue, ptr %35, i32 %i.07.i, i32 7
  %38 = ptrtoint ptr %cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmds.i.i, align 4
  tail call void @kfree(ptr noundef %39) #17
  %inc.i = add nuw i32 %i.07.i, 1
  %40 = ptrtoint ptr %nr_queues.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_queues.i, align 4
  %cmp.i36 = icmp ult i32 %inc.i, %41
  br i1 %cmp.i36, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_queues.exit_crit_edge

for.body.i.cleanup_queues.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

cleanup_queues.exit:                              ; preds = %for.body.i.cleanup_queues.exit_crit_edge, %if.end11.cleanup_queues.exit_crit_edge
  %queues1.i = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 12
  %42 = ptrtoint ptr %queues1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %queues1.i, align 8
  tail call void @kfree(ptr noundef %43) #17
  %44 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nullb, align 8
  %flags.i = getelementptr inbounds %struct.nullb_device, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i, align 4
  %48 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool13.not = icmp eq i32 %48, 0
  br i1 %tobool13.not, label %cleanup_queues.exit.if.end16_crit_edge, label %if.then14

cleanup_queues.exit.if.end16_crit_edge:           ; preds = %cleanup_queues.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then14:                                        ; preds = %cleanup_queues.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @null_free_device_storage(ptr noundef %45, i1 noundef zeroext true)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %cleanup_queues.exit.if.end16_crit_edge
  tail call void @kfree(ptr noundef nonnull %nullb) #17
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @null_free_dev(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @null_free_zoned_dev(ptr noundef nonnull %dev) #17
  %badblocks = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 6
  tail call void @badblocks_exit(ptr noundef %badblocks) #17
  tail call void @kfree(ptr noundef nonnull %dev) #17
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @null_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @g_bs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %0)
  %cmp = icmp ugt i32 %0, 4096
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #20
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef 4096) #20
  store i32 4096, ptr @g_bs, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load i32, ptr @g_max_sectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %1)
  %cmp6 = icmp sgt i32 %1, 2560
  br i1 %cmp6, label %do.end10, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #20
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 2560) #20
  store i32 2560, ptr @g_max_sectors, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end10, %if.end.if.end18_crit_edge
  %2 = load i32, ptr @g_home_node, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.end24 [
    i32 -1, label %if.end18.if.end27_crit_edge
    i32 0, label %if.end18.if.end27_crit_edge135
  ]

if.end18.if.end27_crit_edge135:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #20
  store i32 -1, ptr @g_home_node, align 4
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end18.if.end27_crit_edge, %if.end18.if.end27_crit_edge135
  %4 = load i32, ptr @g_queue_mode, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %4, label %if.end27.if.else_crit_edge [
    i32 1, label %do.end32
    i32 2, label %land.lhs.true37
  ]

if.end27.if.else_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

do.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #20
  br label %cleanup

land.lhs.true37:                                  ; preds = %if.end27
  %6 = load i8, ptr @g_use_per_node_hctx, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true37.if.else_crit_edge, label %if.then38

land.lhs.true37.if.else_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then38:                                        ; preds = %land.lhs.true37
  %7 = load i32, ptr @g_submit_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp39.not = icmp eq i32 %7, 1
  br i1 %cmp39.not, label %if.then38.if.end54_crit_edge, label %do.end43

if.then38.if.end54_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

do.end43:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef 1) #20
  br label %if.end54.sink.split

if.else:                                          ; preds = %land.lhs.true37.if.else_crit_edge, %if.end27.if.else_crit_edge
  %8 = load i32, ptr @g_submit_queues, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp47 = icmp ugt i32 %8, %9
  br i1 %cmp47, label %if.else.if.end54.sink.split_crit_edge, label %if.else49

if.else.if.end54.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54.sink.split

if.else49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp50 = icmp slt i32 %8, 1
  br i1 %cmp50, label %if.else49.if.end54.sink.split_crit_edge, label %if.else49.if.end54_crit_edge

if.else49.if.end54_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54

if.else49.if.end54.sink.split_crit_edge:          ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end54.sink.split

if.end54.sink.split:                              ; preds = %if.else49.if.end54.sink.split_crit_edge, %if.else.if.end54.sink.split_crit_edge, %do.end43
  %.sink = phi i32 [ 1, %do.end43 ], [ %9, %if.else.if.end54.sink.split_crit_edge ], [ 1, %if.else49.if.end54.sink.split_crit_edge ]
  store i32 %.sink, ptr @g_submit_queues, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.else49.if.end54_crit_edge, %if.then38.if.end54_crit_edge
  %10 = load i32, ptr @g_queue_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp55 = icmp eq i32 %10, 2
  br i1 %cmp55, label %land.lhs.true56, label %if.end54.if.end63_crit_edge

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

land.lhs.true56:                                  ; preds = %if.end54
  %11 = load i8, ptr @shared_tags, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool57.not = icmp eq i8 %11, 0
  br i1 %tobool57.not, label %land.lhs.true56.if.end63_crit_edge, label %if.then58

land.lhs.true56.if.end63_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.then58:                                        ; preds = %land.lhs.true56
  %call59 = tail call fastcc i32 @null_init_tag_set(ptr noundef null, ptr noundef nonnull @tag_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then58.if.end63_crit_edge, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then58.if.end63_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.end63:                                         ; preds = %if.then58.if.end63_crit_edge, %land.lhs.true56.if.end63_crit_edge, %if.end54.if.end63_crit_edge
  tail call void @config_group_init(ptr noundef nonnull @nullb_subsys) #17
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @nullb_subsys, i32 0, i32 1), ptr noundef nonnull @.str.77, ptr noundef nonnull @null_init.__key) #17
  %call67 = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @nullb_subsys) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.body71, label %if.end63.err_tagset_crit_edge

if.end63.err_tagset_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_tagset

do.body71:                                        ; preds = %if.end63
  tail call void @__mutex_init(ptr noundef nonnull @lock, ptr noundef nonnull @.str.79, ptr noundef nonnull @null_init.__key.78) #17
  %call74 = tail call i32 @__register_blkdev(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef null) #17
  store i32 %call74, ptr @null_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.body71.err_conf_crit_edge, label %for.cond.preheader

do.body71.err_conf_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_conf

for.cond.preheader:                               ; preds = %do.body71
  %12 = load i32, ptr @nr_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp78117.not = icmp eq i32 %12, 0
  br i1 %cmp78117.not, label %for.cond.preheader.do.end89_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end89_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end89

for.cond:                                         ; preds = %if.end82
  %inc = add nuw i32 %i.0118, 1
  %13 = load i32, ptr @nr_devices, align 4
  %cmp78 = icmp ult i32 %inc, %13
  br i1 %cmp78, label %for.cond.for.body_crit_edge, label %for.cond.do.end89_crit_edge

for.cond.do.end89_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end89

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0118 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call79 = tail call fastcc ptr @null_alloc_dev()
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %for.body.err_dev_crit_edge, label %if.end82

for.body.err_dev_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_dev

if.end82:                                         ; preds = %for.body
  %call83 = tail call fastcc i32 @null_add_dev(ptr noundef nonnull %call79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %for.cond, label %null_free_dev.exit

null_free_dev.exit:                               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @null_free_zoned_dev(ptr noundef nonnull %call79) #17
  %badblocks.i = getelementptr inbounds %struct.nullb_device, ptr %call79, i32 0, i32 6
  tail call void @badblocks_exit(ptr noundef %badblocks.i) #17
  tail call void @kfree(ptr noundef nonnull %call79) #17
  br label %err_dev

do.end89:                                         ; preds = %for.cond.do.end89_crit_edge, %for.cond.preheader.do.end89_crit_edge
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #20
  br label %cleanup

err_dev:                                          ; preds = %null_free_dev.exit, %for.body.err_dev_crit_edge
  %ret.0 = phi i32 [ %call83, %null_free_dev.exit ], [ -12, %for.body.err_dev_crit_edge ]
  %14 = load volatile ptr, ptr @nullb_list, align 4
  %cmp.i.not119 = icmp eq ptr %14, @nullb_list
  br i1 %cmp.i.not119, label %err_dev.while.end_crit_edge, label %err_dev.while.body_crit_edge

err_dev.while.body_crit_edge:                     ; preds = %err_dev
  br label %while.body

err_dev.while.end_crit_edge:                      ; preds = %err_dev
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_dev.while.body_crit_edge
  %15 = phi ptr [ %18, %while.body.while.body_crit_edge ], [ %14, %err_dev.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %15, i32 -4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @null_del_dev(ptr noundef %add.ptr)
  tail call fastcc void @null_free_dev(ptr noundef %17)
  %18 = load volatile ptr, ptr @nullb_list, align 4
  %cmp.i.not = icmp eq ptr %18, @nullb_list
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %err_dev.while.end_crit_edge
  %19 = load i32, ptr @null_major, align 4
  tail call void @unregister_blkdev(i32 noundef %19, ptr noundef nonnull @.str) #17
  br label %err_conf

err_conf:                                         ; preds = %while.end, %do.body71.err_conf_crit_edge
  %ret.1 = phi i32 [ %ret.0, %while.end ], [ %call74, %do.body71.err_conf_crit_edge ]
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @nullb_subsys) #17
  br label %err_tagset

err_tagset:                                       ; preds = %err_conf, %if.end63.err_tagset_crit_edge
  %ret.2 = phi i32 [ %call67, %if.end63.err_tagset_crit_edge ], [ %ret.1, %err_conf ]
  %20 = load i32, ptr @g_queue_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp96 = icmp eq i32 %20, 2
  br i1 %cmp96, label %land.lhs.true97, label %err_tagset.cleanup_crit_edge

err_tagset.cleanup_crit_edge:                     ; preds = %err_tagset
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true97:                                  ; preds = %err_tagset
  %21 = load i8, ptr @shared_tags, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool98.not = icmp eq i8 %21, 0
  br i1 %tobool98.not, label %land.lhs.true97.cleanup_crit_edge, label %if.then99

land.lhs.true97.cleanup_crit_edge:                ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then99:                                        ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @blk_mq_free_tag_set(ptr noundef nonnull @tag_set) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %land.lhs.true97.cleanup_crit_edge, %err_tagset.cleanup_crit_edge, %do.end89, %if.then58.cleanup_crit_edge, %do.end32
  %retval.0 = phi i32 [ -22, %do.end32 ], [ 0, %do.end89 ], [ %call59, %if.then58.cleanup_crit_edge ], [ %ret.2, %if.then99 ], [ %ret.2, %land.lhs.true97.cleanup_crit_edge ], [ %ret.2, %err_tagset.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @null_set_queue_mode(ptr noundef %str, ptr nocapture noundef readnone %kp) #0 align 64 {
entry:
  %new_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_val.i) #17
  %0 = ptrtoint ptr %new_val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %new_val.i, align 4, !annotation !449
  %call.i = call i32 @kstrtoint(ptr noundef %str, i32 noundef 10, ptr noundef nonnull %new_val.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.null_param_store_val.exit_crit_edge

entry.null_param_store_val.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_param_store_val.exit

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %new_val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %new_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %if.end.i.null_param_store_val.exit_crit_edge, label %if.end3.i

if.end.i.null_param_store_val.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_param_store_val.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  store i32 %2, ptr @g_queue_mode, align 4
  br label %null_param_store_val.exit

null_param_store_val.exit:                        ; preds = %if.end3.i, %if.end.i.null_param_store_val.exit_crit_edge, %entry.null_param_store_val.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end3.i ], [ -22, %entry.null_param_store_val.exit_crit_edge ], [ -22, %if.end.i.null_param_store_val.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_val.i) #17
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @null_set_irqmode(ptr noundef %str, ptr nocapture noundef readnone %kp) #0 align 64 {
entry:
  %new_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_val.i) #17
  %0 = ptrtoint ptr %new_val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %new_val.i, align 4, !annotation !449
  %call.i = call i32 @kstrtoint(ptr noundef %str, i32 noundef 10, ptr noundef nonnull %new_val.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.null_param_store_val.exit_crit_edge

entry.null_param_store_val.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_param_store_val.exit

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %new_val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %new_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %if.end.i.null_param_store_val.exit_crit_edge, label %if.end3.i

if.end.i.null_param_store_val.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_param_store_val.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  store i32 %2, ptr @g_irqmode, align 4
  br label %null_param_store_val.exit

null_param_store_val.exit:                        ; preds = %if.end3.i, %if.end.i.null_param_store_val.exit_crit_edge, %entry.null_param_store_val.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end3.i ], [ -22, %entry.null_param_store_val.exit_crit_edge ], [ -22, %if.end.i.null_param_store_val.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_val.i) #17
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete_item(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @badblocks_check(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @null_transfer(ptr noundef %nullb, ptr noundef %page, i32 noundef %len, i32 noundef %off, i1 noundef zeroext %is_write, i64 noundef %sector, i1 noundef zeroext %is_fua) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_write, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nullb, align 8
  %zoned = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %zoned to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %zoned, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @null_zone_valid_read_len(ptr noundef %nullb, i64 noundef %sector, i32 noundef %len) #17
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %valid_len.0 = phi i32 [ %call, %if.then4 ], [ %len, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid_len.0)
  %tobool5.not = icmp eq i32 %valid_len.0, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

while.body.i:                                     ; preds = %do.end16.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %sector.addr.020.i = phi i64 [ %add20.i, %do.end16.i.while.body.i_crit_edge ], [ %sector, %if.end.while.body.i_crit_edge ]
  %count.018.i = phi i32 [ %add.i, %do.end16.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nullb, align 8
  %blocksize.i = getelementptr inbounds %struct.nullb_device, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blocksize.i, align 8
  %sub.i = sub i32 %valid_len.0, %count.018.i
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %sub.i) #17
  %flags.i.i = getelementptr inbounds %struct.nullb_device, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i.i, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %call2.i = tail call fastcc ptr @null_lookup_page(ptr noundef %nullb, i64 noundef %sector.addr.020.i, i1 noundef zeroext false, i1 noundef zeroext %tobool.not.i) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %12, 512
  %13 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !451
  %17 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %22, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !452
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i.i) #17
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %off
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %count.018.i
  %23 = call ptr @memset(ptr %add.ptr5.i, i32 0, i32 %8)
  br label %do.end16.i

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %sector.addr.0.tr.i = trunc i64 %sector.addr.020.i to i32
  %24 = shl i32 %sector.addr.0.tr.i, 9
  %conv.i = and i32 %24, 3584
  %25 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %27 = load i32, ptr @pgprot_kernel, align 4
  %or.i1.i = or i32 %27, 512
  %28 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i.i2.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i2.i to ptr
  %preempt_count.i.i.i.i3.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i3.i, align 4
  %add.i.i.i4.i = add i32 %31, 1
  store volatile i32 %add.i.i.i4.i, ptr %preempt_count.i.i.i.i3.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !451
  %32 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i.i5.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i.i5.i to ptr
  %task.i.i.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i.i6.i, align 8
  %pagefault_disabled.i.i.i.i7.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i.i7.i, align 8
  %inc.i.i.i.i8.i = add i32 %37, 1
  store i32 %inc.i.i.i.i8.i, ptr %pagefault_disabled.i.i.i.i7.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !452
  %call.i.i9.i = tail call ptr @__kmap_local_page_prot(ptr noundef %26, i32 noundef %or.i1.i) #17
  %add.ptr7.i = getelementptr i8, ptr %call.i.i.i, i32 %off
  %add.ptr8.i = getelementptr i8, ptr %add.ptr7.i, i32 %count.018.i
  %add.ptr9.i = getelementptr i8, ptr %call.i.i9.i, i32 %conv.i
  %38 = call ptr @memcpy(ptr %add.ptr8.i, ptr %add.ptr9.i, i32 %8)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i9.i) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !453
  %39 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 213
  %43 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %44, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !454
  %45 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.end.i, %if.then.i
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !453
  %49 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i10.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i1.i10.i to ptr
  %task.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i.i.i11.i, align 8
  %pagefault_disabled.i.i.i12.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 213
  %53 = ptrtoint ptr %pagefault_disabled.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pagefault_disabled.i.i.i12.i, align 8
  %dec.i.i.i13.i = add i32 %54, -1
  store i32 %dec.i.i.i13.i, ptr %pagefault_disabled.i.i.i12.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !454
  %55 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i14.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i14.i to ptr
  %preempt_count.i.i.i15.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i15.i, align 4
  %sub.i.i16.i = add i32 %58, -1
  store volatile i32 %sub.i.i16.i, ptr %preempt_count.i.i.i15.i, align 4
  %add.i = add i32 %8, %count.018.i
  %shr.i = lshr i32 %8, 9
  %conv19.i = zext i32 %shr.i to i64
  %add20.i = add i64 %sector.addr.020.i, %conv19.i
  %cmp.i = icmp ult i32 %add.i, %valid_len.0
  br i1 %cmp.i, label %do.end16.i.while.body.i_crit_edge, label %copy_from_nullb.exit

do.end16.i.while.body.i_crit_edge:                ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

copy_from_nullb.exit:                             ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  %add = add i32 %valid_len.0, %off
  %sub = sub i32 %len, %valid_len.0
  br label %if.end8

if.end8:                                          ; preds = %copy_from_nullb.exit, %if.end.if.end8_crit_edge
  %off.addr.0 = phi i32 [ %add, %copy_from_nullb.exit ], [ %off, %if.end.if.end8_crit_edge ]
  %len.addr.0 = phi i32 [ %sub, %copy_from_nullb.exit ], [ %len, %if.end.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %tobool9.not = icmp eq i32 %len.addr.0, 0
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %59 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i36 = or i32 %59, 512
  %60 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i.i.i37 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i37 to ptr
  %preempt_count.i.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i.i38, align 4
  %add.i.i.i.i39 = add i32 %63, 1
  store volatile i32 %add.i.i.i.i39, ptr %preempt_count.i.i.i.i.i38, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !451
  %64 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i.i.i40 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i1.i.i.i40 to ptr
  %task.i.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i.i.i.i.i41, align 8
  %pagefault_disabled.i.i.i.i.i42 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 213
  %68 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pagefault_disabled.i.i.i.i.i42, align 8
  %inc.i.i.i.i.i43 = add i32 %69, 1
  store i32 %inc.i.i.i.i.i43, ptr %pagefault_disabled.i.i.i.i.i42, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !452
  %call.i.i.i44 = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i.i36) #17
  %add.ptr.i45 = getelementptr i8, ptr %call.i.i.i44, i32 %off.addr.0
  %70 = call ptr @memset(ptr %add.ptr.i45, i32 255, i32 %len.addr.0)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i44) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !453
  %71 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i.i46 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i1.i.i46 to ptr
  %task.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task.i.i.i.i47, align 8
  %pagefault_disabled.i.i.i.i48 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 213
  %75 = ptrtoint ptr %pagefault_disabled.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pagefault_disabled.i.i.i.i48, align 8
  %dec.i.i.i.i49 = add i32 %76, -1
  store i32 %dec.i.i.i.i49, ptr %pagefault_disabled.i.i.i.i48, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !454
  %77 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i.i50 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i52 = add i32 %80, -1
  store volatile i32 %sub.i.i.i52, ptr %preempt_count.i.i.i.i51, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  tail call void @flush_dcache_page(ptr noundef %page) #17
  br label %if.end14

if.else:                                          ; preds = %entry
  tail call void @flush_dcache_page(ptr noundef %page) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp80.not.i = icmp eq i32 %len, 0
  br i1 %cmp80.not.i, label %if.else.if.end14_crit_edge, label %if.else.while.body.i57_crit_edge

if.else.while.body.i57_crit_edge:                 ; preds = %if.else
  br label %while.body.i57

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

while.body.i57:                                   ; preds = %if.end29.i.while.body.i57_crit_edge, %if.else.while.body.i57_crit_edge
  %count.082.i = phi i32 [ %add.i78, %if.end29.i.while.body.i57_crit_edge ], [ 0, %if.else.while.body.i57_crit_edge ]
  %sector.addr.081.i = phi i64 [ %add31.i, %if.end29.i.while.body.i57_crit_edge ], [ %sector, %if.else.while.body.i57_crit_edge ]
  %81 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %nullb, align 8
  %blocksize.i53 = getelementptr inbounds %struct.nullb_device, ptr %82, i32 0, i32 30
  %83 = ptrtoint ptr %blocksize.i53 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %blocksize.i53, align 8
  %sub.i54 = sub i32 %len, %count.082.i
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %sub.i54) #17
  %flags.i.i55 = getelementptr inbounds %struct.nullb_device, ptr %82, i32 0, i32 4
  %86 = ptrtoint ptr %flags.i.i55 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %flags.i.i55, align 4
  %88 = and i32 %87, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i56 = icmp eq i32 %88, 0
  %brmerge.i = or i1 %tobool.not.i56, %is_fua
  br i1 %brmerge.i, label %while.body.i57.if.end.i59_crit_edge, label %if.then.i58

while.body.i57.if.end.i59_crit_edge:              ; preds = %while.body.i57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i59

if.then.i58:                                      ; preds = %while.body.i57
  call void @__sanitizer_cov_trace_pc() #19
  %call3.i = tail call fastcc i32 @null_make_cache_space(ptr noundef %nullb, i32 noundef 4096) #17
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.then.i58, %while.body.i57.if.end.i59_crit_edge
  %89 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %nullb, align 8
  %flags.i60.i = getelementptr inbounds %struct.nullb_device, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %flags.i60.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %flags.i60.i, align 4
  %93 = and i32 %92, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool5.not.i = icmp eq i32 %93, 0
  %spec.select.i = or i1 %tobool5.not.i, %is_fua
  %call8.i = tail call fastcc ptr @null_insert_page(ptr noundef %nullb, i64 noundef %sector.addr.081.i, i1 noundef zeroext %spec.select.i) #17
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end.i59.if.end14_crit_edge, label %if.end11.i

if.end.i59.if.end14_crit_edge:                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.end11.i:                                       ; preds = %if.end.i59
  %94 = trunc i64 %sector.addr.081.i to i32
  %and.tr.i = and i32 %94, 7
  %conv.i60 = shl nuw nsw i32 %and.tr.i, 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %95 = load i32, ptr @pgprot_kernel, align 4
  %or.i63.i = or i32 %95, 512
  %96 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i.i.i61 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i.i.i62, align 4
  %add.i.i.i.i63 = add i32 %99, 1
  store volatile i32 %add.i.i.i.i63, ptr %preempt_count.i.i.i.i.i62, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !451
  %100 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i.i.i64 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i1.i.i.i64 to ptr
  %task.i.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task.i.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task.i.i.i.i.i65, align 8
  %pagefault_disabled.i.i.i.i.i66 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 213
  %104 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pagefault_disabled.i.i.i.i.i66, align 8
  %inc.i.i.i.i.i67 = add i32 %105, 1
  store i32 %inc.i.i.i.i.i67, ptr %pagefault_disabled.i.i.i.i.i66, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !452
  %call.i.i.i68 = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i63.i) #17
  %106 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call8.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %108 = load i32, ptr @pgprot_kernel, align 4
  %or.i64.i = or i32 %108, 512
  %109 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i.i65.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i.i65.i to ptr
  %preempt_count.i.i.i.i66.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %preempt_count.i.i.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %preempt_count.i.i.i.i66.i, align 4
  %add.i.i.i67.i = add i32 %112, 1
  store volatile i32 %add.i.i.i67.i, ptr %preempt_count.i.i.i.i66.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !451
  %113 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i.i68.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i1.i.i68.i to ptr
  %task.i.i.i.i69.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task.i.i.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task.i.i.i.i69.i, align 8
  %pagefault_disabled.i.i.i.i70.i = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 213
  %117 = ptrtoint ptr %pagefault_disabled.i.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pagefault_disabled.i.i.i.i70.i, align 8
  %inc.i.i.i.i71.i = add i32 %118, 1
  store i32 %inc.i.i.i.i71.i, ptr %pagefault_disabled.i.i.i.i70.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !452
  %call.i.i72.i = tail call ptr @__kmap_local_page_prot(ptr noundef %107, i32 noundef %or.i64.i) #17
  %add.ptr.i69 = getelementptr i8, ptr %call.i.i72.i, i32 %conv.i60
  %add.ptr14.i = getelementptr i8, ptr %call.i.i.i68, i32 %off
  %add.ptr15.i = getelementptr i8, ptr %add.ptr14.i, i32 %count.082.i
  %119 = call ptr @memcpy(ptr %add.ptr.i69, ptr %add.ptr15.i, i32 %85)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i72.i) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !453
  %120 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i.i70 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i1.i.i70 to ptr
  %task.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task.i.i.i.i71, align 8
  %pagefault_disabled.i.i.i.i72 = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 213
  %124 = ptrtoint ptr %pagefault_disabled.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pagefault_disabled.i.i.i.i72, align 8
  %dec.i.i.i.i73 = add i32 %125, -1
  store i32 %dec.i.i.i.i73, ptr %pagefault_disabled.i.i.i.i72, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !454
  %126 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i.i74 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i76 = add i32 %129, -1
  store volatile i32 %sub.i.i.i76, ptr %preempt_count.i.i.i.i75, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i68) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !453
  %130 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i73.i = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i1.i73.i to ptr
  %task.i.i.i74.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %task.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %task.i.i.i74.i, align 8
  %pagefault_disabled.i.i.i75.i = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 213
  %134 = ptrtoint ptr %pagefault_disabled.i.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pagefault_disabled.i.i.i75.i, align 8
  %dec.i.i.i76.i = add i32 %135, -1
  store i32 %dec.i.i.i76.i, ptr %pagefault_disabled.i.i.i75.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !454
  %136 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i77.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i.i77.i to ptr
  %preempt_count.i.i.i78.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %preempt_count.i.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %preempt_count.i.i.i78.i, align 4
  %sub.i.i79.i = add i32 %139, -1
  store volatile i32 %sub.i.i79.i, ptr %preempt_count.i.i.i78.i, align 4
  %bitmap.i = getelementptr inbounds %struct.nullb_page, ptr %call8.i, i32 0, i32 1
  %shl.i.i = shl nuw nsw i32 1, %and.tr.i
  %140 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %bitmap.i, align 4
  %or.i.i77 = or i32 %141, %shl.i.i
  store i32 %or.i.i77, ptr %bitmap.i, align 4
  br i1 %is_fua, label %if.then28.i, label %if.end11.i.if.end29.i_crit_edge

if.end11.i.if.end29.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @null_free_sector(ptr noundef %nullb, i64 noundef %sector.addr.081.i, i1 noundef zeroext true) #17
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end11.i.if.end29.i_crit_edge
  %add.i78 = add i32 %85, %count.082.i
  %shr.i79 = lshr i32 %85, 9
  %conv30.i = zext i32 %shr.i79 to i64
  %add31.i = add i64 %sector.addr.081.i, %conv30.i
  %cmp.i80 = icmp ult i32 %add.i78, %len
  br i1 %cmp.i80, label %if.end29.i.while.body.i57_crit_edge, label %if.end29.i.if.end14_crit_edge

if.end29.i.if.end14_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.end29.i.while.body.i57_crit_edge:              ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i57

if.end14:                                         ; preds = %if.end29.i.if.end14_crit_edge, %if.end.i59.if.end14_crit_edge, %if.else.if.end14_crit_edge, %if.end11
  %err.1 = phi i32 [ 0, %if.end11 ], [ 0, %if.else.if.end14_crit_edge ], [ -28, %if.end.i59.if.end14_crit_edge ], [ 0, %if.end29.i.if.end14_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @null_zone_valid_read_len(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @null_lookup_page(ptr nocapture noundef readonly %nullb, i64 noundef %sector, i1 noundef zeroext %for_write, i1 noundef zeroext %ignore_cache) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %.pre = lshr i64 %sector, 3
  %.pre33 = trunc i64 %sector to i32
  %.pre34 = and i32 %.pre33, 7
  br i1 %ignore_cache, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %.pre35 = trunc i64 %.pre to i32
  br label %if.end5

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nullb, align 8
  %cache.i = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 3
  %conv4.i = trunc i64 %.pre to i32
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %cache.i, i32 noundef %conv4.i) #17
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.then.if.end5_crit_edge, label %land.rhs.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

land.rhs.i:                                       ; preds = %if.then
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %conv6.i = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %.pre, i64 %conv6.i)
  %cmp.not.i = icmp eq i64 %.pre, %conv6.i
  br i1 %cmp.not.i, label %land.rhs.i.land.lhs.true.i_crit_edge, label %do.end.i, !prof !448

land.rhs.i.land.lhs.true.i_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 901, i32 noundef 9, ptr noundef null) #17
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i, %land.rhs.i.land.lhs.true.i_crit_edge
  br i1 %for_write, label %land.lhs.true.i.cleanup_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %bitmap.i = getelementptr inbounds %struct.nullb_page, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bitmap.i, align 4
  %8 = shl nuw nsw i32 1, %.pre34
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool31.not.i = icmp eq i32 %9, 0
  br i1 %tobool31.not.i, label %lor.lhs.false.i.if.end5_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.i.if.end5_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.end5:                                          ; preds = %lor.lhs.false.i.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %conv4.i16.pre-phi = phi i32 [ %.pre35, %entry.if.end5_crit_edge ], [ %conv4.i, %if.then.if.end5_crit_edge ], [ %conv4.i, %lor.lhs.false.i.if.end5_crit_edge ]
  %10 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nullb, align 8
  %data.i15 = getelementptr inbounds %struct.nullb_device, ptr %11, i32 0, i32 2
  %call.i17 = tail call ptr @radix_tree_lookup(ptr noundef %data.i15, i32 noundef %conv4.i16.pre-phi) #17
  %tobool5.not.i18 = icmp eq ptr %call.i17, null
  br i1 %tobool5.not.i18, label %if.end5.if.end33.i28_crit_edge, label %land.rhs.i22

if.end5.if.end33.i28_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.i28

land.rhs.i22:                                     ; preds = %if.end5
  %12 = ptrtoint ptr %call.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i17, align 4
  %index.i19 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %index.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i19, align 4
  %conv6.i20 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %.pre, i64 %conv6.i20)
  %cmp.not.i21 = icmp eq i64 %.pre, %conv6.i20
  br i1 %cmp.not.i21, label %land.rhs.i22.land.lhs.true.i24_crit_edge, label %do.end.i23, !prof !448

land.rhs.i22.land.lhs.true.i24_crit_edge:         ; preds = %land.rhs.i22
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i24

do.end.i23:                                       ; preds = %land.rhs.i22
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 901, i32 noundef 9, ptr noundef null) #17
  br label %land.lhs.true.i24

land.lhs.true.i24:                                ; preds = %do.end.i23, %land.rhs.i22.land.lhs.true.i24_crit_edge
  br i1 %for_write, label %land.lhs.true.i24.cleanup_crit_edge, label %lor.lhs.false.i27

land.lhs.true.i24.cleanup_crit_edge:              ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.i27:                                ; preds = %land.lhs.true.i24
  %bitmap.i25 = getelementptr inbounds %struct.nullb_page, ptr %call.i17, i32 0, i32 1
  %16 = ptrtoint ptr %bitmap.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %bitmap.i25, align 4
  %18 = shl nuw nsw i32 1, %.pre34
  %19 = and i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool31.not.i26 = icmp eq i32 %19, 0
  br i1 %tobool31.not.i26, label %lor.lhs.false.i27.if.end33.i28_crit_edge, label %lor.lhs.false.i27.cleanup_crit_edge

lor.lhs.false.i27.cleanup_crit_edge:              ; preds = %lor.lhs.false.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.i27.if.end33.i28_crit_edge:         ; preds = %lor.lhs.false.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.i28

if.end33.i28:                                     ; preds = %lor.lhs.false.i27.if.end33.i28_crit_edge, %if.end5.if.end33.i28_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end33.i28, %lor.lhs.false.i27.cleanup_crit_edge, %land.lhs.true.i24.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %lor.lhs.false.i.cleanup_crit_edge ], [ %call.i, %land.lhs.true.i.cleanup_crit_edge ], [ null, %if.end33.i28 ], [ %call.i17, %lor.lhs.false.i27.cleanup_crit_edge ], [ %call.i17, %land.lhs.true.i24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @null_make_cache_space(ptr noundef %nullb, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  %c_pages = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c_pages) #17
  %0 = call ptr @memset(ptr %c_pages, i32 255, i32 64)
  %1 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nullb, align 8
  %cache_size86 = getelementptr inbounds %struct.nullb_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %cache_size86 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cache_size86, align 8
  %mul187 = shl i32 %4, 20
  %curr_cache88 = getelementptr inbounds %struct.nullb_device, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %curr_cache88 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curr_cache88, align 4
  %add89 = add i32 %6, %n
  call void @__sanitizer_cov_trace_cmp4(i32 %mul187, i32 %add89)
  %cmp90 = icmp ugt i32 %mul187, %add89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp591 = icmp eq i32 %6, 0
  %or.cond92 = or i1 %cmp591, %cmp90
  br i1 %or.cond92, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %cache_flush_pos = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 10
  %lock = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 11
  br label %if.end

if.end:                                           ; preds = %if.end44.if.end_crit_edge, %if.end.lr.ph
  %7 = phi ptr [ %2, %if.end.lr.ph ], [ %120, %if.end44.if.end_crit_edge ]
  %flushed.093 = phi i32 [ 0, %if.end.lr.ph ], [ %add34, %if.end44.if.end_crit_edge ]
  %cache = getelementptr inbounds %struct.nullb_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cache_flush_pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cache_flush_pos, align 8
  %call = call i32 @radix_tree_gang_lookup(ptr noundef %cache, ptr noundef nonnull %c_pages, i32 noundef %9, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp781 = icmp sgt i32 %call, 0
  br i1 %cmp781, label %if.end.for.body_crit_edge, label %if.end.for.end33_crit_edge

if.end.for.end33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end33

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond18.preheader:                             ; preds = %for.inc
  br i1 %cmp781, label %for.cond18.preheader.for.body20_crit_edge, label %for.cond18.preheader.for.end33_crit_edge

for.cond18.preheader.for.end33_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end33

for.cond18.preheader.for.body20_crit_edge:        ; preds = %for.cond18.preheader
  br label %for.body20

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.082 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %c_pages, i32 0, i32 %i.082
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %index = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %16 = ptrtoint ptr %cache_flush_pos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cache_flush_pos, align 8
  %bitmap = getelementptr inbounds %struct.nullb_page, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %bitmap, align 4
  %19 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %or.i = or i32 %18, 512
  %21 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %bitmap, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then12
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.cond18.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body20:                                       ; preds = %for.inc31.for.body20_crit_edge, %for.cond18.preheader.for.body20_crit_edge
  %one_round.085 = phi i32 [ %one_round.1, %for.inc31.for.body20_crit_edge ], [ 0, %for.cond18.preheader.for.body20_crit_edge ]
  %i.184 = phi i32 [ %inc32, %for.inc31.for.body20_crit_edge ], [ 0, %for.cond18.preheader.for.body20_crit_edge ]
  %arrayidx21 = getelementptr [16 x ptr], ptr %c_pages, i32 0, i32 %i.184
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx21, align 4
  %cmp22 = icmp eq ptr %23, null
  br i1 %cmp22, label %for.body20.for.inc31_crit_edge, label %if.end24

for.body20.for.inc31_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc31

if.end24:                                         ; preds = %for.body20
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %27 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 3
  %call.i = call fastcc ptr @null_insert_page(ptr noundef %nullb, i64 noundef %shl.i, i1 noundef zeroext true) #17
  %bitmap.i = getelementptr inbounds %struct.nullb_page, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bitmap.i, align 4
  %and.i.i = and i32 %29, -513
  store i32 %and.i.i, ptr %bitmap.i, align 4
  %30 = load volatile i32, ptr %bitmap.i, align 4
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.then.i

if.then.i:                                        ; preds = %if.end24
  %or.i.i.i = or i32 %30, 256
  %32 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i.i, ptr %bitmap.i, align 4
  %33 = load volatile i32, ptr %bitmap.i, align 4
  %34 = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.null_free_page.exit.i_crit_edge

if.then.i.null_free_page.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_free_page.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %35 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %23, align 4
  call void @__free_pages(ptr noundef %36, i32 noundef 0) #17
  call void @kfree(ptr noundef nonnull %23) #17
  br label %null_free_page.exit.i

null_free_page.exit.i:                            ; preds = %if.end.i.i, %if.then.i.null_free_page.exit.i_crit_edge
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %null_free_page.exit.i.if.end29_crit_edge, label %land.lhs.true.i

null_free_page.exit.i.if.end29_crit_edge:         ; preds = %null_free_page.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.lhs.true.i:                                  ; preds = %null_free_page.exit.i
  %bitmap.i80.i = getelementptr inbounds %struct.nullb_page, ptr %call.i, i32 0, i32 1
  %call.i.i = call i32 @_find_first_bit_be(ptr noundef %bitmap.i80.i, i32 noundef 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 8
  br i1 %cmp.i.i, label %if.then7.i, label %land.lhs.true.i.if.end29_crit_edge

land.lhs.true.i.if.end29_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then7.i:                                       ; preds = %land.lhs.true.i
  %37 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nullb, align 8
  %data.i = getelementptr inbounds %struct.nullb_device, ptr %38, i32 0, i32 2
  %call9.i = call ptr @radix_tree_delete_item(ptr noundef %data.i, i32 noundef %27, ptr noundef nonnull %call.i) #17
  %39 = ptrtoint ptr %bitmap.i80.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bitmap.i80.i, align 4
  %or.i.i82.i = or i32 %40, 256
  store i32 %or.i.i82.i, ptr %bitmap.i80.i, align 4
  %41 = load volatile i32, ptr %bitmap.i80.i, align 4
  %42 = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i83.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i83.i, label %if.end.i84.i, label %if.then7.i.if.end29_crit_edge

if.then7.i.if.end29_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.end.i84.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  call void @__free_pages(ptr noundef %44, i32 noundef 0) #17
  call void @kfree(ptr noundef nonnull %call.i) #17
  br label %if.end29

if.end10.i:                                       ; preds = %if.end24
  %tobool11.not.i = icmp eq ptr %call.i, null
  br i1 %tobool11.not.i, label %if.end10.i.cleanup_crit_edge, label %if.end13.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13.i:                                       ; preds = %if.end10.i
  %45 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %23, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %47 = load i32, ptr @pgprot_kernel, align 4
  %or.i86.i = or i32 %47, 512
  %48 = call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !451
  %52 = call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 213
  %56 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %57, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !452
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %46, i32 noundef %or.i86.i) #17
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %60 = load i32, ptr @pgprot_kernel, align 4
  %or.i87.i = or i32 %60, 512
  %61 = call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i.i88.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i88.i to ptr
  %preempt_count.i.i.i.i89.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i89.i, align 4
  %add.i.i.i90.i = add i32 %64, 1
  store volatile i32 %add.i.i.i90.i, ptr %preempt_count.i.i.i.i89.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !451
  %65 = call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i.i91.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i1.i.i91.i to ptr
  %task.i.i.i.i92.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i.i.i.i92.i, align 8
  %pagefault_disabled.i.i.i.i93.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 213
  %69 = ptrtoint ptr %pagefault_disabled.i.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pagefault_disabled.i.i.i.i93.i, align 8
  %inc.i.i.i.i94.i = add i32 %70, 1
  store i32 %inc.i.i.i.i94.i, ptr %pagefault_disabled.i.i.i.i93.i, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !452
  %call.i.i95.i = call ptr @__kmap_local_page_prot(ptr noundef %59, i32 noundef %or.i87.i) #17
  %bitmap27.i = getelementptr inbounds %struct.nullb_page, ptr %call.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end13.i
  %i.0108.i = phi i32 [ 0, %if.end13.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %71 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %bitmap.i, align 4
  %73 = shl nuw nsw i32 1, %i.0108.i
  %74 = and i32 %72, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool22.not.i = icmp eq i32 %74, 0
  br i1 %tobool22.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then23.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then23.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %shl24.i = shl nuw nsw i32 %i.0108.i, 9
  %add.ptr.i = getelementptr i8, ptr %call.i.i95.i, i32 %shl24.i
  %add.ptr25.i = getelementptr i8, ptr %call.i.i.i, i32 %shl24.i
  %75 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %nullb, align 8
  %blocksize.i = getelementptr inbounds %struct.nullb_device, ptr %76, i32 0, i32 30
  %77 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %blocksize.i, align 8
  %79 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr25.i, i32 %78)
  %80 = ptrtoint ptr %bitmap27.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bitmap27.i, align 4
  %or.i.i = or i32 %81, %73
  store i32 %or.i.i, ptr %bitmap27.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %for.body.i.for.inc.i_crit_edge
  %82 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nullb, align 8
  %blocksize31.i = getelementptr inbounds %struct.nullb_device, ptr %83, i32 0, i32 30
  %84 = ptrtoint ptr %blocksize31.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %blocksize31.i, align 8
  %shr.i76 = lshr i32 %85, 9
  %add.i = add nuw nsw i32 %shr.i76, %i.0108.i
  %cmp.i = icmp ult i32 %add.i, 8
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %do.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i
  call void @kunmap_local_indexed(ptr noundef %call.i.i95.i) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !453
  %86 = call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 213
  %90 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %91, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !454
  %92 = call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %95, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !453
  %96 = call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i1.i96.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i1.i96.i to ptr
  %task.i.i.i97.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task.i.i.i97.i, align 8
  %pagefault_disabled.i.i.i98.i = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 213
  %100 = ptrtoint ptr %pagefault_disabled.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pagefault_disabled.i.i.i98.i, align 8
  %dec.i.i.i99.i = add i32 %101, -1
  store i32 %dec.i.i.i99.i, ptr %pagefault_disabled.i.i.i98.i, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !454
  %102 = call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i100.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i100.i to ptr
  %preempt_count.i.i.i101.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i101.i, align 4
  %sub.i.i102.i = add i32 %105, -1
  store volatile i32 %sub.i.i102.i, ptr %preempt_count.i.i.i101.i, align 4
  %106 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nullb, align 8
  %cache.i = getelementptr inbounds %struct.nullb_device, ptr %107, i32 0, i32 3
  %call43.i = call ptr @radix_tree_delete_item(ptr noundef %cache.i, i32 noundef %27, ptr noundef nonnull %23) #17
  %bitmap.i103.i = getelementptr inbounds %struct.nullb_page, ptr %call43.i, i32 0, i32 1
  %108 = ptrtoint ptr %bitmap.i103.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bitmap.i103.i, align 4
  %or.i.i104.i = or i32 %109, 256
  store i32 %or.i.i104.i, ptr %bitmap.i103.i, align 4
  %110 = load volatile i32, ptr %bitmap.i103.i, align 4
  %111 = and i32 %110, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i105.i = icmp eq i32 %111, 0
  br i1 %tobool.not.i105.i, label %if.end.i106.i, label %do.end.i.null_free_page.exit107.i_crit_edge

do.end.i.null_free_page.exit107.i_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_free_page.exit107.i

if.end.i106.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %112 = ptrtoint ptr %call43.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call43.i, align 4
  call void @__free_pages(ptr noundef %113, i32 noundef 0) #17
  call void @kfree(ptr noundef %call43.i) #17
  br label %null_free_page.exit107.i

null_free_page.exit107.i:                         ; preds = %if.end.i106.i, %do.end.i.null_free_page.exit107.i_crit_edge
  %114 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %nullb, align 8
  %curr_cache.i = getelementptr inbounds %struct.nullb_device, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %curr_cache.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %curr_cache.i, align 4
  %sub.i = add i32 %117, -4096
  store i32 %sub.i, ptr %curr_cache.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %null_free_page.exit107.i, %if.end.i84.i, %if.then7.i.if.end29_crit_edge, %land.lhs.true.i.if.end29_crit_edge, %null_free_page.exit.i.if.end29_crit_edge
  %inc30 = add i32 %one_round.085, 1
  br label %for.inc31

for.inc31:                                        ; preds = %if.end29, %for.body20.for.inc31_crit_edge
  %one_round.1 = phi i32 [ %one_round.085, %for.body20.for.inc31_crit_edge ], [ %inc30, %if.end29 ]
  %inc32 = add nuw nsw i32 %i.184, 1
  %exitcond95.not = icmp eq i32 %inc32, %call
  br i1 %exitcond95.not, label %for.inc31.for.end33_crit_edge, label %for.inc31.for.body20_crit_edge

for.inc31.for.body20_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body20

for.inc31.for.end33_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end33

for.end33:                                        ; preds = %for.inc31.for.end33_crit_edge, %for.cond18.preheader.for.end33_crit_edge, %if.end.for.end33_crit_edge
  %one_round.0.lcssa = phi i32 [ 0, %for.cond18.preheader.for.end33_crit_edge ], [ 0, %if.end.for.end33_crit_edge ], [ %one_round.1, %for.inc31.for.end33_crit_edge ]
  %shl = shl i32 %one_round.0.lcssa, 12
  %add34 = add i32 %shl, %flushed.093
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %n)
  %cmp35 = icmp ult i32 %add34, %n
  br i1 %cmp35, label %if.then36, label %for.end33.cleanup_crit_edge

for.end33.cleanup_crit_edge:                      ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then36:                                        ; preds = %for.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp37 = icmp eq i32 %call, 0
  br i1 %cmp37, label %if.then38, label %if.then36.if.end40_crit_edge

if.then36.if.end40_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  %118 = ptrtoint ptr %cache_flush_pos to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %cache_flush_pos, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then36.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %one_round.0.lcssa)
  %cmp41 = icmp eq i32 %one_round.0.lcssa, 0
  br i1 %cmp41, label %if.then42, label %if.end40.if.end44_crit_edge

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40.if.end44_crit_edge
  %119 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %nullb, align 8
  %cache_size = getelementptr inbounds %struct.nullb_device, ptr %120, i32 0, i32 18
  %121 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cache_size, align 8
  %mul1 = shl i32 %122, 20
  %curr_cache = getelementptr inbounds %struct.nullb_device, ptr %120, i32 0, i32 5
  %123 = ptrtoint ptr %curr_cache to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %curr_cache, align 4
  %add = add i32 %124, %n
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1, i32 %add)
  %cmp = icmp ugt i32 %mul1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp5 = icmp eq i32 %124, 0
  %or.cond = or i1 %cmp5, %cmp
  br i1 %or.cond, label %if.end44.cleanup_crit_edge, label %if.end44.if.end_crit_edge

if.end44.if.end_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end44.cleanup_crit_edge, %for.end33.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end10.i.cleanup_crit_edge ], [ 0, %for.end33.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c_pages) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @null_insert_page(ptr noundef %nullb, i64 noundef %sector, i1 noundef zeroext %ignore_cache) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @null_lookup_page(ptr noundef %nullb, i64 noundef %sector, i1 noundef zeroext true, i1 noundef zeroext %ignore_cache)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3072, i32 noundef 8) #21
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.out_lock_crit_edge, label %if.end.i

if.end.out_lock_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_lock

if.end.i:                                         ; preds = %if.end
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call38.i.i.i.i, ptr %call7.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.out_lock.sink.split_crit_edge, label %if.end5

if.end.i.out_lock.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_lock.sink.split

if.end5:                                          ; preds = %if.end.i
  %bitmap.i = getelementptr inbounds %struct.nullb_page, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bitmap.i, align 4
  %call6 = tail call i32 @radix_tree_preload(i32 noundef 3072) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %out_freepage

if.end9:                                          ; preds = %if.end5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  %shr = lshr i64 %sector, 3
  %conv = trunc i64 %shr to i32
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call7.i.i, align 8
  %index = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %index, align 4
  %6 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nullb, align 8
  br i1 %ignore_cache, label %cond.end.thread.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.end9
  %cache.i = getelementptr inbounds %struct.nullb_device, ptr %7, i32 0, i32 3
  %call.i = tail call i32 @radix_tree_insert(ptr noundef %cache.i, i32 noundef %conv, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then29.i, label %cond.end.i.if.then.i_crit_edge

cond.end.i.if.then.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

cond.end.thread.i:                                ; preds = %if.end9
  %data.i = getelementptr inbounds %struct.nullb_device, ptr %7, i32 0, i32 2
  %call46.i = tail call i32 @radix_tree_insert(ptr noundef %data.i, i32 noundef %conv, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool2.not47.i = icmp eq i32 %call46.i, 0
  br i1 %tobool2.not47.i, label %cond.end.thread.i.null_radix_tree_insert.exit_crit_edge, label %cond.end.thread.i.if.then.i_crit_edge

cond.end.thread.i.if.then.i_crit_edge:            ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

cond.end.thread.i.null_radix_tree_insert.exit_crit_edge: ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_radix_tree_insert.exit

if.then.i:                                        ; preds = %cond.end.thread.i.if.then.i_crit_edge, %cond.end.i.if.then.i_crit_edge
  %cond48.i = phi ptr [ %data.i, %cond.end.thread.i.if.then.i_crit_edge ], [ %cache.i, %cond.end.i.if.then.i_crit_edge ]
  %8 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bitmap.i, align 4
  %or.i.i.i = or i32 %9, 256
  store i32 %or.i.i.i, ptr %bitmap.i, align 4
  %10 = load volatile i32, ptr %bitmap.i, align 4
  %11 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.null_free_page.exit.i_crit_edge

if.then.i.null_free_page.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_free_page.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  tail call void @__free_pages(ptr noundef %13, i32 noundef 0) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %null_free_page.exit.i

null_free_page.exit.i:                            ; preds = %if.end.i.i, %if.then.i.null_free_page.exit.i_crit_edge
  %call4.i = tail call ptr @radix_tree_lookup(ptr noundef %cond48.i, i32 noundef %conv) #17
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %null_free_page.exit.i.do.end.i_crit_edge, label %lor.rhs.i

null_free_page.exit.i.do.end.i_crit_edge:         ; preds = %null_free_page.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.rhs.i:                                        ; preds = %null_free_page.exit.i
  %14 = ptrtoint ptr %call4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call4.i, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i, align 4
  %conv6.i = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv6.i)
  %cmp.not.i = icmp eq i64 %shr, %conv6.i
  br i1 %cmp.not.i, label %lor.rhs.i.null_radix_tree_insert.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !448

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.rhs.i.null_radix_tree_insert.exit_crit_edge:  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_radix_tree_insert.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %null_free_page.exit.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 852, i32 noundef 9, ptr noundef null) #17
  br label %null_radix_tree_insert.exit

if.then29.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nullb, align 8
  %curr_cache.i = getelementptr inbounds %struct.nullb_device, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %curr_cache.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %curr_cache.i, align 4
  %add.i = add i32 %21, 4096
  store i32 %add.i, ptr %curr_cache.i, align 4
  br label %null_radix_tree_insert.exit

null_radix_tree_insert.exit:                      ; preds = %if.then29.i, %do.end.i, %lor.rhs.i.null_radix_tree_insert.exit_crit_edge, %cond.end.thread.i.null_radix_tree_insert.exit_crit_edge
  %t_page.addr.0.i = phi ptr [ %call7.i.i, %if.then29.i ], [ %call4.i, %do.end.i ], [ %call4.i, %lor.rhs.i.null_radix_tree_insert.exit_crit_edge ], [ %call7.i.i, %cond.end.thread.i.null_radix_tree_insert.exit_crit_edge ]
  %22 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i33 = add i32 %27, ptrtoint (ptr @radix_tree_preloads to i32)
  %28 = inttoptr i32 %add.i33 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %28) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !455
  %29 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

out_freepage:                                     ; preds = %if.end5
  %33 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bitmap.i, align 4
  %or.i.i = or i32 %34, 256
  store i32 %or.i.i, ptr %bitmap.i, align 4
  %35 = load volatile i32, ptr %bitmap.i, align 4
  %36 = and i32 %35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i35 = icmp eq i32 %36, 0
  br i1 %tobool.not.i35, label %if.end.i36, label %out_freepage.out_lock_crit_edge

out_freepage.out_lock_crit_edge:                  ; preds = %out_freepage
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_lock

if.end.i36:                                       ; preds = %out_freepage
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call7.i.i, align 8
  tail call void @__free_pages(ptr noundef %38, i32 noundef 0) #17
  br label %out_lock.sink.split

out_lock.sink.split:                              ; preds = %if.end.i36, %if.end.i.out_lock.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %out_lock

out_lock:                                         ; preds = %out_lock.sink.split, %out_freepage.out_lock_crit_edge, %if.end.out_lock_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  %call15 = tail call fastcc ptr @null_lookup_page(ptr noundef %nullb, i64 noundef %sector, i1 noundef zeroext true, i1 noundef zeroext %ignore_cache)
  br label %cleanup

cleanup:                                          ; preds = %out_lock, %null_radix_tree_insert.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call15, %out_lock ], [ %t_page.addr.0.i, %null_radix_tree_insert.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_gang_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_preload(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !448

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #17
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nullb_group_make_item(ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @null_alloc_dev()
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %item = getelementptr inbounds %struct.nullb_device, ptr %call, i32 0, i32 1
  tail call void @config_item_init_type_name(ptr noundef %item, ptr noundef %name, ptr noundef nonnull @nullb_device_type) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %item, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nullb_group_drop_item(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_lock_nested(ptr noundef nonnull @lock, i32 noundef 0) #17
  %power = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 38
  %0 = ptrtoint ptr %power to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %power, align 2
  %1 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec.select.i, align 8
  tail call fastcc void @null_del_dev(ptr noundef %2)
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @config_item_put(ptr noundef %item) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @null_alloc_dev() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 456) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %data, ptr noundef nonnull @.str.6, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #17
  %xa_flags.i = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2592, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xa_head.i, align 8
  %cache = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %cache, ptr noundef nonnull @.str.6, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #17
  %xa_flags.i38 = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %xa_flags.i38 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2592, ptr %xa_flags.i38, align 8
  %xa_head.i39 = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %xa_head.i39 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xa_head.i39, align 4
  %badblocks = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 6
  %call1 = tail call i32 @badblocks_init(ptr noundef %badblocks, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %5 = load i32, ptr @g_gb, align 4
  %mul = shl i32 %5, 10
  %size = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %size, align 8
  %7 = load i32, ptr @g_completion_nsec, align 4
  %completion_nsec = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 17
  %8 = ptrtoint ptr %completion_nsec to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %completion_nsec, align 4
  %9 = load i32, ptr @g_submit_queues, align 4
  %submit_queues = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 24
  %10 = ptrtoint ptr %submit_queues to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %submit_queues, align 8
  %prev_submit_queues = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 25
  %11 = ptrtoint ptr %prev_submit_queues to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %prev_submit_queues, align 4
  %12 = load i32, ptr @g_poll_queues, align 4
  %poll_queues = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 26
  %13 = ptrtoint ptr %poll_queues to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %poll_queues, align 8
  %prev_poll_queues = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 27
  %14 = ptrtoint ptr %prev_poll_queues to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %prev_poll_queues, align 4
  %15 = load i32, ptr @g_home_node, align 4
  %home_node = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 28
  %16 = ptrtoint ptr %home_node to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %home_node, align 8
  %17 = load i32, ptr @g_queue_mode, align 4
  %queue_mode = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 29
  %18 = ptrtoint ptr %queue_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %queue_mode, align 4
  %19 = load i32, ptr @g_bs, align 4
  %blocksize = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 30
  %20 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %blocksize, align 8
  %21 = load i32, ptr @g_max_sectors, align 4
  %max_sectors = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 31
  %22 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_sectors, align 4
  %23 = load i32, ptr @g_irqmode, align 4
  %irqmode = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 32
  %24 = ptrtoint ptr %irqmode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %irqmode, align 8
  %25 = load i32, ptr @g_hw_queue_depth, align 4
  %hw_queue_depth = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 33
  %26 = ptrtoint ptr %hw_queue_depth to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %hw_queue_depth, align 4
  %27 = load i8, ptr @g_blocking, align 1, !range !450
  %blocking = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 36
  %28 = ptrtoint ptr %blocking to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %blocking, align 8
  %29 = load i8, ptr @g_use_per_node_hctx, align 1, !range !450
  %use_per_node_hctx = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 37
  %30 = ptrtoint ptr %use_per_node_hctx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %use_per_node_hctx, align 1
  %31 = load i8, ptr @g_zoned, align 1, !range !450
  %zoned = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 41
  %32 = ptrtoint ptr %zoned to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %zoned, align 1
  %33 = load i32, ptr @g_zone_size, align 4
  %zone_size = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 19
  %34 = ptrtoint ptr %zone_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %zone_size, align 4
  %35 = load i32, ptr @g_zone_capacity, align 4
  %zone_capacity = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 20
  %36 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %zone_capacity, align 8
  %37 = load i32, ptr @g_zone_nr_conv, align 4
  %zone_nr_conv = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 21
  %38 = ptrtoint ptr %zone_nr_conv to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %zone_nr_conv, align 4
  %39 = load i32, ptr @g_zone_max_open, align 4
  %zone_max_open = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 22
  %40 = ptrtoint ptr %zone_max_open to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %zone_max_open, align 8
  %41 = load i32, ptr @g_zone_max_active, align 4
  %zone_max_active = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 23
  %42 = ptrtoint ptr %zone_max_active to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %zone_max_active, align 4
  %43 = load i8, ptr @g_virt_boundary, align 1, !range !450
  %virt_boundary = getelementptr inbounds %struct.nullb_device, ptr %call7.i.i, i32 0, i32 42
  %44 = ptrtoint ptr %virt_boundary to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %virt_boundary, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call7.i.i, %if.end4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @badblocks_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nullb_device_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  tail call fastcc void @null_free_device_storage(ptr noundef %spec.select.i, i1 noundef zeroext false)
  %tobool.not.i2 = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i2, label %entry.null_free_dev.exit_crit_edge, label %if.end.i

entry.null_free_dev.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_free_dev.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @null_free_zoned_dev(ptr noundef nonnull %spec.select.i) #17
  %badblocks.i = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 6
  tail call void @badblocks_exit(ptr noundef %badblocks.i) #17
  tail call void @kfree(ptr noundef nonnull %spec.select.i) #17
  br label %null_free_dev.exit

null_free_dev.exit:                               ; preds = %if.end.i, %entry.null_free_dev.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @null_free_device_storage(ptr noundef %dev, i1 noundef zeroext %is_cache) unnamed_addr #0 align 64 {
entry:
  %t_pages = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t_pages) #17
  %0 = call ptr @memset(ptr %t_pages, i32 255, i32 64)
  %cache = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 3
  %data = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 2
  %cond = select i1 %is_cache, ptr %cache, ptr %data
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry
  %pos.0 = phi i32 [ 0, %entry ], [ %inc25, %for.end.do.body_crit_edge ]
  %call = call i32 @radix_tree_gang_lookup(ptr noundef %cond, ptr noundef nonnull %t_pages, i32 noundef %pos.0, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp45 = icmp sgt i32 %call, 0
  br i1 %cmp45, label %do.body.for.body_crit_edge, label %do.body.do.end28_crit_edge

do.body.do.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end28

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %null_free_page.exit.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %null_free_page.exit.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %t_pages, i32 0, i32 %i.046
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %index = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %call2 = call ptr @radix_tree_delete_item(ptr noundef %cond, i32 noundef %6, ptr noundef %2) #17
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %cmp4.not = icmp eq ptr %call2, %8
  br i1 %cmp4.not, label %for.body.if.end_crit_edge, label %do.end, !prof !448

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 877, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %bitmap.i = getelementptr inbounds %struct.nullb_page, ptr %call2, i32 0, i32 1
  %9 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bitmap.i, align 4
  %or.i.i = or i32 %10, 256
  store i32 %or.i.i, ptr %bitmap.i, align 4
  %11 = load volatile i32, ptr %bitmap.i, align 4
  %12 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.null_free_page.exit_crit_edge

if.end.null_free_page.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_free_page.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call2, align 4
  call void @__free_pages(ptr noundef %14, i32 noundef 0) #17
  call void @kfree(ptr noundef %call2) #17
  br label %null_free_page.exit

null_free_page.exit:                              ; preds = %if.end.i, %if.end.null_free_page.exit_crit_edge
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %null_free_page.exit.for.body_crit_edge

null_free_page.exit.for.body_crit_edge:           ; preds = %null_free_page.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %null_free_page.exit
  %inc25 = add i32 %6, 1
  %cmp27 = icmp eq i32 %call, 16
  br i1 %cmp27, label %for.end.do.body_crit_edge, label %for.end.do.end28_crit_edge

for.end.do.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end28

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end28:                                         ; preds = %for.end.do.end28_crit_edge, %do.body.do.end28_crit_edge
  br i1 %is_cache, label %if.then30, label %do.end28.if.end31_crit_edge

do.end28.if.end31_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then30:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #19
  %curr_cache = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 5
  %15 = ptrtoint ptr %curr_cache to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %curr_cache, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %do.end28.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t_pages) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_size_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %size = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 16
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_size_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %nullb_device_ulong_attr_store.exit.thread, label %nullb_device_ulong_attr_store.exit

nullb_device_ulong_attr_store.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_ulong_attr_store.exit:               ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_ulong_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_ulong_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_ulong_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_ulong_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %size = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 16
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_ulong_attr_store.exit.cleanup_crit_edge, %nullb_device_ulong_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_ulong_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i.i, %nullb_device_ulong_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_completion_nsec_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %completion_nsec = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 17
  %0 = ptrtoint ptr %completion_nsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %completion_nsec, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_completion_nsec_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %nullb_device_ulong_attr_store.exit.thread, label %nullb_device_ulong_attr_store.exit

nullb_device_ulong_attr_store.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_ulong_attr_store.exit:               ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_ulong_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_ulong_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_ulong_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_ulong_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %completion_nsec = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 17
  %5 = ptrtoint ptr %completion_nsec to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %completion_nsec, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_ulong_attr_store.exit.cleanup_crit_edge, %nullb_device_ulong_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_ulong_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i.i, %nullb_device_ulong_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_submit_queues_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %submit_queues = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 24
  %0 = ptrtoint ptr %submit_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %submit_queues, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_submit_queues_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.then2

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then2:                                         ; preds = %nullb_device_uint_attr_store.exit
  %poll_queues.i = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 26
  %3 = ptrtoint ptr %poll_queues.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %poll_queues.i, align 8
  %5 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec.select.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then2.if.end11_crit_edge, label %if.end.i.i

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end3.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %2)
  %cmp.i.i = icmp ult i32 %7, %2
  br i1 %cmp.i.i, label %if.end3.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end3.i.i.cleanup_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end3.i.i
  %8 = load i32, ptr @g_poll_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %4)
  %cmp4.i.i = icmp ult i32 %8, %4
  br i1 %cmp4.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %if.end6.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6.i.i:                                      ; preds = %lor.lhs.false.i.i
  %submit_queues7.i.i = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 24
  %9 = ptrtoint ptr %submit_queues7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %submit_queues7.i.i, align 8
  %prev_submit_queues.i.i = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 25
  %11 = ptrtoint ptr %prev_submit_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %prev_submit_queues.i.i, align 4
  %prev_poll_queues.i.i = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 27
  %12 = ptrtoint ptr %prev_poll_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %4, ptr %prev_poll_queues.i.i, align 4
  store i32 %2, ptr %submit_queues7.i.i, align 8
  %tag_set.i.i = getelementptr inbounds %struct.nullb, ptr %6, i32 0, i32 5
  %13 = ptrtoint ptr %tag_set.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tag_set.i.i, align 8
  %add.i.i = add i32 %4, %2
  call void @blk_mq_update_nr_hw_queues(ptr noundef %14, i32 noundef %add.i.i) #17
  %nr_hw_queues12.i.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %nr_hw_queues12.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_hw_queues12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add.i.i)
  %cmp13.i.i = icmp eq i32 %16, %add.i.i
  br i1 %cmp13.i.i, label %if.end6.i.i.if.end11_crit_edge, label %if.then15.i.i

if.end6.i.i.if.end11_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then15.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %prev_submit_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prev_submit_queues.i.i, align 4
  %19 = ptrtoint ptr %submit_queues7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %submit_queues7.i.i, align 8
  %20 = ptrtoint ptr %prev_poll_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prev_poll_queues.i.i, align 4
  %22 = ptrtoint ptr %poll_queues.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %poll_queues.i, align 8
  br label %cleanup

if.end11:                                         ; preds = %if.end6.i.i.if.end11_crit_edge, %if.then2.if.end11_crit_edge
  %submit_queues = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 24
  %23 = ptrtoint ptr %submit_queues to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %2, ptr %submit_queues, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then15.i.i, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end3.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ], [ -12, %if.then15.i.i ], [ -22, %if.end3.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_update_nr_hw_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_poll_queues_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %poll_queues = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 26
  %0 = ptrtoint ptr %poll_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_queues, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_poll_queues_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.then2

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then2:                                         ; preds = %nullb_device_uint_attr_store.exit
  %submit_queues.i = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 24
  %3 = ptrtoint ptr %submit_queues.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %submit_queues.i, align 8
  %5 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec.select.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then2.if.end11_crit_edge, label %if.end.i.i

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end3.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %4)
  %cmp.i.i = icmp ult i32 %7, %4
  br i1 %cmp.i.i, label %if.end3.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end3.i.i.cleanup_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end3.i.i
  %8 = load i32, ptr @g_poll_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %2)
  %cmp4.i.i = icmp ult i32 %8, %2
  br i1 %cmp4.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %if.end6.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6.i.i:                                      ; preds = %lor.lhs.false.i.i
  %prev_submit_queues.i.i = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 25
  %9 = ptrtoint ptr %prev_submit_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %prev_submit_queues.i.i, align 4
  %poll_queues8.i.i = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 26
  %10 = ptrtoint ptr %poll_queues8.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poll_queues8.i.i, align 8
  %prev_poll_queues.i.i = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 27
  %12 = ptrtoint ptr %prev_poll_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %prev_poll_queues.i.i, align 4
  store i32 %2, ptr %poll_queues8.i.i, align 8
  %tag_set.i.i = getelementptr inbounds %struct.nullb, ptr %6, i32 0, i32 5
  %13 = ptrtoint ptr %tag_set.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tag_set.i.i, align 8
  %add.i.i = add i32 %4, %2
  call void @blk_mq_update_nr_hw_queues(ptr noundef %14, i32 noundef %add.i.i) #17
  %nr_hw_queues12.i.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %nr_hw_queues12.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_hw_queues12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add.i.i)
  %cmp13.i.i = icmp eq i32 %16, %add.i.i
  br i1 %cmp13.i.i, label %if.end6.i.i.if.end11_crit_edge, label %if.then15.i.i

if.end6.i.i.if.end11_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then15.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %prev_submit_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prev_submit_queues.i.i, align 4
  %19 = ptrtoint ptr %submit_queues.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %submit_queues.i, align 8
  %20 = ptrtoint ptr %prev_poll_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prev_poll_queues.i.i, align 4
  %22 = ptrtoint ptr %poll_queues8.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %poll_queues8.i.i, align 8
  br label %cleanup

if.end11:                                         ; preds = %if.end6.i.i.if.end11_crit_edge, %if.then2.if.end11_crit_edge
  %poll_queues = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 26
  %23 = ptrtoint ptr %poll_queues to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %2, ptr %poll_queues, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then15.i.i, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end3.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ], [ -12, %if.then15.i.i ], [ -22, %if.end3.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_home_node_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %home_node = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 28
  %0 = ptrtoint ptr %home_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %home_node, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_home_node_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_uint_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %home_node = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 28
  %5 = ptrtoint ptr %home_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %home_node, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_queue_mode_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %queue_mode = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 29
  %0 = ptrtoint ptr %queue_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_mode, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_queue_mode_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_uint_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %queue_mode = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 29
  %5 = ptrtoint ptr %queue_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %queue_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_blocksize_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %blocksize = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 30
  %0 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blocksize, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_blocksize_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_uint_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %blocksize = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 30
  %5 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %blocksize, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_max_sectors_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %max_sectors = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 31
  %0 = ptrtoint ptr %max_sectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_sectors, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_max_sectors_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_uint_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %max_sectors = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 31
  %5 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %max_sectors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_irqmode_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %irqmode = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 32
  %0 = ptrtoint ptr %irqmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irqmode, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_irqmode_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_uint_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %irqmode = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 32
  %5 = ptrtoint ptr %irqmode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %irqmode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_hw_queue_depth_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %hw_queue_depth = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 33
  %0 = ptrtoint ptr %hw_queue_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_queue_depth, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_hw_queue_depth_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_uint_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %hw_queue_depth = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 33
  %5 = ptrtoint ptr %hw_queue_depth to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %hw_queue_depth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_index_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %index = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 34
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_index_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_uint_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %index = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 34
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %index, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_blocking_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %blocking = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 36
  %0 = ptrtoint ptr %blocking to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blocking, align 8, !range !450
  %2 = zext i8 %1 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %2) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_blocking_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp.i, align 1, !annotation !449
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_bool_attr_store.exit.thread, label %nullb_device_bool_attr_store.exit

nullb_device_bool_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_bool_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp.i, align 1, !range !450
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_bool_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_bool_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_bool_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_bool_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool6.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp10 = icmp slt i32 %spec.select, 0
  br i1 %cmp10, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %blocking = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 36
  %5 = ptrtoint ptr %blocking to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %blocking, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end12 ], [ %count, %nullb_device_bool_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_bool_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_use_per_node_hctx_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %use_per_node_hctx = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 37
  %0 = ptrtoint ptr %use_per_node_hctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_per_node_hctx, align 1, !range !450
  %2 = zext i8 %1 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %2) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_use_per_node_hctx_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp.i, align 1, !annotation !449
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_bool_attr_store.exit.thread, label %nullb_device_bool_attr_store.exit

nullb_device_bool_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_bool_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp.i, align 1, !range !450
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_bool_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_bool_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_bool_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_bool_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool6.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp10 = icmp slt i32 %spec.select, 0
  br i1 %cmp10, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %use_per_node_hctx = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 37
  %5 = ptrtoint ptr %use_per_node_hctx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %use_per_node_hctx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end12 ], [ %count, %nullb_device_bool_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_bool_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_power_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %power = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 38
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power, align 2, !range !450
  %2 = zext i8 %1 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %2) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_power_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp.i, align 1, !annotation !449
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_bool_attr_store.exit.thread, label %nullb_device_bool_attr_store.exit

nullb_device_bool_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_bool_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp.i, align 1, !range !450
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_bool_attr_store.exit.cleanup_crit_edge, label %if.end

nullb_device_bool_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_bool_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %nullb_device_bool_attr_store.exit
  %power = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 38
  %3 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %power, align 2, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true18

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %call4 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %call8 = call fastcc i32 @null_add_dev(ptr noundef %spec.select.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #17
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #17
  %5 = ptrtoint ptr %power to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %power, align 2
  br label %cleanup

land.lhs.true18:                                  ; preds = %if.end
  br i1 %tobool2.not, label %if.then20, label %land.lhs.true18.cleanup_crit_edge

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true18
  %flags21 = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %call22 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags21) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20.if.end28_crit_edge, label %if.then24

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  call void @mutex_lock_nested(ptr noundef nonnull @lock, i32 noundef 0) #17
  %6 = ptrtoint ptr %power to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %power, align 2
  %7 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec.select.i, align 8
  call fastcc void @null_del_dev(ptr noundef %8)
  call void @mutex_unlock(ptr noundef nonnull @lock) #17
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then20.if.end28_crit_edge
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags21) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true18.cleanup_crit_edge, %if.end12, %if.then10, %if.then3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.thread
  %retval.0 = phi i32 [ -12, %if.then10 ], [ %count, %nullb_device_bool_attr_store.exit.cleanup_crit_edge ], [ %count, %if.then3.cleanup_crit_edge ], [ %count, %land.lhs.true18.cleanup_crit_edge ], [ %count, %if.end28 ], [ %count, %if.end12 ], [ %call.i, %nullb_device_bool_attr_store.exit.thread ], [ %count, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @null_add_dev(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %blocksize.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blocksize.i, align 8
  %and.i = and i32 %1, -512
  %2 = tail call i32 @llvm.umax.i32(i32 %and.i, i32 512) #17
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 4096) #17
  %4 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %blocksize.i, align 8
  %queue_mode.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 29
  %5 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %queue_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp10.i = icmp eq i32 %6, 2
  br i1 %cmp10.i, label %land.lhs.true.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %use_per_node_hctx.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 37
  %7 = ptrtoint ptr %use_per_node_hctx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_per_node_hctx.i, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %submit_queues.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 24
  %9 = ptrtoint ptr %submit_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %submit_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp11.not.i = icmp eq i32 %10, 1
  br i1 %cmp11.not.i, label %if.then.i.if.end25.i_crit_edge, label %if.then12.i

if.then.i.if.end25.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %submit_queues.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %submit_queues.i, align 8
  br label %if.end25.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %submit_queues14.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 24
  %12 = ptrtoint ptr %submit_queues14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %submit_queues14.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp15.i = icmp ugt i32 %13, %14
  br i1 %cmp15.i, label %if.then16.i, label %if.else18.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %submit_queues14.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %submit_queues14.i, align 8
  br label %if.end25.i

if.else18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp20.i = icmp eq i32 %13, 0
  br i1 %cmp20.i, label %if.then21.i, label %if.else18.i.if.end25.i_crit_edge

if.else18.i.if.end25.i_crit_edge:                 ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %submit_queues14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %submit_queues14.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.else18.i.if.end25.i_crit_edge, %if.then16.i, %if.then12.i, %if.then.i.if.end25.i_crit_edge
  %submit_queues26.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 24
  %17 = ptrtoint ptr %submit_queues26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %submit_queues26.i, align 8
  %prev_submit_queues.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 25
  %19 = ptrtoint ptr %prev_submit_queues.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %prev_submit_queues.i, align 4
  %poll_queues.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 26
  %20 = ptrtoint ptr %poll_queues.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %poll_queues.i, align 8
  %22 = load i32, ptr @g_poll_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %22)
  %cmp27.i = icmp ugt i32 %21, %22
  br i1 %cmp27.i, label %if.then28.i, label %if.end25.i.if.end30.i_crit_edge

if.end25.i.if.end30.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %poll_queues.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %poll_queues.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end30.i_crit_edge
  %24 = ptrtoint ptr %poll_queues.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %poll_queues.i, align 8
  %prev_poll_queues.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 27
  %26 = ptrtoint ptr %prev_poll_queues.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %prev_poll_queues.i, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %6, i32 2) #17
  %28 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %queue_mode.i, align 4
  %irqmode.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 32
  %29 = ptrtoint ptr %irqmode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irqmode.i, align 8
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 2) #17
  %32 = ptrtoint ptr %irqmode.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %irqmode.i, align 8
  %memory_backed.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 39
  %33 = ptrtoint ptr %memory_backed.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %memory_backed.i, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool47.not.i = icmp eq i8 %34, 0
  br i1 %tobool47.not.i, label %if.else49.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  %blocking.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 36
  %35 = ptrtoint ptr %blocking.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %blocking.i, align 8
  br label %if.end50.i

if.else49.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  %cache_size.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 18
  %36 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %cache_size.i, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else49.i, %if.then48.i
  %cache_size51.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 18
  %37 = ptrtoint ptr %cache_size51.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cache_size51.i, align 8
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 4095) #17
  %40 = ptrtoint ptr %cache_size51.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %cache_size51.i, align 8
  %mbps.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 35
  %41 = ptrtoint ptr %mbps.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mbps.i, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 40960) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp67.i = icmp eq i32 %27, 0
  %spec.store.select.i = select i1 %cmp67.i, i32 0, i32 %43
  %44 = ptrtoint ptr %mbps.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.store.select.i, ptr %mbps.i, align 4
  %zoned.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 41
  %45 = ptrtoint ptr %zoned.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %zoned.i, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool71.not.i = icmp eq i8 %46, 0
  br i1 %tobool71.not.i, label %if.end50.i.if.end_crit_edge, label %land.lhs.true72.i

if.end50.i.if.end_crit_edge:                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true72.i:                                ; preds = %if.end50.i
  %zone_size.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 19
  %47 = ptrtoint ptr %zone_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %zone_size.i, align 4
  %49 = tail call i32 @llvm.ctpop.i32(i32 %48) #17, !range !456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %land.lhs.true72.i.if.end_crit_edge, label %null_validate_conf.exit

land.lhs.true72.i.if.end_crit_edge:               ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

null_validate_conf.exit:                          ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #19
  %call77.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true72.i.if.end_crit_edge, %if.end50.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 360) #21
  %tobool2.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %52 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev, ptr %call.i.i.i, align 8
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i.i, ptr %dev, align 8
  %lock = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @null_add_dev.__key, i16 noundef signext 3) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %55 = load i32, ptr @g_poll_queues, align 4
  %add.i = add i32 %55, %54
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 124) #17
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !457

kcalloc.exit.thread.i:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %queues10.i = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 12
  %58 = ptrtoint ptr %queues10.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %queues10.i, align 8
  br label %out_free_nullb

if.end7.i.i.i:                                    ; preds = %if.end4
  %59 = extractvalue { i32, i1 } %56, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %59, i32 noundef 3520) #22
  %queues.i = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 12
  %60 = ptrtoint ptr %queues.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call8.i.i.i, ptr %queues.i, align 8
  %tobool2.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool2.not.i, label %if.end7.i.i.i.out_free_nullb_crit_edge, label %if.end11

if.end7.i.i.i.out_free_nullb_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free_nullb

if.end11:                                         ; preds = %if.end7.i.i.i
  %61 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i.i.i, align 8
  %hw_queue_depth.i = getelementptr inbounds %struct.nullb_device, ptr %62, i32 0, i32 33
  %63 = ptrtoint ptr %hw_queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hw_queue_depth.i, align 4
  %queue_depth.i = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 7
  %65 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %queue_depth.i, align 4
  %66 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %queue_mode.i, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %67, label %if.end11.if.end56_crit_edge [
    i32 2, label %if.then12
    i32 0, label %if.then38
  ]

if.end11.if.end56_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

if.then12:                                        ; preds = %if.end11
  %69 = load i8, ptr @shared_tags, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool13.not = icmp eq i8 %69, 0
  br i1 %tobool13.not, label %if.end18, label %if.end18.thread

if.end18.thread:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  %tag_set = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 5
  %70 = ptrtoint ptr %tag_set to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @tag_set, ptr %tag_set, align 8
  br label %if.end21

if.end18:                                         ; preds = %if.then12
  %__tag_set = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 6
  %tag_set15 = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 5
  %71 = ptrtoint ptr %tag_set15 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %__tag_set, ptr %tag_set15, align 8
  %call17 = tail call fastcc i32 @null_init_tag_set(ptr noundef nonnull %call.i.i.i, ptr noundef %__tag_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.end18.out_cleanup_queues_crit_edge

if.end18.out_cleanup_queues_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_queues

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.end21:                                         ; preds = %if.end18.if.end21_crit_edge, %if.end18.thread
  %call22 = tail call fastcc zeroext i1 @null_setup_fault()
  br i1 %call22, label %if.end24, label %if.end21.out_cleanup_tags_crit_edge

if.end21.out_cleanup_tags_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_tags

if.end24:                                         ; preds = %if.end21
  %tag_set25 = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 5
  %72 = ptrtoint ptr %tag_set25 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tag_set25, align 8
  %timeout = getelementptr inbounds %struct.blk_mq_tag_set, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 500, ptr %timeout, align 4
  %75 = load ptr, ptr %tag_set25, align 8
  %call27 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %75, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @null_add_dev.__key.24) #17
  %disk = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call27, ptr %disk, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %77 = ptrtoint ptr %call27 to i32
  br label %out_cleanup_tags

if.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %queue = getelementptr inbounds %struct.gendisk, ptr %call27, i32 0, i32 9
  %78 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %queue, align 4
  %q = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %q, align 8
  br label %if.end56

if.then38:                                        ; preds = %if.end11
  %81 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i.i.i, align 8
  %home_node41 = getelementptr inbounds %struct.nullb_device, ptr %82, i32 0, i32 28
  %83 = ptrtoint ptr %home_node41 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %home_node41, align 8
  %call42 = tail call ptr @__blk_alloc_disk(i32 noundef %84, ptr noundef nonnull @null_add_dev.__key.25) #17
  %disk43 = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 4
  %85 = ptrtoint ptr %disk43 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call42, ptr %disk43, align 4
  %tobool45.not = icmp eq ptr %call42, null
  br i1 %tobool45.not, label %if.then38.out_cleanup_queues_crit_edge, label %if.end47

if.then38.out_cleanup_queues_crit_edge:           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_queues

if.end47:                                         ; preds = %if.then38
  %queue49 = getelementptr inbounds %struct.gendisk, ptr %call42, i32 0, i32 9
  %86 = ptrtoint ptr %queue49 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %queue49, align 4
  %q50 = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %q50 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %q50, align 8
  %call51 = tail call fastcc i32 @init_driver_queues(ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end47.if.end56_crit_edge, label %if.end47.out_cleanup_disk_crit_edge

if.end47.out_cleanup_disk_crit_edge:              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_disk

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

if.end56:                                         ; preds = %if.end47.if.end56_crit_edge, %if.end33, %if.end11.if.end56_crit_edge
  %89 = ptrtoint ptr %mbps.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mbps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool57.not = icmp eq i32 %90, 0
  br i1 %tobool57.not, label %if.end56.if.end59_crit_edge, label %if.then58

if.end56.if.end59_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #17
  %bw_timer.i = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 9
  tail call void @hrtimer_init(ptr noundef %bw_timer.i, i32 noundef 1, i32 noundef 1) #17
  %function.i = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 9, i32 2
  %91 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @nullb_bwtimer_fn, ptr %function.i, align 8
  %cur_bytes.i = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 8
  %92 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i.i.i, align 8
  %mbps.i199 = getelementptr inbounds %struct.nullb_device, ptr %93, i32 0, i32 35
  %94 = ptrtoint ptr %mbps.i199 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mbps.i199, align 4
  %mul.i.i = mul i32 %95, 20971
  %call.i.i.i200 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_bytes.i, i32 noundef 4) #17
  %96 = ptrtoint ptr %cur_bytes.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 %mul.i.i, ptr %cur_bytes.i, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %bw_timer.i, i64 noundef 20000000, i64 noundef 0, i32 noundef 1) #17
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end56.if.end59_crit_edge
  %97 = ptrtoint ptr %cache_size51.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cache_size51.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp60.not = icmp eq i32 %98, 0
  br i1 %cmp60.not, label %if.end59.if.end65_crit_edge, label %if.then61

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  %99 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i.i.i, align 8
  %flags63 = getelementptr inbounds %struct.nullb_device, ptr %100, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags63) #17
  %q64 = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 3
  %101 = ptrtoint ptr %q64 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %q64, align 8
  tail call void @blk_queue_write_cache(ptr noundef %102, i1 noundef zeroext true, i1 noundef zeroext true) #17
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.end59.if.end65_crit_edge
  %103 = ptrtoint ptr %zoned.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %zoned.i, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool66.not = icmp eq i8 %104, 0
  br i1 %tobool66.not, label %if.end65.if.end73_crit_edge, label %if.then67

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

if.then67:                                        ; preds = %if.end65
  %q68 = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %q68 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %q68, align 8
  %call69 = tail call i32 @null_init_zoned_dev(ptr noundef %dev, ptr noundef %106) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then67.if.end73_crit_edge, label %if.then67.out_cleanup_disk_crit_edge

if.then67.out_cleanup_disk_crit_edge:             ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_disk

if.then67.if.end73_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

if.end73:                                         ; preds = %if.then67.if.end73_crit_edge, %if.end65.if.end73_crit_edge
  %q74 = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 3
  %107 = ptrtoint ptr %q74 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %q74, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %108, i32 0, i32 10
  %109 = ptrtoint ptr %queuedata to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i.i.i, ptr %queuedata, align 4
  %110 = load ptr, ptr %q74, align 8
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %110) #17
  %111 = ptrtoint ptr %q74 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %q74, align 8
  tail call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %112) #17
  tail call void @mutex_lock_nested(ptr noundef nonnull @lock, i32 noundef 0) #17
  %call77 = tail call i32 @ida_alloc_range(ptr noundef nonnull @nullb_indexes, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #17
  %index = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 2
  %113 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call77, ptr %index, align 4
  %index79 = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 34
  %114 = ptrtoint ptr %index79 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %call77, ptr %index79, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #17
  %115 = ptrtoint ptr %q74 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %q74, align 8
  %117 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %blocksize.i, align 8
  tail call void @blk_queue_logical_block_size(ptr noundef %116, i32 noundef %118) #17
  %119 = ptrtoint ptr %q74 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %q74, align 8
  %121 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %blocksize.i, align 8
  tail call void @blk_queue_physical_block_size(ptr noundef %120, i32 noundef %122) #17
  %max_sectors = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 31
  %123 = ptrtoint ptr %max_sectors to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_sectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool83.not = icmp eq i32 %124, 0
  br i1 %tobool83.not, label %if.then84, label %if.end73.if.end88_crit_edge

if.end73.if.end88_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.then84:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  %125 = ptrtoint ptr %q74 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %q74, align 8
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %126, i32 0, i32 37, i32 3
  %127 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max_hw_sectors.i, align 4
  %129 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %max_sectors, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end73.if.end88_crit_edge
  %130 = ptrtoint ptr %max_sectors to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %max_sectors, align 4
  %132 = tail call i32 @llvm.umin.i32(i32 %131, i32 2560)
  %133 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %max_sectors, align 4
  %134 = ptrtoint ptr %q74 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %q74, align 8
  tail call void @blk_queue_max_hw_sectors(ptr noundef %135, i32 noundef %132) #17
  %virt_boundary = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 42
  %136 = ptrtoint ptr %virt_boundary to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %virt_boundary, align 2, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool95.not = icmp eq i8 %137, 0
  br i1 %tobool95.not, label %if.end88.if.end98_crit_edge, label %if.then96

if.end88.if.end98_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

if.then96:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  %138 = ptrtoint ptr %q74 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %q74, align 8
  tail call void @blk_queue_virt_boundary(ptr noundef %139, i32 noundef 4095) #17
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end88.if.end98_crit_edge
  %140 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %call.i.i.i, align 8
  %discard.i = getelementptr inbounds %struct.nullb_device, ptr %141, i32 0, i32 40
  %142 = ptrtoint ptr %discard.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %discard.i, align 4, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp.i201 = icmp eq i8 %143, 0
  br i1 %cmp.i201, label %if.end98.null_config_discard.exit_crit_edge, label %if.end.i

if.end98.null_config_discard.exit_crit_edge:      ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_config_discard.exit

if.end.i:                                         ; preds = %if.end98
  %memory_backed.i202 = getelementptr inbounds %struct.nullb_device, ptr %141, i32 0, i32 39
  %144 = ptrtoint ptr %memory_backed.i202 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %memory_backed.i202, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool3.not.i = icmp eq i8 %145, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %146 = ptrtoint ptr %discard.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %discard.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #20
  br label %null_config_discard.exit

if.end7.i:                                        ; preds = %if.end.i
  %zoned.i203 = getelementptr inbounds %struct.nullb_device, ptr %141, i32 0, i32 41
  %147 = ptrtoint ptr %zoned.i203 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %zoned.i203, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool9.not.i = icmp eq i8 %148, 0
  br i1 %tobool9.not.i, label %if.end17.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %149 = ptrtoint ptr %discard.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %discard.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #20
  br label %null_config_discard.exit

if.end17.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %blocksize.i204 = getelementptr inbounds %struct.nullb_device, ptr %141, i32 0, i32 30
  %150 = ptrtoint ptr %blocksize.i204 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %blocksize.i204, align 8
  %152 = ptrtoint ptr %q74 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %q74, align 8
  %discard_granularity.i = getelementptr inbounds %struct.request_queue, ptr %153, i32 0, i32 37, i32 18
  %154 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %151, ptr %discard_granularity.i, align 4
  %155 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %call.i.i.i, align 8
  %blocksize20.i = getelementptr inbounds %struct.nullb_device, ptr %156, i32 0, i32 30
  %157 = ptrtoint ptr %blocksize20.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %blocksize20.i, align 8
  %159 = load ptr, ptr %q74, align 8
  %discard_alignment.i = getelementptr inbounds %struct.request_queue, ptr %159, i32 0, i32 37, i32 19
  %160 = ptrtoint ptr %discard_alignment.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %158, ptr %discard_alignment.i, align 4
  %161 = load ptr, ptr %q74, align 8
  tail call void @blk_queue_max_discard_sectors(ptr noundef %161, i32 noundef 8388607) #17
  %162 = ptrtoint ptr %q74 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %q74, align 8
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %163) #17
  br label %null_config_discard.exit

null_config_discard.exit:                         ; preds = %if.end17.i, %if.then10.i, %if.then4.i, %if.end98.null_config_discard.exit_crit_edge
  %disk_name = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 14
  %164 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %index, align 4
  %call100 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name, ptr noundef nonnull @.str.26, i32 noundef %165)
  %166 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %call.i.i.i, align 8
  %size1.i = getelementptr inbounds %struct.nullb_device, ptr %167, i32 0, i32 16
  %168 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %size1.i, align 8
  %conv.i = zext i32 %169 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 11
  %disk2.i = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 4
  %170 = ptrtoint ptr %disk2.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %disk2.i, align 4
  tail call void @set_capacity(ptr noundef %171, i64 noundef %mul.i) #17
  %172 = load i32, ptr @null_major, align 4
  %173 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %171, align 8
  %174 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %index, align 4
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %171, i32 0, i32 1
  %176 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %first_minor.i, align 4
  %minors.i = getelementptr inbounds %struct.gendisk, ptr %171, i32 0, i32 2
  %177 = ptrtoint ptr %minors.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %minors.i, align 8
  %178 = ptrtoint ptr %q74 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %q74, align 8
  %mq_ops.i.i = getelementptr inbounds %struct.request_queue, ptr %179, i32 0, i32 5
  %180 = ptrtoint ptr %mq_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mq_ops.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %181, null
  %spec.select.i = select i1 %tobool.i.not.i, ptr @null_bio_ops, ptr @null_rq_ops
  %182 = getelementptr inbounds %struct.gendisk, ptr %171, i32 0, i32 8
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %spec.select.i, ptr %182, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %171, i32 0, i32 10
  %184 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call.i.i.i, ptr %private_data.i, align 8
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %171, i32 0, i32 3
  %call6.i = tail call ptr @strncpy(ptr noundef %disk_name.i, ptr noundef %disk_name, i32 noundef 32) #17
  %185 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %call.i.i.i, align 8
  %zoned.i206 = getelementptr inbounds %struct.nullb_device, ptr %186, i32 0, i32 41
  %187 = ptrtoint ptr %zoned.i206 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %zoned.i206, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool.not.i207 = icmp eq i8 %188, 0
  br i1 %tobool.not.i207, label %null_config_discard.exit.null_gendisk_register.exit_crit_edge, label %if.then8.i

null_config_discard.exit.null_gendisk_register.exit_crit_edge: ; preds = %null_config_discard.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_gendisk_register.exit

if.then8.i:                                       ; preds = %null_config_discard.exit
  %call9.i = tail call i32 @null_register_zoned_dev(ptr noundef nonnull %call.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.null_gendisk_register.exit_crit_edge, label %if.then8.i.out_cleanup_zone_crit_edge

if.then8.i.out_cleanup_zone_crit_edge:            ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_zone

if.then8.i.null_gendisk_register.exit_crit_edge:  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_gendisk_register.exit

null_gendisk_register.exit:                       ; preds = %if.then8.i.null_gendisk_register.exit_crit_edge, %null_config_discard.exit.null_gendisk_register.exit_crit_edge
  %call.i.i = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %171, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool102.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool102.not, label %if.end104, label %null_gendisk_register.exit.out_cleanup_zone_crit_edge

null_gendisk_register.exit.out_cleanup_zone_crit_edge: ; preds = %null_gendisk_register.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_zone

if.end104:                                        ; preds = %null_gendisk_register.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @lock, i32 noundef 0) #17
  %list = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 1
  %189 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nullb_list, i32 0, i32 1), align 4
  %call.i.i208 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %189, ptr noundef nonnull @nullb_list) #17
  br i1 %call.i.i208, label %if.end.i.i, label %if.end104.list_add_tail.exit_crit_edge

if.end104.list_add_tail.exit_crit_edge:           ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @nullb_list, i32 0, i32 1), align 4
  %190 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @nullb_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %191 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %189, ptr %prev3.i.i, align 8
  %192 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %list, ptr %189, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end104.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #17
  br label %cleanup

out_cleanup_zone:                                 ; preds = %null_gendisk_register.exit.out_cleanup_zone_crit_edge, %if.then8.i.out_cleanup_zone_crit_edge
  %retval.1.i219 = phi i32 [ %call.i.i, %null_gendisk_register.exit.out_cleanup_zone_crit_edge ], [ %call9.i, %if.then8.i.out_cleanup_zone_crit_edge ]
  tail call void @null_free_zoned_dev(ptr noundef %dev) #17
  br label %out_cleanup_disk

out_cleanup_disk:                                 ; preds = %out_cleanup_zone, %if.then67.out_cleanup_disk_crit_edge, %if.end47.out_cleanup_disk_crit_edge
  %rv.1 = phi i32 [ %call69, %if.then67.out_cleanup_disk_crit_edge ], [ %retval.1.i219, %out_cleanup_zone ], [ %call51, %if.end47.out_cleanup_disk_crit_edge ]
  %disk105 = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 4
  %193 = ptrtoint ptr %disk105 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %disk105, align 4
  tail call void @blk_cleanup_disk(ptr noundef %194) #17
  br label %out_cleanup_tags

out_cleanup_tags:                                 ; preds = %out_cleanup_disk, %if.then30, %if.end21.out_cleanup_tags_crit_edge
  %rv.2 = phi i32 [ %77, %if.then30 ], [ %rv.1, %out_cleanup_disk ], [ 0, %if.end21.out_cleanup_tags_crit_edge ]
  %195 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %queue_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %196)
  %cmp107 = icmp eq i32 %196, 2
  br i1 %cmp107, label %land.lhs.true, label %out_cleanup_tags.out_cleanup_queues_crit_edge

out_cleanup_tags.out_cleanup_queues_crit_edge:    ; preds = %out_cleanup_tags
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_queues

land.lhs.true:                                    ; preds = %out_cleanup_tags
  %tag_set108 = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 5
  %197 = ptrtoint ptr %tag_set108 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %tag_set108, align 8
  %__tag_set109 = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 6
  %cmp110 = icmp eq ptr %198, %__tag_set109
  br i1 %cmp110, label %if.then111, label %land.lhs.true.out_cleanup_queues_crit_edge

land.lhs.true.out_cleanup_queues_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_cleanup_queues

if.then111:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @blk_mq_free_tag_set(ptr noundef %__tag_set109) #17
  br label %out_cleanup_queues

out_cleanup_queues:                               ; preds = %if.then111, %land.lhs.true.out_cleanup_queues_crit_edge, %out_cleanup_tags.out_cleanup_queues_crit_edge, %if.then38.out_cleanup_queues_crit_edge, %if.end18.out_cleanup_queues_crit_edge
  %rv.3 = phi i32 [ %call17, %if.end18.out_cleanup_queues_crit_edge ], [ %rv.2, %if.then111 ], [ %rv.2, %land.lhs.true.out_cleanup_queues_crit_edge ], [ %rv.2, %out_cleanup_tags.out_cleanup_queues_crit_edge ], [ -12, %if.then38.out_cleanup_queues_crit_edge ]
  %nr_queues.i = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 13
  %199 = ptrtoint ptr %nr_queues.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %nr_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp6.not.i = icmp eq i32 %200, 0
  br i1 %cmp6.not.i, label %out_cleanup_queues.cleanup_queues.exit_crit_edge, label %for.body.lr.ph.i

out_cleanup_queues.cleanup_queues.exit_crit_edge: ; preds = %out_cleanup_queues
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup_queues.exit

for.body.lr.ph.i:                                 ; preds = %out_cleanup_queues
  %queues.i209 = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %201 = ptrtoint ptr %queues.i209 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %queues.i209, align 8
  %arrayidx.i = getelementptr %struct.nullb_queue, ptr %202, i32 %i.07.i
  %203 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %204) #17
  %cmds.i.i = getelementptr %struct.nullb_queue, ptr %202, i32 %i.07.i, i32 7
  %205 = ptrtoint ptr %cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cmds.i.i, align 4
  tail call void @kfree(ptr noundef %206) #17
  %inc.i = add nuw i32 %i.07.i, 1
  %207 = ptrtoint ptr %nr_queues.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %nr_queues.i, align 4
  %cmp.i210 = icmp ult i32 %inc.i, %208
  br i1 %cmp.i210, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_queues.exit_crit_edge

for.body.i.cleanup_queues.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

cleanup_queues.exit:                              ; preds = %for.body.i.cleanup_queues.exit_crit_edge, %out_cleanup_queues.cleanup_queues.exit_crit_edge
  %queues1.i = getelementptr inbounds %struct.nullb, ptr %call.i.i.i, i32 0, i32 12
  %209 = ptrtoint ptr %queues1.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %queues1.i, align 8
  tail call void @kfree(ptr noundef %210) #17
  br label %out_free_nullb

out_free_nullb:                                   ; preds = %cleanup_queues.exit, %if.end7.i.i.i.out_free_nullb_crit_edge, %kcalloc.exit.thread.i
  %rv.4 = phi i32 [ %rv.3, %cleanup_queues.exit ], [ -12, %if.end7.i.i.i.out_free_nullb_crit_edge ], [ -12, %kcalloc.exit.thread.i ]
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #17
  %211 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %dev, align 8
  br label %cleanup

cleanup:                                          ; preds = %out_free_nullb, %list_add_tail.exit, %if.end.cleanup_crit_edge, %null_validate_conf.exit
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %null_validate_conf.exit ], [ %rv.4, %out_free_nullb ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @null_init_tag_set(ptr noundef %nullb, ptr noundef %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @null_mq_ops, ptr %ops, align 4
  %tobool.not = icmp eq ptr %nullb, null
  br i1 %tobool.not, label %cond.end.thread, label %cond.true2

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %cond71 = load i32, ptr @g_submit_queues, align 4
  %nr_hw_queues72 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 3
  %1 = ptrtoint ptr %nr_hw_queues72 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cond71, ptr %nr_hw_queues72, align 4
  br label %cond.end6

cond.true2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nullb, align 8
  %submit_queues = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %submit_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load i32, ptr %submit_queues, align 4
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 3
  %5 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %nr_hw_queues, align 4
  %6 = load ptr, ptr %nullb, align 8
  %poll_queues4 = getelementptr inbounds %struct.nullb_device, ptr %6, i32 0, i32 26
  br label %cond.end6

cond.end6:                                        ; preds = %cond.true2, %cond.end.thread
  %nr_hw_queues74 = phi ptr [ %nr_hw_queues, %cond.true2 ], [ %nr_hw_queues72, %cond.end.thread ]
  %cond73 = phi i32 [ %cond, %cond.true2 ], [ %cond71, %cond.end.thread ]
  %cond7.in = phi ptr [ %poll_queues4, %cond.true2 ], [ @g_poll_queues, %cond.end.thread ]
  %7 = ptrtoint ptr %cond7.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond7 = load i32, ptr %cond7.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond7)
  %tobool8.not = icmp eq i32 %cond7, 0
  br i1 %tobool8.not, label %cond.end6.if.end_crit_edge, label %if.then

cond.end6.if.end_crit_edge:                       ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #19
  %add = add i32 %cond7, %cond73
  %8 = ptrtoint ptr %nr_hw_queues74 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %nr_hw_queues74, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end6.if.end_crit_edge
  br i1 %tobool.not, label %cond.false19.critedge, label %cond.true11

cond.true11:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nullb, align 8
  %hw_queue_depth = getelementptr inbounds %struct.nullb_device, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %hw_queue_depth to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond15.c68 = load i32, ptr %hw_queue_depth, align 4
  %queue_depth.c69 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 4
  %12 = ptrtoint ptr %queue_depth.c69 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond15.c68, ptr %queue_depth.c69, align 4
  %13 = load ptr, ptr %nullb, align 8
  %home_node = getelementptr inbounds %struct.nullb_device, ptr %13, i32 0, i32 28
  br label %cond.end20

cond.false19.critedge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %cond15.c = load i32, ptr @g_hw_queue_depth, align 4
  %queue_depth.c = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 4
  %14 = ptrtoint ptr %queue_depth.c to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond15.c, ptr %queue_depth.c, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19.critedge, %cond.true11
  %cond21.in = phi ptr [ %home_node, %cond.true11 ], [ @g_home_node, %cond.false19.critedge ]
  %15 = ptrtoint ptr %cond21.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond21 = load i32, ptr %cond21.in, align 4
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 7
  %16 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond21, ptr %numa_node, align 4
  %cmd_size = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 6
  %17 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 80, ptr %cmd_size, align 4
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 9
  %18 = load i32, ptr @g_no_sched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  %spec.store.select = select i1 %tobool22.not, i32 1, i32 65
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select, ptr %flags, align 4
  %20 = load i8, ptr @g_shared_tag_bitmap, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not = icmp eq i8 %20, 0
  br i1 %tobool26.not, label %cond.end20.if.end30_crit_edge, label %if.then27

cond.end20.if.end30_crit_edge:                    ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then27:                                        ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #19
  %or29 = or i32 %spec.store.select, 8
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or29, ptr %flags, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %cond.end20.if.end30_crit_edge
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %22 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %nullb, ptr %driver_data, align 4
  %spec.select = select i1 %tobool8.not, i32 1, i32 3
  %23 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select, ptr %23, align 4
  br i1 %tobool.not, label %if.end30.lor.lhs.false_crit_edge, label %land.lhs.true

if.end30.lor.lhs.false_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end30
  %25 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nullb, align 8
  %blocking = getelementptr inbounds %struct.nullb_device, ptr %26, i32 0, i32 36
  %27 = ptrtoint ptr %blocking to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %blocking, align 8, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool37.not = icmp eq i8 %28, 0
  br i1 %tobool37.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then39_crit_edge

land.lhs.true.if.then39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then39

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end30.lor.lhs.false_crit_edge
  %29 = load i8, ptr @g_blocking, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool38.not = icmp eq i8 %29, 0
  br i1 %tobool38.not, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then39

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %land.lhs.true.if.then39_crit_edge
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %or41 = or i32 %31, 32
  store i32 %or41, ptr %flags, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %lor.lhs.false.if.end42_crit_edge
  %call = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %set) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @null_setup_fault() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @g_timeout_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @setup_fault_attr(ptr noundef nonnull @null_timeout_attr, ptr noundef nonnull @g_timeout_str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i.return_crit_edge, label %if.end3.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  store i32 0, ptr getelementptr inbounds (%struct.fault_attr, ptr @null_timeout_attr, i32 0, i32 4), align 4
  br label %if.end

if.end:                                           ; preds = %if.end3.i, %entry.if.end_crit_edge
  %1 = load i8, ptr @g_requeue_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i7 = icmp eq i8 %1, 0
  br i1 %tobool.not.i7, label %if.end.if.end3_crit_edge, label %if.end.i10

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.end.i10:                                       ; preds = %if.end
  %call.i8 = tail call i32 @setup_fault_attr(ptr noundef nonnull @null_requeue_attr, ptr noundef nonnull @g_requeue_str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool1.not.i9 = icmp eq i32 %call.i8, 0
  br i1 %tobool1.not.i9, label %if.end.i10.return_crit_edge, label %if.end3.i11

if.end.i10.return_crit_edge:                      ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end3.i11:                                      ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #19
  store i32 0, ptr getelementptr inbounds (%struct.fault_attr, ptr @null_requeue_attr, i32 0, i32 4), align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3.i11, %if.end.if.end3_crit_edge
  %2 = load i8, ptr @g_init_hctx_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i14 = icmp eq i8 %2, 0
  br i1 %tobool.not.i14, label %if.end3.return_crit_edge, label %if.end.i17

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i17:                                       ; preds = %if.end3
  %call.i15 = tail call i32 @setup_fault_attr(ptr noundef nonnull @null_init_hctx_attr, ptr noundef nonnull @g_init_hctx_str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool1.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool1.not.i16, label %if.end.i17.return_crit_edge, label %if.end3.i18

if.end.i17.return_crit_edge:                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end3.i18:                                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #19
  store i32 0, ptr getelementptr inbounds (%struct.fault_attr, ptr @null_init_hctx_attr, i32 0, i32 4), align 4
  br label %return

return:                                           ; preds = %if.end3.i18, %if.end.i17.return_crit_edge, %if.end3.return_crit_edge, %if.end.i10.return_crit_edge, %if.end.i.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end.i.return_crit_edge ], [ false, %if.end.i10.return_crit_edge ], [ true, %if.end3.i18 ], [ true, %if.end3.return_crit_edge ], [ false, %if.end.i17.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_alloc_disk(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_driver_queues(ptr nocapture noundef %nullb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nullb, align 8
  %submit_queues17 = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %submit_queues17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %submit_queues17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not = icmp eq i32 %3, 0
  br i1 %cmp18.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %queues = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 12
  %queue_depth.i = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 7
  %nr_queues = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc1, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queues, align 8
  %arrayidx = getelementptr %struct.nullb_queue, ptr %5, i32 %i.019
  %wait.i = getelementptr %struct.nullb_queue, ptr %5, i32 %i.019, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @null_init_queue.__key) #17
  %6 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_depth.i, align 4
  %queue_depth1.i = getelementptr %struct.nullb_queue, ptr %5, i32 %i.019, i32 2
  %8 = ptrtoint ptr %queue_depth1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %queue_depth1.i, align 4
  %9 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nullb, align 8
  %dev2.i = getelementptr %struct.nullb_queue, ptr %5, i32 %i.019, i32 3
  %11 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dev2.i, align 4
  %poll_list.i = getelementptr %struct.nullb_queue, ptr %5, i32 %i.019, i32 5
  %12 = ptrtoint ptr %poll_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %poll_list.i, ptr %poll_list.i, align 4
  %prev.i.i = getelementptr %struct.nullb_queue, ptr %5, i32 %i.019, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %poll_list.i, ptr %prev.i.i, align 4
  %poll_lock.i = getelementptr %struct.nullb_queue, ptr %5, i32 %i.019, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %poll_lock.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @null_init_queue.__key.33, i16 noundef signext 3) #17
  %14 = ptrtoint ptr %queue_depth1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queue_depth1.i, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 80) #17
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !457

kcalloc.exit.thread.i:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %cmds58.i = getelementptr %struct.nullb_queue, ptr %5, i32 %i.019, i32 7
  %18 = ptrtoint ptr %cmds58.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cmds58.i, align 4
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %for.body
  %19 = extractvalue { i32, i1 } %16, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #22
  %cmds.i = getelementptr %struct.nullb_queue, ptr %5, i32 %i.019, i32 7
  %20 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i.i, ptr %cmds.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end7.i.i54.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7.i.i54.i:                                  ; preds = %if.end7.i.i.i
  %21 = ptrtoint ptr %queue_depth1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %queue_depth1.i, align 4
  %add.i = add i32 %22, 31
  %23 = lshr i32 %add.i, 3
  %24 = and i32 %23, 536870908
  %call8.i.i53.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #22
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i53.i, ptr %arrayidx, align 4
  %tobool5.not.i = icmp eq ptr %call8.i.i53.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i54.i
  %26 = ptrtoint ptr %queue_depth1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %queue_depth1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp67.not.i = icmp eq i32 %27, 0
  br i1 %cmp67.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then6.i:                                       ; preds = %if.end7.i.i54.i
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmds.i, align 4
  tail call void @kfree(ptr noundef %29) #17
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.068.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmds.i, align 4
  %tag.i = getelementptr %struct.nullb_cmd, ptr %31, i32 %i.068.i, i32 2
  %32 = ptrtoint ptr %tag.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %tag.i, align 8
  %inc.i = add nuw i32 %i.068.i, 1
  %33 = ptrtoint ptr %queue_depth1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %queue_depth1.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %34
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  %35 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_queues, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %nr_queues, align 4
  %inc1 = add nuw i32 %i.019, 1
  %37 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nullb, align 8
  %submit_queues = getelementptr inbounds %struct.nullb_device, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %submit_queues to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %submit_queues, align 8
  %cmp = icmp ult i32 %inc1, %40
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then6.i, %if.end7.i.i.i.cleanup_crit_edge, %kcalloc.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6.i ], [ -12, %kcalloc.exit.thread.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @null_init_zoned_dev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_virt_boundary(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @null_free_zoned_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @null_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %1, i32 1
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 128
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %5, 9
  %conv = zext i32 %shr.i to i64
  %__sector.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %__sector.i, align 8
  %type = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 13
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp = icmp eq i16 %9, 2
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 5
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 16
  %and = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.body7

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1623) #17
  br label %do.end12

do.end12:                                         ; preds = %do.body7, %entry.do.end12_crit_edge
  br i1 %cmp, label %do.end12.if.end18_crit_edge, label %land.lhs.true

do.end12.if.end18_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

land.lhs.true:                                    ; preds = %do.end12
  %dev = getelementptr inbounds %struct.nullb_queue, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %irqmode = getelementptr inbounds %struct.nullb_device, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %irqmode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irqmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp14 = icmp eq i32 %15, 2
  br i1 %cmp14, label %if.then16, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %timer = getelementptr %struct.request, ptr %1, i32 1, i32 6
  tail call void @hrtimer_init(ptr noundef %timer, i32 noundef 1, i32 noundef 1) #17
  %function = getelementptr %struct.request, ptr %1, i32 1, i32 12
  %16 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @null_cmd_timer_expired, ptr %function, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true.if.end18_crit_edge, %do.end12.if.end18_crit_edge
  %17 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bd, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %add.ptr.i, align 8
  %error = getelementptr %struct.request, ptr %1, i32 1, i32 3
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %error, align 4
  %nq21 = getelementptr %struct.request, ptr %1, i32 1, i32 4
  %21 = ptrtoint ptr %nq21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %nq21, align 8
  %22 = load i8, ptr @g_timeout_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end18.should_timeout_request.exit_crit_edge, label %if.then.i

if.end18.should_timeout_request.exit_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %should_timeout_request.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call zeroext i1 @should_fail(ptr noundef nonnull @null_timeout_attr, i32 noundef 1) #17
  br label %should_timeout_request.exit

should_timeout_request.exit:                      ; preds = %if.then.i, %if.end18.should_timeout_request.exit_crit_edge
  %retval.0.i = phi i1 [ %call.i, %if.then.i ], [ false, %if.end18.should_timeout_request.exit_crit_edge ]
  %fake_timeout = getelementptr %struct.request, ptr %1, i32 1, i32 14
  %frombool24 = zext i1 %retval.0.i to i8
  %23 = ptrtoint ptr %fake_timeout to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool24, ptr %fake_timeout, align 8
  %24 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bd, align 4
  tail call void @blk_mq_start_request(ptr noundef %25) #17
  %26 = load i8, ptr @g_requeue_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i76 = icmp eq i8 %26, 0
  br i1 %tobool.not.i76, label %should_timeout_request.exit.if.end34_crit_edge, label %should_requeue_request.exit

should_timeout_request.exit.if.end34_crit_edge:   ; preds = %should_timeout_request.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

should_requeue_request.exit:                      ; preds = %should_timeout_request.exit
  %call.i77 = tail call zeroext i1 @should_fail(ptr noundef nonnull @null_requeue_attr, i32 noundef 1) #17
  br i1 %call.i77, label %if.then28, label %should_requeue_request.exit.if.end34_crit_edge

should_requeue_request.exit.if.end34_crit_edge:   ; preds = %should_requeue_request.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then28:                                        ; preds = %should_requeue_request.exit
  %requeue_selection = getelementptr inbounds %struct.nullb_queue, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %requeue_selection to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %requeue_selection, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %requeue_selection, align 4
  %and30 = and i32 %inc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bd, align 4
  tail call void @blk_mq_requeue_request(ptr noundef %30, i1 noundef zeroext true) #17
  br label %cleanup

if.end34:                                         ; preds = %should_requeue_request.exit.if.end34_crit_edge, %should_timeout_request.exit.if.end34_crit_edge
  br i1 %cmp, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end34
  %poll_lock = getelementptr inbounds %struct.nullb_queue, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %poll_lock) #17
  %31 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bd, align 4
  %33 = getelementptr inbounds %struct.request, ptr %32, i32 0, i32 12
  %poll_list = getelementptr inbounds %struct.nullb_queue, ptr %3, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.nullb_queue, ptr %3, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %33, ptr noundef %35, ptr noundef %poll_list) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then36.list_add_tail.exit_crit_edge

if.then36.list_add_tail.exit_crit_edge:           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %poll_list, ptr %33, align 4
  %prev3.i.i = getelementptr inbounds %struct.request, ptr %32, i32 0, i32 12, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %33, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then36.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %poll_lock) #17
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %40 = ptrtoint ptr %fake_timeout to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fake_timeout, align 8, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool41.not = icmp eq i8 %41, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bd, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cmd_flags, align 4
  %and45 = and i32 %45, 255
  %call46 = tail call fastcc zeroext i8 @null_handle_cmd(ptr noundef %add.ptr.i, i64 noundef %7, i64 noundef %conv, i32 noundef %and45)
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end39.cleanup_crit_edge, %list_add_tail.exit, %if.else, %if.then28.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.else ], [ 0, %list_add_tail.exit ], [ %call46, %if.end43 ], [ 9, %if.then28.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @null_timeout_rq(ptr noundef %rq, i1 noundef zeroext %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mq_hctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq_hctx, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %rq) #20
  %type = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp = icmp eq i16 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 128
  %poll_lock = getelementptr inbounds %struct.nullb_queue, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %poll_lock) #17
  %6 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 12, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 12, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %poll_lock) #17
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %error = getelementptr %struct.request, ptr %rq, i32 1, i32 3
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %error, align 4
  %fake_timeout = getelementptr %struct.request, ptr %rq, i32 1, i32 14
  %16 = ptrtoint ptr %fake_timeout to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fake_timeout, align 8, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @blk_mq_complete_request(ptr noundef %rq) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @null_poll(ptr nocapture noundef readonly %hctx, ptr noundef %iob) #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #17
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  %poll_lock = getelementptr inbounds %struct.nullb_queue, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %poll_lock) #17
  %poll_list = getelementptr inbounds %struct.nullb_queue, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %poll_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %poll_list, align 4
  %cmp.i.not.i = icmp eq ptr %6, %poll_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.nullb_queue, ptr %1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %6, ptr %list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %10, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev6.i.i, align 4
  %14 = ptrtoint ptr %poll_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %poll_list, ptr %poll_list, align 4
  store ptr %poll_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %poll_lock) #17
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %list, align 4
  %cmp.i.not22 = icmp eq ptr %16, %list
  br i1 %cmp.i.not22, label %list_splice_init.exit.while.end_crit_edge, label %while.body.lr.ph

list_splice_init.exit.while.end_crit_edge:        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %list_splice_init.exit
  %tobool.not.i = icmp eq ptr %iob, null
  %complete6.i = getelementptr inbounds %struct.io_comp_batch, ptr %iob, i32 0, i32 2
  %need_ts.i = getelementptr inbounds %struct.io_comp_batch, ptr %iob, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %17 = phi ptr [ %16, %while.body.lr.ph ], [ %48, %if.end.while.body_crit_edge ]
  %nr.023 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %17, i32 -56
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #17
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %17, ptr %17, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %17, ptr %prev.i3.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 136
  %cmd_flags = getelementptr i8, ptr %17, i32 -44
  %26 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %27, 255
  %__sector.i = getelementptr i8, ptr %17, i32 -16
  %28 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %__sector.i, align 8
  %__data_len.i.i = getelementptr i8, ptr %17, i32 -24
  %30 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %31, 9
  %call6 = call zeroext i8 @null_process_cmd(ptr noundef %add.ptr.i, i32 noundef %and, i64 noundef %29, i32 noundef %shr.i)
  %error = getelementptr i8, ptr %17, i32 148
  %32 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %call6, ptr %error, align 4
  br i1 %tobool.not.i, label %list_del_init.exit.if.then_crit_edge, label %lor.lhs.false.i

list_del_init.exit.if.then_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false.i:                                  ; preds = %list_del_init.exit
  %rq_flags.i = getelementptr i8, ptr %17, i32 -40
  %33 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %34, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %end_io.i = getelementptr i8, ptr %17, i32 128
  %35 = ptrtoint ptr %end_io.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end_io.i, align 8
  %tobool3.not.i = icmp eq ptr %36, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call6)
  %tobool5.not.i = icmp eq i8 %call6, 0
  %or.cond.i = and i1 %tobool5.not.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.end.i, label %lor.lhs.false2.i.if.then_crit_edge

lor.lhs.false2.i.if.then_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %37 = ptrtoint ptr %complete6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %complete6.i, align 4
  %tobool7.not.i = icmp eq ptr %38, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %complete6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @blk_mq_end_request_batch, ptr %complete6.i, align 4
  br label %blk_mq_add_to_batch.exit

if.else.i:                                        ; preds = %if.end.i
  %cmp.not.i = icmp eq ptr %38, @blk_mq_end_request_batch
  br i1 %cmp.not.i, label %if.else.i.blk_mq_add_to_batch.exit_crit_edge, label %if.else.i.if.then_crit_edge

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.else.i.blk_mq_add_to_batch.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %blk_mq_add_to_batch.exit

blk_mq_add_to_batch.exit:                         ; preds = %if.else.i.blk_mq_add_to_batch.exit_crit_edge, %if.then8.i
  %40 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rq_flags.i, align 8
  %and.i.i = and i32 %41, 4333568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %conv.i20 = zext i1 %tobool.i.i to i8
  %42 = ptrtoint ptr %need_ts.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %need_ts.i, align 4, !range !450
  %or.i = or i8 %43, %conv.i20
  store i8 %or.i, ptr %need_ts.i, align 4
  %44 = ptrtoint ptr %iob to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iob, align 4
  %46 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %17, align 8
  store ptr %add.ptr, ptr %iob, align 4
  br label %if.end

if.then:                                          ; preds = %if.else.i.if.then_crit_edge, %lor.lhs.false2.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %list_del_init.exit.if.then_crit_edge
  call fastcc void @end_cmd(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %blk_mq_add_to_batch.exit
  %inc = add i32 %nr.023, 1
  %47 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %48, %list
  br i1 %cmp.i.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %list_splice_init.exit.while.end_crit_edge
  %nr.0.lcssa = phi i32 [ 0, %list_splice_init.exit.while.end_crit_edge ], [ %inc, %if.end.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #17
  ret i32 %nr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @null_complete_rq(ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  tail call fastcc void @end_cmd(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @null_init_hctx(ptr nocapture noundef %hctx, ptr nocapture noundef readnone %driver_data, i32 noundef %hctx_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %4 = load i8, ptr @g_init_hctx_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @should_fail(ptr noundef nonnull @null_init_hctx_attr, i32 noundef 1) #17
  br i1 %call, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %queues = getelementptr inbounds %struct.nullb, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queues, align 8
  %arrayidx = getelementptr %struct.nullb_queue, ptr %6, i32 %hctx_idx
  %driver_data2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %7 = ptrtoint ptr %driver_data2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %driver_data2, align 128
  %wait.i = getelementptr %struct.nullb_queue, ptr %6, i32 %hctx_idx, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @null_init_queue.__key) #17
  %queue_depth.i = getelementptr inbounds %struct.nullb, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_depth.i, align 4
  %queue_depth1.i = getelementptr %struct.nullb_queue, ptr %6, i32 %hctx_idx, i32 2
  %10 = ptrtoint ptr %queue_depth1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %queue_depth1.i, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %dev2.i = getelementptr %struct.nullb_queue, ptr %6, i32 %hctx_idx, i32 3
  %13 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev2.i, align 4
  %poll_list.i = getelementptr %struct.nullb_queue, ptr %6, i32 %hctx_idx, i32 5
  %14 = ptrtoint ptr %poll_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %poll_list.i, ptr %poll_list.i, align 4
  %prev.i.i = getelementptr %struct.nullb_queue, ptr %6, i32 %hctx_idx, i32 5, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %poll_list.i, ptr %prev.i.i, align 4
  %poll_lock.i = getelementptr %struct.nullb_queue, ptr %6, i32 %hctx_idx, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %poll_lock.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @null_init_queue.__key.33, i16 noundef signext 3) #17
  %nr_queues = getelementptr inbounds %struct.nullb, ptr %3, i32 0, i32 13
  %16 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_queues, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %nr_queues, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @null_exit_hctx(ptr nocapture noundef readonly %hctx, i32 noundef %hctx_idx) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  %dev = getelementptr inbounds %struct.nullb_queue, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %nr_queues = getelementptr inbounds %struct.nullb, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %nr_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_queues, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %nr_queues, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @null_map_queues(ptr noundef %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @g_submit_queues, align 4
  %3 = load i32, ptr @g_poll_queues, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 3
  %6 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_hw_queues, align 4
  %submit_queues2 = getelementptr inbounds %struct.nullb_device, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %submit_queues2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %submit_queues2, align 8
  %poll_queues3 = getelementptr inbounds %struct.nullb_device, ptr %5, i32 0, i32 26
  %10 = ptrtoint ptr %poll_queues3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poll_queues3, align 8
  %add = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp = icmp eq i32 %7, %add
  br i1 %cmp, label %if.then.if.end16_crit_edge, label %if.else

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.else:                                          ; preds = %if.then
  %prev_submit_queues = getelementptr inbounds %struct.nullb_device, ptr %5, i32 0, i32 25
  %12 = ptrtoint ptr %prev_submit_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prev_submit_queues, align 4
  %prev_poll_queues = getelementptr inbounds %struct.nullb_device, ptr %5, i32 0, i32 27
  %14 = ptrtoint ptr %prev_poll_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prev_poll_queues, align 4
  %add8 = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add8)
  %cmp9 = icmp eq i32 %7, %add8
  br i1 %cmp9, label %if.else.if.end16_crit_edge, label %cleanup

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %7) #20
  br label %cleanup29

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %submit_queues.2 = phi i32 [ %2, %entry.if.end16_crit_edge ], [ %13, %if.else.if.end16_crit_edge ], [ %9, %if.then.if.end16_crit_edge ]
  %poll_queues.2 = phi i32 [ %3, %entry.if.end16_crit_edge ], [ %15, %if.else.if.end16_crit_edge ], [ %11, %if.then.if.end16_crit_edge ]
  %nr_maps = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 1
  %16 = ptrtoint ptr %nr_maps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_maps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1760.not = icmp eq i32 %17, 0
  br i1 %cmp1760.not, label %if.end16.cleanup29_crit_edge, label %for.body.preheader

if.end16.cleanup29_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup29

for.body.preheader:                               ; preds = %if.end16
  %nr_queues22 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 2, i32 1
  %nr_queues20 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1, i32 1
  %nr_queues = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup26.for.body_crit_edge, %for.body.preheader
  %qoff.064 = phi i32 [ %qoff.1, %cleanup26.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.061 = phi i32 [ %inc, %cleanup26.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 %i.061
  %18 = zext i32 %i.061 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %i.061, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb21
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %nr_queues to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %submit_queues.2, ptr %nr_queues, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %nr_queues20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %nr_queues20, align 4
  br label %cleanup26

sw.bb21:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %nr_queues22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %poll_queues.2, ptr %nr_queues22, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb, %for.body.sw.epilog_crit_edge
  %queue_offset = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 %i.061, i32 2
  %22 = ptrtoint ptr %queue_offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %qoff.064, ptr %queue_offset, align 4
  %nr_queues23 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 %i.061, i32 1
  %23 = ptrtoint ptr %nr_queues23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_queues23, align 4
  %add24 = add i32 %24, %qoff.064
  %call25 = tail call i32 @blk_mq_map_queues(ptr noundef %arrayidx) #17
  br label %cleanup26

cleanup26:                                        ; preds = %sw.epilog, %sw.bb19
  %qoff.1 = phi i32 [ %add24, %sw.epilog ], [ %qoff.064, %sw.bb19 ]
  %inc = add nuw i32 %i.061, 1
  %25 = ptrtoint ptr %nr_maps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_maps, align 4
  %cmp17 = icmp ult i32 %inc, %26
  br i1 %cmp17, label %cleanup26.for.body_crit_edge, label %cleanup26.cleanup29_crit_edge

cleanup26.cleanup29_crit_edge:                    ; preds = %cleanup26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup29

cleanup26.for.body_crit_edge:                     ; preds = %cleanup26
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup29:                                        ; preds = %cleanup26.cleanup29_crit_edge, %if.end16.cleanup29_crit_edge, %cleanup
  %retval.1 = phi i32 [ -22, %cleanup ], [ 0, %if.end16.cleanup29_crit_edge ], [ 0, %cleanup26.cleanup29_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @null_cmd_timer_expired(ptr nocapture noundef readonly %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -24
  tail call fastcc void @end_cmd(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_requeue_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @null_handle_cmd(ptr noundef %cmd, i64 noundef %sector, i64 noundef %nr_sectors, i32 noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nq = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %nq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nq, align 8
  %dev1 = getelementptr inbounds %struct.nullb_queue, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %flags = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd, align 8
  %bw_timer.i = getelementptr inbounds %struct.nullb, ptr %5, i32 0, i32 9
  %call.i = tail call zeroext i1 @hrtimer_active(ptr noundef %bw_timer.i) #17
  br i1 %call.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %_softexpires.i.i.i.i = getelementptr inbounds %struct.nullb, ptr %5, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %_softexpires.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %_softexpires.i.i.i.i, align 8
  %expires.i.i.i.i = getelementptr inbounds %struct.nullb, ptr %5, i32 0, i32 9, i32 0, i32 1
  %13 = ptrtoint ptr %expires.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %expires.i.i.i.i, align 8
  %sub.i.i.i = sub i64 %14, %12
  tail call void @hrtimer_start_range_ns(ptr noundef %bw_timer.i, i64 noundef %12, i64 noundef %sub.i.i.i, i32 noundef 0) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %10, i32 0, i32 8
  %15 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__data_len.i.i, align 8
  %cur_bytes.i = getelementptr inbounds %struct.nullb, ptr %5, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_bytes.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !458
  tail call void @llvm.prefetch.p0(ptr %cur_bytes.i, i32 1, i32 3, i32 1) #17
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cur_bytes.i, ptr %cur_bytes.i, i32 %16, ptr elementtype(i32) %cur_bytes.i) #17, !srcloc !459
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !460
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %if.then7.i, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then7.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 8
  %queue_mode.i.i = getelementptr inbounds %struct.nullb_device, ptr %19, i32 0, i32 29
  %20 = ptrtoint ptr %queue_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %queue_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then7.i.null_stop_queue.exit.i_crit_edge

if.then7.i.null_stop_queue.exit.i_crit_edge:      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_stop_queue.exit.i

if.then.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %q1.i.i = getelementptr inbounds %struct.nullb, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %q1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %q1.i.i, align 8
  tail call void @blk_mq_stop_hw_queues(ptr noundef %23) #17
  br label %null_stop_queue.exit.i

null_stop_queue.exit.i:                           ; preds = %if.then.i.i, %if.then7.i.null_stop_queue.exit.i_crit_edge
  %call.i.i20.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_bytes.i, i32 noundef 4) #17
  %24 = ptrtoint ptr %cur_bytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %cur_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp10.i = icmp sgt i32 %25, 0
  br i1 %cmp10.i, label %if.then11.i, label %null_stop_queue.exit.i.cleanup_crit_edge

null_stop_queue.exit.i.cleanup_crit_edge:         ; preds = %null_stop_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then11.i:                                      ; preds = %null_stop_queue.exit.i
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 8
  %queue_mode.i21.i = getelementptr inbounds %struct.nullb_device, ptr %27, i32 0, i32 29
  %28 = ptrtoint ptr %queue_mode.i21.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %queue_mode.i21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.i22.i = icmp eq i32 %29, 2
  br i1 %cmp.i22.i, label %if.then.i24.i, label %if.then11.i.cleanup_crit_edge

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i24.i:                                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #19
  %q1.i23.i = getelementptr inbounds %struct.nullb, ptr %5, i32 0, i32 3
  %30 = ptrtoint ptr %q1.i23.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %q1.i23.i, align 8
  tail call void @blk_mq_start_stopped_hw_queues(ptr noundef %31, i1 noundef zeroext true) #17
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %op)
  %cmp7 = icmp eq i32 %op, 2
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 8
  %flags.i.i = getelementptr inbounds %struct.nullb_device, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i.i, align 4
  %36 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.then9.null_handle_flush.exit_crit_edge, label %if.end.i43

if.then9.null_handle_flush.exit_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_handle_flush.exit

if.end.i43:                                       ; preds = %if.then9
  %lock.i = getelementptr inbounds %struct.nullb, ptr %5, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #17
  br label %while.cond.i

while.cond.i:                                     ; preds = %lor.lhs.false.i.while.cond.i_crit_edge, %if.end.i43
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 8
  %cache_size.i = getelementptr inbounds %struct.nullb_device, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cache_size.i, align 8
  %mul1.i = shl i32 %40, 20
  %call2.i = tail call fastcc i32 @null_make_cache_space(ptr noundef %5, i32 noundef %mul1.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

lor.lhs.false.i:                                  ; preds = %while.cond.i
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 8
  %curr_cache.i = getelementptr inbounds %struct.nullb_device, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %curr_cache.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %curr_cache.i, align 4
  %cmp.i44 = icmp eq i32 %44, 0
  br i1 %cmp.i44, label %lor.lhs.false.i.while.end.i_crit_edge, label %lor.lhs.false.i.while.cond.i_crit_edge

lor.lhs.false.i.while.cond.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

lor.lhs.false.i.while.end.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %lor.lhs.false.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 8
  %xa_head.i.i = getelementptr inbounds %struct.nullb_device, ptr %46, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xa_head.i.i, align 4
  %cmp.i.i45 = icmp eq ptr %48, null
  br i1 %cmp.i.i45, label %while.end.i.if.end24.i_crit_edge, label %do.end.i, !prof !448

while.end.i.if.end24.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24.i

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1173, i32 noundef 9, ptr noundef null) #17
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %while.end.i.if.end24.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #17
  br label %null_handle_flush.exit

null_handle_flush.exit:                           ; preds = %if.end24.i, %if.then9.null_handle_flush.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end24.i ], [ 0, %if.then9.null_handle_flush.exit_crit_edge ]
  %call11 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %retval.0.i) #17
  %error = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 3
  %49 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call11, ptr %error, align 4
  br label %out

if.end12:                                         ; preds = %if.end6
  %zoned = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 41
  %50 = ptrtoint ptr %zoned to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %zoned, align 1, !range !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool13.not = icmp eq i8 %51, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %call15 = tail call zeroext i8 @null_process_zoned_cmd(ptr noundef %cmd, i32 noundef %op, i64 noundef %sector, i64 noundef %nr_sectors) #17
  br label %if.end18

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %conv16 = trunc i64 %nr_sectors to i32
  %call17 = tail call zeroext i8 @null_process_cmd(ptr noundef %cmd, i32 noundef %op, i64 noundef %sector, i32 noundef %conv16)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %sts.0 = phi i8 [ %call15, %if.then14 ], [ %call17, %if.else ]
  %error19 = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 3
  %52 = ptrtoint ptr %error19 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %error19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp21 = icmp eq i8 %53, 0
  br i1 %cmp21, label %if.then23, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %error19 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %sts.0, ptr %error19, align 4
  br label %out

out:                                              ; preds = %if.then23, %if.end18.out_crit_edge, %null_handle_flush.exit
  %55 = ptrtoint ptr %nq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nq, align 8
  %dev.i = getelementptr inbounds %struct.nullb_queue, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  %irqmode.i = getelementptr inbounds %struct.nullb_device, ptr %58, i32 0, i32 32
  %59 = ptrtoint ptr %irqmode.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irqmode.i, align 8
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %60, label %out.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb8.i
    i32 2, label %sw.bb9.i
  ]

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb.i:                                          ; preds = %out
  %queue_mode.i = getelementptr inbounds %struct.nullb_device, ptr %58, i32 0, i32 29
  %62 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %queue_mode.i, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %63, label %sw.bb.i.cleanup_crit_edge [
    i32 2, label %sw.bb3.i
    i32 0, label %sw.bb7.i
  ]

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb.i
  %65 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cmd, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %queue_flags.i.i, align 4
  %71 = and i32 %70, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i, label %sw.bb3.i.if.then.i47_crit_edge, label %blk_should_fake_timeout.exit.i

sw.bb3.i.if.then.i47_crit_edge:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i47

blk_should_fake_timeout.exit.i:                   ; preds = %sw.bb3.i
  %call1.i.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %68) #17
  br i1 %call1.i.i, label %blk_should_fake_timeout.exit.i.cleanup_crit_edge, label %blk_should_fake_timeout.exit.i.if.then.i47_crit_edge, !prof !457

blk_should_fake_timeout.exit.i.if.then.i47_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i47

blk_should_fake_timeout.exit.i.cleanup_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i47:                                      ; preds = %blk_should_fake_timeout.exit.i.if.then.i47_crit_edge, %sw.bb3.i.if.then.i47_crit_edge
  %72 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cmd, align 8
  tail call void @blk_mq_complete_request(ptr noundef %73) #17
  br label %cleanup

sw.bb7.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @end_cmd(ptr noundef %cmd) #17
  br label %cleanup

sw.bb8.i:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @end_cmd(ptr noundef %cmd) #17
  br label %cleanup

sw.bb9.i:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  %completion_nsec.i.i = getelementptr inbounds %struct.nullb_device, ptr %58, i32 0, i32 17
  %74 = ptrtoint ptr %completion_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %completion_nsec.i.i, align 4
  %conv.i.i = zext i32 %75 to i64
  %timer.i.i = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 5
  tail call void @hrtimer_start_range_ns(ptr noundef %timer.i.i, i64 noundef %conv.i.i, i64 noundef 0, i32 noundef 1) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %if.then.i47, %blk_should_fake_timeout.exit.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %out.cleanup_crit_edge, %if.then.i24.i, %if.then11.i.cleanup_crit_edge, %null_stop_queue.exit.i.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %out.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ 0, %blk_should_fake_timeout.exit.i.cleanup_crit_edge ], [ 0, %if.then.i47 ], [ 0, %sw.bb7.i ], [ 0, %sw.bb8.i ], [ 0, %sw.bb9.i ], [ 13, %null_stop_queue.exit.i.cleanup_crit_edge ], [ 13, %if.then11.i.cleanup_crit_edge ], [ 13, %if.then.i24.i ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @end_cmd(ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nq = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %nq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nq, align 8
  %dev = getelementptr inbounds %struct.nullb_queue, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %queue_mode1 = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %queue_mode1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_mode1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd, align 8
  %error = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 3
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %error, align 4
  tail call void @blk_mq_end_request(ptr noundef %8, i8 noundef zeroext %10) #17
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %error3 = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 3
  %11 = ptrtoint ptr %error3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %error3, align 4
  %bio = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bio, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %12, ptr %bi_status, align 2
  %16 = load ptr, ptr %bio, align 4
  tail call void @bio_endio(ptr noundef %16) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %17 = ptrtoint ptr %nq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nq, align 8
  %tag.i = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 2
  %19 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tag.i, align 8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %div.i.i.i = sdiv i32 %20, 32
  %add.ptr.i.i.i = getelementptr i32, ptr %22, i32 %div.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i.i, i32 noundef 4) #17
  %div3.i.i.i.i = lshr i32 %20, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %22, i32 %div3.i.i.i.i
  %rem.i.i.i.i = and i32 %20, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !461
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i.i.i.i, i32 1, i32 3, i32 1) #17
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i.i.i.i, ptr %add.ptr.i.i.i.i, i32 %shl.i.i.i.i, ptr elementtype(i32) %add.ptr.i.i.i.i) #17, !srcloc !462
  %head.i.i.i = getelementptr inbounds %struct.nullb_queue, ptr %18, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %25, %head.i.i.i
  br i1 %cmp.i.i.not.i.i, label %sw.epilog.cleanup_crit_edge, label %if.then.i.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %wait.i.i = getelementptr inbounds %struct.nullb_queue, ptr %18, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %sw.epilog.cleanup_crit_edge, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @null_process_zoned_cmd(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_stop_hw_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_stopped_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request_batch(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setup_fault_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_bwtimer_fn(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -224
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %mbps1 = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %mbps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbps1, align 4
  %cur_bytes = getelementptr i8, ptr %timer, i32 -8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_bytes, i32 noundef 4) #17
  %4 = ptrtoint ptr %cur_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cur_bytes, align 4
  %conv = sext i32 %5 to i64
  %conv.i = sext i32 %3 to i64
  %mul.i = mul nsw i64 %conv.i, 20971
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %conv)
  %cmp = icmp eq i64 %mul.i, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv7 = trunc i64 %mul.i to i32
  %call.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_bytes, i32 noundef 4) #17
  %6 = ptrtoint ptr %cur_bytes to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %conv7, ptr %cur_bytes, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %queue_mode.i = getelementptr inbounds %struct.nullb_device, ptr %8, i32 0, i32 29
  %9 = ptrtoint ptr %queue_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.null_restart_queue_async.exit_crit_edge

if.end.null_restart_queue_async.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %null_restart_queue_async.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %q1.i = getelementptr i8, ptr %timer, i32 -208
  %11 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q1.i, align 8
  tail call void @blk_mq_start_stopped_hw_queues(ptr noundef %12, i1 noundef zeroext true) #17
  br label %null_restart_queue_async.exit

null_restart_queue_async.exit:                    ; preds = %if.then.i, %if.end.null_restart_queue_async.exit_crit_edge
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %16() #17
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i, i64 noundef 20000000) #17
  br label %cleanup

cleanup:                                          ; preds = %null_restart_queue_async.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %null_restart_queue_async.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @null_register_zoned_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @null_report_zones(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @null_submit_bio(ptr noundef %bio) #0 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %0 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_size, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %4 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 8
  %nr_queues.i = getelementptr inbounds %struct.nullb, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %nr_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 1
  br i1 %cmp.not.i, label %entry.nullb_to_queue.exit_crit_edge, label %if.then.i

entry.nullb_to_queue.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %nullb_to_queue.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %12 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %add.i = add i32 %11, -1
  %sub.i = add i32 %add.i, %16
  %div.i = udiv i32 %sub.i, %11
  %div3.i = udiv i32 %15, %div.i
  br label %nullb_to_queue.exit

nullb_to_queue.exit:                              ; preds = %if.then.i, %entry.nullb_to_queue.exit_crit_edge
  %index.0.i = phi i32 [ %div3.i, %if.then.i ], [ 0, %entry.nullb_to_queue.exit_crit_edge ]
  %queues.i = getelementptr inbounds %struct.nullb, ptr %9, i32 0, i32 12
  %17 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queues.i, align 8
  %arrayidx.i = getelementptr %struct.nullb_queue, ptr %18, i32 %index.0.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #17
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %21 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %22 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %wait.i, align 4
  %24 = tail call i32 @llvm.read_register.i32(metadata !438) #17
  %and.i.i10 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i10 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %19, align 4
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @autoremove_wake_function, ptr %20, align 4
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %21, ptr %21, align 4
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %21, ptr %22, align 4
  %call4.i = call fastcc ptr @__alloc_cmd(ptr noundef %arrayidx.i) #17
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %do.body.preheader.i, label %nullb_to_queue.exit.alloc_cmd.exit_crit_edge

nullb_to_queue.exit.alloc_cmd.exit_crit_edge:     ; preds = %nullb_to_queue.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %alloc_cmd.exit

do.body.preheader.i:                              ; preds = %nullb_to_queue.exit
  %wait6.i = getelementptr %struct.nullb_queue, ptr %18, i32 %index.0.i, i32 1
  call void @prepare_to_wait(ptr noundef %wait6.i, ptr noundef nonnull %wait.i, i32 noundef 2) #17
  %call71.i = call fastcc ptr @__alloc_cmd(ptr noundef %arrayidx.i) #17
  %tobool8.not2.i = icmp eq ptr %call71.i, null
  br i1 %tobool8.not2.i, label %do.body.preheader.i.if.end10.i_crit_edge, label %do.body.preheader.i.do.end.i_crit_edge

do.body.preheader.i.do.end.i_crit_edge:           ; preds = %do.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.body.preheader.i.if.end10.i_crit_edge:         ; preds = %do.body.preheader.i
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10.i.if.end10.i_crit_edge, %do.body.preheader.i.if.end10.i_crit_edge
  call void @io_schedule() #17
  call void @prepare_to_wait(ptr noundef %wait6.i, ptr noundef nonnull %wait.i, i32 noundef 2) #17
  %call7.i = call fastcc ptr @__alloc_cmd(ptr noundef %arrayidx.i) #17
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end10.i.if.end10.i_crit_edge, label %if.end10.i.do.end.i_crit_edge

if.end10.i.do.end.i_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.end10.i.if.end10.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end10.i.do.end.i_crit_edge, %do.body.preheader.i.do.end.i_crit_edge
  %call7.lcssa.i = phi ptr [ %call71.i, %do.body.preheader.i.do.end.i_crit_edge ], [ %call7.i, %if.end10.i.do.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %wait6.i, ptr noundef nonnull %wait.i) #17
  br label %alloc_cmd.exit

alloc_cmd.exit:                                   ; preds = %do.end.i, %nullb_to_queue.exit.alloc_cmd.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.lcssa.i, %do.end.i ], [ %call4.i, %nullb_to_queue.exit.alloc_cmd.exit_crit_edge ]
  %shr = lshr i32 %3, 9
  %conv = zext i32 %shr to i64
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #17
  %bio3 = getelementptr inbounds %struct.nullb_cmd, ptr %retval.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %bio3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %bio, ptr %bio3, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %33 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bi_opf, align 8
  %and = and i32 %34, 255
  %call4 = call fastcc zeroext i8 @null_handle_cmd(ptr noundef nonnull %retval.0.i, i64 noundef %1, i64 noundef %conv, i32 noundef %and)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__alloc_cmd(ptr noundef %nq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_depth.i = getelementptr inbounds %struct.nullb_queue, ptr %nq, i32 0, i32 2
  %0 = ptrtoint ptr %nq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nq, align 4
  %2 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_depth.i, align 4
  %call9.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %1, i32 noundef %3) #17
  %4 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_depth.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %5)
  %cmp.not10.i = icmp ult i32 %call9.i, %5
  br i1 %cmp.not10.i, label %entry.do.cond.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

entry.do.cond.i_crit_edge:                        ; preds = %entry
  br label %do.cond.i

do.cond.i:                                        ; preds = %do.body.backedge.i.do.cond.i_crit_edge, %entry.do.cond.i_crit_edge
  %call11.i = phi i32 [ %call.i, %do.body.backedge.i.do.cond.i_crit_edge ], [ %call9.i, %entry.do.cond.i_crit_edge ]
  %6 = ptrtoint ptr %nq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nq, align 4
  %div.i.i = sdiv i32 %call11.i, 32
  %add.ptr.i.i = getelementptr i32, ptr %7, i32 %div.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef 4) #17
  %rem.i.i.i = and i32 %call11.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div10.i.i.i = lshr i32 %call11.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %7, i32 %div10.i.i.i
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %9, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.cond.i.do.body.backedge.i_crit_edge

do.cond.i.do.body.backedge.i_crit_edge:           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.backedge.i

if.end.i.i.i:                                     ; preds = %do.cond.i
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i.i.i, i32 1, i32 3, i32 1) #17
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i.i.i, ptr %add.ptr.i.i.i, i32 %shl.i.i.i, ptr elementtype(i32) %add.ptr.i.i.i) #17, !srcloc !463
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !464
  %11 = and i32 %asmresult.i.i.i.i.i.i, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp.i.not.i = icmp eq i32 %11, 0
  br i1 %phi.cmp.i.not.i, label %if.then, label %if.end.i.i.i.do.body.backedge.i_crit_edge

if.end.i.i.i.do.body.backedge.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.backedge.i

do.body.backedge.i:                               ; preds = %if.end.i.i.i.do.body.backedge.i_crit_edge, %do.cond.i.do.body.backedge.i_crit_edge
  %12 = ptrtoint ptr %nq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nq, align 4
  %14 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queue_depth.i, align 4
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %13, i32 noundef %15) #17
  %16 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %queue_depth.i, align 4
  %cmp.not.i = icmp ult i32 %call.i, %17
  br i1 %cmp.not.i, label %do.body.backedge.i.do.cond.i_crit_edge, label %do.body.backedge.i.cleanup_crit_edge

do.body.backedge.i.cleanup_crit_edge:             ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body.backedge.i.do.cond.i_crit_edge:           ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond.i

if.then:                                          ; preds = %if.end.i.i.i
  %cmds = getelementptr inbounds %struct.nullb_queue, ptr %nq, i32 0, i32 7
  %18 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmds, align 4
  %arrayidx = getelementptr %struct.nullb_cmd, ptr %19, i32 %call11.i
  %tag1 = getelementptr %struct.nullb_cmd, ptr %19, i32 %call11.i, i32 2
  %20 = ptrtoint ptr %tag1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call11.i, ptr %tag1, align 8
  %error = getelementptr %struct.nullb_cmd, ptr %19, i32 %call11.i, i32 3
  %21 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %error, align 4
  %nq2 = getelementptr %struct.nullb_cmd, ptr %19, i32 %call11.i, i32 4
  %22 = ptrtoint ptr %nq2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %nq, ptr %nq2, align 8
  %dev = getelementptr inbounds %struct.nullb_queue, ptr %nq, i32 0, i32 3
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %irqmode = getelementptr inbounds %struct.nullb_device, ptr %24, i32 0, i32 32
  %25 = ptrtoint ptr %irqmode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irqmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp3 = icmp eq i32 %26, 2
  br i1 %cmp3, label %if.then4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %timer = getelementptr %struct.nullb_cmd, ptr %19, i32 %call11.i, i32 5
  tail call void @hrtimer_init(ptr noundef %timer, i32 noundef 1, i32 noundef 1) #17
  %function = getelementptr %struct.nullb_cmd, ptr %19, i32 %call11.i, i32 5, i32 2
  %27 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @null_cmd_timer_expired, ptr %function, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then.cleanup_crit_edge, %do.body.backedge.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.then4 ], [ %arrayidx, %if.then.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %do.body.backedge.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_memory_backed_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %memory_backed = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 39
  %0 = ptrtoint ptr %memory_backed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %memory_backed, align 1, !range !450
  %2 = zext i8 %1 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %2) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_memory_backed_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp.i, align 1, !annotation !449
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_bool_attr_store.exit.thread, label %nullb_device_bool_attr_store.exit

nullb_device_bool_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_bool_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp.i, align 1, !range !450
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_bool_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_bool_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_bool_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_bool_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool6.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp10 = icmp slt i32 %spec.select, 0
  br i1 %cmp10, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %memory_backed = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 39
  %5 = ptrtoint ptr %memory_backed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %memory_backed, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end12 ], [ %count, %nullb_device_bool_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_bool_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_discard_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %discard = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 40
  %0 = ptrtoint ptr %discard to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %discard, align 4, !range !450
  %2 = zext i8 %1 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %2) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_discard_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp.i, align 1, !annotation !449
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_bool_attr_store.exit.thread, label %nullb_device_bool_attr_store.exit

nullb_device_bool_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_bool_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp.i, align 1, !range !450
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_bool_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_bool_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_bool_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_bool_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool6.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp10 = icmp slt i32 %spec.select, 0
  br i1 %cmp10, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %discard = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 40
  %5 = ptrtoint ptr %discard to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %discard, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end12 ], [ %count, %nullb_device_bool_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_bool_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_mbps_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %mbps = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 35
  %0 = ptrtoint ptr %mbps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbps, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_mbps_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_uint_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %mbps = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 35
  %5 = ptrtoint ptr %mbps to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %mbps, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_cache_size_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %cache_size = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 18
  %0 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_size, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_cache_size_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %nullb_device_ulong_attr_store.exit.thread, label %nullb_device_ulong_attr_store.exit

nullb_device_ulong_attr_store.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_ulong_attr_store.exit:               ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_ulong_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_ulong_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_ulong_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_ulong_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %cache_size = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 18
  %5 = ptrtoint ptr %cache_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %cache_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_ulong_attr_store.exit.cleanup_crit_edge, %nullb_device_ulong_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_ulong_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i.i, %nullb_device_ulong_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_badblocks_show(ptr noundef %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %badblocks = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 6
  %call1 = tail call i32 @badblocks_show(ptr noundef %badblocks, ptr noundef %page, i32 noundef 0) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_badblocks_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #17
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %start, align 8, !annotation !449
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end) #17
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %end, align 8, !annotation !449
  %call1 = tail call ptr @kstrndup(ptr noundef %page, i32 noundef %count, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i83 = tail call ptr @strim(ptr noundef nonnull %call1) #17
  %2 = ptrtoint ptr %call.i83 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call.i83, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %3, label %if.end.out_crit_edge [
    i8 43, label %if.end.if.end9_crit_edge
    i8 45, label %if.end.if.end9_crit_edge85
  ]

if.end.if.end9_crit_edge85:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.end.if.end9_crit_edge85
  %arrayidx10 = getelementptr i8, ptr %call.i83, i32 1
  %call11 = tail call ptr @strchr(ptr noundef %arrayidx10, i32 noundef 45)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.out_crit_edge, label %if.end14

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end14:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %call11 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call11, align 1
  %call15 = call i32 @kstrtoull(ptr noundef %arrayidx10, i32 noundef 0, ptr noundef nonnull %start) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end18:                                         ; preds = %if.end14
  %add.ptr19 = getelementptr i8, ptr %call11, i32 1
  %call20 = call i32 @kstrtoull(ptr noundef %add.ptr19, i32 noundef 0, ptr noundef nonnull %end) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end23:                                         ; preds = %if.end18
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp24 = icmp ugt i64 %7, %9
  br i1 %cmp24, label %if.end23.out_crit_edge, label %if.end27

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end27:                                         ; preds = %if.end23
  %shift = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 6, i32 3
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %shift, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !465
  call void @llvm.prefetch.p0(ptr %shift, i32 1, i32 3, i32 1) #17
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end27
  %10 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %shift, i32 -1, i32 0) #17, !srcloc !466
  %asmresult.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i84 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i84, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %badblocks = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !467
  %11 = ptrtoint ptr %call.i83 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call.i83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %12)
  %cmp46 = icmp eq i8 %12, 43
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %start, align 8
  %15 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %end, align 8
  %sub = sub i64 %16, %14
  %17 = trunc i64 %sub to i32
  %conv50 = add i32 %17, 1
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call51 = call i32 @badblocks_set(ptr noundef %badblocks, i64 noundef %14, i32 noundef %conv50, i32 noundef 1) #17
  br label %if.end57

if.else:                                          ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call56 = call i32 @badblocks_clear(ptr noundef %badblocks, i64 noundef %14, i32 noundef %conv50) #17
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then48
  %ret.0 = phi i32 [ %call51, %if.then48 ], [ %call56, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp58 = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %cmp58, i32 %count, i32 %ret.0
  br label %out

out:                                              ; preds = %if.end57, %if.end23.out_crit_edge, %if.end18.out_crit_edge, %if.end14.out_crit_edge, %if.end9.out_crit_edge, %if.end.out_crit_edge
  %ret.1 = phi i32 [ %call15, %if.end14.out_crit_edge ], [ %call20, %if.end18.out_crit_edge ], [ -22, %if.end23.out_crit_edge ], [ -22, %if.end9.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ %spec.select, %if.end57 ]
  call void @kfree(ptr noundef nonnull %call1) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @badblocks_show(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @badblocks_set(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @badblocks_clear(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zoned_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %zoned = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 41
  %0 = ptrtoint ptr %zoned to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %zoned, align 1, !range !450
  %2 = zext i8 %1 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %2) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zoned_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp.i, align 1, !annotation !449
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_bool_attr_store.exit.thread, label %nullb_device_bool_attr_store.exit

nullb_device_bool_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_bool_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp.i, align 1, !range !450
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_bool_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_bool_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_bool_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_bool_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool6.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp10 = icmp slt i32 %spec.select, 0
  br i1 %cmp10, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %zoned = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 41
  %5 = ptrtoint ptr %zoned to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %zoned, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end12 ], [ %count, %nullb_device_bool_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_bool_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zone_size_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %zone_size = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 19
  %0 = ptrtoint ptr %zone_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_size, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zone_size_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %nullb_device_ulong_attr_store.exit.thread, label %nullb_device_ulong_attr_store.exit

nullb_device_ulong_attr_store.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_ulong_attr_store.exit:               ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_ulong_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_ulong_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_ulong_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_ulong_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %zone_size = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 19
  %5 = ptrtoint ptr %zone_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %zone_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_ulong_attr_store.exit.cleanup_crit_edge, %nullb_device_ulong_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_ulong_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i.i, %nullb_device_ulong_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zone_capacity_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %zone_capacity = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 20
  %0 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_capacity, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zone_capacity_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %nullb_device_ulong_attr_store.exit.thread, label %nullb_device_ulong_attr_store.exit

nullb_device_ulong_attr_store.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_ulong_attr_store.exit:               ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_ulong_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_ulong_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_ulong_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_ulong_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %zone_capacity = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 20
  %5 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %zone_capacity, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_ulong_attr_store.exit.cleanup_crit_edge, %nullb_device_ulong_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_ulong_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i.i, %nullb_device_ulong_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zone_nr_conv_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %zone_nr_conv = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 21
  %0 = ptrtoint ptr %zone_nr_conv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_nr_conv, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zone_nr_conv_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_uint_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %zone_nr_conv = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 21
  %5 = ptrtoint ptr %zone_nr_conv to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %zone_nr_conv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zone_max_open_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %zone_max_open = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 22
  %0 = ptrtoint ptr %zone_max_open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_max_open, align 8
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zone_max_open_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_uint_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %zone_max_open = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 22
  %5 = ptrtoint ptr %zone_max_open to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %zone_max_open, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zone_max_active_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %zone_max_active = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 23
  %0 = ptrtoint ptr %zone_max_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_max_active, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %1) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_zone_max_active_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !449
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_uint_attr_store.exit.thread, label %nullb_device_uint_attr_store.exit

nullb_device_uint_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_uint_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_uint_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_uint_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_uint_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_uint_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool5.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9 = icmp slt i32 %spec.select, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %zone_max_active = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 23
  %5 = ptrtoint ptr %zone_max_active to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %zone_max_active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.cleanup_crit_edge, %nullb_device_uint_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %count, %nullb_device_uint_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_uint_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_virt_boundary_show(ptr noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %virt_boundary = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 42
  %0 = ptrtoint ptr %virt_boundary to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %virt_boundary, align 2, !range !450
  %2 = zext i8 %1 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %2) #17
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nullb_device_virt_boundary_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %item, null
  %add.ptr.i = getelementptr i8, ptr %item, i32 -4
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #17
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp.i, align 1, !annotation !449
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nullb_device_bool_attr_store.exit.thread, label %nullb_device_bool_attr_store.exit

nullb_device_bool_attr_store.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  br label %cleanup

nullb_device_bool_attr_store.exit:                ; preds = %entry
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp.i, align 1, !range !450
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp slt i32 %count, 0
  br i1 %cmp, label %nullb_device_bool_attr_store.exit.cleanup_crit_edge, label %if.else

nullb_device_bool_attr_store.exit.cleanup_crit_edge: ; preds = %nullb_device_bool_attr_store.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %nullb_device_bool_attr_store.exit
  %flags = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool6.not, i32 %count, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp10 = icmp slt i32 %spec.select, 0
  br i1 %cmp10, label %if.else.cleanup_crit_edge, label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %virt_boundary = getelementptr inbounds %struct.nullb_device, ptr %spec.select.i, i32 0, i32 42
  %5 = ptrtoint ptr %virt_boundary to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %virt_boundary, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.cleanup_crit_edge, %nullb_device_bool_attr_store.exit.thread
  %retval.0 = phi i32 [ %count, %if.end12 ], [ %count, %nullb_device_bool_attr_store.exit.cleanup_crit_edge ], [ %spec.select, %if.else.cleanup_crit_edge ], [ %call.i, %nullb_device_bool_attr_store.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @memb_group_features_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.56, i32 158)
  ret i32 157
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @badblocks_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !47, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !66, !67, !69, !71, !72, !74, !76, !77, !79, !81, !83, !85, !86, !88, !90, !91, !93, !95, !96, !98, !100, !101, !103, !105, !106, !108, !110, !111, !113, !115, !116, !118, !120, !121, !123, !125, !126, !128, !130, !132, !134, !136, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !168, !170, !171, !172, !174, !175, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !195, !197, !198, !200, !201, !203, !204, !205, !207, !208, !209, !210, !211, !213, !215, !216, !218, !219, !221, !222, !223, !224, !226, !227, !228, !229, !230, !232, !234, !236, !237, !238, !240, !242, !244, !246, !247, !249, !251, !253, !255, !256, !258, !260, !261, !263, !264, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !304, !306, !308, !310, !311, !312, !313, !315, !317, !318, !320, !322, !323, !324, !325, !327, !329, !330, !332, !333, !335, !336, !337, !338, !340, !341, !343, !344, !345, !346, !348, !349, !350, !352, !354, !356, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !377, !378, !380, !381, !383, !384, !386, !387, !389, !390, !392, !394, !395, !397, !399, !401, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !433, !434, !436, !437}
!llvm.named.register.sp = !{!438}
!llvm.module.flags = !{!439, !440, !441, !442, !443, !444, !445, !446}
!llvm.ident = !{!447}

!0 = !{ptr @__param_virt_boundary, !1, !"__param_virt_boundary", i1 false, i1 false}
!1 = !{!"../drivers/block/null_blk/main.c", i32 84, i32 1}
!2 = !{ptr @__UNIQUE_ID_virt_boundarytype278, !1, !"__UNIQUE_ID_virt_boundarytype278", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_virt_boundary279, !4, !"__UNIQUE_ID_virt_boundary279", i1 false, i1 false}
!4 = !{!"../drivers/block/null_blk/main.c", i32 85, i32 1}
!5 = !{ptr @__param_no_sched, !6, !"__param_no_sched", i1 false, i1 false}
!6 = !{!"../drivers/block/null_blk/main.c", i32 88, i32 1}
!7 = !{ptr @__UNIQUE_ID_no_schedtype280, !6, !"__UNIQUE_ID_no_schedtype280", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_no_sched281, !9, !"__UNIQUE_ID_no_sched281", i1 false, i1 false}
!9 = !{!"../drivers/block/null_blk/main.c", i32 89, i32 1}
!10 = !{ptr @__param_submit_queues, !11, !"__param_submit_queues", i1 false, i1 false}
!11 = !{!"../drivers/block/null_blk/main.c", i32 92, i32 1}
!12 = !{ptr @__UNIQUE_ID_submit_queuestype282, !11, !"__UNIQUE_ID_submit_queuestype282", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_submit_queues283, !14, !"__UNIQUE_ID_submit_queues283", i1 false, i1 false}
!14 = !{!"../drivers/block/null_blk/main.c", i32 93, i32 1}
!15 = !{ptr @__param_poll_queues, !16, !"__param_poll_queues", i1 false, i1 false}
!16 = !{!"../drivers/block/null_blk/main.c", i32 96, i32 1}
!17 = !{ptr @__UNIQUE_ID_poll_queuestype284, !16, !"__UNIQUE_ID_poll_queuestype284", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_poll_queues285, !19, !"__UNIQUE_ID_poll_queues285", i1 false, i1 false}
!19 = !{!"../drivers/block/null_blk/main.c", i32 97, i32 1}
!20 = !{ptr @__param_home_node, !21, !"__param_home_node", i1 false, i1 false}
!21 = !{!"../drivers/block/null_blk/main.c", i32 100, i32 1}
!22 = !{ptr @__UNIQUE_ID_home_nodetype286, !21, !"__UNIQUE_ID_home_nodetype286", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_home_node287, !24, !"__UNIQUE_ID_home_node287", i1 false, i1 false}
!24 = !{!"../drivers/block/null_blk/main.c", i32 101, i32 1}
!25 = !{ptr @__param_timeout, !26, !"__param_timeout", i1 false, i1 false}
!26 = !{!"../drivers/block/null_blk/main.c", i32 109, i32 1}
!27 = !{ptr @__UNIQUE_ID_timeouttype288, !26, !"__UNIQUE_ID_timeouttype288", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_timeout289, !29, !"__UNIQUE_ID_timeout289", i1 false, i1 false}
!29 = !{!"../drivers/block/null_blk/main.c", i32 110, i32 1}
!30 = !{ptr @__param_requeue, !31, !"__param_requeue", i1 false, i1 false}
!31 = !{!"../drivers/block/null_blk/main.c", i32 113, i32 1}
!32 = !{ptr @__UNIQUE_ID_requeuetype290, !31, !"__UNIQUE_ID_requeuetype290", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_requeue291, !34, !"__UNIQUE_ID_requeue291", i1 false, i1 false}
!34 = !{!"../drivers/block/null_blk/main.c", i32 114, i32 1}
!35 = !{ptr @__param_init_hctx, !36, !"__param_init_hctx", i1 false, i1 false}
!36 = !{!"../drivers/block/null_blk/main.c", i32 117, i32 1}
!37 = !{ptr @__UNIQUE_ID_init_hctxtype292, !36, !"__UNIQUE_ID_init_hctxtype292", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_init_hctx293, !39, !"__UNIQUE_ID_init_hctx293", i1 false, i1 false}
!39 = !{!"../drivers/block/null_blk/main.c", i32 118, i32 1}
!40 = !{ptr @__param_queue_mode, !41, !"__param_queue_mode", i1 false, i1 false}
!41 = !{!"../drivers/block/null_blk/main.c", i32 148, i32 1}
!42 = !{ptr @__UNIQUE_ID_queue_mode294, !43, !"__UNIQUE_ID_queue_mode294", i1 false, i1 false}
!43 = !{!"../drivers/block/null_blk/main.c", i32 149, i32 1}
!44 = !{ptr @__param_gb, !45, !"__param_gb", i1 false, i1 false}
!45 = !{!"../drivers/block/null_blk/main.c", i32 152, i32 1}
!46 = !{ptr @__UNIQUE_ID_gbtype295, !45, !"__UNIQUE_ID_gbtype295", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_gb296, !48, !"__UNIQUE_ID_gb296", i1 false, i1 false}
!48 = !{!"../drivers/block/null_blk/main.c", i32 153, i32 1}
!49 = !{ptr @__param_bs, !50, !"__param_bs", i1 false, i1 false}
!50 = !{!"../drivers/block/null_blk/main.c", i32 156, i32 1}
!51 = !{ptr @__UNIQUE_ID_bstype297, !50, !"__UNIQUE_ID_bstype297", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_bs298, !53, !"__UNIQUE_ID_bs298", i1 false, i1 false}
!53 = !{!"../drivers/block/null_blk/main.c", i32 157, i32 1}
!54 = !{ptr @__param_max_sectors, !55, !"__param_max_sectors", i1 false, i1 false}
!55 = !{!"../drivers/block/null_blk/main.c", i32 160, i32 1}
!56 = !{ptr @__UNIQUE_ID_max_sectorstype299, !55, !"__UNIQUE_ID_max_sectorstype299", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_max_sectors300, !58, !"__UNIQUE_ID_max_sectors300", i1 false, i1 false}
!58 = !{!"../drivers/block/null_blk/main.c", i32 161, i32 1}
!59 = !{ptr @__param_nr_devices, !60, !"__param_nr_devices", i1 false, i1 false}
!60 = !{!"../drivers/block/null_blk/main.c", i32 164, i32 1}
!61 = !{ptr @__UNIQUE_ID_nr_devicestype301, !60, !"__UNIQUE_ID_nr_devicestype301", i1 false, i1 false}
!62 = !{ptr @__UNIQUE_ID_nr_devices302, !63, !"__UNIQUE_ID_nr_devices302", i1 false, i1 false}
!63 = !{!"../drivers/block/null_blk/main.c", i32 165, i32 1}
!64 = !{ptr @__param_blocking, !65, !"__param_blocking", i1 false, i1 false}
!65 = !{!"../drivers/block/null_blk/main.c", i32 168, i32 1}
!66 = !{ptr @__UNIQUE_ID_blockingtype303, !65, !"__UNIQUE_ID_blockingtype303", i1 false, i1 false}
!67 = !{ptr @__UNIQUE_ID_blocking304, !68, !"__UNIQUE_ID_blocking304", i1 false, i1 false}
!68 = !{!"../drivers/block/null_blk/main.c", i32 169, i32 1}
!69 = !{ptr @__param_shared_tags, !70, !"__param_shared_tags", i1 false, i1 false}
!70 = !{!"../drivers/block/null_blk/main.c", i32 172, i32 1}
!71 = !{ptr @__UNIQUE_ID_shared_tagstype305, !70, !"__UNIQUE_ID_shared_tagstype305", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_shared_tags306, !73, !"__UNIQUE_ID_shared_tags306", i1 false, i1 false}
!73 = !{!"../drivers/block/null_blk/main.c", i32 173, i32 1}
!74 = !{ptr @__param_shared_tag_bitmap, !75, !"__param_shared_tag_bitmap", i1 false, i1 false}
!75 = !{!"../drivers/block/null_blk/main.c", i32 176, i32 1}
!76 = !{ptr @__UNIQUE_ID_shared_tag_bitmaptype307, !75, !"__UNIQUE_ID_shared_tag_bitmaptype307", i1 false, i1 false}
!77 = !{ptr @__UNIQUE_ID_shared_tag_bitmap308, !78, !"__UNIQUE_ID_shared_tag_bitmap308", i1 false, i1 false}
!78 = !{!"../drivers/block/null_blk/main.c", i32 177, i32 1}
!79 = !{ptr @__param_irqmode, !80, !"__param_irqmode", i1 false, i1 false}
!80 = !{!"../drivers/block/null_blk/main.c", i32 192, i32 1}
!81 = !{ptr @__UNIQUE_ID_irqmode309, !82, !"__UNIQUE_ID_irqmode309", i1 false, i1 false}
!82 = !{!"../drivers/block/null_blk/main.c", i32 193, i32 1}
!83 = !{ptr @__param_completion_nsec, !84, !"__param_completion_nsec", i1 false, i1 false}
!84 = !{!"../drivers/block/null_blk/main.c", i32 196, i32 1}
!85 = !{ptr @__UNIQUE_ID_completion_nsectype310, !84, !"__UNIQUE_ID_completion_nsectype310", i1 false, i1 false}
!86 = !{ptr @__UNIQUE_ID_completion_nsec311, !87, !"__UNIQUE_ID_completion_nsec311", i1 false, i1 false}
!87 = !{!"../drivers/block/null_blk/main.c", i32 197, i32 1}
!88 = !{ptr @__param_hw_queue_depth, !89, !"__param_hw_queue_depth", i1 false, i1 false}
!89 = !{!"../drivers/block/null_blk/main.c", i32 200, i32 1}
!90 = !{ptr @__UNIQUE_ID_hw_queue_depthtype312, !89, !"__UNIQUE_ID_hw_queue_depthtype312", i1 false, i1 false}
!91 = !{ptr @__UNIQUE_ID_hw_queue_depth313, !92, !"__UNIQUE_ID_hw_queue_depth313", i1 false, i1 false}
!92 = !{!"../drivers/block/null_blk/main.c", i32 201, i32 1}
!93 = !{ptr @__param_use_per_node_hctx, !94, !"__param_use_per_node_hctx", i1 false, i1 false}
!94 = !{!"../drivers/block/null_blk/main.c", i32 204, i32 1}
!95 = !{ptr @__UNIQUE_ID_use_per_node_hctxtype314, !94, !"__UNIQUE_ID_use_per_node_hctxtype314", i1 false, i1 false}
!96 = !{ptr @__UNIQUE_ID_use_per_node_hctx315, !97, !"__UNIQUE_ID_use_per_node_hctx315", i1 false, i1 false}
!97 = !{!"../drivers/block/null_blk/main.c", i32 205, i32 1}
!98 = !{ptr @__param_zoned, !99, !"__param_zoned", i1 false, i1 false}
!99 = !{!"../drivers/block/null_blk/main.c", i32 208, i32 1}
!100 = !{ptr @__UNIQUE_ID_zonedtype316, !99, !"__UNIQUE_ID_zonedtype316", i1 false, i1 false}
!101 = !{ptr @__UNIQUE_ID_zoned317, !102, !"__UNIQUE_ID_zoned317", i1 false, i1 false}
!102 = !{!"../drivers/block/null_blk/main.c", i32 209, i32 1}
!103 = !{ptr @__param_zone_size, !104, !"__param_zone_size", i1 false, i1 false}
!104 = !{!"../drivers/block/null_blk/main.c", i32 212, i32 1}
!105 = !{ptr @__UNIQUE_ID_zone_sizetype318, !104, !"__UNIQUE_ID_zone_sizetype318", i1 false, i1 false}
!106 = !{ptr @__UNIQUE_ID_zone_size319, !107, !"__UNIQUE_ID_zone_size319", i1 false, i1 false}
!107 = !{!"../drivers/block/null_blk/main.c", i32 213, i32 1}
!108 = !{ptr @__param_zone_capacity, !109, !"__param_zone_capacity", i1 false, i1 false}
!109 = !{!"../drivers/block/null_blk/main.c", i32 216, i32 1}
!110 = !{ptr @__UNIQUE_ID_zone_capacitytype320, !109, !"__UNIQUE_ID_zone_capacitytype320", i1 false, i1 false}
!111 = !{ptr @__UNIQUE_ID_zone_capacity321, !112, !"__UNIQUE_ID_zone_capacity321", i1 false, i1 false}
!112 = !{!"../drivers/block/null_blk/main.c", i32 217, i32 1}
!113 = !{ptr @__param_zone_nr_conv, !114, !"__param_zone_nr_conv", i1 false, i1 false}
!114 = !{!"../drivers/block/null_blk/main.c", i32 220, i32 1}
!115 = !{ptr @__UNIQUE_ID_zone_nr_convtype322, !114, !"__UNIQUE_ID_zone_nr_convtype322", i1 false, i1 false}
!116 = !{ptr @__UNIQUE_ID_zone_nr_conv323, !117, !"__UNIQUE_ID_zone_nr_conv323", i1 false, i1 false}
!117 = !{!"../drivers/block/null_blk/main.c", i32 221, i32 1}
!118 = !{ptr @__param_zone_max_open, !119, !"__param_zone_max_open", i1 false, i1 false}
!119 = !{!"../drivers/block/null_blk/main.c", i32 224, i32 1}
!120 = !{ptr @__UNIQUE_ID_zone_max_opentype324, !119, !"__UNIQUE_ID_zone_max_opentype324", i1 false, i1 false}
!121 = !{ptr @__UNIQUE_ID_zone_max_open325, !122, !"__UNIQUE_ID_zone_max_open325", i1 false, i1 false}
!122 = !{!"../drivers/block/null_blk/main.c", i32 225, i32 1}
!123 = !{ptr @__param_zone_max_active, !124, !"__param_zone_max_active", i1 false, i1 false}
!124 = !{!"../drivers/block/null_blk/main.c", i32 228, i32 1}
!125 = !{ptr @__UNIQUE_ID_zone_max_activetype326, !124, !"__UNIQUE_ID_zone_max_activetype326", i1 false, i1 false}
!126 = !{ptr @__UNIQUE_ID_zone_max_active327, !127, !"__UNIQUE_ID_zone_max_active327", i1 false, i1 false}
!127 = !{!"../drivers/block/null_blk/main.c", i32 229, i32 1}
!128 = !{ptr @.str, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/block/null_blk/main.c", i32 2195, i32 32}
!130 = !{ptr @__initcall__kmod_null_blk__363_2212_null_init6, !131, !"__initcall__kmod_null_blk__363_2212_null_init6", i1 false, i1 false}
!131 = !{!"../drivers/block/null_blk/main.c", i32 2212, i32 1}
!132 = !{ptr @__exitcall_null_exit, !133, !"__exitcall_null_exit", i1 false, i1 false}
!133 = !{!"../drivers/block/null_blk/main.c", i32 2213, i32 1}
!134 = !{ptr @__UNIQUE_ID_author364, !135, !"__UNIQUE_ID_author364", i1 false, i1 false}
!135 = !{!"../drivers/block/null_blk/main.c", i32 2215, i32 1}
!136 = !{ptr @__UNIQUE_ID_file365, !137, !"__UNIQUE_ID_file365", i1 false, i1 false}
!137 = !{!"../drivers/block/null_blk/main.c", i32 2216, i32 1}
!138 = !{ptr @__UNIQUE_ID_license366, !137, !"__UNIQUE_ID_license366", i1 false, i1 false}
!139 = !{ptr @lock, !140, !"lock", i1 false, i1 false}
!140 = !{!"../drivers/block/null_blk/main.c", i32 66, i32 21}
!141 = !{ptr @null_major, !142, !"null_major", i1 false, i1 false}
!142 = !{!"../drivers/block/null_blk/main.c", i32 67, i32 12}
!143 = !{ptr @tag_set, !144, !"tag_set", i1 false, i1 false}
!144 = !{!"../drivers/block/null_blk/main.c", i32 69, i32 30}
!145 = !{ptr @g_no_sched, !146, !"g_no_sched", i1 false, i1 false}
!146 = !{!"../drivers/block/null_blk/main.c", i32 87, i32 12}
!147 = !{ptr @g_max_sectors, !148, !"g_max_sectors", i1 false, i1 false}
!148 = !{!"../drivers/block/null_blk/main.c", i32 159, i32 12}
!149 = !{ptr @g_blocking, !150, !"g_blocking", i1 false, i1 false}
!150 = !{!"../drivers/block/null_blk/main.c", i32 167, i32 13}
!151 = !{ptr @shared_tags, !152, !"shared_tags", i1 false, i1 false}
!152 = !{!"../drivers/block/null_blk/main.c", i32 171, i32 13}
!153 = !{ptr @g_shared_tag_bitmap, !154, !"g_shared_tag_bitmap", i1 false, i1 false}
!154 = !{!"../drivers/block/null_blk/main.c", i32 175, i32 13}
!155 = !{ptr @g_use_per_node_hctx, !156, !"g_use_per_node_hctx", i1 false, i1 false}
!156 = !{!"../drivers/block/null_blk/main.c", i32 203, i32 13}
!157 = !{ptr @g_zoned, !158, !"g_zoned", i1 false, i1 false}
!158 = !{!"../drivers/block/null_blk/main.c", i32 207, i32 13}
!159 = !{ptr @g_zone_capacity, !160, !"g_zone_capacity", i1 false, i1 false}
!160 = !{!"../drivers/block/null_blk/main.c", i32 215, i32 22}
!161 = !{ptr @g_zone_nr_conv, !162, !"g_zone_nr_conv", i1 false, i1 false}
!162 = !{!"../drivers/block/null_blk/main.c", i32 219, i32 21}
!163 = !{ptr @g_zone_max_open, !164, !"g_zone_max_open", i1 false, i1 false}
!164 = !{!"../drivers/block/null_blk/main.c", i32 223, i32 21}
!165 = !{ptr @g_zone_max_active, !166, !"g_zone_max_active", i1 false, i1 false}
!166 = !{!"../drivers/block/null_blk/main.c", i32 227, i32 21}
!167 = !{ptr @__param_str_virt_boundary, !1, !"__param_str_virt_boundary", i1 false, i1 false}
!168 = !{ptr @g_virt_boundary, !169, !"g_virt_boundary", i1 false, i1 false}
!169 = !{!"../drivers/block/null_blk/main.c", i32 83, i32 13}
!170 = !{ptr @__param_str_no_sched, !6, !"__param_str_no_sched", i1 false, i1 false}
!171 = !{ptr @__param_str_submit_queues, !11, !"__param_str_submit_queues", i1 false, i1 false}
!172 = !{ptr @g_submit_queues, !173, !"g_submit_queues", i1 false, i1 false}
!173 = !{!"../drivers/block/null_blk/main.c", i32 91, i32 12}
!174 = !{ptr @__param_str_poll_queues, !16, !"__param_str_poll_queues", i1 false, i1 false}
!175 = !{ptr @g_poll_queues, !176, !"g_poll_queues", i1 false, i1 false}
!176 = !{!"../drivers/block/null_blk/main.c", i32 95, i32 12}
!177 = !{ptr @__param_str_home_node, !21, !"__param_str_home_node", i1 false, i1 false}
!178 = !{ptr @g_home_node, !179, !"g_home_node", i1 false, i1 false}
!179 = !{!"../drivers/block/null_blk/main.c", i32 99, i32 12}
!180 = !{ptr @__param_str_timeout, !26, !"__param_str_timeout", i1 false, i1 false}
!181 = !{ptr @__param_string_timeout, !26, !"__param_string_timeout", i1 false, i1 false}
!182 = !{ptr @g_timeout_str, !183, !"g_timeout_str", i1 false, i1 false}
!183 = !{!"../drivers/block/null_blk/main.c", i32 108, i32 13}
!184 = !{ptr @__param_str_requeue, !31, !"__param_str_requeue", i1 false, i1 false}
!185 = !{ptr @__param_string_requeue, !31, !"__param_string_requeue", i1 false, i1 false}
!186 = !{ptr @g_requeue_str, !187, !"g_requeue_str", i1 false, i1 false}
!187 = !{!"../drivers/block/null_blk/main.c", i32 112, i32 13}
!188 = !{ptr @__param_str_init_hctx, !36, !"__param_str_init_hctx", i1 false, i1 false}
!189 = !{ptr @__param_string_init_hctx, !36, !"__param_string_init_hctx", i1 false, i1 false}
!190 = !{ptr @g_init_hctx_str, !191, !"g_init_hctx_str", i1 false, i1 false}
!191 = !{!"../drivers/block/null_blk/main.c", i32 116, i32 13}
!192 = !{ptr @__param_str_queue_mode, !41, !"__param_str_queue_mode", i1 false, i1 false}
!193 = !{ptr @null_queue_mode_param_ops, !194, !"null_queue_mode_param_ops", i1 false, i1 false}
!194 = !{!"../drivers/block/null_blk/main.c", i32 143, i32 38}
!195 = !{ptr @g_queue_mode, !196, !"g_queue_mode", i1 false, i1 false}
!196 = !{!"../drivers/block/null_blk/main.c", i32 121, i32 12}
!197 = !{ptr @__param_str_gb, !45, !"__param_str_gb", i1 false, i1 false}
!198 = !{ptr @g_gb, !199, !"g_gb", i1 false, i1 false}
!199 = !{!"../drivers/block/null_blk/main.c", i32 151, i32 12}
!200 = !{ptr @__param_str_bs, !50, !"__param_str_bs", i1 false, i1 false}
!201 = !{ptr @g_bs, !202, !"g_bs", i1 false, i1 false}
!202 = !{!"../drivers/block/null_blk/main.c", i32 155, i32 12}
!203 = !{ptr @__param_str_max_sectors, !55, !"__param_str_max_sectors", i1 false, i1 false}
!204 = !{ptr @__param_str_nr_devices, !60, !"__param_str_nr_devices", i1 false, i1 false}
!205 = !{ptr @nr_devices, !206, !"nr_devices", i1 false, i1 false}
!206 = !{!"../drivers/block/null_blk/main.c", i32 163, i32 21}
!207 = !{ptr @__param_str_blocking, !65, !"__param_str_blocking", i1 false, i1 false}
!208 = !{ptr @__param_str_shared_tags, !70, !"__param_str_shared_tags", i1 false, i1 false}
!209 = !{ptr @__param_str_shared_tag_bitmap, !75, !"__param_str_shared_tag_bitmap", i1 false, i1 false}
!210 = !{ptr @__param_str_irqmode, !80, !"__param_str_irqmode", i1 false, i1 false}
!211 = !{ptr @null_irqmode_param_ops, !212, !"null_irqmode_param_ops", i1 false, i1 false}
!212 = !{!"../drivers/block/null_blk/main.c", i32 187, i32 38}
!213 = !{ptr @g_irqmode, !214, !"g_irqmode", i1 false, i1 false}
!214 = !{!"../drivers/block/null_blk/main.c", i32 179, i32 12}
!215 = !{ptr @__param_str_completion_nsec, !84, !"__param_str_completion_nsec", i1 false, i1 false}
!216 = !{ptr @g_completion_nsec, !217, !"g_completion_nsec", i1 false, i1 false}
!217 = !{!"../drivers/block/null_blk/main.c", i32 195, i32 22}
!218 = !{ptr @__param_str_hw_queue_depth, !89, !"__param_str_hw_queue_depth", i1 false, i1 false}
!219 = !{ptr @g_hw_queue_depth, !220, !"g_hw_queue_depth", i1 false, i1 false}
!220 = !{!"../drivers/block/null_blk/main.c", i32 199, i32 12}
!221 = !{ptr @__param_str_use_per_node_hctx, !94, !"__param_str_use_per_node_hctx", i1 false, i1 false}
!222 = !{ptr @__param_str_zoned, !99, !"__param_str_zoned", i1 false, i1 false}
!223 = !{ptr @__param_str_zone_size, !104, !"__param_str_zone_size", i1 false, i1 false}
!224 = !{ptr @g_zone_size, !225, !"g_zone_size", i1 false, i1 false}
!225 = !{!"../drivers/block/null_blk/main.c", i32 211, i32 22}
!226 = !{ptr @__param_str_zone_capacity, !109, !"__param_str_zone_capacity", i1 false, i1 false}
!227 = !{ptr @__param_str_zone_nr_conv, !114, !"__param_str_zone_nr_conv", i1 false, i1 false}
!228 = !{ptr @__param_str_zone_max_open, !119, !"__param_str_zone_max_open", i1 false, i1 false}
!229 = !{ptr @__param_str_zone_max_active, !124, !"__param_str_zone_max_active", i1 false, i1 false}
!230 = !{ptr @.str.1, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/block/null_blk/main.c", i32 834, i32 4}
!232 = distinct !{null, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!234 = !{ptr @.str.3, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!236 = !{ptr @.str.4, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.5, !235, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @nullb_subsys, !239, !"nullb_subsys", i1 false, i1 false}
!239 = !{!"../drivers/block/null_blk/main.c", i32 610, i32 34}
!240 = !{ptr @nullb_group_type, !241, !"nullb_group_type", i1 false, i1 false}
!241 = !{!"../drivers/block/null_blk/main.c", i32 604, i32 38}
!242 = !{ptr @nullb_group_ops, !243, !"nullb_group_ops", i1 false, i1 false}
!243 = !{!"../drivers/block/null_blk/main.c", i32 599, i32 41}
!244 = !{ptr @xa_init_flags.__key, !245, !"__key", i1 false, i1 false}
!245 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!246 = !{ptr @.str.6, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @nullb_device_type, !248, !"nullb_device_type", i1 false, i1 false}
!248 = !{!"../drivers/block/null_blk/main.c", i32 551, i32 38}
!249 = !{ptr @nullb_device_ops, !250, !"nullb_device_ops", i1 false, i1 false}
!250 = !{!"../drivers/block/null_blk/main.c", i32 547, i32 40}
!251 = !{ptr @nullb_device_attrs, !252, !"nullb_device_attrs", i1 false, i1 false}
!252 = !{!"../drivers/block/null_blk/main.c", i32 509, i32 35}
!253 = !{ptr @.str.7, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/block/null_blk/main.c", i32 390, i32 1}
!255 = !{ptr @nullb_device_attr_size, !254, !"nullb_device_attr_size", i1 false, i1 false}
!256 = !{ptr @.str.8, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/block/null_blk/main.c", i32 250, i32 35}
!258 = !{ptr @.str.9, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/block/null_blk/main.c", i32 391, i32 1}
!260 = !{ptr @nullb_device_attr_completion_nsec, !259, !"nullb_device_attr_completion_nsec", i1 false, i1 false}
!261 = !{ptr @.str.10, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/block/null_blk/main.c", i32 392, i32 1}
!263 = !{ptr @nullb_device_attr_submit_queues, !262, !"nullb_device_attr_submit_queues", i1 false, i1 false}
!264 = !{ptr @.str.11, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/block/null_blk/main.c", i32 244, i32 35}
!266 = !{ptr @.str.12, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/block/null_blk/main.c", i32 393, i32 1}
!268 = !{ptr @nullb_device_attr_poll_queues, !267, !"nullb_device_attr_poll_queues", i1 false, i1 false}
!269 = !{ptr @.str.13, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/block/null_blk/main.c", i32 394, i32 1}
!271 = !{ptr @nullb_device_attr_home_node, !270, !"nullb_device_attr_home_node", i1 false, i1 false}
!272 = !{ptr @.str.14, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/block/null_blk/main.c", i32 395, i32 1}
!274 = !{ptr @nullb_device_attr_queue_mode, !273, !"nullb_device_attr_queue_mode", i1 false, i1 false}
!275 = !{ptr @.str.15, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/block/null_blk/main.c", i32 396, i32 1}
!277 = !{ptr @nullb_device_attr_blocksize, !276, !"nullb_device_attr_blocksize", i1 false, i1 false}
!278 = !{ptr @.str.16, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/block/null_blk/main.c", i32 397, i32 1}
!280 = !{ptr @nullb_device_attr_max_sectors, !279, !"nullb_device_attr_max_sectors", i1 false, i1 false}
!281 = !{ptr @.str.17, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/block/null_blk/main.c", i32 398, i32 1}
!283 = !{ptr @nullb_device_attr_irqmode, !282, !"nullb_device_attr_irqmode", i1 false, i1 false}
!284 = !{ptr @.str.18, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/block/null_blk/main.c", i32 399, i32 1}
!286 = !{ptr @nullb_device_attr_hw_queue_depth, !285, !"nullb_device_attr_hw_queue_depth", i1 false, i1 false}
!287 = !{ptr @.str.19, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/block/null_blk/main.c", i32 400, i32 1}
!289 = !{ptr @nullb_device_attr_index, !288, !"nullb_device_attr_index", i1 false, i1 false}
!290 = !{ptr @.str.20, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/block/null_blk/main.c", i32 401, i32 1}
!292 = !{ptr @nullb_device_attr_blocking, !291, !"nullb_device_attr_blocking", i1 false, i1 false}
!293 = !{ptr @.str.21, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/block/null_blk/main.c", i32 402, i32 1}
!295 = !{ptr @nullb_device_attr_use_per_node_hctx, !294, !"nullb_device_attr_use_per_node_hctx", i1 false, i1 false}
!296 = !{ptr @.str.22, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/block/null_blk/main.c", i32 454, i32 1}
!298 = !{ptr @nullb_device_attr_power, !297, !"nullb_device_attr_power", i1 false, i1 false}
!299 = !{ptr @null_add_dev.__key, !300, !"__key", i1 false, i1 false}
!300 = !{!"../drivers/block/null_blk/main.c", i32 1992, i32 2}
!301 = !{ptr @.str.23, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @null_add_dev.__key.24, !303, !"__key", i1 false, i1 false}
!303 = !{!"../drivers/block/null_blk/main.c", i32 2014, i32 17}
!304 = !{ptr @null_add_dev.__key.25, !305, !"__key", i1 false, i1 false}
!305 = !{!"../drivers/block/null_blk/main.c", i32 2022, i32 17}
!306 = !{ptr @.str.26, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/block/null_blk/main.c", i32 2070, i32 28}
!308 = !{ptr @.str.27, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/block/null_blk/main.c", i32 1941, i32 3}
!310 = !{ptr @.str.28, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @null_validate_conf._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @null_validate_conf._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @null_mq_ops, !314, !"null_mq_ops", i1 false, i1 false}
!314 = !{!"../drivers/block/null_blk/main.c", i32 1714, i32 32}
!315 = !{ptr @.str.29, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/block/null_blk/main.c", i32 20, i32 8}
!317 = !{ptr @null_timeout_attr, !316, !"null_timeout_attr", i1 false, i1 false}
!318 = !{ptr @null_requeue_attr, !319, !"null_requeue_attr", i1 false, i1 false}
!319 = !{!"../drivers/block/null_blk/main.c", i32 21, i32 8}
!320 = !{ptr @.str.30, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/block/null_blk/main.c", i32 1591, i32 2}
!322 = !{ptr @.str.31, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @null_timeout_rq._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @null_timeout_rq._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @null_init_hctx_attr, !326, !"null_init_hctx_attr", i1 false, i1 false}
!326 = !{!"../drivers/block/null_blk/main.c", i32 22, i32 8}
!327 = !{ptr @null_init_queue.__key, !328, !"__key", i1 false, i1 false}
!328 = !{!"../drivers/block/null_blk/main.c", i32 1688, i32 2}
!329 = !{ptr @.str.32, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @null_init_queue.__key.33, !331, !"__key", i1 false, i1 false}
!331 = !{!"../drivers/block/null_blk/main.c", i32 1692, i32 2}
!332 = !{ptr @.str.34, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.35, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/block/null_blk/main.c", i32 1530, i32 4}
!335 = !{ptr @.str.36, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @null_map_queues._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @null_map_queues._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.37, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/block/null_blk/main.c", i32 68, i32 8}
!340 = !{ptr @nullb_indexes, !339, !"nullb_indexes", i1 false, i1 false}
!341 = !{ptr @.str.38, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/block/null_blk/main.c", i32 1763, i32 3}
!343 = !{ptr @.str.39, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @null_config_discard._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @null_config_discard._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.41, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/block/null_blk/main.c", i32 1769, i32 3}
!348 = !{ptr @null_config_discard._entry.40, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @null_config_discard._entry_ptr.42, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @null_rq_ops, !351, !"null_rq_ops", i1 false, i1 false}
!351 = !{!"../drivers/block/null_blk/main.c", i32 1785, i32 45}
!352 = !{ptr @null_bio_ops, !353, !"null_bio_ops", i1 false, i1 false}
!353 = !{!"../drivers/block/null_blk/main.c", i32 1779, i32 45}
!354 = !{ptr @.str.43, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/block/null_blk/main.c", i32 403, i32 1}
!356 = !{ptr @nullb_device_attr_memory_backed, !355, !"nullb_device_attr_memory_backed", i1 false, i1 false}
!357 = !{ptr @.str.44, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/block/null_blk/main.c", i32 404, i32 1}
!359 = !{ptr @nullb_device_attr_discard, !358, !"nullb_device_attr_discard", i1 false, i1 false}
!360 = !{ptr @.str.45, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/block/null_blk/main.c", i32 405, i32 1}
!362 = !{ptr @nullb_device_attr_mbps, !361, !"nullb_device_attr_mbps", i1 false, i1 false}
!363 = !{ptr @.str.46, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/block/null_blk/main.c", i32 406, i32 1}
!365 = !{ptr @nullb_device_attr_cache_size, !364, !"nullb_device_attr_cache_size", i1 false, i1 false}
!366 = !{ptr @.str.47, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/block/null_blk/main.c", i32 507, i32 1}
!368 = !{ptr @nullb_device_attr_badblocks, !367, !"nullb_device_attr_badblocks", i1 false, i1 false}
!369 = !{ptr @.str.48, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/block/null_blk/main.c", i32 407, i32 1}
!371 = !{ptr @nullb_device_attr_zoned, !370, !"nullb_device_attr_zoned", i1 false, i1 false}
!372 = !{ptr @.str.49, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/block/null_blk/main.c", i32 408, i32 1}
!374 = !{ptr @nullb_device_attr_zone_size, !373, !"nullb_device_attr_zone_size", i1 false, i1 false}
!375 = !{ptr @.str.50, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/block/null_blk/main.c", i32 409, i32 1}
!377 = !{ptr @nullb_device_attr_zone_capacity, !376, !"nullb_device_attr_zone_capacity", i1 false, i1 false}
!378 = !{ptr @.str.51, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/block/null_blk/main.c", i32 410, i32 1}
!380 = !{ptr @nullb_device_attr_zone_nr_conv, !379, !"nullb_device_attr_zone_nr_conv", i1 false, i1 false}
!381 = !{ptr @.str.52, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/block/null_blk/main.c", i32 411, i32 1}
!383 = !{ptr @nullb_device_attr_zone_max_open, !382, !"nullb_device_attr_zone_max_open", i1 false, i1 false}
!384 = !{ptr @.str.53, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/block/null_blk/main.c", i32 412, i32 1}
!386 = !{ptr @nullb_device_attr_zone_max_active, !385, !"nullb_device_attr_zone_max_active", i1 false, i1 false}
!387 = !{ptr @.str.54, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/block/null_blk/main.c", i32 413, i32 1}
!389 = !{ptr @nullb_device_attr_virt_boundary, !388, !"nullb_device_attr_virt_boundary", i1 false, i1 false}
!390 = !{ptr @nullb_group_attrs, !391, !"nullb_group_attrs", i1 false, i1 false}
!391 = !{!"../drivers/block/null_blk/main.c", i32 594, i32 35}
!392 = !{ptr @.str.55, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/block/null_blk/main.c", i32 592, i32 1}
!394 = !{ptr @memb_group_attr_features, !393, !"memb_group_attr_features", i1 false, i1 false}
!395 = !{ptr @.str.56, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/block/null_blk/main.c", i32 589, i32 4}
!397 = !{ptr @nullb_list, !398, !"nullb_list", i1 false, i1 false}
!398 = !{!"../drivers/block/null_blk/main.c", i32 65, i32 8}
!399 = !{ptr @.str.57, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/block/null_blk/main.c", i32 2105, i32 3}
!401 = !{ptr @.str.58, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @null_init._entry, !400, !"_entry", i1 false, i1 false}
!403 = !{ptr @null_init._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.60, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/block/null_blk/main.c", i32 2106, i32 3}
!406 = !{ptr @null_init._entry.59, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @null_init._entry_ptr.61, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.63, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/block/null_blk/main.c", i32 2111, i32 3}
!410 = !{ptr @null_init._entry.62, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @null_init._entry_ptr.64, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.66, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/block/null_blk/main.c", i32 2112, i32 3}
!414 = !{ptr @null_init._entry.65, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @null_init._entry_ptr.67, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.69, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/block/null_blk/main.c", i32 2117, i32 3}
!418 = !{ptr @null_init._entry.68, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @null_init._entry_ptr.70, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.72, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/block/null_blk/main.c", i32 2122, i32 3}
!422 = !{ptr @null_init._entry.71, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @null_init._entry_ptr.73, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.75, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/block/null_blk/main.c", i32 2127, i32 4}
!426 = !{ptr @null_init._entry.74, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @null_init._entry_ptr.76, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @null_init.__key, !429, !"__key", i1 false, i1 false}
!429 = !{!"../drivers/block/null_blk/main.c", i32 2143, i32 2}
!430 = !{ptr @.str.77, !429, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @null_init.__key.78, !432, !"__key", i1 false, i1 false}
!432 = !{!"../drivers/block/null_blk/main.c", i32 2149, i32 2}
!433 = !{ptr @.str.79, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @.str.81, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/block/null_blk/main.c", i32 2170, i32 2}
!436 = !{ptr @null_init._entry.80, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @null_init._entry_ptr.82, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{!"sp"}
!439 = !{i32 1, !"wchar_size", i32 2}
!440 = !{i32 1, !"min_enum_size", i32 4}
!441 = !{i32 8, !"branch-target-enforcement", i32 0}
!442 = !{i32 8, !"sign-return-address", i32 0}
!443 = !{i32 8, !"sign-return-address-all", i32 0}
!444 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!445 = !{i32 7, !"uwtable", i32 1}
!446 = !{i32 7, !"frame-pointer", i32 2}
!447 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!448 = !{!"branch_weights", i32 2000, i32 1}
!449 = !{!"auto-init"}
!450 = !{i8 0, i8 2}
!451 = !{i64 2153886546}
!452 = !{i64 2152461111}
!453 = !{i64 2152461318}
!454 = !{i64 2153889317}
!455 = !{i64 2151483340}
!456 = !{i32 0, i32 33}
!457 = !{!"branch_weights", i32 1, i32 2000}
!458 = !{i64 2148482153}
!459 = !{i64 2148396862, i64 2148396894, i64 2148396923, i64 2148396957, i64 2148396988, i64 2148397011}
!460 = !{i64 2148482382}
!461 = !{i64 2148490527}
!462 = !{i64 2148400922, i64 2148400954, i64 2148400983, i64 2148401017, i64 2148401048, i64 2148401071}
!463 = !{i64 2148402535, i64 2148402567, i64 2148402596, i64 2148402630, i64 2148402661, i64 2148402684}
!464 = !{i64 2148491640}
!465 = !{i64 2154652573}
!466 = !{i64 903169, i64 903190, i64 903213, i64 903232, i64 903251}
!467 = !{i64 2154652975}
