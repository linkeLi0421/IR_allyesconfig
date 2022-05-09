; ModuleID = '/llk/IR_all_yes/mm/damon/reclaim.c_pt.bc'
source_filename = "../mm/damon/reclaim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.damon_ctx = type { i32, i32, i32, %struct.timespec64, %struct.timespec64, ptr, %struct.mutex, %struct.damon_primitive, %struct.damon_callback, i32, i32, %struct.list_head, %struct.list_head }
%struct.timespec64 = type { i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.damon_primitive = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.damon_callback = type { ptr, ptr, ptr, ptr, ptr }
%struct.damos_watermarks = type { i32, i32, i32, i32, i32, i8 }
%struct.damos_quota = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [100 x i32], i32 }
%struct.damon_reclaim_ram_walk_arg = type { i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__param_str_enabled = internal constant [22 x i8] c"damon_reclaim.enabled\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enabled = internal global i8 0, section ".data..read_mostly", align 1
@__param_enabled = internal constant %struct.kernel_param { ptr @__param_str_enabled, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @enabled } }, section "__param", align 4
@__UNIQUE_ID_enabledtype168 = internal constant [30 x i8] c"reclaim.parmtype=enabled:bool\00", section ".modinfo", align 1
@__param_str_min_age = internal constant [22 x i8] c"damon_reclaim.min_age\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@min_age = internal global i32 120000000, section ".data..read_mostly", align 4
@__param_min_age = internal constant %struct.kernel_param { ptr @__param_str_min_age, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @min_age } }, section "__param", align 4
@__UNIQUE_ID_min_agetype169 = internal constant [31 x i8] c"reclaim.parmtype=min_age:ulong\00", section ".modinfo", align 1
@__param_str_quota_ms = internal constant [23 x i8] c"damon_reclaim.quota_ms\00", align 1
@quota_ms = internal global i32 10, section ".data..read_mostly", align 4
@__param_quota_ms = internal constant %struct.kernel_param { ptr @__param_str_quota_ms, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @quota_ms } }, section "__param", align 4
@__UNIQUE_ID_quota_mstype170 = internal constant [32 x i8] c"reclaim.parmtype=quota_ms:ulong\00", section ".modinfo", align 1
@__param_str_quota_sz = internal constant [23 x i8] c"damon_reclaim.quota_sz\00", align 1
@quota_sz = internal global i32 134217728, section ".data..read_mostly", align 4
@__param_quota_sz = internal constant %struct.kernel_param { ptr @__param_str_quota_sz, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @quota_sz } }, section "__param", align 4
@__UNIQUE_ID_quota_sztype171 = internal constant [32 x i8] c"reclaim.parmtype=quota_sz:ulong\00", section ".modinfo", align 1
@__param_str_quota_reset_interval_ms = internal constant [38 x i8] c"damon_reclaim.quota_reset_interval_ms\00", align 1
@quota_reset_interval_ms = internal global i32 1000, section ".data..read_mostly", align 4
@__param_quota_reset_interval_ms = internal constant %struct.kernel_param { ptr @__param_str_quota_reset_interval_ms, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @quota_reset_interval_ms } }, section "__param", align 4
@__UNIQUE_ID_quota_reset_interval_mstype172 = internal constant [47 x i8] c"reclaim.parmtype=quota_reset_interval_ms:ulong\00", section ".modinfo", align 1
@__param_str_wmarks_interval = internal constant [30 x i8] c"damon_reclaim.wmarks_interval\00", align 1
@wmarks_interval = internal global i32 5000000, section ".data..read_mostly", align 4
@__param_wmarks_interval = internal constant %struct.kernel_param { ptr @__param_str_wmarks_interval, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @wmarks_interval } }, section "__param", align 4
@__UNIQUE_ID_wmarks_intervaltype173 = internal constant [39 x i8] c"reclaim.parmtype=wmarks_interval:ulong\00", section ".modinfo", align 1
@__param_str_wmarks_high = internal constant [26 x i8] c"damon_reclaim.wmarks_high\00", align 1
@wmarks_high = internal global i32 500, section ".data..read_mostly", align 4
@__param_wmarks_high = internal constant %struct.kernel_param { ptr @__param_str_wmarks_high, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @wmarks_high } }, section "__param", align 4
@__UNIQUE_ID_wmarks_hightype174 = internal constant [35 x i8] c"reclaim.parmtype=wmarks_high:ulong\00", section ".modinfo", align 1
@__param_str_wmarks_mid = internal constant [25 x i8] c"damon_reclaim.wmarks_mid\00", align 1
@wmarks_mid = internal global i32 400, section ".data..read_mostly", align 4
@__param_wmarks_mid = internal constant %struct.kernel_param { ptr @__param_str_wmarks_mid, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @wmarks_mid } }, section "__param", align 4
@__UNIQUE_ID_wmarks_midtype175 = internal constant [34 x i8] c"reclaim.parmtype=wmarks_mid:ulong\00", section ".modinfo", align 1
@__param_str_wmarks_low = internal constant [25 x i8] c"damon_reclaim.wmarks_low\00", align 1
@wmarks_low = internal global i32 200, section ".data..read_mostly", align 4
@__param_wmarks_low = internal constant %struct.kernel_param { ptr @__param_str_wmarks_low, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @wmarks_low } }, section "__param", align 4
@__UNIQUE_ID_wmarks_lowtype176 = internal constant [34 x i8] c"reclaim.parmtype=wmarks_low:ulong\00", section ".modinfo", align 1
@__param_str_sample_interval = internal constant [30 x i8] c"damon_reclaim.sample_interval\00", align 1
@sample_interval = internal global i32 5000, section ".data..read_mostly", align 4
@__param_sample_interval = internal constant %struct.kernel_param { ptr @__param_str_sample_interval, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @sample_interval } }, section "__param", align 4
@__UNIQUE_ID_sample_intervaltype177 = internal constant [39 x i8] c"reclaim.parmtype=sample_interval:ulong\00", section ".modinfo", align 1
@__param_str_aggr_interval = internal constant [28 x i8] c"damon_reclaim.aggr_interval\00", align 1
@aggr_interval = internal global i32 100000, section ".data..read_mostly", align 4
@__param_aggr_interval = internal constant %struct.kernel_param { ptr @__param_str_aggr_interval, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @aggr_interval } }, section "__param", align 4
@__UNIQUE_ID_aggr_intervaltype178 = internal constant [37 x i8] c"reclaim.parmtype=aggr_interval:ulong\00", section ".modinfo", align 1
@__param_str_min_nr_regions = internal constant [29 x i8] c"damon_reclaim.min_nr_regions\00", align 1
@min_nr_regions = internal global i32 10, section ".data..read_mostly", align 4
@__param_min_nr_regions = internal constant %struct.kernel_param { ptr @__param_str_min_nr_regions, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @min_nr_regions } }, section "__param", align 4
@__UNIQUE_ID_min_nr_regionstype179 = internal constant [38 x i8] c"reclaim.parmtype=min_nr_regions:ulong\00", section ".modinfo", align 1
@__param_str_max_nr_regions = internal constant [29 x i8] c"damon_reclaim.max_nr_regions\00", align 1
@max_nr_regions = internal global i32 1000, section ".data..read_mostly", align 4
@__param_max_nr_regions = internal constant %struct.kernel_param { ptr @__param_str_max_nr_regions, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @max_nr_regions } }, section "__param", align 4
@__UNIQUE_ID_max_nr_regionstype180 = internal constant [38 x i8] c"reclaim.parmtype=max_nr_regions:ulong\00", section ".modinfo", align 1
@__param_str_monitor_region_start = internal constant [35 x i8] c"damon_reclaim.monitor_region_start\00", align 1
@monitor_region_start = internal global i32 0, section ".data..read_mostly", align 4
@__param_monitor_region_start = internal constant %struct.kernel_param { ptr @__param_str_monitor_region_start, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @monitor_region_start } }, section "__param", align 4
@__UNIQUE_ID_monitor_region_starttype181 = internal constant [44 x i8] c"reclaim.parmtype=monitor_region_start:ulong\00", section ".modinfo", align 1
@__param_str_monitor_region_end = internal constant [33 x i8] c"damon_reclaim.monitor_region_end\00", align 1
@monitor_region_end = internal global i32 0, section ".data..read_mostly", align 4
@__param_monitor_region_end = internal constant %struct.kernel_param { ptr @__param_str_monitor_region_end, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @monitor_region_end } }, section "__param", align 4
@__UNIQUE_ID_monitor_region_endtype182 = internal constant [42 x i8] c"reclaim.parmtype=monitor_region_end:ulong\00", section ".modinfo", align 1
@__param_str_kdamond_pid = internal constant [26 x i8] c"damon_reclaim.kdamond_pid\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@kdamond_pid = internal global i32 -1, section ".data..read_mostly", align 4
@__param_kdamond_pid = internal constant %struct.kernel_param { ptr @__param_str_kdamond_pid, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @kdamond_pid } }, section "__param", align 4
@__UNIQUE_ID_kdamond_pidtype183 = internal constant [33 x i8] c"reclaim.parmtype=kdamond_pid:int\00", section ".modinfo", align 1
@__param_str_nr_reclaim_tried_regions = internal constant [39 x i8] c"damon_reclaim.nr_reclaim_tried_regions\00", align 1
@nr_reclaim_tried_regions = internal global i32 0, section ".data..read_mostly", align 4
@__param_nr_reclaim_tried_regions = internal constant %struct.kernel_param { ptr @__param_str_nr_reclaim_tried_regions, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @nr_reclaim_tried_regions } }, section "__param", align 4
@__UNIQUE_ID_nr_reclaim_tried_regionstype184 = internal constant [48 x i8] c"reclaim.parmtype=nr_reclaim_tried_regions:ulong\00", section ".modinfo", align 1
@__param_str_bytes_reclaim_tried_regions = internal constant [42 x i8] c"damon_reclaim.bytes_reclaim_tried_regions\00", align 1
@bytes_reclaim_tried_regions = internal global i32 0, section ".data..read_mostly", align 4
@__param_bytes_reclaim_tried_regions = internal constant %struct.kernel_param { ptr @__param_str_bytes_reclaim_tried_regions, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @bytes_reclaim_tried_regions } }, section "__param", align 4
@__UNIQUE_ID_bytes_reclaim_tried_regionstype185 = internal constant [51 x i8] c"reclaim.parmtype=bytes_reclaim_tried_regions:ulong\00", section ".modinfo", align 1
@__param_str_nr_reclaimed_regions = internal constant [35 x i8] c"damon_reclaim.nr_reclaimed_regions\00", align 1
@nr_reclaimed_regions = internal global i32 0, section ".data..read_mostly", align 4
@__param_nr_reclaimed_regions = internal constant %struct.kernel_param { ptr @__param_str_nr_reclaimed_regions, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @nr_reclaimed_regions } }, section "__param", align 4
@__UNIQUE_ID_nr_reclaimed_regionstype186 = internal constant [44 x i8] c"reclaim.parmtype=nr_reclaimed_regions:ulong\00", section ".modinfo", align 1
@__param_str_bytes_reclaimed_regions = internal constant [38 x i8] c"damon_reclaim.bytes_reclaimed_regions\00", align 1
@bytes_reclaimed_regions = internal global i32 0, section ".data..read_mostly", align 4
@__param_bytes_reclaimed_regions = internal constant %struct.kernel_param { ptr @__param_str_bytes_reclaimed_regions, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @bytes_reclaimed_regions } }, section "__param", align 4
@__UNIQUE_ID_bytes_reclaimed_regionstype187 = internal constant [47 x i8] c"reclaim.parmtype=bytes_reclaimed_regions:ulong\00", section ".modinfo", align 1
@__param_str_nr_quota_exceeds = internal constant [31 x i8] c"damon_reclaim.nr_quota_exceeds\00", align 1
@nr_quota_exceeds = internal global i32 0, section ".data..read_mostly", align 4
@__param_nr_quota_exceeds = internal constant %struct.kernel_param { ptr @__param_str_nr_quota_exceeds, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @nr_quota_exceeds } }, section "__param", align 4
@__UNIQUE_ID_nr_quota_exceedstype188 = internal constant [40 x i8] c"reclaim.parmtype=nr_quota_exceeds:ulong\00", section ".modinfo", align 1
@__initcall__kmod_reclaim__189_402_damon_reclaim_init6 = internal global ptr @damon_reclaim_init, section ".initcall6.init", align 4
@ctx = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@target = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@damon_reclaim_timer = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @damon_reclaim_timer, i64 4), ptr getelementptr (i8, ptr @damon_reclaim_timer, i64 4) }, ptr @damon_reclaim_timer_fn, %struct.lockdep_map { ptr @damon_reclaim_timer, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.1, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(damon_reclaim_timer).work\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mm/damon/reclaim.c:364\00", [41 x i8] zeroinitializer }, align 32
@damon_reclaim_timer_fn.last_enabled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@___asan_gen_.2 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 218, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 219, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"damon_reclaim_timer\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 364, i32 8 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"last_enabled\00", align 1
@___asan_gen_.18 = private constant [22 x i8] c"../mm/damon/reclaim.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 350, i32 14 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_aggr_intervaltype178, ptr @__UNIQUE_ID_bytes_reclaim_tried_regionstype185, ptr @__UNIQUE_ID_bytes_reclaimed_regionstype187, ptr @__UNIQUE_ID_enabledtype168, ptr @__UNIQUE_ID_kdamond_pidtype183, ptr @__UNIQUE_ID_max_nr_regionstype180, ptr @__UNIQUE_ID_min_agetype169, ptr @__UNIQUE_ID_min_nr_regionstype179, ptr @__UNIQUE_ID_monitor_region_endtype182, ptr @__UNIQUE_ID_monitor_region_starttype181, ptr @__UNIQUE_ID_nr_quota_exceedstype188, ptr @__UNIQUE_ID_nr_reclaim_tried_regionstype184, ptr @__UNIQUE_ID_nr_reclaimed_regionstype186, ptr @__UNIQUE_ID_quota_mstype170, ptr @__UNIQUE_ID_quota_reset_interval_mstype172, ptr @__UNIQUE_ID_quota_sztype171, ptr @__UNIQUE_ID_sample_intervaltype177, ptr @__UNIQUE_ID_wmarks_hightype174, ptr @__UNIQUE_ID_wmarks_intervaltype173, ptr @__UNIQUE_ID_wmarks_lowtype176, ptr @__UNIQUE_ID_wmarks_midtype175, ptr @__initcall__kmod_reclaim__189_402_damon_reclaim_init6, ptr @__param_aggr_interval, ptr @__param_bytes_reclaim_tried_regions, ptr @__param_bytes_reclaimed_regions, ptr @__param_enabled, ptr @__param_kdamond_pid, ptr @__param_max_nr_regions, ptr @__param_min_age, ptr @__param_min_nr_regions, ptr @__param_monitor_region_end, ptr @__param_monitor_region_start, ptr @__param_nr_quota_exceeds, ptr @__param_nr_reclaim_tried_regions, ptr @__param_nr_reclaimed_regions, ptr @__param_quota_ms, ptr @__param_quota_reset_interval_ms, ptr @__param_quota_sz, ptr @__param_sample_interval, ptr @__param_wmarks_high, ptr @__param_wmarks_interval, ptr @__param_wmarks_low, ptr @__param_wmarks_mid, ptr @ctx, ptr @target, ptr @damon_reclaim_timer, ptr @.str, ptr @.str.1, ptr @damon_reclaim_timer_fn.last_enabled], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_reclaim_timer to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_reclaim_timer_fn.last_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_reclaim_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @damon_new_ctx() #6
  store ptr %call, ptr @ctx, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  tail call void @damon_pa_set_primitives(ptr noundef nonnull %call) #6
  %0 = load ptr, ptr @ctx, align 4
  %after_aggregation = getelementptr inbounds %struct.damon_ctx, ptr %0, i32 0, i32 8, i32 3
  %1 = ptrtoint ptr %after_aggregation to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @damon_reclaim_after_aggregation, ptr %after_aggregation, align 4
  %call1 = tail call ptr @damon_new_target(i32 noundef 4242) #6
  store ptr %call1, ptr @target, align 4
  %tobool2.not = icmp eq ptr %call1, null
  %2 = load ptr, ptr @ctx, align 4
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @damon_destroy_ctx(ptr noundef %2) #6
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @damon_add_target(ptr noundef %2, ptr noundef nonnull %call1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef nonnull @damon_reclaim_timer, i32 noundef 0) #6
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %if.then3 ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @damon_new_ctx() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_pa_set_primitives(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_reclaim_after_aggregation(ptr noundef readonly %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %schemes = getelementptr inbounds %struct.damon_ctx, ptr %c, i32 0, i32 12
  %0 = ptrtoint ptr %schemes to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn18 = load ptr, ptr %schemes, align 4
  %cmp.not19 = icmp eq ptr %.pn18, %schemes
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn20 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn18, %entry.for.body_crit_edge ]
  %stat = getelementptr i8, ptr %.pn20, i32 -20
  %1 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stat, align 4
  store i32 %2, ptr @nr_reclaim_tried_regions, align 4
  %sz_tried = getelementptr i8, ptr %.pn20, i32 -16
  %3 = ptrtoint ptr %sz_tried to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sz_tried, align 4
  store i32 %4, ptr @bytes_reclaim_tried_regions, align 4
  %nr_applied = getelementptr i8, ptr %.pn20, i32 -12
  %5 = ptrtoint ptr %nr_applied to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_applied, align 4
  store i32 %6, ptr @nr_reclaimed_regions, align 4
  %sz_applied = getelementptr i8, ptr %.pn20, i32 -8
  %7 = ptrtoint ptr %sz_applied to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sz_applied, align 4
  store i32 %8, ptr @bytes_reclaimed_regions, align 4
  %qt_exceeds = getelementptr i8, ptr %.pn20, i32 -4
  %9 = ptrtoint ptr %qt_exceeds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qt_exceeds, align 4
  store i32 %10, ptr @nr_quota_exceeds, align 4
  %11 = ptrtoint ptr %.pn20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn20, align 4
  %cmp.not = icmp eq ptr %.pn, %schemes
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @damon_new_target(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_destroy_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_add_target(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_reclaim_timer_fn(ptr nocapture noundef readnone %work) #4 align 64 {
entry:
  %wmarks.i.i = alloca %struct.damos_watermarks, align 4
  %quota.i.i = alloca %struct.damos_quota, align 4
  %arg.i.i = alloca %struct.damon_reclaim_ram_walk_arg, align 8
  %scheme.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @enabled, align 1, !range !147
  %1 = load i8, ptr @damon_reclaim_timer_fn.last_enabled, align 1, !range !147
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %0)
  %cmp.not = icmp eq i8 %1, %0
  br i1 %cmp.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scheme.i) #6
  br i1 %tobool.not, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @damon_stop(ptr noundef nonnull @ctx, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.then7_crit_edge, label %if.then.i.if.else_crit_edge

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then.i.if.then7_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.end3.i:                                        ; preds = %if.then
  %2 = load ptr, ptr @ctx, align 4
  %3 = load i32, ptr @sample_interval, align 4
  %4 = load i32, ptr @aggr_interval, align 4
  %5 = load i32, ptr @min_nr_regions, align 4
  %6 = load i32, ptr @max_nr_regions, align 4
  %call4.i = tail call i32 @damon_set_attrs(ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %5, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.if.else_crit_edge

if.end3.i.if.else_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end7.i:                                        ; preds = %if.end3.i
  %7 = load i32, ptr @monitor_region_start, align 4
  %8 = load i32, ptr @monitor_region_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp.i = icmp ugt i32 %7, %8
  br i1 %cmp.i, label %if.end7.i.if.else_crit_edge, label %if.end9.i

if.end7.i.if.else_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end9.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not.i = icmp eq i32 %8, 0
  %or.cond.i = select i1 %tobool10.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true12.i, label %if.end9.i.if.end15.i_crit_edge

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

land.lhs.true12.i:                                ; preds = %if.end9.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #6
  %9 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %arg.i.i, align 8
  %call.i.i = call i32 @walk_system_ram_res(i64 noundef 0, i64 noundef 4294967295, ptr noundef nonnull %arg.i.i, ptr noundef nonnull @walk_system_ram) #6
  %end1.i.i = getelementptr inbounds %struct.damon_reclaim_ram_walk_arg, ptr %arg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %end1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end1.i.i, align 4
  %12 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arg.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i.i = icmp ugt i32 %11, %13
  br i1 %cmp.not.i.i, label %get_monitoring_region.exit.thread.i, label %get_monitoring_region.exit.i

get_monitoring_region.exit.thread.i:              ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %13, ptr @monitor_region_start, align 4
  store i32 %11, ptr @monitor_region_end, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #6
  br label %if.end15.i

get_monitoring_region.exit.i:                     ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #6
  br label %if.else

if.end15.i:                                       ; preds = %get_monitoring_region.exit.thread.i, %if.end9.i.if.end15.i_crit_edge
  %14 = load i32, ptr @monitor_region_start, align 4
  %15 = load i32, ptr @monitor_region_end, align 4
  %call16.i = call ptr @damon_new_region(i32 noundef %14, i32 noundef %15) #6
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.if.else_crit_edge, label %if.end19.i

if.end15.i.if.else_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end19.i:                                       ; preds = %if.end15.i
  %16 = load ptr, ptr @target, align 4
  call void @damon_add_region(ptr noundef nonnull %call16.i, ptr noundef %16) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wmarks.i.i) #6
  %17 = getelementptr inbounds i8, ptr %wmarks.i.i, i32 20
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16777215, ptr %17, align 4
  %19 = ptrtoint ptr %wmarks.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %wmarks.i.i, align 4
  %interval.i.i = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks.i.i, i32 0, i32 1
  %20 = load i32, ptr @wmarks_interval, align 4
  %21 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %interval.i.i, align 4
  %high.i.i = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks.i.i, i32 0, i32 2
  %22 = load i32, ptr @wmarks_high, align 4
  %23 = ptrtoint ptr %high.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %high.i.i, align 4
  %mid.i.i = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks.i.i, i32 0, i32 3
  %24 = load i32, ptr @wmarks_mid, align 4
  %25 = ptrtoint ptr %mid.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %mid.i.i, align 4
  %low.i.i = getelementptr inbounds %struct.damos_watermarks, ptr %wmarks.i.i, i32 0, i32 4
  %26 = load i32, ptr @wmarks_low, align 4
  %27 = ptrtoint ptr %low.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %low.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %quota.i.i) #6
  %28 = getelementptr inbounds i8, ptr %quota.i.i, i32 12
  %29 = call ptr @memset(ptr %28, i32 0, i32 444)
  %30 = load i32, ptr @quota_ms, align 4
  %31 = ptrtoint ptr %quota.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %quota.i.i, align 4
  %sz.i.i = getelementptr inbounds %struct.damos_quota, ptr %quota.i.i, i32 0, i32 1
  %32 = load i32, ptr @quota_sz, align 4
  %33 = ptrtoint ptr %sz.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sz.i.i, align 4
  %reset_interval.i.i = getelementptr inbounds %struct.damos_quota, ptr %quota.i.i, i32 0, i32 2
  %34 = load i32, ptr @quota_reset_interval_ms, align 4
  %35 = ptrtoint ptr %reset_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %reset_interval.i.i, align 4
  %weight_age.i.i = getelementptr inbounds %struct.damos_quota, ptr %quota.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %weight_age.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %weight_age.i.i, align 4
  %37 = load i32, ptr @min_age, align 4
  %38 = load i32, ptr @aggr_interval, align 4
  %div.i.i = udiv i32 %37, %38
  %call.i43.i = call ptr @damon_new_scheme(i32 noundef 4096, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef %div.i.i, i32 noundef -1, i32 noundef 2, ptr noundef nonnull %quota.i.i, ptr noundef nonnull %wmarks.i.i) #6
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %quota.i.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wmarks.i.i) #6
  %39 = ptrtoint ptr %scheme.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i43.i, ptr %scheme.i, align 4
  %tobool21.not.i = icmp eq ptr %call.i43.i, null
  br i1 %tobool21.not.i, label %if.end19.i.free_region_out.i_crit_edge, label %if.end23.i

if.end19.i.free_region_out.i_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_region_out.i

if.end23.i:                                       ; preds = %if.end19.i
  %40 = load ptr, ptr @ctx, align 4
  %call24.i = call i32 @damon_set_schemes(ptr noundef %40, ptr noundef nonnull %scheme.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end23.i.free_scheme_out.i_crit_edge

if.end23.i.free_scheme_out.i_crit_edge:           ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_scheme_out.i

if.end27.i:                                       ; preds = %if.end23.i
  %call28.i = call i32 @damon_start(ptr noundef nonnull @ctx, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end27.i.free_scheme_out.i_crit_edge

if.end27.i.free_scheme_out.i_crit_edge:           ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_scheme_out.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = load ptr, ptr @ctx, align 4
  %kdamond.i = getelementptr inbounds %struct.damon_ctx, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %kdamond.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %kdamond.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid.i, align 8
  br label %if.then7

free_scheme_out.i:                                ; preds = %if.end27.i.free_scheme_out.i_crit_edge, %if.end23.i.free_scheme_out.i_crit_edge
  %46 = ptrtoint ptr %scheme.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %scheme.i, align 4
  call void @damon_destroy_scheme(ptr noundef %47) #6
  br label %free_region_out.i

free_region_out.i:                                ; preds = %free_scheme_out.i, %if.end19.i.free_region_out.i_crit_edge
  %48 = load ptr, ptr @target, align 4
  call void @damon_destroy_region(ptr noundef nonnull %call16.i, ptr noundef %48) #6
  br label %if.else

if.then7:                                         ; preds = %if.then30.i, %if.then.i.if.then7_crit_edge
  %storemerge = phi i32 [ %45, %if.then30.i ], [ -1, %if.then.i.if.then7_crit_edge ]
  store i32 %storemerge, ptr @kdamond_pid, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scheme.i) #6
  store i8 %0, ptr @damon_reclaim_timer_fn.last_enabled, align 1
  br label %if.end12

if.else:                                          ; preds = %free_region_out.i, %if.end15.i.if.else_crit_edge, %get_monitoring_region.exit.i, %if.end7.i.if.else_crit_edge, %if.end3.i.if.else_crit_edge, %if.then.i.if.else_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scheme.i) #6
  %49 = load i8, ptr @damon_reclaim_timer_fn.last_enabled, align 1, !range !147
  store i8 %49, ptr @enabled, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7, %entry.if.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i17 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %50, ptr noundef nonnull @damon_reclaim_timer, i32 noundef 100) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_stop(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_set_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @damon_new_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_add_region(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_set_schemes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_destroy_scheme(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_destroy_region(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_system_ram_res(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @walk_system_ram(ptr nocapture noundef readonly %res, ptr nocapture noundef %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %end = getelementptr inbounds %struct.damon_reclaim_ram_walk_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  %sub = sub i32 %1, %3
  %end1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %4 = ptrtoint ptr %end1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end1, align 4
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res, align 4
  %sub3 = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub3)
  %cmp = icmp ult i32 %sub, %sub3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arg, align 4
  %9 = ptrtoint ptr %end1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end1, align 4
  %11 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %end, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @damon_new_scheme(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !127, !128, !130, !132, !134, !135, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__param_enabled, !1, !"__param_enabled", i1 false, i1 false}
!1 = !{!"../mm/damon/reclaim.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_enabledtype168, !1, !"__UNIQUE_ID_enabledtype168", i1 false, i1 false}
!3 = !{ptr @__param_min_age, !4, !"__param_min_age", i1 false, i1 false}
!4 = !{!"../mm/damon/reclaim.c", i32 40, i32 1}
!5 = !{ptr @__UNIQUE_ID_min_agetype169, !4, !"__UNIQUE_ID_min_agetype169", i1 false, i1 false}
!6 = !{ptr @__param_quota_ms, !7, !"__param_quota_ms", i1 false, i1 false}
!7 = !{!"../mm/damon/reclaim.c", i32 53, i32 1}
!8 = !{ptr @__UNIQUE_ID_quota_mstype170, !7, !"__UNIQUE_ID_quota_mstype170", i1 false, i1 false}
!9 = !{ptr @__param_quota_sz, !10, !"__param_quota_sz", i1 false, i1 false}
!10 = !{!"../mm/damon/reclaim.c", i32 66, i32 1}
!11 = !{ptr @__UNIQUE_ID_quota_sztype171, !10, !"__UNIQUE_ID_quota_sztype171", i1 false, i1 false}
!12 = !{ptr @__param_quota_reset_interval_ms, !13, !"__param_quota_reset_interval_ms", i1 false, i1 false}
!13 = !{!"../mm/damon/reclaim.c", i32 79, i32 1}
!14 = !{ptr @__UNIQUE_ID_quota_reset_interval_mstype172, !13, !"__UNIQUE_ID_quota_reset_interval_mstype172", i1 false, i1 false}
!15 = !{ptr @__param_wmarks_interval, !16, !"__param_wmarks_interval", i1 false, i1 false}
!16 = !{!"../mm/damon/reclaim.c", i32 88, i32 1}
!17 = !{ptr @__UNIQUE_ID_wmarks_intervaltype173, !16, !"__UNIQUE_ID_wmarks_intervaltype173", i1 false, i1 false}
!18 = !{ptr @__param_wmarks_high, !19, !"__param_wmarks_high", i1 false, i1 false}
!19 = !{!"../mm/damon/reclaim.c", i32 98, i32 1}
!20 = !{ptr @__UNIQUE_ID_wmarks_hightype174, !19, !"__UNIQUE_ID_wmarks_hightype174", i1 false, i1 false}
!21 = !{ptr @__param_wmarks_mid, !22, !"__param_wmarks_mid", i1 false, i1 false}
!22 = !{!"../mm/damon/reclaim.c", i32 108, i32 1}
!23 = !{ptr @__UNIQUE_ID_wmarks_midtype175, !22, !"__UNIQUE_ID_wmarks_midtype175", i1 false, i1 false}
!24 = !{ptr @__param_wmarks_low, !25, !"__param_wmarks_low", i1 false, i1 false}
!25 = !{!"../mm/damon/reclaim.c", i32 119, i32 1}
!26 = !{ptr @__UNIQUE_ID_wmarks_lowtype176, !25, !"__UNIQUE_ID_wmarks_lowtype176", i1 false, i1 false}
!27 = !{ptr @__param_sample_interval, !28, !"__param_sample_interval", i1 false, i1 false}
!28 = !{!"../mm/damon/reclaim.c", i32 128, i32 1}
!29 = !{ptr @__UNIQUE_ID_sample_intervaltype177, !28, !"__UNIQUE_ID_sample_intervaltype177", i1 false, i1 false}
!30 = !{ptr @__param_aggr_interval, !31, !"__param_aggr_interval", i1 false, i1 false}
!31 = !{!"../mm/damon/reclaim.c", i32 137, i32 1}
!32 = !{ptr @__UNIQUE_ID_aggr_intervaltype178, !31, !"__UNIQUE_ID_aggr_intervaltype178", i1 false, i1 false}
!33 = !{ptr @__param_min_nr_regions, !34, !"__param_min_nr_regions", i1 false, i1 false}
!34 = !{!"../mm/damon/reclaim.c", i32 148, i32 1}
!35 = !{ptr @__UNIQUE_ID_min_nr_regionstype179, !34, !"__UNIQUE_ID_min_nr_regionstype179", i1 false, i1 false}
!36 = !{ptr @__param_max_nr_regions, !37, !"__param_max_nr_regions", i1 false, i1 false}
!37 = !{!"../mm/damon/reclaim.c", i32 159, i32 1}
!38 = !{ptr @__UNIQUE_ID_max_nr_regionstype180, !37, !"__UNIQUE_ID_max_nr_regionstype180", i1 false, i1 false}
!39 = !{ptr @__param_monitor_region_start, !40, !"__param_monitor_region_start", i1 false, i1 false}
!40 = !{!"../mm/damon/reclaim.c", i32 168, i32 1}
!41 = !{ptr @__UNIQUE_ID_monitor_region_starttype181, !40, !"__UNIQUE_ID_monitor_region_starttype181", i1 false, i1 false}
!42 = !{ptr @__param_monitor_region_end, !43, !"__param_monitor_region_end", i1 false, i1 false}
!43 = !{!"../mm/damon/reclaim.c", i32 177, i32 1}
!44 = !{ptr @__UNIQUE_ID_monitor_region_endtype182, !43, !"__UNIQUE_ID_monitor_region_endtype182", i1 false, i1 false}
!45 = !{ptr @__param_kdamond_pid, !46, !"__param_kdamond_pid", i1 false, i1 false}
!46 = !{!"../mm/damon/reclaim.c", i32 186, i32 1}
!47 = !{ptr @__UNIQUE_ID_kdamond_pidtype183, !46, !"__UNIQUE_ID_kdamond_pidtype183", i1 false, i1 false}
!48 = !{ptr @__param_nr_reclaim_tried_regions, !49, !"__param_nr_reclaim_tried_regions", i1 false, i1 false}
!49 = !{!"../mm/damon/reclaim.c", i32 192, i32 1}
!50 = !{ptr @__UNIQUE_ID_nr_reclaim_tried_regionstype184, !49, !"__UNIQUE_ID_nr_reclaim_tried_regionstype184", i1 false, i1 false}
!51 = !{ptr @__param_bytes_reclaim_tried_regions, !52, !"__param_bytes_reclaim_tried_regions", i1 false, i1 false}
!52 = !{!"../mm/damon/reclaim.c", i32 198, i32 1}
!53 = !{ptr @__UNIQUE_ID_bytes_reclaim_tried_regionstype185, !52, !"__UNIQUE_ID_bytes_reclaim_tried_regionstype185", i1 false, i1 false}
!54 = !{ptr @__param_nr_reclaimed_regions, !55, !"__param_nr_reclaimed_regions", i1 false, i1 false}
!55 = !{!"../mm/damon/reclaim.c", i32 204, i32 1}
!56 = !{ptr @__UNIQUE_ID_nr_reclaimed_regionstype186, !55, !"__UNIQUE_ID_nr_reclaimed_regionstype186", i1 false, i1 false}
!57 = !{ptr @__param_bytes_reclaimed_regions, !58, !"__param_bytes_reclaimed_regions", i1 false, i1 false}
!58 = !{!"../mm/damon/reclaim.c", i32 210, i32 1}
!59 = !{ptr @__UNIQUE_ID_bytes_reclaimed_regionstype187, !58, !"__UNIQUE_ID_bytes_reclaimed_regionstype187", i1 false, i1 false}
!60 = !{ptr @__param_nr_quota_exceeds, !61, !"__param_nr_quota_exceeds", i1 false, i1 false}
!61 = !{!"../mm/damon/reclaim.c", i32 216, i32 1}
!62 = !{ptr @__UNIQUE_ID_nr_quota_exceedstype188, !61, !"__UNIQUE_ID_nr_quota_exceedstype188", i1 false, i1 false}
!63 = !{ptr @__initcall__kmod_reclaim__189_402_damon_reclaim_init6, !64, !"__initcall__kmod_reclaim__189_402_damon_reclaim_init6", i1 false, i1 false}
!64 = !{!"../mm/damon/reclaim.c", i32 402, i32 1}
!65 = !{ptr @enabled, !66, !"enabled", i1 false, i1 false}
!66 = !{!"../mm/damon/reclaim.c", i32 30, i32 13}
!67 = !{ptr @monitor_region_start, !68, !"monitor_region_start", i1 false, i1 false}
!68 = !{!"../mm/damon/reclaim.c", i32 167, i32 22}
!69 = !{ptr @monitor_region_end, !70, !"monitor_region_end", i1 false, i1 false}
!70 = !{!"../mm/damon/reclaim.c", i32 176, i32 22}
!71 = !{ptr @nr_reclaim_tried_regions, !72, !"nr_reclaim_tried_regions", i1 false, i1 false}
!72 = !{!"../mm/damon/reclaim.c", i32 191, i32 22}
!73 = !{ptr @bytes_reclaim_tried_regions, !74, !"bytes_reclaim_tried_regions", i1 false, i1 false}
!74 = !{!"../mm/damon/reclaim.c", i32 197, i32 22}
!75 = !{ptr @nr_reclaimed_regions, !76, !"nr_reclaimed_regions", i1 false, i1 false}
!76 = !{!"../mm/damon/reclaim.c", i32 203, i32 22}
!77 = !{ptr @bytes_reclaimed_regions, !78, !"bytes_reclaimed_regions", i1 false, i1 false}
!78 = !{!"../mm/damon/reclaim.c", i32 209, i32 22}
!79 = !{ptr @nr_quota_exceeds, !80, !"nr_quota_exceeds", i1 false, i1 false}
!80 = !{!"../mm/damon/reclaim.c", i32 215, i32 22}
!81 = !{ptr @__param_str_enabled, !1, !"__param_str_enabled", i1 false, i1 false}
!82 = !{ptr @__param_str_min_age, !4, !"__param_str_min_age", i1 false, i1 false}
!83 = !{ptr @min_age, !84, !"min_age", i1 false, i1 false}
!84 = !{!"../mm/damon/reclaim.c", i32 39, i32 22}
!85 = !{ptr @__param_str_quota_ms, !7, !"__param_str_quota_ms", i1 false, i1 false}
!86 = !{ptr @quota_ms, !87, !"quota_ms", i1 false, i1 false}
!87 = !{!"../mm/damon/reclaim.c", i32 52, i32 22}
!88 = !{ptr @__param_str_quota_sz, !10, !"__param_str_quota_sz", i1 false, i1 false}
!89 = !{ptr @quota_sz, !90, !"quota_sz", i1 false, i1 false}
!90 = !{!"../mm/damon/reclaim.c", i32 65, i32 22}
!91 = !{ptr @__param_str_quota_reset_interval_ms, !13, !"__param_str_quota_reset_interval_ms", i1 false, i1 false}
!92 = !{ptr @quota_reset_interval_ms, !93, !"quota_reset_interval_ms", i1 false, i1 false}
!93 = !{!"../mm/damon/reclaim.c", i32 78, i32 22}
!94 = !{ptr @__param_str_wmarks_interval, !16, !"__param_str_wmarks_interval", i1 false, i1 false}
!95 = !{ptr @wmarks_interval, !96, !"wmarks_interval", i1 false, i1 false}
!96 = !{!"../mm/damon/reclaim.c", i32 87, i32 22}
!97 = !{ptr @__param_str_wmarks_high, !19, !"__param_str_wmarks_high", i1 false, i1 false}
!98 = !{ptr @wmarks_high, !99, !"wmarks_high", i1 false, i1 false}
!99 = !{!"../mm/damon/reclaim.c", i32 97, i32 22}
!100 = !{ptr @__param_str_wmarks_mid, !22, !"__param_str_wmarks_mid", i1 false, i1 false}
!101 = !{ptr @wmarks_mid, !102, !"wmarks_mid", i1 false, i1 false}
!102 = !{!"../mm/damon/reclaim.c", i32 107, i32 22}
!103 = !{ptr @__param_str_wmarks_low, !25, !"__param_str_wmarks_low", i1 false, i1 false}
!104 = !{ptr @wmarks_low, !105, !"wmarks_low", i1 false, i1 false}
!105 = !{!"../mm/damon/reclaim.c", i32 118, i32 22}
!106 = !{ptr @__param_str_sample_interval, !28, !"__param_str_sample_interval", i1 false, i1 false}
!107 = !{ptr @sample_interval, !108, !"sample_interval", i1 false, i1 false}
!108 = !{!"../mm/damon/reclaim.c", i32 127, i32 22}
!109 = !{ptr @__param_str_aggr_interval, !31, !"__param_str_aggr_interval", i1 false, i1 false}
!110 = !{ptr @aggr_interval, !111, !"aggr_interval", i1 false, i1 false}
!111 = !{!"../mm/damon/reclaim.c", i32 136, i32 22}
!112 = !{ptr @__param_str_min_nr_regions, !34, !"__param_str_min_nr_regions", i1 false, i1 false}
!113 = !{ptr @min_nr_regions, !114, !"min_nr_regions", i1 false, i1 false}
!114 = !{!"../mm/damon/reclaim.c", i32 147, i32 22}
!115 = !{ptr @__param_str_max_nr_regions, !37, !"__param_str_max_nr_regions", i1 false, i1 false}
!116 = !{ptr @max_nr_regions, !117, !"max_nr_regions", i1 false, i1 false}
!117 = !{!"../mm/damon/reclaim.c", i32 158, i32 22}
!118 = !{ptr @__param_str_monitor_region_start, !40, !"__param_str_monitor_region_start", i1 false, i1 false}
!119 = !{ptr @__param_str_monitor_region_end, !43, !"__param_str_monitor_region_end", i1 false, i1 false}
!120 = !{ptr @__param_str_kdamond_pid, !46, !"__param_str_kdamond_pid", i1 false, i1 false}
!121 = !{ptr @kdamond_pid, !122, !"kdamond_pid", i1 false, i1 false}
!122 = !{!"../mm/damon/reclaim.c", i32 185, i32 12}
!123 = !{ptr @__param_str_nr_reclaim_tried_regions, !49, !"__param_str_nr_reclaim_tried_regions", i1 false, i1 false}
!124 = !{ptr @__param_str_bytes_reclaim_tried_regions, !52, !"__param_str_bytes_reclaim_tried_regions", i1 false, i1 false}
!125 = !{ptr @__param_str_nr_reclaimed_regions, !55, !"__param_str_nr_reclaimed_regions", i1 false, i1 false}
!126 = !{ptr @__param_str_bytes_reclaimed_regions, !58, !"__param_str_bytes_reclaimed_regions", i1 false, i1 false}
!127 = !{ptr @__param_str_nr_quota_exceeds, !61, !"__param_str_nr_quota_exceeds", i1 false, i1 false}
!128 = !{ptr @ctx, !129, !"ctx", i1 false, i1 false}
!129 = !{!"../mm/damon/reclaim.c", i32 218, i32 26}
!130 = !{ptr @target, !131, !"target", i1 false, i1 false}
!131 = !{!"../mm/damon/reclaim.c", i32 219, i32 29}
!132 = !{ptr @.str, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../mm/damon/reclaim.c", i32 364, i32 8}
!134 = !{ptr @.str.1, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @damon_reclaim_timer, !133, !"damon_reclaim_timer", i1 false, i1 false}
!136 = !{ptr @damon_reclaim_timer_fn.last_enabled, !137, !"last_enabled", i1 false, i1 false}
!137 = !{!"../mm/damon/reclaim.c", i32 350, i32 14}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i8 0, i8 2}
