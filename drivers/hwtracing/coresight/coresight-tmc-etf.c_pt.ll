; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-tmc-etf.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-tmc-etf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.coresight_ops_sink = type { ptr, ptr, ptr, ptr, ptr }
%struct.coresight_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.coresight_ops_link = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tmc_drvdata = type { ptr, ptr, %struct.miscdevice, %struct.spinlock, i32, i8, %union.anon.101, i32, i32, i32, i32, i32, i32, i32, i32, %struct.idr, %struct.mutex, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.101 = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }
%union.coresight_dev_subtype = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.etm_event_data = type { %struct.work_struct, %struct.cpumask, ptr, i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cs_buffers = type { i32, i32, i32, i32, %struct.local_t, i8, ptr }
%struct.local_t = type { %struct.atomic_t }
%struct.perf_output_handle = type { ptr, ptr, i32, i32, i64, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.55, i64, i64, i64, %union.anon.56, i32, %union.anon.57, %union.anon.58, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.55 = type { i64 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i64 }
%union.anon.58 = type { i64 }
%struct.hw_perf_event = type { %union.anon.59, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.66, i64, i64, i64, i64 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.77, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.77 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@tmc_etf_sink_ops = internal constant { %struct.coresight_ops_sink, [44 x i8] } { %struct.coresight_ops_sink { ptr @tmc_enable_etf_sink, ptr @tmc_disable_etf_sink, ptr @tmc_alloc_etf_buffer, ptr @tmc_free_etf_buffer, ptr @tmc_update_etf_buffer }, [44 x i8] zeroinitializer }, align 32
@tmc_etb_cs_ops = dso_local constant { %struct.coresight_ops, [44 x i8] } { %struct.coresight_ops { ptr @tmc_etf_sink_ops, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@tmc_etf_link_ops = internal constant { %struct.coresight_ops_link, [24 x i8] } { %struct.coresight_ops_link { ptr @tmc_enable_etf_link, ptr @tmc_disable_etf_link }, [24 x i8] zeroinitializer }, align 32
@tmc_etf_cs_ops = dso_local constant { %struct.coresight_ops, [44 x i8] } { %struct.coresight_ops { ptr @tmc_etf_sink_ops, ptr @tmc_etf_link_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@tmc_read_prepare_etb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/hwtracing/coresight/coresight-tmc-etf.c\00", [48 x i8] zeroinitializer }, align 32
@tmc_read_unprepare_etb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tmc_enable_etf_sink.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"coresight_tmc\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tmc_enable_etf_sink\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TMC-ETB/ETF enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tmc_disable_etf_sink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tmc_disable_etf_sink.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tmc_disable_etf_sink\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TMC-ETB/ETF disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@tmc_update_etf_buffer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@coresight_barrier_pkt = external dso_local local_unnamed_addr constant [4 x i32], align 4
@tmc_enable_etf_link.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tmc_enable_etf_link\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TMC-ETF enabled\0A\00", [47 x i8] zeroinitializer }, align 32
@tmc_disable_etf_link.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tmc_disable_etf_link\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TMC-ETF disabled\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"tmc_etf_sink_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 567, i32 40 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"tmc_etb_cs_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 580, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"tmc_etf_link_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 575, i32 40 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"tmc_etf_cs_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 584, i32 28 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 596, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 303, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 333, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 363, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [51 x i8] c"../drivers/hwtracing/coresight/coresight-tmc-etf.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 388, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @tmc_etf_sink_ops, ptr @tmc_etb_cs_ops, ptr @tmc_etf_link_ops, ptr @tmc_etf_cs_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_etf_sink_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_etb_cs_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_etf_link_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmc_etf_cs_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tmc_etb_get_sysfs_trace(ptr nocapture noundef readonly %drvdata, i64 noundef %pos, i32 noundef %len, ptr nocapture noundef writeonly %bufpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %len to i64
  %add = add i64 %conv, %pos
  %len1 = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 7
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %conv2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv2)
  %cmp = icmp sgt i64 %add, %conv2
  %2 = trunc i64 %pos to i32
  %conv6 = sub i32 %1, %2
  %actual.0 = select i1 %cmp, i32 %conv6, i32 %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %actual.0)
  %cmp7 = icmp sgt i32 %actual.0, 0
  br i1 %cmp7, label %if.then9, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %2
  %6 = ptrtoint ptr %bufpp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %bufpp, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %entry.if.end10_crit_edge
  ret i32 %actual.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tmc_read_prepare_etb(ptr noundef %drvdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config_type = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 11
  %0 = ptrtoint ptr %config_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_type, align 4
  %2 = and i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %do.body43, label %land.rhs4

land.rhs4:                                        ; preds = %entry
  %.b91 = load i1, ptr @tmc_read_prepare_etb.__already_done, align 1
  br i1 %.b91, label %land.rhs4.cleanup_crit_edge, label %if.then, !prof !43

land.rhs4.cleanup_crit_edge:                      ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tmc_read_prepare_etb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 597, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.body43:                                        ; preds = %entry
  %spinlock = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 3
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %reading = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 5
  %3 = ptrtoint ptr %reading to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reading, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool51.not = icmp eq i8 %4, 0
  br i1 %tobool51.not, label %if.end53, label %do.body43.out_crit_edge

do.body43.out_crit_edge:                          ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end53:                                         ; preds = %do.body43
  %mode54 = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 10
  %5 = ptrtoint ptr %mode54 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp55 = icmp eq i32 %6, 2
  br i1 %cmp55, label %if.end53.out_crit_edge, label %if.end58

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end58:                                         ; preds = %if.end53
  %7 = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp59 = icmp eq ptr %9, null
  br i1 %cmp59, label %if.end58.out_crit_edge, label %if.end62

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end62:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp64 = icmp eq i32 %6, 1
  br i1 %cmp64, label %if.then66, label %if.end62.if.end73_crit_edge

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then66:                                        ; preds = %if.end62
  %10 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 40
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp69.not = icmp eq i32 %12, 0
  br i1 %cmp69.not, label %if.end72, label %if.then66.out_crit_edge

if.then66.out_crit_edge:                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end72:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__tmc_etb_disable_hw(ptr noundef %drvdata)
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end62.if.end73_crit_edge
  %13 = ptrtoint ptr %reading to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %reading, align 4
  br label %out

out:                                              ; preds = %if.end73, %if.then66.out_crit_edge, %if.end58.out_crit_edge, %if.end53.out_crit_edge, %do.body43.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end73 ], [ -16, %do.body43.out_crit_edge ], [ -22, %if.end53.out_crit_edge ], [ -22, %if.end58.out_crit_edge ], [ -22, %if.then66.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call46) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then, %land.rhs4.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %if.then ], [ -22, %land.rhs4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tmc_etb_disable_hw(ptr noundef %drvdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void @tmc_flush_and_stop(ptr noundef %drvdata) #7
  %mode = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 10
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %add.ptr.i7 = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #7, !srcloc !45
  %7 = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %len.i = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 7
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %len.i, align 4
  %11 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drvdata, align 4
  %add.ptr316.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr316.i) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp17.i = icmp eq i32 %13, -1
  br i1 %cmp17.i, label %if.then.while.end.i_crit_edge, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  br label %if.end.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %14 = phi i32 [ %21, %if.end.i.if.end.i_crit_edge ], [ %13, %if.then.if.end.i_crit_edge ]
  %bufp.018.i = phi ptr [ %add.ptr6.i, %if.end.i.if.end.i_crit_edge ], [ %9, %if.then.if.end.i_crit_edge ]
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %bufp.018.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %bufp.018.i, align 1
  %add.ptr6.i = getelementptr i8, ptr %bufp.018.i, i32 4
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  %add.i = add i32 %18, 4
  store i32 %add.i, ptr %len.i, align 4
  %19 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drvdata, align 4
  %add.ptr3.i = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !45
  %cmp.i = icmp eq i32 %21, -1
  br i1 %cmp.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  %22 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %while.end.i.if.end_crit_edge, label %if.then8.i

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then8.i:                                       ; preds = %while.end.i
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then8.i.if.end_crit_edge, label %if.then.i.i

if.then8.i.if.end_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = call ptr @memcpy(ptr %24, ptr @coresight_barrier_pkt, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then8.i.if.end_crit_edge, %while.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @tmc_disable_hw(ptr noundef %drvdata) #7
  %26 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drvdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %add.ptr.i8 = getelementptr i8, ptr %27, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #7, !srcloc !46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tmc_read_unprepare_etb(ptr noundef %drvdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config_type = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 11
  %0 = ptrtoint ptr %config_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_type, align 4
  %2 = and i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %do.body43, label %land.rhs4

land.rhs4:                                        ; preds = %entry
  %.b81 = load i1, ptr @tmc_read_unprepare_etb.__already_done, align 1
  br i1 %.b81, label %land.rhs4.cleanup_crit_edge, label %if.then, !prof !43

land.rhs4.cleanup_crit_edge:                      ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tmc_read_unprepare_etb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 645, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.body43:                                        ; preds = %entry
  %spinlock = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 3
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %mode51 = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 10
  %3 = ptrtoint ptr %mode51 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp52 = icmp eq i32 %4, 1
  br i1 %cmp52, label %if.then54, label %if.else

if.then54:                                        ; preds = %do.body43
  %5 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drvdata, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp57.not = icmp eq i32 %7, 0
  br i1 %cmp57.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call46) #7
  br label %cleanup

if.end61:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %8 = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %size = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 8
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %13 = call ptr @memset(ptr %10, i32 0, i32 %12)
  %14 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void @tmc_wait_for_tmcready(ptr noundef %drvdata) #7
  %16 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !46
  %18 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drvdata, align 4
  %add.ptr3.i = getelementptr i8, ptr %19, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 855703552) #7, !srcloc !46
  %trigger_cntr.i = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 13
  %20 = ptrtoint ptr %trigger_cntr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %trigger_cntr.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %23 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drvdata, align 4
  %add.ptr5.i = getelementptr i8, ptr %24, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %22) #7, !srcloc !46
  tail call void @tmc_enable_hw(ptr noundef %drvdata) #7
  %25 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drvdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %add.ptr.i14.i = getelementptr i8, ptr %26, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 0) #7, !srcloc !46
  br label %if.end62

if.else:                                          ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %27 = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 6
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  store ptr null, ptr %27, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.end61
  %buf.0 = phi ptr [ null, %if.end61 ], [ %29, %if.else ]
  %reading = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 5
  %30 = ptrtoint ptr %reading to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %reading, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call46) #7
  tail call void @kfree(ptr noundef %buf.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then59, %if.then, %land.rhs4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then59 ], [ 0, %if.end62 ], [ -22, %if.then ], [ -22, %land.rhs4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmc_enable_etf_sink(ptr noundef %csdev, i32 noundef %mode, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %parent.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %spinlock.i = getelementptr inbounds %struct.tmc_drvdata, ptr %4, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %5 = getelementptr inbounds %struct.tmc_drvdata, ptr %4, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.if.end24.i_crit_edge

sw.bb.if.end24.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then.i:                                        ; preds = %sw.bb
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call3.i) #7
  %size.i = getelementptr inbounds %struct.tmc_drvdata, ptr %4, i32 0, i32 8
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #10
  %tobool8.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool8.not.i, label %if.then.i.cleanup_crit_edge, label %do.body11.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.body11.i, %sw.bb.if.end24.i_crit_edge
  %buf.0.i = phi ptr [ null, %sw.bb.if.end24.i_crit_edge ], [ %call9.i.i.i, %do.body11.i ]
  %flags.0.i = phi i32 [ %call3.i, %sw.bb.if.end24.i_crit_edge ], [ %call19.i, %do.body11.i ]
  %reading.i = getelementptr inbounds %struct.tmc_drvdata, ptr %4, i32 0, i32 5
  %10 = ptrtoint ptr %reading.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reading.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool25.not.i = icmp eq i8 %11, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end24.i.out.thread.i_crit_edge

if.end24.i.out.thread.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread.i

if.end27.i:                                       ; preds = %if.end24.i
  %mode.i = getelementptr inbounds %struct.tmc_drvdata, ptr %4, i32 0, i32 10
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp28.i = icmp eq i32 %13, 1
  br i1 %cmp28.i, label %if.then30.i, label %if.end31.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %refcnt.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %14 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %refcnt.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #7, !srcloc !49
  br label %out.thread.i

if.end31.i:                                       ; preds = %if.end27.i
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %tobool32.not.i = icmp eq ptr %18, null
  br i1 %tobool32.not.i, label %if.else.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %size34.i = getelementptr inbounds %struct.tmc_drvdata, ptr %4, i32 0, i32 8
  %19 = ptrtoint ptr %size34.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size34.i, align 4
  %21 = call ptr @memset(ptr %18, i32 0, i32 %20)
  br label %if.end35.i

if.else.i:                                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf.0.i, ptr %5, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else.i, %if.then33.i
  %call36.i = tail call fastcc i32 @tmc_etb_enable_hw(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %out.i, label %if.end35.i.out.thread.i_crit_edge

if.end35.i.out.thread.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread.i

out.thread.i:                                     ; preds = %if.end35.i.out.thread.i_crit_edge, %if.then30.i, %if.end24.i.out.thread.i_crit_edge
  %ret.0.ph.i = phi i32 [ %call36.i, %if.end35.i.out.thread.i_crit_edge ], [ -16, %if.end24.i.out.thread.i_crit_edge ], [ 0, %if.then30.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %flags.0.i) #7
  br label %if.then45.i

out.i:                                            ; preds = %if.end35.i
  %23 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %mode.i, align 4
  %refcnt40.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %24 = ptrtoint ptr %refcnt40.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %refcnt40.i, align 8
  %call.i.i70.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %25, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %25, i32 1, i32 3, i32 1) #7
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #7, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %flags.0.i) #7
  br i1 %tobool32.not.i, label %out.i.do.body_crit_edge, label %out.i.if.then45.i_crit_edge

out.i.if.then45.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45.i

out.i.do.body_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then45.i:                                      ; preds = %out.i.if.then45.i_crit_edge, %out.thread.i
  %ret.076.i = phi i32 [ %ret.0.ph.i, %out.thread.i ], [ 0, %out.i.if.then45.i_crit_edge ]
  tail call void @kfree(ptr noundef %buf.0.i) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %parent.i13 = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %parent.i13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i13, align 8
  %driver_data.i.i14 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i14, align 4
  %call.i.i = tail call ptr @perf_get_aux(ptr noundef %data) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb1.etm_perf_sink_config.exit.i_crit_edge, label %if.then.i.i

sw.bb1.etm_perf_sink_config.exit.i_crit_edge:     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %etm_perf_sink_config.exit.i

if.then.i.i:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %snk_config.i.i = getelementptr inbounds %struct.etm_event_data, ptr %call.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %snk_config.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %snk_config.i.i, align 4
  br label %etm_perf_sink_config.exit.i

etm_perf_sink_config.exit.i:                      ; preds = %if.then.i.i, %sw.bb1.etm_perf_sink_config.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.then.i.i ], [ null, %sw.bb1.etm_perf_sink_config.exit.i_crit_edge ]
  %spinlock.i15 = getelementptr inbounds %struct.tmc_drvdata, ptr %30, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i15) #7
  %reading.i16 = getelementptr inbounds %struct.tmc_drvdata, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %reading.i16 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reading.i16, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i17 = icmp eq i8 %34, 0
  br i1 %tobool.not.i17, label %if.end.i, label %etm_perf_sink_config.exit.i.tmc_enable_etf_sink_perf.exit_crit_edge

etm_perf_sink_config.exit.i.tmc_enable_etf_sink_perf.exit_crit_edge: ; preds = %etm_perf_sink_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tmc_enable_etf_sink_perf.exit

if.end.i:                                         ; preds = %etm_perf_sink_config.exit.i
  %mode.i18 = getelementptr inbounds %struct.tmc_drvdata, ptr %30, i32 0, i32 10
  %35 = ptrtoint ptr %mode.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp8.i = icmp eq i32 %36, 1
  br i1 %cmp8.i, label %if.end.i.tmc_enable_etf_sink_perf.exit_crit_edge, label %if.end11.i

if.end.i.tmc_enable_etf_sink_perf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tmc_enable_etf_sink_perf.exit

if.end11.i:                                       ; preds = %if.end.i
  %pid12.i = getelementptr inbounds %struct.cs_buffers, ptr %retval.0.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %pid12.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid12.i, align 4
  %pid13.i = getelementptr inbounds %struct.tmc_drvdata, ptr %30, i32 0, i32 4
  %39 = ptrtoint ptr %pid13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp14.not.i = icmp eq i32 %40, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp17.not.i = icmp eq i32 %40, %38
  %or.cond.i = select i1 %cmp14.not.i, i1 true, i1 %cmp17.not.i
  br i1 %or.cond.i, label %if.end20.i, label %if.end11.i.tmc_enable_etf_sink_perf.exit_crit_edge

if.end11.i.tmc_enable_etf_sink_perf.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tmc_enable_etf_sink_perf.exit

if.end20.i:                                       ; preds = %if.end11.i
  %call.i.i59.i = tail call ptr @perf_get_aux(ptr noundef %data) #7
  %tobool.not.i.i.i = icmp eq ptr %call.i.i59.i, null
  br i1 %tobool.not.i.i.i, label %if.end20.i.tmc_enable_etf_sink_perf.exit_crit_edge, label %etm_perf_sink_config.exit.i.i

if.end20.i.tmc_enable_etf_sink_perf.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tmc_enable_etf_sink_perf.exit

etm_perf_sink_config.exit.i.i:                    ; preds = %if.end20.i
  %snk_config.i.i.i = getelementptr inbounds %struct.etm_event_data, ptr %call.i.i59.i, i32 0, i32 2
  %41 = ptrtoint ptr %snk_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %snk_config.i.i.i, align 4
  %tobool.not.i60.i = icmp eq ptr %42, null
  br i1 %tobool.not.i60.i, label %etm_perf_sink_config.exit.i.i.tmc_enable_etf_sink_perf.exit_crit_edge, label %if.end24.i19

etm_perf_sink_config.exit.i.i.tmc_enable_etf_sink_perf.exit_crit_edge: ; preds = %etm_perf_sink_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tmc_enable_etf_sink_perf.exit

if.end24.i19:                                     ; preds = %etm_perf_sink_config.exit.i.i
  %43 = getelementptr inbounds %struct.perf_output_handle, ptr %data, i32 0, i32 5
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %nr_pages.i.i = getelementptr inbounds %struct.cs_buffers, ptr %42, i32 0, i32 1
  %46 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_pages.i.i, align 4
  %shl.i.i = shl i32 %47, 12
  %sub.i.i = add i32 %shl.i.i, -1
  %and.i.i = and i32 %sub.i.i, %45
  %div1.i.i = lshr i32 %and.i.i, 12
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div1.i.i, ptr %42, align 4
  %rem.i.i = and i32 %45, 4095
  %offset.i.i = getelementptr inbounds %struct.cs_buffers, ptr %42, i32 0, i32 3
  %49 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %rem.i.i, ptr %offset.i.i, align 4
  %data_size.i.i = getelementptr inbounds %struct.cs_buffers, ptr %42, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_size.i.i, i32 noundef 4) #7
  %50 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %data_size.i.i, align 4
  %51 = ptrtoint ptr %pid13.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pid13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %38)
  %cmp26.i = icmp eq i32 %52, %38
  br i1 %cmp26.i, label %if.then28.i, label %if.end29.i

if.then28.i:                                      ; preds = %if.end24.i19
  call void @__sanitizer_cov_trace_pc() #9
  %refcnt.i20 = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %53 = ptrtoint ptr %refcnt.i20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %refcnt.i20, align 8
  %call.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %54, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %54, i32 1, i32 3, i32 1) #7
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #7, !srcloc !49
  br label %tmc_enable_etf_sink_perf.exit

if.end29.i:                                       ; preds = %if.end24.i19
  %call30.i = tail call fastcc i32 @tmc_etb_enable_hw(ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end29.i.tmc_enable_etf_sink_perf.exit_crit_edge

if.end29.i.tmc_enable_etf_sink_perf.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tmc_enable_etf_sink_perf.exit

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %pid13.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %38, ptr %pid13.i, align 4
  %57 = ptrtoint ptr %mode.i18 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %mode.i18, align 4
  %refcnt35.i = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %58 = ptrtoint ptr %refcnt35.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %refcnt35.i, align 8
  %call.i.i58.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %59, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %59, i32 1, i32 3, i32 1) #7
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #7, !srcloc !49
  br label %tmc_enable_etf_sink_perf.exit

tmc_enable_etf_sink_perf.exit:                    ; preds = %if.then32.i, %if.end29.i.tmc_enable_etf_sink_perf.exit_crit_edge, %if.then28.i, %etm_perf_sink_config.exit.i.i.tmc_enable_etf_sink_perf.exit_crit_edge, %if.end20.i.tmc_enable_etf_sink_perf.exit_crit_edge, %if.end11.i.tmc_enable_etf_sink_perf.exit_crit_edge, %if.end.i.tmc_enable_etf_sink_perf.exit_crit_edge, %etm_perf_sink_config.exit.i.tmc_enable_etf_sink_perf.exit_crit_edge
  %ret.0.i = phi i32 [ -22, %etm_perf_sink_config.exit.i.tmc_enable_etf_sink_perf.exit_crit_edge ], [ 0, %if.then28.i ], [ %call30.i, %if.end29.i.tmc_enable_etf_sink_perf.exit_crit_edge ], [ 0, %if.then32.i ], [ -16, %if.end.i.tmc_enable_etf_sink_perf.exit_crit_edge ], [ -16, %if.end11.i.tmc_enable_etf_sink_perf.exit_crit_edge ], [ -22, %etm_perf_sink_config.exit.i.i.tmc_enable_etf_sink_perf.exit_crit_edge ], [ -22, %if.end20.i.tmc_enable_etf_sink_perf.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i15, i32 noundef %call4.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %tmc_enable_etf_sink_perf.exit, %if.then45.i
  %ret.0 = phi i32 [ %ret.0.i, %tmc_enable_etf_sink_perf.exit ], [ %ret.076.i, %if.then45.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %sw.epilog.do.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %out.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmc_enable_etf_sink.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tmc_enable_etf_sink, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !50

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmc_enable_etf_sink.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body, %sw.epilog.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %do.body ], [ -12, %if.then.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmc_disable_etf_sink(ptr noundef %csdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %reading = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %reading to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reading, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refcnt, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #7, !srcloc !52
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool8.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %land.rhs, label %if.end11.if.end48_crit_edge

if.end11.if.end48_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

land.rhs:                                         ; preds = %if.end11
  %.b89 = load i1, ptr @tmc_disable_etf_sink.__already_done, align 1
  br i1 %.b89, label %land.rhs.if.end48_crit_edge, label %if.then22, !prof !43

land.rhs.if.end48_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tmc_disable_etf_sink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 325, i32 noundef 9, ptr noundef null) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then22, %land.rhs.if.end48_crit_edge, %if.end11.if.end48_crit_edge
  tail call fastcc void @__tmc_etb_disable_hw(ptr noundef %3) #7
  %csdev.i = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csdev.i, align 4
  tail call void @coresight_disclaim_device(ptr noundef %12) #7
  %pid = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %pid, align 4
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mode, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmc_disable_etf_sink.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tmc_disable_etf_sink, %if.then69)) #7
          to label %cleanup [label %if.then69], !srcloc !50

if.then69:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmc_disable_etf_sink.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %if.end48, %if.then9, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ -16, %if.then9 ], [ 0, %if.then69 ], [ 0, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @tmc_alloc_etf_buffer(ptr nocapture noundef readnone %csdev, ptr nocapture noundef readonly %event, ptr noundef %pages, i32 noundef %nr_pages, i1 noundef zeroext %overwrite) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %overwrite to i8
  %owner = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 36
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 68
  %3 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pid.i, align 8
  %pid = getelementptr inbounds %struct.cs_buffers, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pid, align 8
  %snapshot = getelementptr inbounds %struct.cs_buffers, ptr %call.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %snapshot to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %snapshot, align 4
  %nr_pages5 = getelementptr inbounds %struct.cs_buffers, ptr %call.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %nr_pages5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nr_pages, ptr %nr_pages5, align 4
  %data_pages = getelementptr inbounds %struct.cs_buffers, ptr %call.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %data_pages to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pages, ptr %data_pages, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmc_free_etf_buffer(ptr noundef %config) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %config) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmc_update_etf_buffer(ptr nocapture noundef readonly %csdev, ptr noundef %handle, ptr noundef readonly %sink_config) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %sink_config, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %do.body42, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %.b190 = load i1, ptr @tmc_update_etf_buffer.__already_done, align 1
  br i1 %.b190, label %land.rhs.cleanup_crit_edge, label %if.then8, !prof !43

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tmc_update_etf_buffer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 462, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.body42:                                        ; preds = %if.end
  %spinlock = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 3
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %refcnt = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refcnt, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %7, i32 noundef 4) #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp52.not = icmp eq i32 %9, 1
  br i1 %cmp52.not, label %if.end55, label %do.body42.out_crit_edge

do.body42.out_crit_edge:                          ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end55:                                         ; preds = %do.body42
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void @tmc_flush_and_stop(ptr noundef %3) #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !45
  %add.ptr3.i.i = getelementptr i8, ptr %13, i32 56
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #7, !srcloc !45
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr.i.i192 = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i192) #7, !srcloc !45
  %add.ptr3.i.i193 = getelementptr i8, ptr %17, i32 60
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i193) #7, !srcloc !45
  %20 = zext i32 %19 to i64
  %21 = zext i32 %18 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or i64 %22, %20
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #7
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !45
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool61.not = icmp eq i32 %28, 0
  br i1 %tobool61.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  br label %if.end68

if.else:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %31 = call i32 @llvm.bswap.i32(i32 %14)
  %size63 = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 8
  %32 = ptrtoint ptr %size63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size63, align 4
  %sub64 = add i32 %33, -1
  %34 = trunc i64 %24 to i32
  %35 = sub i32 %34, %31
  %conv67 = and i32 %sub64, %35
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then62
  %to_read.0 = phi i32 [ %30, %if.then62 ], [ %conv67, %if.else ]
  %36 = xor i1 %tobool61.not, true
  %snapshot = getelementptr inbounds %struct.cs_buffers, ptr %sink_config, i32 0, i32 5
  %37 = ptrtoint ptr %snapshot to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %snapshot, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool69.not = icmp eq i8 %38, 0
  br i1 %tobool69.not, label %land.lhs.true, label %if.end68.if.end91_crit_edge

if.end68.if.end91_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

land.lhs.true:                                    ; preds = %if.end68
  %size70 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 3
  %39 = ptrtoint ptr %size70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %to_read.0, i32 %40)
  %cmp71 = icmp ugt i32 %to_read.0, %40
  br i1 %cmp71, label %if.then73, label %land.lhs.true.if.end91_crit_edge

land.lhs.true.if.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then73:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call74 = tail call i32 @tmc_get_memwidth_mask(ptr noundef %3) #7
  %41 = ptrtoint ptr %size70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size70, align 4
  %and76 = and i32 %42, %call74
  %size77 = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 8
  %43 = ptrtoint ptr %size77 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size77, align 4
  %conv78 = zext i32 %44 to i64
  %add = add i64 %24, %conv78
  %conv79 = zext i32 %and76 to i64
  %sub80 = sub i64 %add, %conv79
  %sub82 = add i32 %44, -1
  %conv83 = zext i32 %sub82 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub80, i64 %conv83)
  %cmp84 = icmp ugt i64 %sub80, %conv83
  %sub89 = select i1 %cmp84, i64 %conv78, i64 0
  %spec.select = sub i64 %sub80, %sub89
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %conv.i.i = trunc i64 %spec.select to i32
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #7
  %add.ptr.i.i194 = getelementptr i8, ptr %46, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i194, i32 %47) #7, !srcloc !46
  %shr.i.i = lshr i64 %spec.select, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %48 = tail call i32 @llvm.bswap.i32(i32 %conv2.i.i) #7
  %add.ptr3.i.i195 = getelementptr i8, ptr %46, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i195, i32 %48) #7, !srcloc !46
  br label %if.end91

if.end91:                                         ; preds = %if.then73, %land.lhs.true.if.end91_crit_edge, %if.end68.if.end91_crit_edge
  %to_read.1 = phi i32 [ %to_read.0, %if.end68.if.end91_crit_edge ], [ %and76, %if.then73 ], [ %to_read.0, %land.lhs.true.if.end91_crit_edge ]
  %lost.1.off0 = phi i1 [ %36, %if.end68.if.end91_crit_edge ], [ true, %if.then73 ], [ %36, %land.lhs.true.if.end91_crit_edge ]
  %49 = ptrtoint ptr %snapshot to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %snapshot, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool93.not = icmp ne i8 %50, 0
  %lost.1.off0.not = xor i1 %lost.1.off0, true
  %brmerge = select i1 %tobool93.not, i1 true, i1 %lost.1.off0.not
  br i1 %brmerge, label %if.end91.if.end98_crit_edge, label %if.then97

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then97:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @perf_aux_output_flag(ptr noundef %handle, i64 noundef 1) #7
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end91.if.end98_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_read.1)
  %cmp101197.not = icmp eq i32 %to_read.1, 0
  br i1 %cmp101197.not, label %if.end98.for.end_crit_edge, label %for.body.lr.ph

if.end98.for.end_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end98
  %offset100 = getelementptr inbounds %struct.cs_buffers, ptr %sink_config, i32 0, i32 3
  %51 = ptrtoint ptr %offset100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset100, align 4
  %53 = ptrtoint ptr %sink_config to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sink_config, align 4
  %data_pages = getelementptr inbounds %struct.cs_buffers, ptr %sink_config, i32 0, i32 6
  %nr_pages = getelementptr inbounds %struct.cs_buffers, ptr %sink_config, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0201 = phi i32 [ 0, %for.body.lr.ph ], [ %add123, %for.inc.for.body_crit_edge ]
  %cur.0200 = phi i32 [ %54, %for.body.lr.ph ], [ %cur.1, %for.inc.for.body_crit_edge ]
  %barrier.0199 = phi ptr [ @coresight_barrier_pkt, %for.body.lr.ph ], [ %barrier.1, %for.inc.for.body_crit_edge ]
  %offset.0198 = phi i32 [ %52, %for.body.lr.ph ], [ %offset.1, %for.inc.for.body_crit_edge ]
  %55 = ptrtoint ptr %data_pages to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data_pages, align 4
  %arrayidx = getelementptr ptr, ptr %56, i32 %cur.0200
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %add.ptr103 = getelementptr i8, ptr %58, i32 %offset.0198
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  %add.ptr106 = getelementptr i8, ptr %60, i32 16
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #7, !srcloc !45
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %add.ptr103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0201)
  %cmp112 = icmp ult i32 %i.0201, 16
  %or.cond = select i1 %lost.1.off0, i1 %cmp112, i1 false
  br i1 %or.cond, label %if.then114, label %for.body.if.end115_crit_edge

for.body.if.end115_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then114:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %barrier.0199 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %barrier.0199, align 4
  %66 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %add.ptr103, align 4
  %incdec.ptr = getelementptr i32, ptr %barrier.0199, i32 1
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %for.body.if.end115_crit_edge
  %barrier.1 = phi ptr [ %incdec.ptr, %if.then114 ], [ %barrier.0199, %for.body.if.end115_crit_edge ]
  %add116 = add i32 %offset.0198, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add116)
  %cmp117 = icmp ugt i32 %add116, 4095
  br i1 %cmp117, label %if.then119, label %if.end115.for.inc_crit_edge

if.end115.for.inc_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %cur.0200, 1
  %67 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_pages, align 4
  %sub120 = add i32 %68, -1
  %and121 = and i32 %sub120, %inc
  br label %for.inc

for.inc:                                          ; preds = %if.then119, %if.end115.for.inc_crit_edge
  %offset.1 = phi i32 [ 0, %if.then119 ], [ %add116, %if.end115.for.inc_crit_edge ]
  %cur.1 = phi i32 [ %and121, %if.then119 ], [ %cur.0200, %if.end115.for.inc_crit_edge ]
  %add123 = add i32 %i.0201, 4
  %cmp101 = icmp ult i32 %add123, %to_read.1
  br i1 %cmp101, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end98.for.end_crit_edge
  %69 = ptrtoint ptr %snapshot to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %snapshot, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool125.not = icmp eq i8 %70, 0
  br i1 %tobool125.not, label %for.end.if.end128_crit_edge, label %if.then126

for.end.if.end128_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then126:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %71 = getelementptr inbounds %struct.perf_output_handle, ptr %handle, i32 0, i32 5
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %add127 = add i32 %73, %to_read.1
  store i32 %add127, ptr %71, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %for.end.if.end128_crit_edge
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %add.ptr.i196 = getelementptr i8, ptr %75, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 0) #7, !srcloc !46
  br label %out

out:                                              ; preds = %if.end128, %do.body42.out_crit_edge
  %to_read.2 = phi i32 [ 0, %do.body42.out_crit_edge ], [ %to_read.1, %if.end128 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call46) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then8, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %to_read.2, %out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tmc_etb_enable_hw(ptr noundef %drvdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %csdev = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 1
  %0 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csdev, align 4
  %call = tail call i32 @coresight_claim_device(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void @tmc_wait_for_tmcready(ptr noundef %drvdata) #7
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !46
  %6 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 855703552) #7, !srcloc !46
  %trigger_cntr.i = getelementptr inbounds %struct.tmc_drvdata, ptr %drvdata, i32 0, i32 13
  %8 = ptrtoint ptr %trigger_cntr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trigger_cntr.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %11 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drvdata, align 4
  %add.ptr5.i = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %10) #7, !srcloc !46
  tail call void @tmc_enable_hw(ptr noundef %drvdata) #7
  %13 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drvdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %add.ptr.i14.i = getelementptr i8, ptr %14, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 0) #7, !srcloc !46
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_claim_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_get_aux(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_disclaim_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmc_flush_and_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmc_get_memwidth_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_aux_output_flag(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmc_enable_etf_link(ptr noundef %csdev, i32 noundef %inport, i32 noundef %outport) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %reading = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %reading to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reading, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refcnt, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %7, i32 noundef 4) #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then10, label %cleanup.critedge

if.then10:                                        ; preds = %if.end
  %csdev.i = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %csdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csdev.i, align 4
  %call.i = tail call i32 @coresight_claim_device(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then13, label %if.end20.thread

if.end20.thread:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  br label %cleanup

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1439608005) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void @tmc_wait_for_tmcready(ptr noundef %3) #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #7, !srcloc !46
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %17, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 50331648) #7, !srcloc !46
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 0) #7, !srcloc !46
  tail call void @tmc_enable_hw(ptr noundef %3) #7
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %add.ptr.i13.i.i = getelementptr i8, ptr %21, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i, i32 0) #7, !srcloc !46
  %mode = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 10
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %mode, align 4
  %23 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %refcnt, align 8
  %call.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %24, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %24, i32 1, i32 3, i32 1) #7
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #7, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmc_enable_etf_link.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tmc_enable_etf_link, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !50

if.then30:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmc_enable_etf_link.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %refcnt, align 8
  %call.i.i50.c = tail call zeroext i1 @__kasan_check_write(ptr noundef %27, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %27, i32 1, i32 3, i32 1) #7
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #7, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.then30, %if.then13, %if.end20.thread, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.then30 ], [ %call.i, %if.end20.thread ], [ 0, %if.then13 ], [ 0, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmc_disable_etf_link(ptr noundef %csdev, i32 noundef %inport, i32 noundef %outport) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %parent = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %reading = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %reading to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reading, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 6
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refcnt, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #7, !srcloc !52
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp8 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp8, label %if.then10, label %if.end26.critedge

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %csdev1.i = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %csdev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csdev1.i, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void @tmc_flush_and_stop(ptr noundef %3) #7
  tail call void @tmc_disable_hw(ptr noundef %3) #7
  tail call void @coresight_disclaim_device_unlocked(ptr noundef %10) #7
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %add.ptr.i7.i = getelementptr i8, ptr %14, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #7, !srcloc !46
  %mode = getelementptr inbounds %struct.tmc_drvdata, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %mode, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmc_disable_etf_link.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tmc_disable_etf_link, %if.then21)) #7
          to label %cleanup [label %if.then21], !srcloc !50

if.then21:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmc_disable_etf_link.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end26.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26.critedge, %if.then21, %if.then10, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmc_wait_for_tmcready(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmc_enable_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmc_disable_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @coresight_disclaim_device_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @tmc_etb_cs_ops, !1, !"tmc_etb_cs_ops", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 580, i32 28}
!2 = !{ptr @tmc_etf_cs_ops, !3, !"tmc_etf_cs_ops", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 584, i32 28}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 596, i32 6}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 644, i32 6}
!9 = !{ptr @tmc_etf_sink_ops, !10, !"tmc_etf_sink_ops", i1 false, i1 false}
!10 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 567, i32 40}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 303, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tmc_enable_etf_sink.__UNIQUE_ID_ddebug299, !12, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 325, i32 2}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 333, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tmc_disable_etf_sink.__UNIQUE_ID_ddebug300, !19, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 462, i32 6}
!24 = !{ptr @tmc_etf_link_ops, !25, !"tmc_etf_link_ops", i1 false, i1 false}
!25 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 575, i32 40}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 363, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tmc_enable_etf_link.__UNIQUE_ID_ddebug301, !27, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/coresight/coresight-tmc-etf.c", i32 388, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tmc_disable_etf_link.__UNIQUE_ID_ddebug302, !31, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i8 0, i8 2}
!45 = !{i64 4805214}
!46 = !{i64 4804796}
!47 = !{i64 2155398905}
!48 = !{i64 2155398209}
!49 = !{i64 2148133084, i64 2148133110, i64 2148133139, i64 2148133173, i64 2148133204, i64 2148133227}
!50 = !{i64 2148728694, i64 2148728699, i64 2148728712, i64 2148728756, i64 2148728790, i64 2148728811}
!51 = !{i64 2148221536}
!52 = !{i64 2148136269, i64 2148136301, i64 2148136330, i64 2148136364, i64 2148136395, i64 2148136418}
!53 = !{i64 2148221765}
